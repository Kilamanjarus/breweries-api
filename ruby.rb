# test = {
#   "Valley Brewing Co.": "157 Adams St., Stockton, California, 95204",
# }

# test.each do |key, value|
#   puts value
# end

test = [
  {
    "data": {
      "place_id": 335923324,
      "licence": "Data © OpenStreetMap contributors, ODbL 1.0. https://osm.org/copyright",
      "osm_type": "way",
      "osm_id": 10536384,
      "boundingbox": [
        "37.973965285714",
        "37.974065285714",
        "-121.29589514286",
        "-121.29579514286",
      ],
      "lat": "37.97401528571429",
      "lon": "-121.29584514285715",
      "display_name": "157, Adams Street, Stockton, San Joaquin County, California, 95204, United States",
      "class": "place",
      "type": "house",
      "importance": -0.51,
      "address": {
        "house_number": "157",
        "road": "Adams Street",
        "city": "Stockton",
        "county": "San Joaquin County",
        "state": "California",
        "ISO3166-2-lvl4": "US-CA",
        "postcode": "95204",
        "country": "United States",
        "country_code": "us",
      },
    },
    "cache_hit": "null",
  },
]

p test[0][:data][:lat]
