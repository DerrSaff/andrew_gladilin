class ReportsController < ApplicationController
  
  def index
    @reports = Report.all
  end

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
  end

  private

  def report_params
    params.require(:report).permit(:message, :user_id, :name, :email)
  end

end
