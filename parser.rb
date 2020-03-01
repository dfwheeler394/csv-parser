require 'csv'

def most_successful(number, max_year, file_path)
  # TODO: return the `number` of most successful movies before `max_year`
  hash_array = []
  CSV.foreach(file_path) do |row| ##row is an array
    hash_array << { name: row[0], year: row[1].to_i, earnings: row[2].to_i } if row[1].to_i < max_year
  end
  hash_array.sort_by { |hsh| hsh[:earnings] }.reverse.first(number)
end

## the row is an array
## foreach is a class method, if we want to use .each we would need to create CSV.new
