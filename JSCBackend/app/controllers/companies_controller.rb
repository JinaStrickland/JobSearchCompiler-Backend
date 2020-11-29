class CompaniesController < ApplicationController

    before_action :find_company, only: [:show, :update, :destroy]
    # skip_before_action :logged_in?, only: [:index, :show]

    def index 
        companies = Company.all 
        render json: companies, except: [:updated_at, :created_at],
        include:    [:contacts => {only: [:first_name, :last_name, :email, :title, :phone, :company_id, :id]},
                    :job_applications => {only: [:company_id, :id]}]
    end

    def show
        render json: @company, except: [:updated_at, :created_at],
        include:    [:contacts => {only: [:first_name, :last_name, :email, :title, :phone, :company_id, :id]},
                    :job_applications => {only: [:company_id, :id]}]
    end

    def create 
        company = Company.create(company_params)
        render json: company, except: [:updated_at, :created_at],
        include:    [:contacts => {only: [:first_name, :last_name, :email, :title, :phone, :company_id, :id]},
                    :job_applications => {only: [:company_id, :id]}]
    end

    def update 
        @company.update(company_params)
        render json: @company 
    end

    def destroy 
        companies = Company.all 
        if @company.destroy
            render json: {
                companies: companies, 
                errors: "Company has been Deleted",
                success: true
            }
        else 
            render json: {
                success: false,
                errors: company.errors.full_messages
            }
        end
    end


    private 

    def find_company 
        @company = Company.find(params[:id])
    end

    def company_params
        params.require(:company).permit(:name, :stree_address, :city, :state, :zipcode)
    end

end
