class SearchController < ApplicationController

  def search
    unless params[:query].blank?
      @results = Page.search( params[:query] )
      @songs = @results
    end
  end

end