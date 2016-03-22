class ClassifiedsController < ApplicationController
  def index
    if params[:location].present?
      @classifieds = Classified.near(params[:location], params[:distance] || 10, order: :distance)
    else
      @classifieds = Classified.all
    end
end
end
