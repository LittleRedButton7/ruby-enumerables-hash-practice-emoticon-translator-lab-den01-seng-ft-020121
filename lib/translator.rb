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
end


def get_japanese_emoticon(lib, emot)
  #emoj = "(-_-)"
  #lib = "lib/emoticons.yml"
  yaml = load_library(lib)
  #yaml = {"angel"=>{:english=>"O:)", :japanese=>"☜(⌒▽⌒)☞"}...
  yaml.map do |name, emot_hash|
    #name = "angel" 
    #emot_hash = {:english=>"O:)", :japanese=>"☜(⌒▽⌒)☞"}
    emot_hash.map do |language, lang_emot|
      #language = :english
      #lang_emot = ":)"
  
      return emot_hash[:japanese] if lang_emot == emot
    end
  end
  "Sorry, that emoticon was not found"
end

get_japanese_emoticon("lib/emoticons.yml", "(￣ー￣)")

def get_english_meaning(lib, emot)
  # will use load_library
  #takes in one parameter and returns the name in English; this will be the key of the key,value pair nested in the outer key, value hash.
  yaml = load_library(lib)
  #yaml = {"angel"=>{:english=>"O:)", :japanese=>"☜(⌒▽⌒)☞"}...
  yaml.map do |name, emot_hash|
    #name = "angel" 
    #emot_hash = {:english=>"O:)", :japanese=>"☜(⌒▽⌒)☞"}
    emot_hash.map do |language, lang_emot|
      #language = :english
      #lang_emot = ":)"
  
      return name if lang_emot == emot
    end
  end
  "Sorry, that emoticon was not found"
end