import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="doughnut"
export default class extends Controller {
  static targets = ['allocationChart', 'holdingName', 'holdingAmount', 'holdingQuantity']


  connect() {
    const names = this.holdingNameTargets.map(el => el.innerText);
    const amounts = this.holdingAmountTargets.map(el => parseFloat(el.innerText.replace('R$', '').replace(',', '.')));
    const quantity = this.holdingQuantityTargets.map(el => parseFloat(el.innerText.replace('Qtd.:', '')));
    const result = [];

    for (let i = 0; i < amounts.length; i++) {
      if (i < quantity.length) {  // Ensure quantity has enough elements
        result.push(amounts[i] * quantity[i]);
      } else {
        // Handle case where quantity is shorter than amounts, if needed
        result.push(amounts[i]);
      }
    }

    console.log(result);


    new Chart(this.allocationChartTarget, {
      type: 'doughnut',
      data: {
        labels: names,
        datasets: [{
          label: 'R$ ',
          data: result,
          borderWidth: 1
        }]
      }
    });
  }
}
