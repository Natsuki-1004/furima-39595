function item_price() {
const priceInput = document.getElementById("item-price");
const addTaxDom = document.getElementById("add-tax-price");
const addProfitDom = document.getElementById("profit");
const tax = 0.1;

priceInput.addEventListener("input", () => {
  const inputValue = priceInput.value;
  const taxAmount = Math.floor(inputValue * tax);
  addTaxDom.innerHTML = `${taxAmount}`;
  const profitAmount = Math.floor(inputValue - taxAmount);
  addProfitDom.innerHTML = `${profitAmount}`;
});
}

window.addEventListener('turbo:load', () => {
  item_price();
});