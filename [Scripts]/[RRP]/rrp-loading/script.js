// Define arrays of images and music URLs
const images = [
    'image1.jpg',
    'image2.jpg',
    'image3.jpg',
    // Add more image URLs here
];

const music = [
    'music1.mp3',
    'music2.mp3',
    'music3.mp3',
    // Add more music URLs here
];

// Function to select a random item from an array
function getRandomItem(array) {
    return array[Math.floor(Math.random() * array.length)];
}

// Get a random image and music
const randomImage = getRandomItem(images);
const randomMusic = getRandomItem(music);

// Set the image and music sources
document.getElementById('bg-image').src = randomImage;
document.getElementById('bg-music').src = randomMusic;

// Play the background music
document.getElementById('bg-music').play();
