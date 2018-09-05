# frozen_string_literal: true

# サーバーでwebsocketを受け付けるたびにインスタンス化される
# 全てのサブスクライバチャネルの親になる
# 認証や承認
# 特定できたユーザーのみconnectionを許可する
# 1コネクションで1ユーザーを接続させるときに、ユーザーが接続している全てのconnectionwを取得したり
# 切断することができる
module ApplicationCable
  class Connection < ActionCable::Connection::Base
  end
end
