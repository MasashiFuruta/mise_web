class Admin::ClientsController < Admin::ApplicationController
  before_action :set_admin_client, only: [:show, :edit, :update, :destroy]

  def index
    @admin_clients = Admin::Client.all
  end

  def show
  end

  def new
    @admin_client = Admin::Client.new
  end

  def edit
  end

  def create
    @admin_client = Admin::Client.new(admin_client_params)

    if @admin_client.save
      redirect_to admin_client_path(@admin_client), notice: '新規クライアントを作成しました'
    else
      flash.now[:error] = '保存に失敗しました'
      render 'new'
    end
  end

  def update
    if @admin_client.update(admin_client_params)
      redirect_to admin_client_path(@admin_client), notice: 'クライアント情報の変更を保存しました'
    else
      flash.now[:error] = '保存に失敗しました'
      render 'edit'
    end
  end

  def destroy
    @admin_client.destroy
    redirect_to admin_clients_path, notice: 'クライアントを削除しました'
  end

  private
    def set_admin_client
      @admin_client = Admin::Client.find(params[:id])
    end

    def admin_client_params
      params.require(:admin_client).permit(:last_name, :first_name, :kana_last_name, :kana_first_name, :phone_number, :zipcode, :prefecture, :city, :street, :building)
    end
end