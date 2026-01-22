function search(event) {
  event.preventDefault();
  let searchInputElement = document.querySelector("#search-input");
  let cityElement = document.querySelector("#current-city");
  cityElement.innerHTML = searchInputElement.value;
}

function formatDate(date) {
  let minutes = date.getMinutes();
  let hours = date.getHours();
  let day = date.getDay();

  if (minutes < 10) {
    minutes = `0${minutes}`;
  }

  if (hours < 10) {
    hours = `0${hours}`;
  }

  let days = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
  ];

  let formattedDay = days[day];
  return `${formattedDay} ${hours}:${minutes}`;
}

let searchForm = document.querySelector("#search-form");
searchForm.addEventListener("submit", search);

let currentDateELement = document.querySelector("#current-date");
let currentDate = new Date();

currentDateELement.innerHTML = formatDate(currentDate);

let apiKey = "93f8179686ba40ef844dbtb0301o91b0";
let apiUrl = `https://api.shecodes.io/weather/v1/current?query={Johannesburg}&key=${apiKey}&units=metric`;

function showTemperature(response) {
  console.log(response.data.temperature.current);

  let temperature = document.querySelector("#temp");
  temperature.innerHTML = Math.round(response.data.temperature.current);

  let inputCity = document.querySelector("searchInputElement.value");
  let headings = document.querySelector("h1");
}

axios.get(apiUrl).then(showTemperature);
