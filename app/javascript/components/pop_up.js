function hidePopUp() {
  const card = document.querySelector(".popup");
  const bookingButton = document.querySelector(".booking-button");
  if (card || bookingButton) {
    card.style.display = "none";
    bookingButton.addEventListener("click", (event) => {
      event.preventDefault()
      card.style.display = "block";
    });
  };
};


function calculatePrice() {
  const startYear = parseInt(document.getElementById("booking_start_date_1i").value);
  const startMonth = parseInt(document.getElementById("booking_start_date_2i").value);
  const startDay = parseInt(document.getElementById("booking_start_date_3i").value);
  const start = new Date(startYear, startMonth, startDay)
  const endYear = parseInt(document.getElementById("booking_end_date_1i").value);
  const endMonth = parseInt(document.getElementById("booking_end_date_2i").value);
  const endDay = parseInt(document.getElementById("booking_end_date_3i").value);
  const end = new Date(endYear, endMonth, endDay)
  const dayPrice = parseInt(document.querySelector(".day-price").innerText);
  const totalPrice = document.querySelector(".total-price")
  // const timeDifference = end.getTime() - start.getTime();
  // const dayDifference = timeDifference/(1000 * 3600 * 24);
  const dayDifference = ((end - start) / (1000 * 3600 * 24))+1;
  console.log(dayDifference);
  const price = dayPrice * dayDifference;
  totalPrice.innerHTML = `${price} SEK`;
};


function showPrice() {
  const startYear = document.getElementById("booking_start_date_1i");
  const startMonth = document.getElementById("booking_start_date_2i");
  const startDay = document.getElementById("booking_start_date_3i");
  const endYear = document.getElementById("booking_end_date_1i");
  const endMonth = document.getElementById("booking_end_date_2i");
  const endDay = document.getElementById("booking_end_date_3i");
  const inputs = [startYear, startMonth, startDay, endYear, endMonth, endDay]
   inputs.forEach(input => {
    if (input){
      input.addEventListener("change", calculatePrice);
    }
  });

};

export {hidePopUp, showPrice};
