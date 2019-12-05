class SurveysController < ApplicationController
  def index
    @locations = ["San Jose", "Los Angeles", "Dallas", "Tulsa"]
    @languages = ["JavaScript", "Python", "Node", "Express"]
  end

  def create
    @survey = Survey.new( name: params[:name], location: params[:location], language: params[:language], comment: params[:comment])
    if !@survey.valid?
      flash[:errors] = @survey.errors.full_messages
      redirect_to '/'
    else
      @survey.save
      session[:user] = @survey.id
      if session[:count]
          session[:count] += 1
      else
          session[:count] = 1
      end
      flash[:success] = "Thanks for submitting this form! You have submitted this form #{session[:count]} times now."
      # puts "Successfully added survey."
      redirect_to '/results'
    end
  end
  def results
    @survey = Survey.find(session[:user])
  end
end
