class VotesController < ApplicationController
  def new
    @magazines = Magazine.all
    
  end
end
