# require modules here
require 'pry'
require "yaml"

def load_library(file_path)

  updated_lib = {}
  yaml = YAML.load_file(file_path)
 
  yaml.map do |name, emoticon_array|
    updated_lib[name] = {:english => emoticon_array[0], :japanese => emoticon_array[1]}
  end  
  updated_lib
  binding.pry
end

def get_japanese_emoticon(lib, emoticon)
  # takes in the parameter of an emoticon and outputs the value from the key, value pair 
  #of the outer key,value pair from the load_library method above
  lib = load_library(yaml)
    lib.map do |emoticon|
      emoticon = 
    
end

def get_english_meaning
  # will use load_library
  #takes in one parameter and returns the name in English; this will be the key of the key,value pair nested in the outer key, value hash.
  
end