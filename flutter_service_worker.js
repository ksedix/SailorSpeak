'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "84fff294f7c729016be4e4d44ee8950f",
"assets/AssetManifest.bin.json": "cb570be98f44d10de90026b30e1c730a",
"assets/AssetManifest.json": "b81b1924a649bf7587b9687bd08baf41",
"assets/assets/audios/0.wav": "f3754538bedbccc75a1bbfe50aaa0cb5",
"assets/assets/audios/1.wav": "069525aeaf3bd58048933f6c0d229c25",
"assets/assets/audios/2.wav": "38684065139faf0ff67dfa01d4003a94",
"assets/assets/audios/3.wav": "9a4d4f9012e051044ee1a8a84eb82cb5",
"assets/assets/audios/4.wav": "5d964cb6683df0171f212764f62e85c2",
"assets/assets/audios/5.wav": "2fc808ce2fad17689621457919b103ff",
"assets/assets/audios/6.wav": "c1ed0f813e1bb404708c818bd43235a6",
"assets/assets/audios/7.wav": "34bbf98eb04dff657d822dd2a610c60b",
"assets/assets/audios/8.wav": "98b45b6b071aca4c2cdd454d4c3b2b21",
"assets/assets/audios/9.wav": "eec8ca0f83a69012bddc0d3929b1ce6b",
"assets/assets/audios/a.wav": "c5b79e32f94e6b75261f5b17bb1f3b36",
"assets/assets/audios/abandon_vessel.wav": "50280c53f69cf8aa39c2222e224f3537",
"assets/assets/audios/accommodation_ladder.wav": "58741377c969adc9819a042a0a014065",
"assets/assets/audios/adrift.wav": "d800588891b69918a0e48a40388cc202",
"assets/assets/audios/air_draft.wav": "00429ed87459921b07e554f97cf8b124",
"assets/assets/audios/assembly_station.wav": "c530c42f3dff3d6462c327b0514253ea",
"assets/assets/audios/b.wav": "d2d7076f847a28487b10ac7dd7a05da4",
"assets/assets/audios/backing.wav": "7921d4bc0e780903b1277a7672c58fbb",
"assets/assets/audios/beach.wav": "960ba3f980417ef4de7cf92daf1a549c",
"assets/assets/audios/berth.wav": "22afe1d5ba4e7b34841f978b28e5ac33",
"assets/assets/audios/blast.wav": "3b20bf395512fa7a5036e64d705c5fac",
"assets/assets/audios/blind_sector.wav": "77d940b48552842d7c2649c30d4d1dc3",
"assets/assets/audios/boarding_arrangements.wav": "934fdeeb9793e9803e1d7e5ae31e87c9",
"assets/assets/audios/boarding_speed.wav": "2fd77324d526ff2664e3b4664602a1e2",
"assets/assets/audios/bob_cat.wav": "00f7ed98f222e3c160f3b7e816adbfd9",
"assets/assets/audios/c.wav": "58993cf98449002c9c9eb04cb1807330",
"assets/assets/audios/cable.wav": "4ee2334b7f33139a2d422c992261aac9",
"assets/assets/audios/capsize.wav": "1bf1aa0e20a54fdc0cc6785e8dbaa0e6",
"assets/assets/audios/cardinal_buoy.wav": "70a482d85ee4c4ae7b1c38f91dd4a298",
"assets/assets/audios/cardinal_points.wav": "8f4d87bf9a368151f54bdf2a27dc5742",
"assets/assets/audios/casualty.wav": "30c43111e2a9966aa047bbe810f8d3df",
"assets/assets/audios/convoy.wav": "6ee9ff6fd83793834e51bdcf9058a485",
"assets/assets/audios/course.wav": "9887929f387dfd023983fa055eb25d86",
"assets/assets/audios/d.wav": "293369e25142156f33cc09886c6f8e77",
"assets/assets/audios/e.wav": "47c4c414fd614d3c962f5e6596698a48",
"assets/assets/audios/f.wav": "9eae8ea635520e7d255d3f312d7643ce",
"assets/assets/audios/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/audios/g.wav": "cd378e2b07ef64d1f800ae0eb8d718f5",
"assets/assets/audios/h.wav": "c5cc4b8fc9af1be4f9dfe4e393210ca3",
"assets/assets/audios/i.wav": "31fc72c1babda7695730ea4fe84ecbb4",
"assets/assets/audios/j.wav": "a544823eff3ffff31528c616896faea4",
"assets/assets/audios/k.wav": "ab45ba586a78ef9edab134cd6be9b3cf",
"assets/assets/audios/l.wav": "a082c65c58fbaf4c98d940d7616f9626",
"assets/assets/audios/m.wav": "25ee727a785b26d3f8230237868570a1",
"assets/assets/audios/n.wav": "9d3f2c9bc187eb36cfe4fc96ea4a89bb",
"assets/assets/audios/o.wav": "1c746dde98bfda8f85a4f7d3f0578099",
"assets/assets/audios/p.wav": "ec3594432f63ebb6b1f13024905263c3",
"assets/assets/audios/q.wav": "ea03ce2d8c56cf4fa9ff2166d9bf6cd5",
"assets/assets/audios/r.wav": "e9d36c2526ec415e9079d2800426ae65",
"assets/assets/audios/s.wav": "48210c1225cfdc9ddb01bd07b694963c",
"assets/assets/audios/t.wav": "49853c78151d650da6162d405d08cbac",
"assets/assets/audios/u.wav": "be82b593e7c094049d1776924a03ea74",
"assets/assets/audios/v.wav": "fdc32da4e6119d11f4044b22e624e653",
"assets/assets/audios/w.wav": "e9cfc22b607eba172c6e007900f0fbb8",
"assets/assets/audios/x.wav": "c7e881fe1995e30ad181311d8b847840",
"assets/assets/audios/z.wav": "920b0e9984f22a1af149915eb3d25445",
"assets/assets/fonts/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/fonts/Lexend%2520Deca-Medium.ttf": "142fc585b5cfbcb3b5b41fb0e89a347e",
"assets/assets/fonts/Poppins-Medium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
"assets/assets/fonts/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/images/app_launcher_icon.png": "4590aaf0014e9e8b788bf8ffb9748159",
"assets/assets/images/chalmers_logo.png": "2b8c9b499de9e03fe86845ef007e980d",
"assets/assets/images/dictionary.png": "7f8c8f34db8a82085e5cc0b7520e0031",
"assets/assets/images/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/images/missing_word.png": "2776c840848d6d31cc2d1a2d9212a2f3",
"assets/assets/images/practice_card.png": "2e9594936c15ee76edcb956dbfdc17b9",
"assets/assets/images/practice_card_red.png": "df06f0a8f0201100af856b8c46f5c22b",
"assets/assets/images/practice_card_volume_enabled.png": "7860e81b57626e7e2e5b860d8b8fb0d5",
"assets/assets/images/sailorspeak_splash.png": "6a6e0b540f27a8b5313fd5fb3d880251",
"assets/assets/images/Ship_diagram-numbers.svg": "b46a68b2f561193fcf00f9f2fd93ad09",
"assets/assets/images/the_ship.png": "a4795567420dacd3b2aea8c0bb0fd38a",
"assets/assets/lottie_animations/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/lottie_animations/sailing_ship.json": "5764633a575250c190e3a46a2618d13b",
"assets/assets/pdfs/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/rive_animations/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/videos/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "b4cd7f27755cce9d97a659cf9c973230",
"assets/NOTICES": "746f91da741ed24d598bbde2641537ac",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "f25e8e701660fb45e2a81ff3f43c6d5c",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "a5d7457fda15b7622c14f432ba63039a",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "b72c617acdf2227c8b1413215f620711",
"assets/packages/youtube_player_iframe/assets/player.html": "fedadd807717e2e72a56a1117ebb1338",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "2704101cb06ce66e2000356a312be25c",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"icons/app_launcher_icon.png": "4590aaf0014e9e8b788bf8ffb9748159",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "9e2c6088b30c6202cbabc978a3846dff",
"/": "9e2c6088b30c6202cbabc978a3846dff",
"main.dart.js": "b6d31de216561009994d405c34ed51d1",
"version.json": "c9e262aaecb3272baf260cd4ad27982c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
