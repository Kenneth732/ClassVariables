class Album

    @@album_count = 0

    def initialize
        @@album_count += 1
    end

    def self.count
        @@album_count 
    end
end

Album.new
Album.new
Album.new

puts Album.count
  # => 3
  