class InputsController < ApplicationController
  require "csv"

  def index
    breweries = []
    CSV.foreach(("breweries_us.csv"), headers: true, col_sep: ",") do |row|
      breweries << { row[0] => row[2] }
    end
    render json: breweries.as_json
  end
end
