require 'mail'

def send_mail(options => {:from => ENV['AUTHOR'], :to => 'minhajuddin@cosmicvent.com', :body => ENV["OUTPUT"]})
  mail = Mail.new do
    from options[:from]
    to options[:to]
    subject options[:subject]
    body options[:body]
  end

  mail.deliver!
end

