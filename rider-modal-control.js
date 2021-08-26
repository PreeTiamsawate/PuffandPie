const riderButtons = document.querySelectorAll(".rider-btn");

for (let riderButton of riderButtons) {
  riderButton.addEventListener("mouseover", function () {
    riderButton.children[0].classList.add("d-none");
    riderButton.children[1].classList.remove("d-none");
  });
  riderButton.addEventListener("mouseleave", function () {
    riderButton.children[1].classList.add("d-none");
    riderButton.children[0].classList.remove("d-none");
  });

  riderButton.addEventListener("touchstart", function () {
    riderButton.children[0].classList.add("d-none");
    riderButton.children[1].classList.remove("d-none");
  });
  riderButton.addEventListener("touchend", function () {
    riderButton.children[1].classList.add("d-none");
    riderButton.children[0].classList.remove("d-none");
  });
}

let savedUserLat = sessionStorage.getItem("userLatitude");
let savedUserLong = sessionStorage.getItem("userlongitude");

const getDistance = function (lat1, lon1, lat2, lon2, unit) {
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
};

const sortLinks = function (arrayOfLinks, userLat, userLong) {
  for (let arrayOfLink of arrayOfLinks) {
    arrayOfLink.distance = getDistance(
      userLat,
      userLong,
      arrayOfLink.latitude,
      arrayOfLink.longitude,
      "K"
    );
  }
  arrayOfLinks.sort(function (a, b) {
    return a.distance - b.distance;
  });
};
const getOpenLinks = function (arrayOfLinks) {
  return arrayOfLinks.filter((arrayOfLink) => arrayOfLink.isOpen === true);
};

const setLinkToButton = function (arrayOfLinks, linkButton) {
  if (!savedUserLat || !savedUserLong) {
    if (!navigator.geolocation) {
      alert("Geolocation is not supported by your browser");
      linkButton.setAttribute("href", getOpenLinks(arrayOfLinks)[0].riderLink);
      console.log(linkButton);
    } else {
      navigator.geolocation.getCurrentPosition(success, error);
    }

    function success(position) {
      const latitude = position.coords.latitude;
      const longitude = position.coords.longitude;

      let coordinate = {
        lat: latitude,
        long: longitude,
      };
      sessionStorage.setItem("userLatitude", coordinate.lat);
      sessionStorage.setItem("userlongitude", coordinate.long);
      sortLinks(arrayOfLinks, coordinate.lat, coordinate.long);
      linkButton.setAttribute("href", getOpenLinks(arrayOfLinks)[0].riderLink);
      console.log(linkButton);
    }

    function error() {
      linkButton.setAttribute("href", getOpenLinks(arrayOfLinks)[0].riderLink);
      alert(
        "คุณไม่อนุญาตให้ที่เว็ปไซต์เข้าถึงตำแหน่งที่ตั้งของคุณ\nเพื่อความสะดวกในการสั่งสินค้า กรุณาrefreshหน้าเว็ปไซต์แล้วกดอนุญาต"
      );
      console.log(linkButton);
    }
  } else {
    sortLinks(arrayOfLinks, savedUserLat, savedUserLong);
    linkButton.setAttribute("href", getOpenLinks(arrayOfLinks)[0].riderLink);
    console.log(linkButton);
  }
};

const foodpandaBtn = document.querySelector("#foodpanda-btn");
const robinhoodBtn = document.querySelector("#robinhood-btn");

setLinkToButton(robinhoodLinks, robinhoodBtn);
setLinkToButton(foodpandaLinks, foodpandaBtn);
