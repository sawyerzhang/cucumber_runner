require 'test/unit'
require_relative '../lib/cucumber/formatter/list_scenario_name'


class RunnerTest< Test::Unit::TestCase


  def test_marshal_part

    @formatter = Cucumber::Formatter::ListScenarioName.new(nil,nil,nil)

    to_marshal = {"a"=>"basdfasdf","b"=>"asdfa"}

    @formatter.all_features = to_marshal
    @formatter.after_features nil


    f = File.open(@formatter.output_file_name,'r')
    loaded = Marshal.load f.read()

    assert_equal loaded,to_marshal


  end


end