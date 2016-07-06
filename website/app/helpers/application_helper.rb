module ApplicationHelper
  def rails_env_text
    return '测试环境' if Rails.env.staging?
    ''
  end
end
