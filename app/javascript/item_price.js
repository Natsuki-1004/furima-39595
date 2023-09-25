const priceInput = document.getElementById("item-price");

function calculateSalesFeeAndProfit(price) {
  // 販売手数料の計算（例: 10%とする）
  const salesFeePercentage = 0.1; // 10%の場合
  const salesFee = price * salesFeePercentage;

  // 利益の計算
  const profit = price - salesFee;

  return { salesFee, profit };
}

// 金額が変更されたときに計算と表示を更新
priceInput.addEventListener("input", () => {
  const price = parseFloat(priceInput.value);
  if (!isNaN(price)) {
    const { salesFee, profit } = calculateSalesFeeAndProfit(price);
    
    // 結果をHTMLに表示
    const salesFeeElement = document.getElementById("add-tax-price");
    salesFeeElement.innerHTML = `${Math.floor(salesFee)}`;

    const profitElement = document.getElementById("profit");
    profitElement.innerHTML = `${Math.floor(profit)}`;
  } else {
    // 金額が無効な場合、表示をクリア
    const salesFeeElement = document.getElementById("add-tax-price");
    salesFeeElement.innerHTML = "";

    const profitElement = document.getElementById("profit");
    profitElement.innerHTML = "";
  }
});





