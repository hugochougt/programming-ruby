require_relative 'csv_reader'

csv_reader = CsvReader.new

ARGV.each do |csv_file|
  STDERR.puts "Processing #{csv_file}"
  csv_reader.read_in_csv_data(csv_file)
end

puts "Total value: #{csv_reader.total_value_in_stock}"
