class FaqController < ApplicationController
  before_action :set_faq, only: [:show]
  skip_before_action :require_login, only: [:index]

  def index
  end

  def show
  end
end
