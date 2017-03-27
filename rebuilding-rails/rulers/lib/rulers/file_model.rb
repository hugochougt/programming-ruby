require 'json'

module Rulers
  module Model
    class FileModel
      attr_accessor :hash

      def self.all
        files = Dir["db/quotes/*.json"]
        files.map { |f| FileModel.new f }
      end

      def self.find(id)
        begin
          FileModel.new("db/quotes/#{id}.json")
        rescue
          return nil
        end
      end

      def self.create(attrs)
        id = max_id + 1
        File.open("db/quotes/#{id}.json", "w") do |f|
          f.write <<~JSON
            {
              "submitter": "#{attrs["submitter"]}",
              "quote": "#{attrs["quote"]}",
              "attribution": "#{attrs["attribution"]}"
            }
          JSON
        end

        FileModel.new "db/quotes/#{id}.json"
      end

      def self.max_id
        files = Dir["db/quotes/*.json"]
        names = files.map { |f| f.split("/")[-1] }
        names.map { |n| n[0...-5].to_i }.max
      end

      def initialize(filename)
        @filename = filename

        # If filename is "dir/37.json", @id is 37
        basename = File.split(filename)[-1]
        @id = File.basename(basename, ".json").to_i

        obj = File.read(filename)
        @hash = JSON.parse(obj)
      end

      def [](name)
        hash[name.to_s]
      end

      def []=(name, value)
        hash[name.to_s] = value
      end
    end
  end
end
