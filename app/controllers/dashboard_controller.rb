class DashboardController < ApplicationController
  def index
  end

  def comments
    data = [
      {author: "igaiga", text: "This is a comment from rails"},
      {author: "matz", text: "This is *another* comment from rails"}
    ]
    render json: data.to_json
  end
end
