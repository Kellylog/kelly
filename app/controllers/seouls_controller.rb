class SeoulsController < ApplicationController
  def index
    @seouls = Seoul.all
  end

  def show
  end
end
