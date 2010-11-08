require 'mail'
require 'yaml'


class Notifier
  @@config =  YAML::load_file(File.join('~/.poe', 'config.yml')

  def send_mail(options => {:from => ENV['AUTHOR'], :to => @@config["to"], :body => ENV["OUTPUT"]})
    mail = Mail.new do
      from options[:from]
      to options[:to]
      subject options[:subject]
      body options[:body]
    end

    mail.deliver!
  end

end
