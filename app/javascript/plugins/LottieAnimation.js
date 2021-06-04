
const initMarkAsDone = () => {
  const l = document.querySelector('lottie-player')

  if (l) {
      l.addEventListener('click', (event) => {l.play()})
  }
}

export { initMarkAsDone };
