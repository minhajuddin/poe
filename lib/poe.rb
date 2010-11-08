class Poe

  @@hooks = ['build-failed', 'build-worked', 'common.rb']

  def initialize(dir)
    @dir = dir
  end

  def run
    unless valid?
      display_errors
      return
    end
    setup
    puts "drop kick => '#@dir'"
  end

  def setup
    #copy the hooks
    copy_hooks
    #setup the default runner
    setup_runner
  end


  def copy_hooks
    src_dir = File.join(home_dir, '.poe', 'hooks')
    tgt_dir = File.join(@dir, '.git', 'hooks')

    @@hooks.each do |h|
      FileUtils.cp File.join(src_dir, h), tgt_dir
    end

  end

  def setup_runner
    `git config --add cijoe.runner bundle exec rspec spec`
  end

  def home_dir
    File.expand_path('~')
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
