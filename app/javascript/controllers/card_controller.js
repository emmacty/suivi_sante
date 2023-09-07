import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["expandedCard", "flipCard"] //, "expandedCardInner"];

  connect(){
    this.flipCardTarget.style.display = "none";
  }

  expand(event) {
    const patientDetails = event.currentTarget.querySelector(".flip") //.innerHTML;
    console.log(patientDetails)
    // patientDetails.classList.remove("d-none");
    this.flipCardTarget.classList.remove("flop")
    this.flipCardTarget.innerHTML = patientDetails.outerHTML;
    this.flipCardTarget.insertAdjacentHTML("beforeend", " <a class='btn close-button' data-action='click->card#close'>X</a>")
    this.flipCardTarget.style.display = "block";
  }

  close() {
    console.log("close")
    this.flipCardTarget.style.display = "none";
    patientDetails.classList.add("d-none");
  }

  flop() {
    this.flipCardTarget.classList.toggle("flop")
    // this.expandedCardTarget.style.display = "none";
    // patientDetails.classList.add("d-none");
  }

}
