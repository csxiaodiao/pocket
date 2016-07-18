class Wx::SessionsController < Devise::SessionsController

  layout 'wx'

  def new
    if Rails.env.production? or Rails.env.staging? or ENV["ENABLE_REAL_OAUTH_IN_DEVELOPMENT"].to_s == "1"
      return render :new_with_auto_redriect_to
    end

    super
  end
end
