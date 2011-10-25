class DetailsController < ApplicationController
  def show
    @entry= Entry.find_by_random17(params[:id])
  end

end
