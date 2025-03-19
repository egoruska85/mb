const pictures = document.querySelectorAll('.picture');

pictures.forEach((picture) => {
  picture.addEventListener('click', () => {
    pictures.forEach((pic) => pic.classList.add('away'));
    picture.classList.remove('away');
    picture.classList.toggle('active');

    if (!picture.classList.contains('active')) {
      pictures.forEach((pic) => pic.classList.remove('away'));
    }
  });
});
