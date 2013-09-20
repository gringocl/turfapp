class ClientsController < ApplicationController
  before_action :require_authentication
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def show
  end

  def edit
  end

  def update
    if @client.update(client_params)
      redirect_to clients_path, notice: "client was successfuly updated!"
    else 
      render 'edit', error: "client was not updated"
    end
  end

  def create
    @client = Client.new(client_params)

    if @client.save
      flash[:notice] = "client was successfuly created!"
      redirect_to clients_path
    else
      flash[:error] = "client was not saved"
      render 'new'
    end
  end

  def destroy
    @client.destroy

    redirect_to clients_path, notice: "client was deleted!"
  end

  private
    def client_params
      params.require(:client).permit(:name, :address1, :address2, :city, :state, :zipcode, :phone, :fax)
    end

    def set_client
      @client = client.find(params[:id])
    end

end
