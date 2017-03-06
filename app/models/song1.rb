class Song1 < ApplicationRecord

  searchable do
  	# text :tid, :mxmid, :title, :artist, :lyrics_hash
  	text :artist
  end

end
