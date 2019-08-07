getFourteeners();
//	=================================== THIS IS THE SAME AS___________
async function getFourteeners(){
  let url = "api/fourteeners";
  let xhr = new XMLHttpRequest();
  xhr.open("GET", url, true);

  xhr.onreadystatechange = function() {
    if(xhr.readyState === 4 && xhr.status < 400) {
      let data = JSON.parse(xhr.responseText);
      displayFourteeners(data);
    }

    if(xhr.readyState === 4 && xhr.status >= 400) {
      let feedback = document.getElementById("user-feedback");
      feedback.textContent = "No Fourteeners found";
    }
  }
  xhr.send(null);
}
//====================================================
//	==================================== THIS ******
//	const fourteeners = async () => {
//		let url = "api/fourteeners";
//		const response = await fetch(url);
//		const data = await response.json();
//		displayFourteeners(data);
//	}
//	fourteeners();
//	====================================================
//======================================= OR THIS *****
//function getFourteeners() {
//	let url = "api/fourteeners";
//	fetch(url)
//	.then(resp => resp.json())
//	.then(data => displayFourteeners(data))
//}
//============================================================

function displayFourteeners(mountains) {
	
  let mtnsDisplay = document.getElementById("allFourteeners");
  mtnsDisplay.textContent = "";

  mountains.forEach(mtn => {
    let fourteener = document.createElement("div");
    fourteener.classList.add("nav-mtn");
    
    let id = document.createElement("span");
    id.classList.add("mtn-id");
    id.textContent = mtn.id;
    fourteener.append(id);

    let rank = document.createElement("h1");
    rank.textContent = mtn.rank;
    rank.id = mtn.id;
    fourteener.addEventListener('click', getMountain);
    fourteener.append(rank);

    let peak = document.createElement("h2");
    peak.textContent = mtn.peak;
    fourteener.append(peak);
    
    mtnsDisplay.append(fourteener);
  });
}

function getMountain(e) {
	let id = e.target.firstChild.innerText;
	let xhr = new XMLHttpRequest();
	let url = `api/fourteeners/${id}`;
	
	xhr.open('GET', url, true);
	   xhr.onreadystatechange = function() {
	     if (xhr.readyState === 4 && xhr.status < 400) {
	       var data = JSON.parse(xhr.responseText);
	       displayMountain(data);
	       
	     }
	   };
	  
	   xhr.send(null);
}

function displayMountain(mtn) {
	let display = document.getElementById("main-display");
	display.textContent = "";
	
	
	let mainMtn = document.createElement("div");
	mainMtn.classList.add("main-mtn")
	display.append(mainMtn);
	mainMtn.textContent = "";
	
	let removeBtn = document.createElement("span");
	removeBtn.textContent = "Remove";
	removeBtn.classList.add("rmv");
	removeBtn.addEventListener("click", removeFourteener);
	mainMtn.append(removeBtn);
	
	let updateBtn = document.createElement("span");
	updateBtn.textContent = "Update";
	updateBtn.classList.add("update");
	updateBtn.addEventListener("click", displayUpdateForm);
	mainMtn.append(updateBtn);
	
	let id = document.createElement("span");
    id.classList.add("mtn-id");
    id.textContent = mtn.id;
    mainMtn.append(id);

	let rank = document.createElement("h1");
	rank.textContent = "RANK: " + mtn.rank;
	mainMtn.append(rank);
	
	let peak = document.createElement("h2");
	peak.textContent = "PEAK: " + mtn.peak;
	mainMtn.append(peak);
	
	let range = document.createElement("h3");
	range.textContent = "Range: " + mtn.mtnRange;
	mainMtn.append(range);
	console.log(mtn)
	let elevation = document.createElement("h4");
	elevation.textContent = "Elevation: " + mtn.elevation;
	mainMtn.append(elevation);
	
	
	let complete = document.createElement("h5");
	if (mtn.complete) {
		complete.textContent = "Completed";
	}	else {
		complete.textContent = "Not Completed";
		complete.classList.add("red");
	}
	mainMtn.append(complete);
	
	let form = document.createElement("form");
	form.name = "form";
	form.classList.add("hidden");
	
	let formH1 = document.createElement("h3");
	formH1.textContent = "UPDATE";
	form.append(formH1);
	
	let formRank = document.createElement("input");
	formRank.type = "number";
	formRank.placeholder = "Rank"
	formRank.name = "rank";
	formRank.value = mtn.rank;
	form.append(formRank);
	
	let formPeak = document.createElement("input");
	formPeak.type = "text";
	formPeak.placeholder = "Peak"
	formPeak.name = "peak";
	formPeak.value = mtn.peak;
	form.append(formPeak);
	
	let formRange = document.createElement("input");
	formRange.type = "text";
	formRange.placeholder = "Range"
	formRange.value = mtn.mtnRange;
	form.append(formRange);
	
	let formElevation = document.createElement("input");
	formElevation.type = "text";
	formElevation.placeholder = "Elevation";
	formElevation.value = mtn.elevation;
	form.append(formElevation);
	
	let completeLabel = document.createElement("label");
	completeLabel.textContent ="Complete";
	form.append(completeLabel);
	
	let formComplete = document.createElement("input");
	formComplete.type = "checkbox";
	formComplete.name = "isComplete";
	if (mtn.complete) {
		formComplete.checked = true;
	}	else {
		formComplete.checked = false;
	}
	form.append(formComplete);
	
	let submitUpdateBtn = document.createElement("input");
	submitUpdateBtn.type = "submit";
	submitUpdateBtn.value = "Submit";
	submitUpdateBtn.addEventListener("submit", submitUpdate);
	
	
	
	mainMtn.append(form);
	
}

document.newMtnForm.addEventListener("submit", postFourteener);
function postFourteener(e) {
	e.preventDefault();
	var xhr = new XMLHttpRequest();
	xhr.open('POST', 'api/fourteeners', true);

	xhr.setRequestHeader("Content-type", "application/json"); 

	xhr.onreadystatechange = function() {
	  if (xhr.readyState === 4 ) {
	    if ( xhr.status == 200 || xhr.status == 201 ) { 
	      var data = JSON.parse(xhr.responseText);
	      
	    }
	    else {
	      console.log("POST request failed.");
	      console.error(xhr.status + ': ' + xhr.responseText);
	    }
	  }
	};

	let isComplete = false;
	if (document.newMtnForm.complete.value === "on") {
		isComplete = true;
	}	
	
	var newMtn = {
			peak: document.newMtnForm.peak.value,
			rank: document.newMtnForm.rank.value,
			mtnRange: document.newMtnForm.range.value,
			elevation: document.newMtnForm.elevation.value,
			complete: isComplete
	}
	var newMtnJson = JSON.stringify(newMtn); 

	xhr.send(newMtnJson);
	location.reload();
}

function removeFourteener(e) {
	let id = e.target.nextSibling.nextSibling.innerText;
	
	let xhr = new XMLHttpRequest();
	let url = `api/fourteeners/${id}`;
	
	xhr.open('DELETE', url, true);
	   xhr.onreadystatechange = function() {
	     if (xhr.readyState === 4 && xhr.status < 400) {
	       var data = JSON.parse(xhr.responseText);	       
	     }
	   };
	  
	   xhr.send(null);
	   location.reload();
}

function displayUpdateForm(e){
	if (e.target.textContent === "Update") {
		e.target.textContent = "Hide";
		e.target.parentNode.lastChild.classList.remove("hidden");
	}	else {
		e.target.textContent = "Update";
		e.target.parentNode.lastChild.classList.add("hidden");
	}
	

}

function submitUpdate() {
//	let id = e.target.nextSibling.innerText;
//	let xhr = new XMLHttpRequest();
//	let url = `api/fourteeners/${id}`;
//	
//	xhr.open('PUT', url, true);
//	
//	xhr.setRequestHeader("Content-type", "application/json");  //status code 415 without this
//	
//	   xhr.onreadystatechange = function() {
//	     if (xhr.readyState === 4 && xhr.status < 400) {
//	       var data = JSON.parse(xhr.responseText);
//	       console.log(data)
//	       
//	     }
//	   };
//	  
//	   let idEl = e.target.nextSibling.value;
//	   let rankEl = e.target.nextSibling.nextSibling;
//	   console.log(rankEl.innerText)
//	   let peakEl = rankEl.nextSibling;
//	   let rangeEl = peakEl.nextSibling;
//	   let elevationEl = rangeEl.nextSibling;
//	   let completed; 
//
//	   if (elevationEl.nextSibling.innerText === "Completed") {
//		   
//	   }	else {
//		   completed = false;
//	   }
//	   
//	   document.newMtnForm.peak.value = peakEl.innerText.split(": ")[1];
//	   document.newMtnForm.rank.value = parseInt(rankEl.innerText.split(": ")[1]);
//	   document.newMtnForm.range.value = rangeEl.innerText.split(": ")[1];
//	   document.newMtnForm.elevation.value = elevationEl.innerText.split(": ")[1];
//	   
//	   document.form.formRank.value = parseInt(rankEl.innerText.split(": ")[1]);
//	   
//	   let updatedMtn = {
//			   id: parseInt(id),
//			   rank: document.newMtnForm.rank.value,
//			   peak: document.newMtnForm.peak.value,
//			   mtnRange: rangeEl.innerText.split(": ")[1],
//			   elevation: document.newMtnForm.elevation.value,
//			   complete: completed
//	   }
//	   console.log(updatedMtn)
//	   xhr.send(JSON.stringify(updatedMtn));  //dont forget to stringify body before sending
}
	


