class Api::V1::TeddiesController < Api::V1::BaseController
  def index
    @teddies = Teddy.all
  end
end
