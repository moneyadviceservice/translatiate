require 'translatiate/version'
require 'yaml'

class Translatiate
  def initialize
  end

  def load_file(filename)
    file = File.new(filename, "r")
    YAML::load(file)
  end
end
