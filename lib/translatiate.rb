require 'translatiate/version'
require 'yaml'

class Translatiate
  attr_accessor :file, :keys
  def initialize
    @keys = []
  end

  def load_file(filename)
    file = File.new(filename, "r")
    @file = YAML::load(file)
  end

  def get_keys(object)
    if object.is_a?(Hash)
      object.each do |key, value|
        @keys << key
        get_keys(value)
      end
    end
    @keys
  end
end
