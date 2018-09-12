class Song < ActiveRecord::Base
  belongs_to :artist
  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    @artist = artist.find(self.artist_id)
    @artist.name = name
  end
end
