var wrap = document.querySelector("#wrap");
var testBoxes = Array.from(document.querySelectorAll(".testBox"));
console.log(testBoxes);

// testBoxes.forEach(function (a) {
//   console.log(typeof a.getAttribute("distance"));
// });

// testBoxes.sort(function (a, b) {
//   return a.getAttribute("distance") - b.getAttribute("distance");
// });
// console.log(testBoxes);

// testBoxes.forEach(function (box) {
//   wrap.appendChild(box);
// });

function distance(lat1, lon1, lat2, lon2, unit) {
  if (lat1 == lat2 && lon1 == lon2) {
    return 0;
  } else {
    var radlat1 = (Math.PI * lat1) / 180;
    var radlat2 = (Math.PI * lat2) / 180;
    var theta = lon1 - lon2;
    var radtheta = (Math.PI * theta) / 180;
    var dist =
      Math.sin(radlat1) * Math.sin(radlat2) +
      Math.cos(radlat1) * Math.cos(radlat2) * Math.cos(radtheta);
    if (dist > 1) {
      dist = 1;
    }
    dist = Math.acos(dist);
    dist = (dist * 180) / Math.PI;
    dist = dist * 60 * 1.1515;
    if (unit == "K") {
      dist = dist * 1.609344;
    }
    if (unit == "N") {
      dist = dist * 0.8684;
    }
    return dist;
  }
}
function sortShops(Shops, shopParent, userLat, userLong) {
  for (shop of Shops) {
    let shopDistance = distance(
      userLat,
      userLong,
      shop.getAttribute("latitude"),
      shop.getAttribute("longitude"),
      "K"
    );
    shop.setAttribute("distance", shopDistance);
    shop.children[1].innerText = `${shopDistance.toFixed(1)} km`;

    console.log(shop);
    console.log(shop.children[1]);
  }
  Shops.sort(function (a, b) {
    return a.getAttribute("distance") - b.getAttribute("distance");
  });
  Shops.forEach(function (box) {
    shopParent.appendChild(box);
  });
}

const showShopsByDistance = function () {
  // const status = document.querySelector('#status');
  // const mapLink = document.querySelector('#map-link');

  // mapLink.href = '';
  // mapLink.textContent = '';

  if (!navigator.geolocation) {
    alert("Geolocation is not supported by your browser");
    // createShopElement(toGoShops, Shops);
    // createShopElement(sitInShops, Shops);
    // createToGoShopElements(Shops);
    // createSitInShopElements(Shops);
  } else {
    // status.textContent = 'Locating…';

    navigator.geolocation.getCurrentPosition(success, error);
  }

  function success(position) {
    const latitude = position.coords.latitude;
    const longitude = position.coords.longitude;

    // status.textContent = '';
    // mapLink.href = `https://www.openstreetmap.org/#map=18/${latitude}/${longitude}`;
    // mapLink.textContent = `Latitude: ${latitude} °, Longitude: ${longitude} °`;
    let coordinate = {
      lat: latitude,
      long: longitude,
    };
    sortShops(testBoxes, wrap, coordinate.lat, coordinate.long);

    // let sortedShops = Shops.sort(function (a, b) {
    //   return a.distance - b.distance;
    // });
    // console.log(sortedShops);
    // createShopElement(toGoShops, Shops);
    // createShopElement(sitInShops, Shops);
    // createToGoShopElements(sortedShops);
    // createSitInShopElements(sortedShops);
  }

  function error() {
    alert("Unable to retrieve your location");
    // console.log(Shops);
    // createShopElement(toGoShops, Shops);
    // createShopElement(sitInShops, Shops);
    // createToGoShopElements(Shops);
    // createSitInShopElements(Shops);
  }
};

window.onload = showShopsByDistance();
