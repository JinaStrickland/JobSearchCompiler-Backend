class InterviewsController < ApplicationController

    before_action :find_interview, only: [:show, :update, :destroy]
    # skip_before_action :logged_in?, only: [:index, :show]

    def index 
        interviews = Interview.all 
        render json: interviews
    end

    def show
        render json: @interview
    end

    def create 
        interview = Interview.create(interview_params)
        render json: interview
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
