# require modules here
require "yaml"

def load_library(path)
  # code goes here
  emoticons = YAML.load_file(path)
  new_hash = {}
  new_hash["get_meaning"] = {}
  new_hash["get_emoticon"] = {}
  emoticons.each do |english, emoticon|
     new_hash["get_meaning"][emoticon.last] = english
     new_hash["get_emoticon"][emoticon.first] = emoticon.last
  end
  new_hash
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
  new_hash = load_library(path)
  emoticon_result = new_hash["get_emoticon"][emoticon]
  if emoticon_result != nil
    return emoticon_result
  else
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emoticon)
  # code goes here
  new_hash = load_library(path)
  japanese_emoticon = get_japanese_emoticon(path, emoticon)
end