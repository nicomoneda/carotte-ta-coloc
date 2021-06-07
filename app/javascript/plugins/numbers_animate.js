function animateValue() {

    const element = document.querySelector("#value")
    const overlay = document.querySelector(".overlay")
    console.log(overlay)

    if (!element)
      return



    const start = parseInt(element.innerText);
    const end = parseInt(element.dataset.endNumber);

    if (start === end) return;
    var range = end - start;
    var current = start;
    var increment = end > start? 1 : -1;
    var stepTime = Math.abs(Math.floor(3000 / range));
    var timer = setInterval(function() {
        current += increment;
        element.innerHTML = current;
        if (current == end) {
            clearInterval(timer);
            console.log(element);
            overlay.classList.add('fade-out');
        }
    }, stepTime);
}

export { animateValue };
