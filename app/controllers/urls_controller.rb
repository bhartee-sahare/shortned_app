
class UrlsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    url = Shortener.call(url_params[:original])
    render json: { url: url, errors: url.errors },
           status: (url&.valid? ? :created : :unprocessable_entity)
  end

  def destroy
    @url = Url.find_by(id: params[:id])
    if @url.destroy
      redirect_to root_path
    end
  end

  private

  def url_params
    params.require(:url).permit(:original)
  end
end
