Song = Struct.new(:title, :name, :length)
File.open("songdata") do |song_file|

  songs = Array.new

  song_file.each do |line|
    file, length, name, title = line.split(/\s*\|\s*/)
    name.squeeze!(" ")
    mins, secs = length.scan(/\d+/)
    songs << Song.new(title, name, mins.to_i * 60 + secs.to_i)
  end

  songs.each {|song| puts song}
end

