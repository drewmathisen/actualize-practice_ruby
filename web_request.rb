require 'http'

pp response = HTTP.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json").parse(:json)