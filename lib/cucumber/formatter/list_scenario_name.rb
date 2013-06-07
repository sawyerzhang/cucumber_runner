require 'cucumber/formatter/console'
require 'cucumber/formatter/io'

module Cucumber
  module Formatter
    class ListScenarioName
      include Io
      include Console

      def initialize(step_mother, path_or_io, options)
        @io = ensure_io(path_or_io, "list_tags")
        @all_features = {}
      end


      def before_feature(feature)

        @feature_name = feature.short_name
        @all_features[@feature_name]=[]

      end

      def scenario_name(*arg)
        keyword, name, file_colon_line, source_indent = *arg
        @all_features[@feature_name]<< name
      end


      def after_features(features)
        @all_features.each {|key,value|
          @io.puts key
          value.each {|tag| @io.puts "\t\t"<< tag }
        }
      end
    end
  end
end