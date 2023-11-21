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
    current_user_id = $("#current_user_id").val();
    room_id = $("#room_id").val();
    console.log(current_user_id);
    console.log(room_id);
  },

  speak: function(message) {
    current_user_id = $("#current_user_id").val();
    room_id = $("#room_id").val();
    return this.perform('speak',{
      message: message,
      current_user_id: current_user_id,
      room_id: room_id,
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
