class ServicesController < ApplicationController
before_action :find_service, only: [:show]

  def index
    if params[:category].present?
      @services = Service.where(category: params[:category])
    else
      @services = Service.all
    end
  end

  def show
  end

  def new
    @service = Service.new
  end

  def create
   # creates service instance
    @service = Service.create(service_params)
    # if, when the user clicks submit the service is saved
    # then go back to the show page of the newly created service
    # which would be service_path(@service)
    if @service.save!
      redirect_to service_path(@service) # passing an instance of cocktail
    else
    # if service isnt created (bcz of an error or something)
    # stay on the page and show errors to user
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def service_params
    params.require(:service).permit(:name, :description, :category, :picture_url, :video, :photo, :photo_cache, images: [])
  end

  def find_service
    @service = Service.find(params[:id])
  end
end
