import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()

export default class extends Controller {
  connect() {
    new flatpickr(this.element, {
      disableMobile: true,
    });
  }

}
