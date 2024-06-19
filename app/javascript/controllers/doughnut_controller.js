import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="doughnut"
export default class extends Controller {
  static targets = ['allocationChart', 'holdingName', 'holdingAmount']


  connect() {
    const names = this.holdingNameTargets.map(el => el.innerText);
    const amounts = this.holdingAmountTargets.map(el => parseFloat(el.innerText.replace('R$', '').replace(',', '.')));

    new Chart(this.allocationChartTarget, {
      type: 'doughnut',
      data: {
        labels: names,
        datasets: [{
          label: 'Amount of holdings',
          data: amounts,
          borderWidth: 1
        }]
      }
    });
  }
}
