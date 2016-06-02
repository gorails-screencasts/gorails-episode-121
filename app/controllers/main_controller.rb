class MainController < ApplicationController
  def index
    @leaders = $highscore_lb.paginate(page: params[:page])
  end
end
