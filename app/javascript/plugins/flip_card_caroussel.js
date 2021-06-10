const initFlip = () => {

    const carouselItems = document.querySelectorAll(".flip-card")


    carouselItems.forEach((carouselItem) => {

        carouselItem.addEventListener('click', (e) => {
            console.log("je suis dans le click")
            const frontCard = e.currentTarget.querySelector('.flip-card-front')
            const backCard = e.currentTarget.querySelector('.flip-card-back')
            console.log(backCard)
            frontCard.classList.toggle('flipped')
            backCard.classList.toggle('flipped')
        })
    })

    // const frontCard = document.querySelector(".back_card_carroussel")
    // if (frontCard){
    //     if(frontCard.style.transform == "rotateY(180deg)"){
    //         frontCard.style.transform = "rotateY(0deg)";
    //     }
    //     else{
    //         frontCard.style.transform = "rotateY(180deg)";
    //     }
    // }
}

export { initFlip };
