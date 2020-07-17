function initCalendar() {
 const next = document.querySelector("#nextMonth")
 const prev = document.querySelector("#prevMonth")
 if (next && prev) {
  next.href = next.href + "#calendar"
  prev.href = prev.href + "#calendar"
 }
}

export {initCalendar};
