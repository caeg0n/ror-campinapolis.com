#using SendGrid's Ruby Library
#https://github.com/sendgrid/sendgrid-ruby
require 'sendgrid-ruby'
module SendGridHelper
  include SendGrid
  def self.send_mail(mail_to,subject,_content)
    from = Email.new(email: 'contato@campinapolis.com')
    to = Email.new(email: mail_to)
    subject = subject
    content = Content.new(type: 'text/plain', value: _content)
    mail = Mail.new(from, subject, to, content)
    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json) 
    puts response.status_code
    puts response.body
    puts response.headers
  end
end