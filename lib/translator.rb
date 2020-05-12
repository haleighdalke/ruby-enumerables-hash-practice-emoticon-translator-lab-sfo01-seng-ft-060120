# require modules here
require 'yaml'

def load_library(file_path)
  # code goes here
  emoticon_hash = file_path.load_file
  
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  emoticon_hash = load_library(file_path)
  emoticon_hash.each do |k, v|
    if v[:english] == emoticon
      #binding.pry
      return v[:japanese]
    end
    #binding.pry
  end
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  emoticon_hash = load_library(file_path)
  emoticon_hash.each do |k, v|
    if v[:japanese] == emoticon
      #binding.pry
      return k
    end
    #binding.pry
  end
  return "Sorry, that emoticon was not found"
end
