class SecretsController < ApplicationController

  before_action :require_login

  def new
  end

  private

  def require_login
    redirect_to login_path unless current_user.present?
  end
end
