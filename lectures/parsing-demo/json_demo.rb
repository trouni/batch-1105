require "json"

# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"

# serialized_data = File.read(filepath) # gives me a string with the content of the file

# JSON.parse(serialized_data)

data_to_store = {
  beatles: [
    {
      first_name: "John",
      last_name: "Lennon",
      instrument: "Guitar"
    },
    {
      first_name: "Mehdi",
      last_name: "Benjdi",
      instrument: "Guitar"
    }
  ]
}

File.open(filepath, "wb") do |file|
  data_as_string = JSON.generate(data_to_store)
  file.write(data_as_string)
end