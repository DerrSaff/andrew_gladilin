module PostsHelper
  def admin?
    current_user && current_user.role == "admin" ? true : false
  end
end
