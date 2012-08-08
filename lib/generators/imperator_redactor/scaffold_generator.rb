# -*- encoding : utf-8 -*-

module ImperatorRedactor
  module Generators
    class ScaffoldGenerator < Rails::Generators::NamedBase
      desc "Creates a ImperatorRedactor scaffold for images controller."
      source_root File.expand_path('../templates', __FILE__)
      check_class_collision :suffix => "Controller"

      def create_controller_files
        template 'controller.rb', File.join('app/controllers', class_path, "#{file_name}_controller.rb")
      end

      def add_routes
        route %{ resources "#{file_name}", :only => [:index, :create] }
      end

    end
  end
end
