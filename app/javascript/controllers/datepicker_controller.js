import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()

export default class extends Controller {

  connect() {
    new flatpickr(this.element, {
      disableMobile: true,
      enableTime:      true,
      altInput:        true,
      time_24hr:       true,
      defaultHour:      12,
      defaultMinute:    0,
      altFormat:       "d-m-Y à H:i",
      minuteIncrement: 5
    });
  }

}
