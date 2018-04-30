class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # 管理者ページログイン後に遷移するpathを設定
  def after_sign_in_path_for(resource)
    admin_root_path
  end
  # 管理者ページログアウト後に遷移するpathを設定
  def after_sign_out_path_for(resource)
    new_admin_session_path
  end
end
