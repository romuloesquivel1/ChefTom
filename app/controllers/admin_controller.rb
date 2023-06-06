class AdminController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "tomcourt"

  def index
  end
end
