class TripsController < ApplicationController

  def index

  end

  def new
    @trip = Trip.new
    render :layout => false
  end

  def create 
    @trip = Trip.new(params[:trip])
    respond_to do |format|
      if @trip.save 
        format.js
      end
    end
  end 

  def images
    @trip = Trip.new
    if params[:url]
      @images = @trip.scrape_images(params[:url])
    end
  end

  def new 
    @trip = Trip.new(:primary_url => params[:url])
    respond_to do |format|
      format.js
    end
  end

end
