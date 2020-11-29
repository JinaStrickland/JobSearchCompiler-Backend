class FollowUpsController < ApplicationController

    before_action :find_follow_up, only: [:show, :update, :destroy]
    # skip_before_action :logged_in?, only: [:index, :show]

    def index 
        follow_ups = FollowUp.all 
        render json: follow_ups, except: [:updated_at, :created_at],
            include:    [:job_application => {only: [:application_name, :company_id, :user_id, :id]}]
    end

    def show
        render json: @follow_up, except: [:updated_at, :created_at],
            include:    [:job_application => {only: [:application_name, :company_id, :user_id, :id]}]
    end

    def create 
        follow_up = FollowUp.create(follow_up_params)
        render json: follow_up, except: [:updated_at, :created_at],
            include:    [:job_application => {only: [:application_name, :company_id, :user_id, :id]}]
    end

    def update 
        @follow_up.update(follow_up_params)
        render json: @follow_up 
    end

    def destroy 
        follow_ups = FollowUp.all 
        if @follow_up.destroy
            render json: {
                follow_ups: follow_ups, 
                errors: "Follow Up has been Deleted",
                success: true
            }
        else 
            render json: {
                success: false,
                errors: follow_up.errors.full_messages
            }
        end
    end

    # def followup_jobapp(params[:job_application_id])
    #     followup = FollowUp.followups 
    #     render json: followup, except: [:updated_at, :created_at]
    # end


    private 

    def find_follow_up 
        @follow_up = FollowUp.find(params[:id])
    end

    def follow_up_params
        params.require(:follow_up).permit(:follow_up_date, :contact_type, :job_application_id)
    end

end
