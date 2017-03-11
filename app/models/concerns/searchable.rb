module Searchable
  extend ActiveSupport::Concern

  included do
    include Elasticsearch::Model

    settings index: { number_of_shards: 1 } do
      mapping dynamic: false do
        indexes :title, type: :text, analyzer: 'english'
        indexes :artist, type: :text, analyzer: 'english'
      end
    end

    #def self.search(query)
      # ...
    #end
  end
end