class ContactController < ApplicationController
  def new
    @contact = Contact.new
    render :action => 'new', :layout => 'contact'
  end

  def back_new
    @contact = Contact.new(contact_params)
    render :action => 'new', :layout => 'contact'
  end

  def confirm
    @contact = Contact.new(contact_params)
    if @contact.valid?
      render :action => 'confirm', :layout => 'contact'
    else
      render :action => 'new', :layout => 'contact'
    end
  end

  def thanks
    @contact = Contact.new(contact_params)

    if @contact.save
      ContactMailer.send_confirm_to_user(@contact).deliver
      ContactMailer.send_confirm_to_myself(@contact).deliver
      render :action => 'thanks', :layout => 'contact'
    end
  end

  # テスト用ルーティング
  # def thanksTest
  #   render :action => 'thanks', :layout => 'contact'
  # end

  private

  def contact_params
    params.require(:contact).permit(:last_name, :first_name, :email, :phone_number, :type, :message)
  end
end
