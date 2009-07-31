module JQuery
  class Options
    
    spec = Oyster.spec do
      name 'jplug -- jQuery Plugin Generator'
      
      synopsis <<-SYNOPSIS
        jplug [options] <plugin_name>
      SYNOPSIS
      
      description <<-DESC
        jplug is a command-line utility that will mock out the file structure
        for a jQuery Plugin. To see an example of how this will look see
        http://github.com/tschmidt/ekko/tree/master.
      DESC
      
      flag :author, :desc => 'Set Plugin Author Name'
    end
    
  end
end