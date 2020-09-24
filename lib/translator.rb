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
  hash.detect do |emoji, language|
    puts "Sorry, that emoticon was not found" if language[:english] != emoticon 
     if language[:english] == emoticon 
      emoticon = language[:japanese]
    end
  end
  emoticon 
end
  new_array = []
  hash.collect do |emoji, language|
    new_array << language.to_a
  end
  new_array2 = []
  new_array.each do |language, value|
    new_array2 << value[1]
  end
  puts "Sorry, that emoticon was not found" if !new_array2.include?(emoticon)
end



def get_english_meaning
  # code goes here
end