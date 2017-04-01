require 'elasticsearch/model'

class Song < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
end

=begin
class Song < ApplicationRecord
  Elasticsearch::Model.client = Elasticsearch::Client.new url: ENV['https://zp7bpiu6:uv3576rppz3es5bu@boxwood-6146436.us-east-1.bonsaisearch.net'], log: true
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  include Searchable

#  searchable do
#  	text :tid, :mxmid, :title, :artist, :lyrics_hash
#  end
  lyrics_index Rails.application.class.parent_name.underscore
  Song self.name.downcase

end

  def as_indexed_json(options = nil)
    self.as_json({
      only: [:tid, :mxmid, :title, :artist, :lyrics_hash],
      #include: {
      #  artist: { only: :name },
      #  title: { only: :name },
      #}
    })
  end

  def self.search(query)
    __elasticsearch__.search(
    {
      query: {
        multi_match: {
          query: query,
          fields: ['title^5', 'body']
        }
      },
    end
  end



Song.mappings.to_hash
Song.settings.to_hash

def self.search(query)
  __elasticsearch__.search(
    {
      query: {
        multi_match: {
          query: query,
          fields: ['title^10', 'text']
        }
      }
    }
  )
end

=end
