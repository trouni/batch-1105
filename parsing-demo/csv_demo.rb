require "csv"

# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"

CSV.foreach(filepath, headers: :first_row) do |row|
  puts '----'
  # p row # array of strings
  puts "#{row["First Name"]} #{row["Last Name"]} plays the #{row["Instrument"]}"
end



# WRITING

CSV.open(filepath, "wb", force_quotes: true) do |csv|
  csv << ["First Name", "Last Name", "Instrument", "Age"]
  csv << ["John", "Lennon", "Guitar", 39]
end