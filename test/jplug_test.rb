require 'test_helper'

class JplugTest < Test::Unit::TestCase
  
  context "jPlug Creation" do
    setup do
      @dir = File.join(File.dirname(__FILE__), 'assets')
      FileUtils.mkdir_p(@dir)
    end
    
    teardown do
      FileUtils.rm_rf(@dir)
    end

    should "display help if there is no plugin name given" do
      assert_equal `jplug`, `jplug --help`
    end
    
    should "create a new jQuery Plugin if a name is given" do
      `jplug -d #{@dir} AwesomePlugin`
      assert File.exist?(File.join(@dir, 'awesome_plugin'))
    end
  end
  
  context "jPlug with --no-extras flag set" do
    setup do
      @dir = File.join(File.dirname(__FILE__), 'assets')
      FileUtils.mkdir_p(@dir)
      `jplug -d #{@dir} --no-extras AwesomePlugin`
    end
    
    teardown do
      FileUtils.rm_rf(@dir)
    end

    should "not find any extra jquery files" do
      %w( jquery.easing-1.3.js jquery.ekko-0.1.js jquery.form-2.28.js ).each do |extra_js|
        assert_equal false, File.exist?(File.join(@dir, 'awesome_plugin/html/javascripts', extra_js))
      end
    end
  end
  
  context "jPlug with extras flag set" do
    setup do
      @dir = File.join(File.dirname(__FILE__), 'assets')
      FileUtils.mkdir_p(@dir)
      `jplug -d #{@dir} --extras AwesomePlugin`
    end
    
    teardown do
      FileUtils.rm_rf(@dir)
    end

    should "find extra jquery files" do
      %w( jquery.easing-1.3.js jquery.ekko-0.1.js jquery.form-2.28.js ).each do |extra_js|
        assert File.exist?(File.join(@dir, 'awesome_plugin/html/javascripts', extra_js))
      end
    end
  end
  
  context "jplug directory structure" do
    setup do
      @dir = File.join(File.dirname(__FILE__), 'assets')
      FileUtils.mkdir_p(@dir)
      `jplug -d #{@dir} --extras AwesomePlugin`
    end
    
    teardown do
      FileUtils.rm_rf(@dir)
    end
    
    should "have html dir" do
      assert File.exist?(File.join(@dir, 'awesome_plugin', 'html'))
    end
    
    should "have html/stylesheets dir" do
      assert File.exist?(File.join(@dir, 'awesome_plugin', 'html', 'stylesheets'))
    end
    
    should "have html/javascripts dir" do
      assert File.exist?(File.join(@dir, 'awesome_plugin', 'html', 'javascripts'))
    end
    
    should "have lib dir" do
      assert File.exist?(File.join(@dir, 'awesome_plugin', 'lib'))
    end
  end
  
  
end