class AlbumSong < ActiveRecord::Base
   belongs_to :album
   belongs_to :song
   belongs_to :artist


end
