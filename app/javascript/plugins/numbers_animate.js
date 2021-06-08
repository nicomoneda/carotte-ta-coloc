function animateValue() {
  const div = document.querySelector('.current-points')
  const counter = document.querySelector("#my_carrots")
  const overlay = document.querySelector(".overlay")

  if (!counter)
    return

  const start = parseInt(counter.innerText);
  const end = parseInt(counter.dataset.endNumber);


  if (div.classList.contains('go_up')) {
  // div.classList.add('go_up');
    setTimeout(() => { div.classList.remove('go_up'); }, 3900);

    if (start === end) return;
    var range = end - start;
    var current = start;
    var increment = end > start? 1 : -1;
    var stepTime = Math.abs(Math.floor(4000 / range));
    var timer = setInterval(function() {
        current += increment;
        counter.innerHTML = current;
        if (current == end) {
            clearInterval(timer);
            overlay.classList.add('fade-out');
        }
    }, stepTime);
  }
}


export { animateValue };
