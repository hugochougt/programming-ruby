require "sqlite3"
require "rulers/sqlite_model"

class MyTable < Rulers::Model::SQLite; end

STDERR.puts MyTable.schema.inspect

MyTable.create "title" => "It happened!", "posted" => 1, "body" => "It did!"
MyTable.create "title" => "I saw it!"

puts "Count: #{MyTable.count}"

(1..MyTable.count).each do |id|
  row = MyTable.find id
  puts "Found title \"#{row['title']}\"."
end

mt = MyTable.create "title" => "I saw it again!"
mt["title"] = "I really did!"
mt.save!

puts "Title: #{MyTable.find(mt['id'])['title']}"
