class CompaniesController < ApplicationController

    before_action :find_company, only: [:show, :update, :destroy]
    # skip_before_action :logged_in?, only: [:index, :show]

    def index 
        companies = Company.all 
        render json: companies
    end

    def show
        render json: @company
    end

    def create 
        company = Company.create(company_params)
        render json: company
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
