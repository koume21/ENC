import consumer from "./consumer"

let button = document.getElementById('text-button');


const appRoom = consumer.subscriptions.create("RoomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const message = document.getElementById('message');
    message.insertAdjacentHTML('beforeend', data["message"]);
    addMessageClass();
  },

  speak: function(message) {
    let current_user_id = $("#current_user_id").val();
    let room_id = $("#room_id").val();
    return this.perform('speak',{
      message: message,
      current_user_id: current_user_id,
      room_id, room_id,
    });
  }
});
window.addEventListener("keydown", function(e) {
  if (e.key === 'Enter') {
    appRoom.speak(e.target.value);
    e.target.value='';
    e.preventDefault();
  }
})
