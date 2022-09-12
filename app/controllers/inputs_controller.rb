class InputsController < ApplicationController
  def index
    render json: { message: "heelo from index", message2: "hello from Ali" }
  end
end
