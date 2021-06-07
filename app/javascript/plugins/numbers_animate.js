function animateValue() {
  console.log("ckhbsdkjhvq")
    const element = document.querySelector("#value")

    if (!element)
      return



    const start = parseInt(element.innerText);
    console.log(start)
    const end = parseInt(element.dataset.endNumber);
    console.log(end)

    if (start === end) return;
    var range = end - start;
    var current = start;
    var increment = end > start? 1 : -1;
    var stepTime = Math.abs(Math.floor(1000 / range));
    var timer = setInterval(function() {
        current += increment;
        element.innerHTML = current;
        if (current == end) {
            clearInterval(timer);
        }
    }, stepTime);
}

export { animateValue };
