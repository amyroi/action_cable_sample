class ActivityChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'activity'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    ActionCable.server.broadcast 'activity', message: data['message']
  end
end
