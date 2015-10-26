require "generators/gsdk/page_generator"

module Gsdk
  module Generators
    class IndexGenerator < PageGenerator
      view_name "index"
      source_root File.expand_path("../templates", __FILE__)

      def set_layout
        inject_into_class "app/controllers/#{name}_controller.rb", "#{name.titleize}Controller".constantize, "  layout '_base'\n"
      end

    end
  end
end
