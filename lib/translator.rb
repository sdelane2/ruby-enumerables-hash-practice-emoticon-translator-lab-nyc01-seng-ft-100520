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
  emoticon = "#{emoticon}"
  hash = load_library(file_to_load)
  #binding.pry 
  hash.detect do |emoji, language|
     if language[:english] == emoticon 
      emoticon = language[:japanese]
      return emoticon unless 
    end 
  end
  new_array = []
  hash.collect do |emoji, language|
    new_array << language.to_a
  end
  new_array2 = []
  new_array.each do |language, value|
    new_array2 << value[1]
  end
  puts "I'm sorry" if !new_array2.include?(emoticon)
  puts "#{emoticon}" new_array.include?(emoticon)
end



def get_english_meaning
  # code goes here
end