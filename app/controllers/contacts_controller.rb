class ContactsController < ApplicationController
  before_action :require_authentication
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def show
  end

  def edit
  end

  def update
    if @contact.update(contact_params)
      redirect_to contacts_path, notice: "Contact was successfuly updated!"
    else 
      render 'edit', error: "Contact was not updated"
    end
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      flash[:notice] = "Contact was successfuly created!"
      redirect_to contacts_path
    else
      flash[:error] = "Contact was not saved"
      render 'new'
    end
  end

  def destroy
    @contact.destroy

    redirect_to contacts_path, notice: "Contact was deleted!"
  end

  private
    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :phone, :mobile, :email)
    end

    def set_contact
      @contact = Contact.find(params[:id])
    end

end
