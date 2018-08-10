class ContactMailer < ActionMailer::Base
  default from: "m.furuta1211@gmail.com"

  def send_confirm_to_user(user)
    @user = user
    mail(
      subject: "レッスン申し込みが完了しました。",
      to: @user.email
    ) do |format|
      format.text
    end
  end

  def send_confirm_to_myself(user)
    @user = user
    mail(
      subject: "レッスン申し込みがありました。",
      to: "m.furuta1211@gmail.com"
    ) do |format|
      format.text
    end
  end
end
