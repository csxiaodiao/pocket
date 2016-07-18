class Wx::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def wechat
    logger.info auth_hash

    if auth_hash.uid.blank?
      return redirect_to root_path, alert: '微信OAuth2.0登录失败！'
    end

    @sns_user = SnsUser.find_or_create_from_auth_hash(
      auth_hash
    )

    if @sns_user.persisted?
      sign_in_and_redirect @sns_user, :event => :authentication
    else
      session["devise.wechat_data"] = auth_hash
      redirect_to root_path, alert: '微信OAuth2.0登录失败！'
    end
  end

  private

  def auth_hash
    request.env['omniauth.auth']
  end
end
