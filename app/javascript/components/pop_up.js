function hidePopUp() {
  const card = document.querySelector(".form-pop-up");
  const bookingButton = document.querySelector(".booking-button");
  if (card && bookingButton) {
    card.style.display = "none";
    bookingButton.addEventListener("click", (event) => {
      event.preventDefault()
      card.style.display = "block";
    });
  };
};
export {hidePopUp};
