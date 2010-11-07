class Poe

  def initialize(dir)
    @dir = dir
  end

  def run
    unless valid?
      display_errors
      return
    end

    puts "drop kick => '#@dir'"
  end

  def setup
    #copy the hooks
    #setup the default runner
    
  end


  def valid?
    errors << "'#{@dir}' does not exist" unless File.exists?(@dir)
    errors.empty?
  end

  def errors
    @errors ||= []
  end

  def display_errors
    puts "Dang! something's wrong:\n\t#{errors.join("\n\t")}"
  end

end
