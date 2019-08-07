getFourteeners();

function getFourteeners() {
  let xhr = new XMLHttpRequest();
  let url = "api/fourteeners";
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

function displayFourteeners(mountains) {
  let mtnsDisplay = document.getElementById("allFourteeners");
  mtnsDisplay.textContent = "";

  mountains.forEach(mtn => {
    let fourteener = document.createElement("div");
    fourteener.setAttribute("class", "nav-mtn");

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
	console.log(mtn)
	let display = document.getElementById("main-display");
	display.textContent = "";
	
	let mainMtn = document.createElement("div");
	mainMtn.classList.add("main-mtn")
	display.append(mainMtn);
	mainMtn.textContent = "";
	
	let rank = document.createElement("h1");
	rank.textContent = "RANK: " + mtn.rank;
	mainMtn.append(rank);
	
	let peak = document.createElement("h2");
	peak.textContent = "PEAK: " + mtn.peak;
	mainMtn.append(peak);
	
	let range = document.createElement("h3");
	range.textContent = "Range: " + mtn.mtnRange;
	mainMtn.append(range);
	
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
}

