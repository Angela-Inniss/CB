class ServicesController < ApplicationController
before_action :find_service, only: [:show]

  def index
    @services = Service.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def service_params
    params.require(service).permit(:name, :description, :category, :picture_url,:video)
  end

  def find_service
    @service = Service.find(params[:id])
  end
end
