class UsersController < ApplicationController

  def index
  end

  def show
     @current_user = User.find(session[:user_id])

     gon.results_food = @current_user.fitbit.recent_foods
     gon.calsIn = @current_user.fitbit.data_by_time_range("/foods/log/caloriesIn", {:base_date => DateTime.now.strftime('%Y-%m-%d'), :period => "1d"})
     gon.calsOut = @current_user.fitbit.data_by_time_range("/activities/tracker/calories", {:base_date => DateTime.now.strftime('%Y-%m-%d'), :period => "1d"})
     gon.miles = @current_user.fitbit.data_by_time_range("/activities/tracker/distance", {:base_date => DateTime.now.strftime('%Y-%m-%d'), :period => "1d"})
     gon.steps = @current_user.fitbit.data_by_time_range("/activities/tracker/steps", {:base_date => DateTime.now.strftime('%Y-%m-%d'), :period => "1d"})
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end
 
end
