const { ref } = Vue

// Customize language for dialog menus and carousels here

const load = Vue.createApp({
  setup () {
    return {
        // Update these properties to use the shuffled images
        CarouselText1: images[0].caption,
        CarouselSubText1: 'Photo captured by: Luke',
        CarouselText2: images[1].caption,
        CarouselSubText2: 'Photo captured by: skutela12',
        CarouselText3: images[2].caption,
        CarouselSubText3: 'Photo captured by: gmartinez',
        CarouselText4: images[3].caption,
        CarouselSubText4: 'Photo captured by: Pieces',
        CarouselText5: images[4].caption,
        CarouselSubText5: 'Photo captured by: Luke',

      DownloadTitle: 'Initializing Real Roleplay',
      DownloadDesc: "Hold tight while we begin downloading all the resources/assets required to play on Real Roleplay. \n\nIf you require any suppot please join our discord! discord.gg/ugyn8TpUjv",

      SettingsTitle: 'Settings',
      AudioTrackDesc1: 'When disabled the current audio-track playing will be stopped.',
      AutoPlayDesc2: 'When disabled carousel images will stop cycling and remain on the last shown.',
      PlayVideoDesc3: 'When disabled video will stop playing and remain paused.',

      KeybindTitle: 'Default Keybinds',
      Keybind1: 'Open Inventory',
      Keybind2: 'Cycle Proximity',
      Keybind3: 'Open Phone',
      Keybind4: 'Toggle Seat Belt',
      Keybind5: 'Open Target Menu',
      Keybind6: 'Radial Menu',
      Keybind7: 'Open Hud Menu',
      Keybind8: 'Talk Over Radio',
      Keybind9: 'Open Scoreboard',
      Keybind10: 'Vehicle Locks',
      Keybind11: 'Toggle Engine',
      Keybind12: 'Pointer Emote',
      Keybind13: 'Keybind Slots',
      Keybind14: 'Hands Up Emote',
      Keybind15: 'Use Item Slots',
      Keybind16: 'Cruise Control',

      firstap: ref(true),
      secondap: ref(true),
      thirdap: ref(true),
      firstslide: ref(1),
      secondslide: ref('1'),
      thirdslide: ref('5'),
      audioplay: ref(true),
      playvideo: ref(true),
      download: ref(true),
      settings: ref(false),
    }
  }
})

load.use(Quasar, { config: {} })
load.mount('#loading-main')

var audio = document.getElementById("audio");

function audiotoggle() {
    if (currentAudio) {
        if (audioPaused) {
            // If audio is paused, resume playback
            currentAudio.play();
            audioPaused = false;
        } else {
            // If audio is playing, pause it
            currentAudio.pause();
            audioPaused = true;
        }
    }
}


// Your existing Vue.js setup and other code


  // Shuffle Images
const images = [
    {
      src: 'image1.jpg',
      caption: 'Caption 1',
    },
    {
      src: 'image2.jpg',
      caption: 'Caption 2',
    },
    {
      src: 'image3.jpg',
      caption: 'Caption 3',
    },
    // Add more images and captions here
  ];

  function shuffleArray(array) {
    for (let i = array.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [array[i], array[j]] = [array[j], array[i]];
    }
  }  

  shuffleArray(images);

  // Shuffle Songs
const songs = [
    '/assets/audio/song1.mp3',
    '/assets/audio/song2.mp3',
    '/assets/audio/song3.mp3',
    '/assets/audio/song4.mp3',
    '/assets/audio/song5.mp3',
    // Add more song URLs here
];

let currentAudio = null;
let audioPaused = false; // Variable to track if audio is paused

function playRandomSong() {
    if (currentAudio) {
        currentAudio.pause();
    }

    const randomIndex = Math.floor(Math.random() * songs.length);
    const newAudio = new Audio(songs[randomIndex]);
    newAudio.volume = 0.5;
    newAudio.play();

    currentAudio = newAudio;
    audioPaused = false; // Reset the audioPaused variable
}


playRandomSong();

  
  


function videotoggle() {
    var video = document.getElementById("video");
    if (video.paused) {
        video.play();
    } else {
        video.pause();
    }
}

let count = 0;
let thisCount = 0;

const handlers = {
    startInitFunctionOrder(data) {
        count = data.count;
    },

    initFunctionInvoking(data) {
        document.querySelector(".thingy").style.left = "0%";
        document.querySelector(".thingy").style.width = (data.idx / count) * 100 + "%";
    },

    startDataFileEntries(data) {
        count = data.count;
    },

    performMapLoadFunction(data) {
        ++thisCount;

        document.querySelector(".thingy").style.left = "0%";
        document.querySelector(".thingy").style.width = (thisCount / count) * 100 + "%";
    },
};

window.addEventListener("message", function (e) {
    (handlers[e.data.eventName] || function () {})(e.data);
});
