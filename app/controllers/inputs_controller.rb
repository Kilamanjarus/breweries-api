class InputsController < ApplicationController
  def index
    render json: {message: "heelo from index"}
  end
end
