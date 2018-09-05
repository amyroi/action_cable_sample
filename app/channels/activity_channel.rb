# frozen_string_literal: true

# サブスククリプション：購読者のチャネル
# ユーザーが受信するチャネル
class ActivityChannel < ApplicationCable::Channel
  def subscribed
    # ストリーム。サブスクライバ側(cofee)ににルーティングする
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
    ApplicationController.renderer.render(partial: 'activity/activity', locals: { activity: { title: message } })
  end
end
