class ContactsController < ApplicationController

    before_action :find_contact, only: [:show, :update, :destroy]
    # skip_before_action :logged_in?, only: [:index, :show]

    def index 
        contacts = Contact.all 
        render json: contacts
    end

    def show
        render json: @contact
    end

    def create 
        contact = Contact.create(contact_params)
        render json: contact
    end

    def update 
        @contact.update(contact_params)
        render json: @contact 
    end

    def destroy 
        contacts = Contact.all 
        if @contact.destroy
            render json: {
                contacts: contacts, 
                errors: "Contact has been Deleted",
                success: true
            }
        else 
            render json: {
                success: false,
                errors: contact.errors.full_messages
            }
        end
    end


    private 

    def find_contact 
        @contact = Contact.find(params[:id])
    end

    def contact_params
        params.require(:contact).permit(:first_name, :last_name, :email, :title, :phone, :company_id)
    end
    
end
