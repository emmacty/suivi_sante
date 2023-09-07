import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["navItem"];

  connect() {
    this.highlightNavItem();
  }

  highlightNavItem() {
    const currentPath = window.location.pathname;

    this.navItemTargets.forEach((navItem) => {
      const link = navItem.querySelector("a").getAttribute("href");

      if (link === currentPath) {
        navItem.classList.add("active");
      } else {
        navItem.classList.remove("active");
      }
    });
  }
}
