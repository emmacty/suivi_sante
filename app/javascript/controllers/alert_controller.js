import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static values = {
    url: String,
    redirect: String
  }

  connect(){
    }

  delete(event) {
    event.preventDefault()

    var token = document.getElementsByName('csrf-token')[0].content
    Swal.fire({
      title: 'Êtes-vous sûr ?',
      icon: 'info',
      showCancelButton: false,
      confirmButtonColor: "#CE84F7",
      cancelButtonColor: '#9FD3FC',
      confirmButtonText: 'Oui'
    }).then((result) => {
      if (result.isConfirmed) {
        fetch(this.urlValue , {
        method: 'DELETE',
        headers: {
          "X-CSRF-Token": token,
          "Pragma": 'no-cache'
        }
    }).then(response => response.json)
    .then((data) => {
      window.location = this.redirectValue
    })
}
    })
  }
}
