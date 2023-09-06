import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["expandedCard", "expandedCardInner"];

  connect(){
    this.expandedCardTarget.style.display = "none";
  }

  expand(event) {
    const patientDetails = event.currentTarget.innerHTML;
    this.expandedCardInnerTarget.innerHTML = patientDetails;
    this.expandedCardTarget.style.display = "block";
  }

  close() {
    this.expandedCardTarget.style.display = "none";
  }

}
