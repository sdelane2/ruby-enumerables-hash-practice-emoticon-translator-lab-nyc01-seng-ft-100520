# require modules here
require 'yaml'
require 'pry'

def load_library(yaml_file)
  response = {"get_meaning" => {}, "get_emoticon" => {}}
  library = YAML.load_file(yaml_file)
  library.each do |trans, emos|
    response["get_meaning"][emos[1]] = trans
    response["get_emoticon"][emos[0]] = emos[1]
  end
  response
end

def get_japanese_emoticon(file_to_load, emoticon)
  hash = load_library(file_to_load)
  #binding.pry 
  hash.each do |a, b|
    if a == emoticon 
      puts "FUCK"
      binding.pry
    end
  end
end

def get_english_meaning
  # code goes here
end