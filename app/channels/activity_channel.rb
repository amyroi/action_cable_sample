class ActivityChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'activiry'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak
  end
end
