const { ref } = Vue

// Customize language for dialog menus and carousels here

const load = Vue.createApp({
    setup () {
        // Set the initial slide based on the random selection
    const randomSlideIndex = Math.floor(Math.random() * 5) + 1; // Assuming you have 5 slides
    const initialSlide = ref(randomSlideIndex);
    return {
        firstslide: ref(initialSlide.value),
      CarouselText1: 'Want to join our discord? discord.gg/Mw8ss32p3r',
      CarouselSubText1: 'Photo captured by: Luke',
      CarouselText2: 'Struggling to start? either do /guidebook or check your inventory with Button "TAB"',
      CarouselSubText2: 'Photo captured by: skutela12',
      CarouselText3: 'Want a place to call home? look no further!',
      CarouselSubText3: 'Photo captured by: gmartinez',
      CarouselText4: 'We are always looking for people to join our Whitelisted Jobs!',
      CarouselSubText4: 'Photo captured by: Pieces',
      CarouselText5: 'Please check the server rules through our discord before playing! discord.gg/Mw8ss32p3r',
      CarouselSubText5: 'Photo captured by: Luke',

      firstslide: firstslide,

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

    // Select a random slide
    const randomSlideIndex = Math.floor(Math.random() * 5) + 1; // Assuming you have 5 slides
    load.firstslide.value = randomSlideIndex;
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
