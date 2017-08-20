class Global::HomeController < Global::GlobalApplicationController

  def index
  end

<<<<<<< HEAD
<<<<<<< HEAD
  def contact_us
    contact = Contact.new(contact_us_params)
    if contact.save
      redirect_to root_path, notice: "you'r request successfully submit"
    else
      redirect_to root_path, notice: "please fill correct data"
    end
  end

  private
    def contact_us_params
      params.permit(
        :name,
        :email,
        :subject,
        :message,
        :phone_no
      )
    end
=======
>>>>>>> 217692cc830bd4e128e01365619c1c90b69ccaba
=======
>>>>>>> 217692cc830bd4e128e01365619c1c90b69ccaba
end
