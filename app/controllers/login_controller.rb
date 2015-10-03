class LoginController < ApplicationController
  def index
    user = params["user"]
    email = user.nil? ? nil : user["email"]
    if email.blank?
      @user = User.new
    else
      if admin?(email)
        redirect_to admin_index_url
      else
        redirect_to calendar_index_url
      end
    end
  end

  def admin?(email)
    email == "admin@ljff.com"
  end
end


