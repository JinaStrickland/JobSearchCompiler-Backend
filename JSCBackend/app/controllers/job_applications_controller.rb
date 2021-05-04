class JobApplicationsController < ApplicationController

    before_action :find_job_application, only: [:show, :update, :destroy]
    # skip_before_action :logged_in?, only: [:index, :show]

    def index 
        job_applications = JobApplication.all 
        render json: job_applications, except: [:updated_at, :created_at],
            include:    [:company => {only: [:name, :street_address, :city, :state, :zipcode, :id]}, 
                        :user => {only: [:first_name, :last_name, :email, :image, :id]}, 
                        :contacts => {only: [:first_name, :last_name, :email, :title, :phone, :id]},
                        :follow_ups => {only: [:follow_up_date, :contact_type, :id]},
                        :interviews => {only: [:interview_date, :information, :id]}]
    end

    def show
        render json: @job_application, except: [:updated_at, :created_at],
            include:    [:company => {only: [:name, :street_address, :city, :state, :zipcode, :id]}, 
                        :user => {only: [:first_name, :last_name, :email, :image, :id]}, 
                        :contacts => {only: [:first_name, :last_name, :email, :title, :phone, :id]},
                        :follow_ups => {only: [:follow_up_date, :contact_type, :id]},
                        :interviews => {only: [:interview_date, :information, :id]}]
    end

    def create 
        company = Company.find_or_create_by(
            name: params[:name], 
            street_address: params[:street_address], 
            city: params[:city], 
            state: params[:state], 
            zipcode: params[:zipcode],
        )
        job_application = JobApplication.create(
            communication_type: params[:communication_type], 
            resume_sent: Date.parse(params[:resume_sent]), # params: "2020-12-10T14:00:00.000Z"
            status: params[:status],
            # resume: params[:resume], 
            # cover_letter: params[:cover_letter], 
            notes: params[:notes], 
            applied_location: params[:applied_location], 
            application_name: params[:application_name], 
            interest_level: params[:interest_level],
            user_id: params[:user_id], 
            company_id: company.id,
        )
        contact = Contact.find_or_create_by(
            first_name: params[:first_name].capitalize,
            last_name: params[:last_name].capitalize,
            email: params[:email],
            title: params[:title],
            phone: params[:phone],
            company_id: company.id,
        )
        job_contact = JobContact.create(
            job_application_id: job_application.id,
            contact_id: contact.id
        )
        follow_up = FollowUp.create(
            follow_up_date: Date.parse(params[:follow_up_date]),
            contact_type: params[:contact_type],
            job_application_id: job_application.id 
        )

        render json: job_application,
            include:    [:company => {only: [:name, :street_address, :city, :state, :zipcode, :id]}, 
                        :user => {only: [:first_name, :last_name, :email, :image, :id]}, 
                        :contacts => {only: [:first_name, :last_name, :email, :title, :phone, :id]},
                        :follow_ups => {only: [:follow_up_date, :contact_type, :id]}]
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
        params.require(:job_application).permit(:communication_type, :resume_sent, :status, :resume, :cover_letter, :notes, :applied_location, :application_name, :interest_level, :user_id, :company_id)
    end

end
