function animateValue() {
  const li = document.querySelector('.current-points')
  const counter = document.querySelector("#my_carrots")
  const overlay = document.querySelector(".overlay")

  if (!counter)
    return

  const start = parseInt(counter.innerText);
  const end = parseInt(counter.dataset.endNumber);

  if (start === end)
    return



  overlay.classList.remove('d-none')


  li.classList.add('go_up');
  setTimeout(() => { li.classList.remove('go_up'); }, 2900);

  if (start === end) return;
  var range = end - start;
  var current = start;
  var increment = end > start? 1 : -1;
  var stepTime = Math.abs(Math.floor(3000 / range));
  var timer = setInterval(function() {
      current += increment;
      counter.innerHTML = current;
      if (current == end) {
          clearInterval(timer);
          overlay.classList.add('fade-out');
      }
  }, stepTime);

}

export { animateValue };
