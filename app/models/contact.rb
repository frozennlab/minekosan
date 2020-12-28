class Contact < MailForm::Base
  attribute :name,      validate: true
  attribute :email,     validate: /\A[^@\s]+@[^@\s]+\z/i
  attribute :message
  attribute :nickname,  captcha: true

  def headers
    {
        subject: "My Contact Form",
        to: "your.email@your.domain.com",
        from: %("#{name}" <#{email}>)
    }
  end
end
