class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def t (args)
    t = I18n.t(args)
  end
end
