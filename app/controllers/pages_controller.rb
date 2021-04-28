class PagesController < ApplicationController
  def home
    gon.variable_name = 7
  end
end
