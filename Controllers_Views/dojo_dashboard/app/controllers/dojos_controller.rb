class DojosController < ApplicationController
  def dojos
    @dojos = Dojo.all
    render 'index'
  end
end
