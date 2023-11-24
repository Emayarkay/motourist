document.addEventListener("DOMContentLoaded", function() {
  const images = document.querySelectorAll(".card_image img");
  const carImages = [
    "/assets/bentley-mark-vi.jpg",
    "/assets/ford-mustang.jpg",
    "/assets/MG-RV8.jpg"
    // Add more image URLs as needed
  ];
  console.log(carImages)

  images.forEach(image => {
    image.addEventListener("click", function() {
      const carId = this.dataset.carId;
      cycleImages(carId);
    });
  });

  function cycleImages(carId) {
    const carImage = document.querySelector(`img[data-car-id="${carId}"]`);
    const currentIndex = carImages.indexOf(carImage.src);
    const nextIndex = (currentIndex + 1) % carImages.length; // Get the next index, loop back to 0 if at the end
    carImage.src = carImages[nextIndex];
  }
});
