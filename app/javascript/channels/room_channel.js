import consumer from "./consumer"

const appRoom = consumer.subscriptions.create("RoomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const message = document.getElementById('message');
    message.insertAdjacentHTML('beforeend', data['message'])
  },

  speak: function(message) {
    return this.perform('speak',{message: message});
  }
});
window.addEventListener("keydown", function(e) {
  if (e.key === 'Enter') {
    appRoom.speak(e.target.value);
    e.target.value='';
    e.preventDefault();
  }
})
