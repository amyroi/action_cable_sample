class ActivityChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'activity'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    # ② coffeeから渡ってきたメッセージをブロードキャストする。
    ActionCable.server.broadcast 'activity', message: render_activity(data['message'])
  end

  private

    def render_activity(message)
      ApplicationController.renderer.render(partial: 'activity/activity', locals: { activity: {title: message} })
    end
end
