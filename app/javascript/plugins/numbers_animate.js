function animateValue() {
  const div = document.querySelector('.current-points')
  const page = document.querySelector("#carot_card_select")
  const counter = document.querySelector("#my_carrots")
  const overlay = document.querySelector(".overlay")

  if (!counter)
    return

  const start = parseInt(counter.dataset.startNumber);
  const end = parseInt(counter.dataset.endNumber);


  console.log(start)
  console.log(end)



  if (page) {

    div.classList.add('go_up');
    setTimeout(() => { div.classList.remove('go_up'); }, 2900);

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
}

export { animateValue };
