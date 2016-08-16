class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def disable_footer
    @disable_footer = true
  end

end
