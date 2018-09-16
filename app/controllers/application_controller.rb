class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  respond_to :html, :json
  responders :flash

  def hello
    render html: "Hello"
  end
end
