# require modules here
require 'yaml'
require 'pry'

def load_library(file_to_load)
  new_hash = {}
  YAML.load_file(file_to_load).each do |key, value|
    if !new_hash[key]
      new_hash[key] = {:english => value[0], :japanese => value[1]}
    end
  end
  new_hash
end

def get_japanese_emoticon(file_to_load, emoticon)
  hash = load_library(file_to_load)
  #binding.pry 
  response = nil 
  hash.each do |emoji, language|
    if language[:english] == emoticon
      response = language[:japanese]
    end
  end
  if response = nil
    puts 
end

def get_english_meaning
  # code goes here
end