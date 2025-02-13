// script.js
const container = document.querySelector('.image-scroll-container');

container.addEventListener('wheel', (event) => {
    event.preventDefault(); // Предотвращаем стандартное поведение прокрутки
    container.scrollLeft += event.deltaY; // Прокручиваем контейнер влево или вправо
});
