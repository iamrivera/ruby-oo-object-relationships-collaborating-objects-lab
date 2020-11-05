
class MP3Importer
    attr_accessor :path

    @@all = []

    def initialize(path) 
        @path = path
    end

    def self.all 
        @@all 
    end
    
    def files
        # binding.pry
        # Dir.chdir(@path)
        # Dir.glob("#{@path}/*.mp3").collect {|file| file.gsub("#{@path}/","")}
        Dir["#{@path}/*.mp3"].collect {|file| File.basename(file)}
    end

    def import 
        # binding.pry
        self.files.each {|file| Song.new_by_filename(file)}
    end

end

