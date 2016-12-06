class ContactsController < ApplicationController
  def index
    @contacts = User.find(params[:user_id]).contacts
    @contacts += User.find(params[:user_id]).shared_contacts
    render json: @contacts.sort_by { |id, name, user_id| id }
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      render json: @contact
    else
      render json: errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    @contact = Contact.find(params[:id])
    render json: @contact
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update(contact_params)
      render json: @contact
    else
      render json: errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    render json: @contact
  end


  private
  def contact_params
    params.require(:contact).permit(:name, :email, :user_id)
  end
end
