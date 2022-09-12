class InputsController < ApplicationController
  require "csv"

  def index
    @breweries = []
    address = []
    @distancetest = ""
    CSV.foreach(("breweries_us.csv"), headers: true, col_sep: ",") do |row|
      @breweries << { row[0] => row[2] }
      address << row[2]
    end
    test = @breweries.second
    test.each do |key, value|
      @distancetest = value
    end
    coords = Geocoder.search(@distancetest)
    coords = coords[0][:data][:lat]

    render json: coords.as_json
  end

  def search
    test = @breweries.first
    # find distance between userseach & first location

    render json: { message: "response" }
  end
end
