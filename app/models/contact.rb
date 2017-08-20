class Contact < ApplicationRecord
  after_save :send_mail

  def send_mail
    EnquiryMailer.enquiry_mail(self).deliver_now
  end
end
