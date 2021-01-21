# require modules here

require "yaml"

def load_library(file_path)

  emoticon_library = {}
  file_path = YAML.load_file(file_path)
 
  file_path.each do |name, emoticon_array|
    updated_lib[name] = {:english => emoticon_array[0], :japanese => emoticon_array[1]}
  
  end  
  updated_lib
end

def get_japanese_emoticon
  # takes in the parameter of an emoticon and outputs the value from the key, value pair 
  #of the outer key,value pair from the load_library method above
  
end

def get_english_meaning
  # will use load_library
  #takes in one parameter and returns the name in English; this will be the key of the key,value pair nested in the outer key, value hash.
  
end