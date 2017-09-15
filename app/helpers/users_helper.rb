module UsersHelper
  def user_name(user)
    unless user.name.nil?
      user.name
    else
      "New User"
    end
  end

  def cancel_redirect_path
    if current_user.admin?
      users_path
    else
      root_path
    end
  end
end
