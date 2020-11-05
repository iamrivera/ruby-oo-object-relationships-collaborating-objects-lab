
class MP3Importer
    attr_accessor :path, :files

    @@all = []

    def initialize(path) 
        @path = path
    end

    def self.all 
        @@all 
    end
    
    def files
        # binding.pry - How do I get @path to work with Dir?
        @files = Dir["./spec/fixtures/mp3s/*"].collect {|file| File.basename(file)}
    end

    def import 
        # binding.pry
        self.files.each {|file| Song.new_by_filename(file)}
    end

end
