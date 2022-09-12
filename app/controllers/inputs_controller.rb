class InputsController < ApplicationController
  require "csv"
  def index
    CSV.foreach("breweries_us.csv") do |row|
      render json: row.as_json
    end
  end
end
