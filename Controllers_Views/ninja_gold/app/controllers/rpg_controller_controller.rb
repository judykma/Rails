class RpgControllerController < ApplicationController
  def index
    if session[:total_gold] && session[:activity_log]
      session[:total_gold]
      session[:activity_log]
    else
      session[:total_gold] = 0
      session[:activity_log] = []
    end
    @total_gold = session[:total_gold]
    @activity_log = session[:activity_log]
    session[:time] = @time = Time.now
    session[:date] = @date = @time.strftime("%Y-%m-%d %H:%M")
  end
  
  def farm
    amt = rand(10..20)
    session[:activity_log].push('You are earned ' + amt.to_s + ' golds from the ' + params[:location] + '(' + session[:date] + ')')
    session[:total_gold] += amt
    redirect_to '/'
  end

  def cave
    amt = rand(5..10)
    session[:activity_log].push('You are earned ' + amt.to_s + ' golds from the ' + params[:location] + ' (' + session[:date] + ')')
    session[:total_gold] += amt
    redirect_to '/'
  end

  def house
    amt = rand(2..5)
    session[:activity_log].push('You are earned ' + amt.to_s + ' golds from the ' + params[:location] + ' (' + session[:date] + ')')
    session[:total_gold] += amt
    redirect_to '/'
  end

  def casino
    if session[:total_gold] < 50
      session[:activity_log].push('Need more gold to play (' + session[:date] + ')')
    else
      amt = rand(-50..50)
      if amt >= 0
        session[:activity_log].push('Gambled at a casino and earned ' + amt.to_s + ' gold! (' + session[:date] + ')')
      else
        session[:activity_log].push('Gambled at a casino and lost ' + amt.to_s + ' gold... Ouch... (' + session[:date] + ')')
      end
      session[:total_gold] += amt
    end
    redirect_to '/'
  end

  # def destroy
  #   session.clear
  #   redirect_to '/'
  # end
end
