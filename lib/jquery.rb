require 'jquery/fillers'

class JQuery
  include Fillers
  attr_accessor :author_name, :extras, :install_dir, :project_name
  
  def initialize(opts)
    @author_name = opts[:author_name]
    @extras = opts[:extras]
    @project_name = opts[:unclaimed].first.
      gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
      gsub(/([a-z\d])([A-Z])/,'\1_\2').
      tr('-', '_').
      downcase
    @install_dir = File.join(opts[:dest], @project_name)
    puts '', '=' * 75, opts.inspect
    manifest
  end
  
  def manifest
    directory "lib"
    directory "html"
    directory "html/stylesheets"
    directory "html/javascripts"
    
    template 'application.css', "/html/stylesheets/application.css"
    template 'reset.css', "/html/stylesheets/reset.css"
    template 'base.css', "/html/stylesheets/base.css"
    template 'gridz.css', "/html/stylesheets/gridz.css"
    
    file '/html/stylesheets/skin.css', :skin_filler
    file '/html/index.html', :index_filler
    file "/lib/jquery.#{project_name}.js", :js_filler
  end
  
  private
  
    def directory(relative_path)
      path = destination_path(relative_path)
      if File.exist?(path)
        $stdout.puts "#{path} already exists"
      else
        $stdout.puts "Creating #{path}"
        FileUtils.mkdir_p path
      end
    end
    
    def template(relative_source, relative_destination)
      source = template_file(relative_source)
      destination = destination_path(relative_destination)
      if File.exist?(destination)
        $stdout.puts "#{destination} already exists"
      else
        $stdout.puts "Creating #{destination}"
        File.open(destination, 'wb') do |f|
          f.write File.read(source)
        end
      end
    end
    
    def file(relative_destination, filler)
      destination = destination_path(relative_destination)
      if File.exist?(destination)
        $stdout.puts "#{destination} already exists"
      else
        $stdout.puts "Creating #{destination}"
        File.open(destination, 'wb') do |f|
          f.write self.send filler
        end
      end
    end
    
    def destination_path(relative_path)
      File.join(install_dir, relative_path)
    end
    
    def template_file(relative_source)
      File.join(File.dirname(__FILE__), 'templates', relative_source)
    end
  
end