App.activity = App.cable.subscriptions.create "ActivityChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    alert data['message']

  speak: (message) ->
    @perform 'speak', message: message

# event発火でspeakを呼べる
$(document).on 'keypress', '[data-behavior~=activity_speaker]', (event) ->
  if event.keyCode is 13 # return = send
    App.activity.speak event.target.value
    event.target.value = ''
    event.preventDefault()