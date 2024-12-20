class LogController < ApplicationController

  def index
    @log_data = ActivityLog.all.group_by{|log| log.date.to_s} 

    @log_data.each do |date, logs|

      logs = logs.group_by do |log|
        log.activity_id
      end

      @log_data[date] = logs
    end




    @activities = Activity.all


  end 

end
