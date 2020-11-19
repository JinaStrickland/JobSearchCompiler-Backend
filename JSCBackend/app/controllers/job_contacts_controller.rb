class JobContactsController < ApplicationController

    before_action :find_job_contact, only: [:show, :update
    # skip_before_action :logged_in?, only: [:index, :show]

    def index 
        job_contacts = JobContact.all 
        render json: job_contacts
    end

    def show
        render json: @job_contact
    end

    def create 
        job_contact = JobContact.create(job_contact_params)
        render json: job_contact
    end

    def update 
        @job_contact.update(job_contact_params)
        render json: @job_contact 
    end


    private 

    def find_job_contact 
        @job_contact = JobContact.find(params[:id])
    end

    def job_contact_params
        params.require(:job_contact).permit(:job_application_id, :contact_id)
    end

end
