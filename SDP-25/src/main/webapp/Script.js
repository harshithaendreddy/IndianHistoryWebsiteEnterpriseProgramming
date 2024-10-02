/**
 * @license
 * Copyright 2019 Google LLC. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */
let map;
const india = { lat: 20.5937, lng: 78.9629 };

const monuments = [
  // Array of monument objects
  { 
    name: 'Taj Mahal', 
    location: { lat: 27.1751, lng: 78.0421 },
    info: `<h3>Taj Mahal</h3>
           <p>The Taj Mahal is an Islamic ivory-white marble mausoleum on the right bank of the river Yamuna in the Indian city of Agra. It was commissioned in 1631 by Mughal Emperor Shah Jahan (ruler. 1628–1658) to house the tomb of his favorite wife, Mumtaz Mahal.</p>`
  },
  // Other monuments...
];

/**
 * Creates a control that recenters the map on India.
 */
function createCenterControl(map) {
  const controlButton = document.createElement("button");
  // Set CSS for the control.
  controlButton.classList.add('buttonStyle');

  controlButton.textContent = "Center Map on India";
  controlButton.title = "Click to recenter the map on India";
  controlButton.type = "button";
  // Setup the click event listeners: simply set the map to India.
  controlButton.addEventListener("click", () => {
    map.setCenter(india);
    map.setZoom(5);
  });
  return controlButton;
}

function initMap() {
  map = new google.maps.Map(document.getElementById("map"), {
    zoom: 5,
    center: india,
  });

  // Add markers for each monument
  monuments.forEach(monument => {
    const marker = new google.maps.Marker({
      position: monument.location,
      map: map,
      title: monument.name
    });

    const infowindow = new google.maps.InfoWindow({
      content: monument.info
    });

    marker.addListener('click', () => {
      infowindow.open(map, marker);
    });
  });

  // Create the DIV to hold the control.
  const centerControlDiv = document.createElement("div");
  // Create the control.
  const centerControl = createCenterControl(map);

  // Append the control to the DIV.
  centerControlDiv.appendChild(centerControl);
  map.controls[google.maps.ControlPosition.TOP_CENTER].push(centerControlDiv);
}

// Add event listener for toggling between sign in and sign up forms
document.querySelector('.img-btn').addEventListener('click', function() {
  document.querySelector('.cont').classList.toggle('s-signup');
});

window.initMap = initMap;
