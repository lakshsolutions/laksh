class EnquiryMailer < ApplicationMailer
 default from: ENV['from_email']

  def enquiry_mail(enquiry)
    @enquiry = enquiry
    mail(
      to: enquiry.email,
      subject: 'Student Enquiry'
    )
  end
end
