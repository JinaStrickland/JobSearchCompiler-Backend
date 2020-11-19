class JobApplicationsController < ApplicationController

    before_action :find_job_application, only: [:show, :update, :destroy]
    # skip_before_action :logged_in?, only: [:index, :show]

    def index 
        job_applications = JobApplication.all 
        render json: job_applications
    end

    def show
        render json: @job_application
    end

    def create 
        job_application = JobApplication.create(job_application_params)
        render json: job_application
    end

    def update 
        @job_application.update(job_application_params)
        render json: @job_application 
    end

    def destroy 
        job_applications = JobApplication.all 
        if @job_application.destroy
            render json: {
                job_applications: job_applications, 
                errors: "Job Application has been Deleted",
                success: true
            }
        else 
            render json: {
                success: false,
                errors: job_application.errors.full_messages
            }
        end
    end


    private 

    def find_job_application 
        @job_application = JobApplication.find(params[:id])
    end

    def job_application_params
        params.require(:job_application).permit(:communication_type, :resume_sent, :status, :resume, :cover_letter, :notes, :applied_location, :application_name, :interest_level, :user_id, :company_id, :contact_id, :follow_up_id, :interview_id, :job_contact_id)
    end

end
