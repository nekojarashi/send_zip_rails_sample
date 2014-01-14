class DownloadController < ApplicationController
  include SendZip

  def index
  end

  def show
    path = Rails.public_path + params[:files]
    send_zip path.to_s
  end
end
