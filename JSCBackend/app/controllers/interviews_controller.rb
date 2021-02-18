class InterviewsController < ApplicationController

    before_action :find_interview, only: [:show, :update, :destroy]
    # skip_before_action :logged_in?, only: [:index, :show]

    def index 
        interviews = Interview.all 
        render json: interviews, except: [:updated_at, :created_at],
        include:    [:job_application => {only: [:application_name, :company_id, :user_id, :id]}]
    end

    def show
        render json: @interview, except: [:updated_at, :created_at],
        include:    [:job_application => {only: [:application_name, :company_id, :user_id, :id]}]
    end

    def create 
        # Time.parse("11:00", DateTime.parse("January 5 2021")) from seed data
        # params: "2020-12-10T11:00"
        interview_time = params[:interview_date].split("T")[1]
        # byebug 
        interview = Interview.create(
            interview_date: Time.parse(interview_time, DateTime.parse(params[:interview_date])),
            information: params[:information],
            job_application_id: params[:job_application_id],
        )
        render json: interview, 
            include:    [:job_application => {only: [:application_name, :company_id, :user_id, :id]}]
    end

    def update 
        @interview.update(interview_params)
        render json: @interview 
    end

    def destroy 
        interviews = Interview.all 
        if @interview.destroy
            render json: {
                interviews: interviews, 
                errors: "Interview has been Deleted",
                success: true
            }
        else 
            render json: {
                success: false,
                errors: interview.errors.full_messages
            }
        end
    end

    private 

    def find_interview 
        @interview = Interview.find(params[:id])
    end

    def interview_params
        params.require(:interview).permit(:interview_date, :information, :job_application_id)
    end

end
