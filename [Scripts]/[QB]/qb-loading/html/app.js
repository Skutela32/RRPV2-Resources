const { ref, computed } = Vue

// Customize language for dialog menus and carousels here




const load = Vue.createApp({
    setup() {
      const carouselItems = [
        {
          text: 'Want to join our discord? discord.gg/Mw8ss32p3r',
          subText: 'Photo captured by: Luke',
        },
        {
          text: 'Struggling to start? either do /guidebook or check your inventory with Button "TAB"',
          subText: 'Photo captured by: skutela12',
        },
        {
          text: 'Want a place to call home? look no further!',
          subText: 'Photo captured by: gmartinez',
        },
        {
          text: 'We are always looking for people to join our Whitelisted Jobs!',
          subText: 'Photo captured by: Pieces',
        },
        {
          text: 'Please check the server rules through our discord before playing! discord.gg/Mw8ss32p3r',
          subText: 'Photo captured by: Luke',
        },
      ];
  
      const randomIndex = ref(0);
  
      const randomCarouselItem = computed(() => {
        const index = randomIndex.value;
        return carouselItems[index];
      });
  
      // Function to select a random carousel item
      function selectRandomItem() {
        randomIndex.value = Math.floor(Math.random() * carouselItems.length);
      }
  
      // Call selectRandomItem initially and set it to change periodically (e.g., every 5 seconds)
      selectRandomItem();
      setInterval(selectRandomItem, 5000); // Change every 5 seconds
  
      return {
        randomCarouselItem,
        // Other data properties remain the same
      };
    },
  });
  
  load.use(Quasar, { config: {} });
  load.mount('#loading-main');
  

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
