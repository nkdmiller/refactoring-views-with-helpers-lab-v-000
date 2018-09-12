class Song < ActiveRecord::Base
  belongs_to :artist
  def artist_name
    if self.artist
      self.artist.name
    end
  end

  def artist_name=(name)
    if self.artist
      artist = Artist.find_by(name: self.artist.name)
      artist.name
    else 
      artist = Artist.find_or_create_by(name: name)
      self.artist = artist
      self.artist.name
    end
  end
end
