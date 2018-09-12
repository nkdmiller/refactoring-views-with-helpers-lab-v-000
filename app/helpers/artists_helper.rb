module ArtistsHelper
  def display_artist(song)
    Artist.all.each do |artist|
      if artist.songs.include?(song)
        return  link_to artist.name, artist_path(artist)
      end
    end
    link_to "Add Artist", edit_song_path(song)
  end
end
