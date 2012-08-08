# -*- encoding : utf-8 -*-

module ImperatorRedactor
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Creates a ImperatorRedactor initializer."
      source_root File.expand_path('../templates', __FILE__)

      def copy_initializer
        template "initializer.rb", "config/initializers/imperator_redactor.rb"
      end

    end
  end
end
