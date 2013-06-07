require 'cucumber/formatter/console'
require 'cucumber/formatter/io'

module Cucumber
  module Formatter
    class ListScenarioName
      include Io
      include Console

      attr_accessor :all_features, :output_file_name
      def initialize(step_mother, path_or_io, options)
        @io = ensure_io(path_or_io, "list_tags")
        @all_features = {}
        @output_file_name = '/tmp/cucumber_runner.tmp'
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

        self.marshale_names

      end


      def print_names

        @all_features.each {|key,value|
          @io.puts key
          value.each {|tag| @io.puts "\t\t"<< tag }
        }

      end
      def marshale_names
        marshaled = Marshal.dump @all_features

        File.open(@output_file_name,'wb') do |f|
          f.write(marshaled)
        end

      end



    end
  end
end