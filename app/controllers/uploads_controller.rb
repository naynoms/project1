class UploadsController < ApplicationController
  def index
    @uploads = Upload.all
  end

  def new
    @upload = Upload.new
  end

  def create
    upload = Upload.create upload_params
    redirect_to upload
  end

  def edit
    @upload = Upload.find params[:id]
  end

  def update
    upload = Upload.find params[:id]
    upload.update update_params
    redirect_to upload
  end

  def show
    @upload = Upload.find params[:id]
  end

  private

  def upload_params
    params.require(:upload).permit(:image, :information)
  end
end
