class HomeController < ApplicationController
  before_action :set_group, only: [:show]
  skip_before_action :require_login, only: [:index]
  def index
  end
end
