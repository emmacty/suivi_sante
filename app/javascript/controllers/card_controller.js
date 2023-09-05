import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["expandedCard", "expandedCardInner"];

  connect(){
  console.log("hello")
    this.expandedCardTarget.style.display = "none";
  }

  expand(event) {
    console.log("hello")
    const patientDetails = event.currentTarget.innerHTML;
    this.expandedCardInnerTarget.innerHTML = patientDetails;
    this.expandedCardTarget.style.display = "block";
  }

  close() {
    this.expandedCardTarget.style.display = "none";
  }
}
