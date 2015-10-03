class ReportingController < ApplicationController
  respond_to :html

 def index
   @reports = Report.all
 end

 def new
   @report = Report.new
 end

 def create
   @report = Report.create(permitted_params)
   respond_with @report, location: reporting_index_url
 end

 private

 def permitted_params
   params.require(:report).permit(:topic, :description)
 end
end
