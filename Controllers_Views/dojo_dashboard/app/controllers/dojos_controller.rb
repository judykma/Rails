class DojosController < ApplicationController
  def dojos
    @dojos = Dojo.all
    render 'index'
  end
  # WORKS
  def new
    render 'new'
  end
  # WORKS
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
  # WORKS sorta. Autofill value doesn
  def show
    @dojo = Dojo.find(params[:id])
    render 'show'
  end
  def edit
    @dojo = Dojo.find(params[:id])
    render 'edit'
  end
  #DOES NOT WORK
  def update
    @dojo = Dojo.find(params[:id])
    @dojo.branch = params[:branch]
    @dojo.street = params[:street]
    @dojo.city = params[:city]
    @dojo.state = params[:state]
    @dojo.save
    if !@dojo.valid?
      flash[:errors] = @dojo.errors.full_messages
      redirect_to '/dojos/' + params[:id].to_s + '/edit'
    else
    redirect_to root_url
    end
  end
  # WORKS
  def destroy
    Dojo.find(params[:id]).destroy
    redirect_to '/dojos'
  end
end
