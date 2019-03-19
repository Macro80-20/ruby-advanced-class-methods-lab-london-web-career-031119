require'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  #this method will initalize an instance of the class Song . then assign this information to @all . 
  def self.create
    person = Song.new
    @@all << person # > could do person.save
    person
  end


def self.new_by_name(name)
 person =Song.new
 person.name = name
 person
 end

 def self.create_by_name(name)
  person = Song.new
  person.name = name 
  person.save
  person
end

def self.find_by_name(name)
  all.detect { |id| id.name == name}
  
end

#  def self.find_or_create_by_name(song)
#    if 
#  find_by_name(song) != nil
# find_by_name(song)
#    else 
#     create_by_name(song)
#    end
#   end

def self.find_or_create_by_name(song)
  # if_this_is_a_true_value ? then_the_result_is_this : else_it_is_this
 find_by_name(song)? find_by_name(song) : create_by_name(song)
  end

def self.alphabetical 
# all.map {|x| x.name}.sort
all.sort_by {|x| x.name}
end

def self.new_from_filename (filename)  #>"Thundercat - For Love I Come.mp3"
  arr = filename.split (/[-,.]/)
  #> at this point arr = ["Thundercat ", " For Love I Come"] 
 arr.pop
 #> creating an instance with the class method(filename)
person = Song.create_by_name(arr[1].strip)  
#> then we assign artist_name variable with the inforamtion 
person.artist_name=(arr[0].strip)  
#got to return it so the instance song = Song.new.new_from_from_file_name has all this information
  person 
end



def self.create_from_filename(filename)
   person = new_from_filename(filename).save #> initalized and  saves the song and artist name 

end

def self.destroy_all
  @@all = [] 
end



end


song_1 = Song.create_by_name("Thriller")
 song_2 = Song.create_by_name("Blank Space")
   song_3 = Song.create_by_name("Call Me Maybe")
   song = Song.new_from_filename("Thundercat - For Love I Come.mp3")

      # expect(song.name).to eq("For Love I Come")
      # expect(song.artist_name).to eq("Thundercat")
binding.pry
p "fer"