# Class Constants

class Album

    GENRES = ['Hip-Hop', "Pop", "Jaz"]

    @@album_count = 0

    def initialize(genre)
        if GENRES.include?(genre)
            @@album_count += 1
        end
    end
end
puts Album::GENRES