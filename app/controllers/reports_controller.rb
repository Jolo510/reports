class ReportsController < ApplicationController
    before_action :set_report, only: [:show, :update, :destroy]

    # GET /reports
    def index
        @reports = Report.all
        json_response(@reports)
    end

    # GET /reports/:id
    def show
        json_response(@report)
    end

    # POST /reports
    def create
        @report = Report.create!(report_params)
        json_response(@report, :created)
    end

    # PUT /reports/:id
    def update
        @report.update(report_params)
        head :no_content
    end

    # DELETE /todos/:id
    def destroy 
        @report.destroy
        head :no_content
    end

    private
    
    def report_params
        params.permit(:title, :description, :created_by)
    end

    def set_report
        @report = Report.find(params[:id])
    end
end
