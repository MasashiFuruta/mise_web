module Admin::LessonsHelper

  # newアクションとeditアクションのURLの振り分け
  def url_args(hoge)
    if hoge == 1 #editアクションのとき
      return admin_client_lesson_path
    else #newアクションのとき
      return admin_client_lessons_path
    end
  end
end
