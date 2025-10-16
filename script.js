window.addEventListener("scroll", () => {
  const overlay = document.querySelector(".overlay");
  const scrollY = window.scrollY;
  const blurValue = Math.min(scrollY / 50, 8);
  overlay.style.backdropFilter = `blur(${blurValue}px) brightness(0.9)`;
});
