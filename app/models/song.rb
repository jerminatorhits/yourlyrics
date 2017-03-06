class Song < ApplicationRecord
	
  searchable do
  	text :tid, :mxmid, :title, :artist, :lyrics_hash
  end

end
