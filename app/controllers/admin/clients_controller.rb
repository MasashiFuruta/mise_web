class Admin::ClientsController < Admin::ApplicationController
  before_action :set_admin_client, only: [:show, :edit, :update, :destroy]

  # GET /admin/clients
  # GET /admin/clients.json
  def index
    @admin_clients = Admin::Client.all
  end

  def show
  end

  # GET /admin/clients/new
  def new
    @admin_client = Admin::Client.new
  end

  # GET /admin/clients/1/edit
  def edit
  end

  # POST /admin/clients
  # POST /admin/clients.json
  def create
    @admin_client = Admin::Client.new(admin_client_params)
    if @admin_client.save
      redirect_to edit_admin_client_path(@admin_client), notice: '内容を保存しました'
    else
      flash.now[:error] = '内容の保存に失敗しました'
      render new_admin_client_path
    end
  end

  private
    def set_admin_client
      @admin_client = Admin::Client.find(params[:id])
    end

    def admin_client_params
      params.require(:admin_client).permit(:family_name, :first_name, :kana_family_name, :kana_first_name, :phone_number, :zipcode, :prefecture, :city, :street, :building)
    end
end