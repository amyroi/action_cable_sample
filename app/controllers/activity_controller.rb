class ActivityController < ApplicationController
  def show
    @activities = [{title: "a", message: "message"}]
  end
end
