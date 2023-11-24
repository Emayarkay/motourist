import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cost-generator"
export default class extends Controller {
  static targets = ['costElement']
  static values = {
    cost: Number
  }
  connect() {
    console.log('hi');
  }

  updateCost(event) {
    const dates = event.target.value.split(' to ')
    const start = new Date(dates[0])
    const end = new Date(dates[1])
    const range = parseInt(end.getTime() / 1000) - parseInt(start.getTime() / 1000)
    const minutes = range / 60
    const hours = minutes / 60
    const days = hours / 24 + 1
    if (!isNaN(days)) {
      this.costElementTarget.innerText = `Total Cost: £${days * this.costValue}`
    } else {
      this.costElementTarget.innerText = `Total Cost: £${this.costValue}`
    }
  }
}
