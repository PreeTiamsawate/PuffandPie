// const toGoShopParent = document.querySelector("#toGoShopParent");
// const toGoShops = Array.from(document.querySelectorAll(".toGoShop"));
const sitInShopParent = document.querySelector("#sitInShopParent");
const sitInShops = Array.from(document.querySelectorAll(".sitInShop"));
// const toGoMap = document.querySelector("#toGo-map");
const sitInMap = document.querySelector("#sitIn-map");
const locationPins = document.querySelectorAll(".location-pin");
// console.log(toGoShopParent);
// console.log(toGoShops);
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
function showMap(Shops, mapFrame) {
  for (let shop of Shops) {
    shop.addEventListener("click", function () {
      mapFrame.innerHTML = this.getAttribute("mapIframe");
    });
  }
}
function hidePins() {
  for (let locationPin of locationPins) {
    locationPin.classList.add("d-none");
  }
}
function sortShops(Shops, shopParent, userLat, userLong, mapFrame) {
  for (let shop of Shops) {
    let shopDistance = distance(
      userLat,
      userLong,
      shop.getAttribute("latitude"),
      shop.getAttribute("longitude"),
      "K"
    );
    shop.setAttribute("distance", shopDistance);
    shop.children[1].children[1].children[1].innerText = `${shopDistance.toFixed(
      1
    )} km`;
    console.log(shop.getAttribute("mapIframe"));
    shop.addEventListener("click", function () {
      mapFrame.innerHTML = this.getAttribute("mapIframe");
    });
  }
  Shops.sort(function (a, b) {
    return a.getAttribute("distance") - b.getAttribute("distance");
  });
  Shops.forEach(function (box) {
    shopParent.appendChild(box);
  });
}

const showShopsByDistance = function () {
  if (!navigator.geolocation) {
    alert("Geolocation is not supported by your browser");
    showMap(sitInShops, sitInMap);
    hidePins();
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
    // sortShops(
    //   toGoShops,
    //   toGoShopParent,
    //   coordinate.lat,
    //   coordinate.long,
    //   toGoMap
    // );
    sortShops(
      sitInShops,
      sitInShopParent,
      coordinate.lat,
      coordinate.long,
      sitInMap
    );
  }

  function error() {
    alert("คุณไม่อนุญาตให้ที่เว็ปไซต์เข้าถึงตำแหน่งที่ตั้งของคุณ");
    showMap(sitInShops, sitInMap);
    hidePins();
  }
};

window.onload = showShopsByDistance();

// let Shops = [
//   {
//     branchName: "171 Phahonyothin Rd",
//     imgAddress: "./images/Phahonyothin-Rd.jpg",
//     mapFrame:
//       '<iframe class="w-100"  src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d61973.834214915434!2d100.6122509!3d13.877132!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x15f7a3b378d99a15!2sPuff%20%26%20Pie!5e0!3m2!1sen!2sth!4v1623659203803!5m2!1sen!2sth" height="350" style="border:0;" allowfullscreen="" loading="lazy"></iframe>',
//     latitude: 13.909141,
//     longitude: 100.6172772,
//     distance: 0,
//     distanceInKm: "",
//   },
//   {
//     branchName: "Don Muang",
//     imgAddress: "./images/Don-Muang.jpg",
//     mapFrame:
//       '<iframe class="w-100" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d30984.30610632159!2d100.5969406!3d13.8966603!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf2e5b57efdfc73bf!2sPuff%20and%20Pie!5e0!3m2!1sen!2sth!4v1623659410880!5m2!1sen!2sth" height="350"  style="border:0;" allowfullscreen="" loading="lazy"></iframe>',
//     latitude: 13.8975469,
//     longitude: 100.5896402,
//     distance: 0,
//     distanceInKm: "",
//   },
//   {
//     branchName: "DMK Airport",
//     imgAddress: "./images/DMK-Airport.jpg",
//     mapFrame:
//       '<iframe class="w-100" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15491.075165848455!2d100.5999306!3d13.9127636!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xda4e52eed83952e1!2sPuff%26Pie!5e0!3m2!1sen!2sth!4v1623659484763!5m2!1sen!2sth" height="350"  style="border:0;" allowfullscreen="" loading="lazy"></iframe>',
//     latitude: 13.9185495,
//     longitude: 100.6029657,
//     distance: 0,
//     distanceInKm: "",
//   },
//   {
//     branchName: "Nawamin City Av",
//     imgAddress: "./images/Nawain-City.jpg",
//     mapFrame:
//       '<iframe class="w-100" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d123992.89265444528!2d100.6342378!3d13.7922585!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa8b18d2af6c40ac6!2sPuff%20%26%20Pie!5e0!3m2!1sen!2sth!4v1623659534286!5m2!1sen!2sth" height="350"  style="border:0;" allowfullscreen="" loading="lazy"></iframe>',
//     latitude: 13.834142,
//     longitude: 100.61082,
//     distance: 0,
//     distanceInKm: "",
//   },
//   {
//     branchName: "Fashion Island",
//     imgAddress: "./images/Fashion-Island.jpg",
//     mapFrame:
//       '<iframe class="w-100" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d248008.06015190965!2d100.6306008!3d13.7712779!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89576098ebeec43!2sPuff%20%26%20Pie!5e0!3m2!1sen!2sth!4v1623659576015!5m2!1sen!2sth" height="350"  style="border:0;" allowfullscreen="" loading="lazy"></iframe>',
//     latitude: 13.8246644,
//     longitude: 100.678121,
//     distance: 0,
//     distanceInKm: "",
//   },
//   {
//     branchName: "Bon Marche' Mk",
//     imgAddress: "./images/BonMarche.jpg",
//     mapFrame:
//       '<iframe class="w-100" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d247987.05778709744!2d100.5844061!3d13.7910608!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x7c6cc42a1a9e5df2!2zUHVmZiBBbmQgUGllIOC4muC4reC4h-C4oeC4suC4o-C5jOC5gOC4iuC5iA!5e0!3m2!1sen!2sth!4v1623659632306!5m2!1sen!2sth" height="350"   style="border:0;" allowfullscreen="" loading="lazy"></iframe>',
//     latitude: 13.8385122,
//     longitude: 100.5514109,
//     distance: 0,
//     distanceInKm: "",
//   },
//   {
//     branchName: "Pracha Chuen",
//     imgAddress: "./images/PrachaChuen.jpg",
//     mapFrame:
//       '<iframe class="w-100" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d247987.05778709744!2d100.5844061!3d13.7910608!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xd06780e82c683898!2sPuff%20%26%20Pie!5e0!3m2!1sen!2sth!4v1623659677136!5m2!1sen!2sth" height="350" style="border:0;" allowfullscreen="" loading="lazy"></iframe>',
//     latitude: 13.8314719,
//     longitude: 100.539038,
//     distance: 0,
//     distanceInKm: "",
//   },
//   {
//     branchName: "TG HQ",
//     imgAddress: "./images/TG-HQ.jpg",
//     mapFrame:
//       '<iframe class="w-100" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d247987.05778709744!2d100.5844061!3d13.7910608!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x48309b72b92e0d16!2sPuff%20%26%20Pie!5e0!3m2!1sen!2sth!4v1623659824426!5m2!1sen!2sth"  height="350"  style="border:0;" allowfullscreen="" loading="lazy"></iframe>',
//     latitude: 13.8056359,
//     longitude: 100.562122,
//     distance: 0,
//     distanceInKm: "",
//   },
//   {
//     branchName: "Samsen Rd",
//     imgAddress: "./images/Samsen-Rd.jpg",
//     mapFrame:
//       '<iframe class="w-100" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d62005.1365001078!2d100.5149785!3d13.7595038!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xfc780c577c7163ab!2sPuff%20%26%20Pie!5e0!3m2!1sen!2sth!4v1623659887068!5m2!1sen!2sth"  height="350" style="border:0;" allowfullscreen="" loading="lazy"></iframe>',
//     latitude: 13.7804774,
//     longitude: 100.5084252,
//     distance: 0,
//     distanceInKm: "",
//   },
//   {
//     branchName: "Century Plaza",
//     imgAddress: "./images/Century.jpg",
//     mapFrame:
//       '<iframe class="w-100" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15501.464017064198!2d100.5312749!3d13.7567882!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xfb5cab704fb733ec!2zUHVmZiBhbmQgUGllIOC4iuC4uOC4lOC4reC4suC4q-C4suC4o-C4p-C5iOC4suC4h-C4iOC4suC4geC4hOC4o-C4seC4p-C4geC4suC4o-C4muC4tOC4meC5hOC4l-C4og!5e0!3m2!1sen!2sth!4v1623659976699!5m2!1sen!2sth" height="350"  style="border:0;" allowfullscreen="" loading="lazy"></iframe>',
//     latitude: 13.7614981,
//     longitude: 100.5366126,
//     distance: 0,
//     distanceInKm: "",
//   },
//   {
//     branchName: "Lan Luang Rd",
//     imgAddress: "./images/LanLuang.jpg",
//     mapFrame:
//       '<iframe class="w-100" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d62012.87190951307!2d100.5104007!3d13.7302833!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf62652cce51f8ff4!2sPuff%20%26%20Pie!5e0!3m2!1sen!2sth!4v1623660044263!5m2!1sen!2sth"  height="350"  style="border:0;" allowfullscreen="" loading="lazy"></iframe>',
//     latitude: 13.7562193,
//     longitude: 100.5071719,
//     distance: 0,
//     distanceInKm: "",
//   },
//   {
//     branchName: "Siri Rat Hospital",
//     imgAddress: "./images/SiriRat.jpg",
//     mapFrame:
//       '<iframe class="w-100" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d124033.92242072344!2d100.4871832!3d13.7148113!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x952844a7395a2819!2sPuff%20%26%20Pie!5e0!3m2!1sen!2sth!4v1623660109962!5m2!1sen!2sth"  height="350"  style="border:0;" allowfullscreen="" loading="lazy"></iframe>',
//     latitude: 13.7579583,
//     longitude: 100.484124,
//     distance: 0,
//     distanceInKm: "",
//   },
// {
//     branchName: "Chulalongkorn Hospital",
//     imgAddress: "#######",
//     mapFrame:
//       '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d10962.323393505625!2d100.5360157322967!3d13.732575560475095!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x24d42cda27c0068f!2sPuff%20%26%20pie%20%7C%20Thai%20Airways%20Catering%20(Chula%20Hospital%20Branch)!5e0!3m2!1sen!2sth!4v1626113458787!5m2!1sen!2sth" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>',
//     latitude: 13.7311055,
//     longitude: 100.5360083,
//     distance: 0,
//     distanceInKm: "",
//   },{
//     branchName: "Head Office Building 1 ",
//     imgAddress: "###########",
//     mapFrame:
//       '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d484.3203890595463!2d100.56111320125898!3d13.805190313412782!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30e29d4c6c443aed%3A0x5d5edb695fa14899!2z4Lit4Lij4LmI4Lit4Lii4Lil4LmJ4LiZ4Lif4LmJ4Liy4LivIOC4geC4suC4o-C4muC4tOC4meC5hOC4l-C4og!5e0!3m2!1sen!2sth!4v1626113721610!5m2!1sen!2sth" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>',
//     latitude: 13.8053221,
//     longitude: 100.5611411,
//     distance: 0,
//     distanceInKm: "",
//   },{
//     branchName: "THAI Operation Control Center ",
//     imgAddress: "#############",
//     mapFrame:
//       '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d969.0300466243938!2d100.7581333997674!3d13.711169911644543!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x311d67a659011f55%3A0xd7b0712c92455215!2sTHAI%20Operation%20Control%20Centre!5e0!3m2!1sen!2sth!4v1626113928808!5m2!1sen!2sth" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>',
//     latitude: 13.7107499,
//     longitude: 100.7586262,
//     distance: 0,
//     distanceInKm: "",
//   },{
//     branchName: "Rama Hospital ",
//     imgAddress: "#############",
//     mapFrame:
//       '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3875.1702530508633!2d100.52578071468677!3d13.768604390336575!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30e2994d66e9a1ed%3A0xed95040bdde77024!2sPuff%20%26%20Pie!5e0!3m2!1sen!2sth!4v1626114034718!5m2!1sen!2sth" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>',
//     latitude: 13.7685124,
//     longitude: 100.5282026,
//     distance: 0,
//     distanceInKm: "",
//   },
// {
//     branchName: "Muangthong Thani",
//     imgAddress: "#############",
//     mapFrame:
//       '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d968.1970689398137!2d100.53960805370806!3d13.911599855578853!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30e28358db0f7e3b%3A0xdd18f3befd9c7b70!2sPuff%26Pie%20by%20SevenSibs!5e0!3m2!1sen!2sth!4v1627890487391!5m2!1sen!2sth" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>',
//     latitude: 13.9115517,
//     longitude: 100.5398803,
//     distance: 0,
//     distanceInKm: "",
//   },

// ];
