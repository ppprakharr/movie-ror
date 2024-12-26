import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['menu']

  connect(e) {
  console.log('menu connected');
  }
  toggle(){
    this.menuTarget.classList.toggle('hidden')

  

}
}