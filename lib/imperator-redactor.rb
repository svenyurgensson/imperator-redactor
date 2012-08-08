# -*- encoding : utf-8 -*-
require "imperator-redactor/engine"
require "imperator-redactor/config"
require File.join(File.dirname(__FILE__), '..', 'app', 'helpers', 'imperator-redactor', 'imperator_helper')

module ImperatorRedactor

  extend ActiveSupport::Autoload


  ActiveSupport.on_load(:action_controller) do
    helper ImperatorHelper
  end


  def self.config
    @config ||= ImperatorRedactor::Config.new
    yield(@config) if block_given?
    @config
  end

end
