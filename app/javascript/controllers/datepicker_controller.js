import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()

export default class extends Controller {
  connect() {
    flatpickr(this.element)
  }

  connect() {
    new flatpickr(this.element, {
      disableMobile: true
      // more options available on the documentation!
    });
  }

}
