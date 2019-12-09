class DojosController < ApplicationController
  def dojos
    @dojos = Dojo.all
    render 'index'
  end
  def new
    render 'new'
  end
  def create
    @dojo = Dojo.create( 
      branch: params[:branch], 
      street: params[:street], 
      city: params[:city], 
      state: params[:state]
    )
    puts "Successfully created new dojo."
    redirect_to '/dojos'
  end
end
