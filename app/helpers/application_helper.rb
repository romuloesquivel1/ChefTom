module ApplicationHelper
  def logged_in?
    !!session[:user_id]
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id]) if !!session[:user_id]
  end

  # create method to get active class css
  def active_class(link_path)
    ['nav-link', current_page?(link_path) ? 'active' : '']
  end
end
