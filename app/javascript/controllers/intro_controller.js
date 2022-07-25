import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "intro", "header", "logo" ]

  connect() {
    console.log(this.logoTarget)
    setTimeout(() => {
      this.logoTarget.classList.add('active')
    }, 400)

    setTimeout(() => {
      this.logoTarget.classList.remove('active')
      this.logoTarget.classList.add('fade')
    }, 2000);

    setTimeout(() => {
      this.introTarget.style.top = '-100vh'
    }, 3000);
  }
}
