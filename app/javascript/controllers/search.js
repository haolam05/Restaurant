import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("Hello World!")
  }

  search() {
    document.getElementById("menu-products-container").innerHTML = "<%= render 'menu/products' %>";
  }
}