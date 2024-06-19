import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="render-oedit"
export default class extends Controller {
  static targets = ["modalBody"];

  async render(event) {
    event.preventDefault();

    const response = await fetch(event.currentTarget.href);
    const data = await response.json();

    this.modalBodyTarget.innerHTML = data.content;
    event.target.nextElementSibling.click();
  }
}
