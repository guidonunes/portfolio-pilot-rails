import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="balance-toggle"
export default class extends Controller {
  static targets = ["visible", "hidden"];

  toggle() {
    this.visibleTarget.classList.toggle("hidden");
    this.hiddenTarget.classList.toggle("hidden");
  }
}
