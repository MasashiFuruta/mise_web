class Admin::LessonsController < Admin::ApplicationController
  before_action :set_admin_client_lesson, only: [:show, :edit, :update, :destroy]

  def index
    @admin_client_lessons = Admin::Lesson.all
  end

  def show
  end

  def new
    @admin_cleint = Admin::Client.find(params[:client_id])
    @admin_client_lesson = @admin_cleint.lessons.build
    # newアクションかeditアクションによってform_withのURLを切り替えるためのフラグ
    @edit_flg = nil
  end

  def edit
    # newアクションかeditアクションによってform_withのURLを切り替えるためのフラグ
    @edit_flg = 1
  end

  def create
    @admin_client_lesson = Admin::Lesson.new(admin_client_lesson_params)

    if @admin_client_lesson.save
      redirect_to admin_client_lessons_path, notice: '新規レッスンを作成しました'
    else
      flash.now[:error] = '保存に失敗しました'
      render :new
    end
  end
  def update
    if @admin_client_lesson.update(admin_client_lesson_params)
      redirect_to admin_client_lessons_path, notice: 'レッスンの変更を保存しました'
    else
      flash.now[:error] = '保存に失敗しました'
      render :edit
    end
  end

  def destroy
    @admin_client_lesson.destroy
    redirect_to admin_client_lessons_path, notice: 'レッスンを削除しました'
  end

  private
    def set_admin_client_lesson
      @admin_client_lesson = Admin::Lesson.find(params[:id])
    end

    def admin_client_lesson_params
      params.require(:admin_lesson).permit(:client_id, :admin_id, :lesson_count, :p_start_datetime, :p_end_datetime, :p_comment, :d_start_datetime, :d_end_datetime, :d_comment)
    end
end
