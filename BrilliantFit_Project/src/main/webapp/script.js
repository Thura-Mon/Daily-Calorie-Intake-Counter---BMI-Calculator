const bmiText = document.getElementById("bmi");
const descText = document.getElementById("desc");
const form = document.querySelector("form");

form.addEventListener("submit", onFormSubmit);
form.addEventListener("reset", onFormReset);

function onFormReset() {
  bmiText.textContent = 0;
  bmiText.className = "";
  descText.textContent = "N/A";
}

function onFormSubmit(e) {
  e.preventDefault();
  
  const weight = parseFloat(form.weight.value);
  const foot = parseFloat(form.foot.value);
  const inch = parseFloat(form.inch.value);

  

  if (isNaN(foot) || isNaN(weight) || isNaN(foot) || weight <= 0 || inch <= 0) {
    alert("Please enter a valid weight and height");
    return;
  }
  var result = (foot * 12) + inch;
  const bmi =(weight / (result*result)) * 703;
  const desc = interpretBMI(bmi);

  bmiText.textContent = bmi.toFixed(2);
  bmiText.className = desc;
  descText.innerHTML = `You are <strong>${desc}</strong>`;
}

function interpretBMI(bmi) {
  if (bmi < 18.5) {
    return "underweight";
  } else if (bmi < 25) {
    return "healthy";
  } else if (bmi < 30) {
    return "overweight";
  } else {
    return "obese";
  }
}