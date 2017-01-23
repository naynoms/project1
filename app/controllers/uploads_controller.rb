class UploadsController < ApplicationController
  def index
    @uploads = Upload.all
  end

  def new
    @upload = Upload.new
  end

  def create
    upload = Upload.create upload_params
    redirect_to upload.board
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

  def destroy
    upload = Upload.find params[:id]
    upload.destroy
    redirect_to uploads_path
  end

  private

  def upload_params
    params.require(:upload).permit(:image, :information, :place_id, :board_id)
  end
end
