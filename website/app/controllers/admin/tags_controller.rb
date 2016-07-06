class Admin::TagsController < Admin::BaseController

  def index
    @tags = Tag.page(params[:page]).per(params[:per_page] || 12)
  end

end
