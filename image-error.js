document.addEventListener("DOMContentLoaded", function () {
    const galleryImages = document.querySelectorAll('.gimg img');

    galleryImages.forEach(function (img) {
        img.onerror = function () {
            this.onerror = null;
            this.src = 'img/error.webp';
        };
    });
});