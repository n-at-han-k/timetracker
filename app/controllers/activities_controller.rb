class ActivitiesController < ApplicationController
  def index
    @activities=Activity.all 

  end 

  def create
   Activity.create(activity_params) 
   redirect_to activities_path
  end 
   
  def activity_params
    params.expect(activity: [:name, :icon])

  end 
 
  def destroy 
  @a=Activity.find(params[:id])
  @a.destroy 
  redirect_to activities_path

  end    
   
  def select_time 

  end 

  def log_time
    @activity=Activity.find(params[:id])
    @activity.activity_logs.create(duration: params[:mins], date: Date.today)
    redirect_to activities_path 
    
  end 

end

