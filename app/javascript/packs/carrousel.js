function slideAndScale(inner, cards, scale) {
  cards.map((card, i) => {
    card.setAttribute("data-scale", i + scale);
    inner.style.transform = "translateX(" + scale * 8.5 + "em)";
  });
}

function init(inner, cards, scale) {
  slideAndScale(inner, cards, scale);
  cards.map((card, i) => {

    card.addEventListener("click", () => {
      const id = card.getAttribute("data-scale");
      if (id !== 2) {
        scale -= id - 2;
        slideAndScale(inner, cards, scale);
      }
    }, false);
  });

    const nextBtn = document.querySelector(".next");
    const prevBtn = document.querySelector(".prev");
    nextBtn.addEventListener("click", () => {
      if (cards[cards.length -1].getAttribute("data-scale") != 2) {
        scale--;
      }
      slideAndScale(inner, cards, scale);
    }, false);
    prevBtn.addEventListener("click", () => {
      if (cards[0].getAttribute("data-scale") < 2) {
        scale++;
      }
      slideAndScale(inner, cards, scale);
    }, false);
};

function displayCarrousel() {
  let scale = 0;
  const inner = document.querySelector(".carrousel-container > .inner");
  const cards = Array.from(document.getElementsByClassName("card-caroussel"));
  init(inner, cards, scale);
}

global.displayCarrousel = displayCarrousel

document.addEventListener("DOMContentLoaded", function() {
  displayCarrousel();
})
