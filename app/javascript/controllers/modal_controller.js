import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["openCountOutput"]

  connect() {
    let openCounterController = this;
    this.openCount = 0;

    // The listener for the Bootstrap event via jQuery
    $(this.element).on('show.bs.modal', (event) => {
      // openCounterController.incrementCount();
      console.log("Hello!");
    })
  }

  // incrementCount() {
  //   this.openCount++;
  //   this.openCountOutputTarget.textContent = this.openCount;
  // }
}
