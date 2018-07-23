require 'pry'

def reformat_languages(languages)
  types= []
  new_hash= {}
  
  languages.each do |type, hash|
    hash.each do |lang, mohash|
        new_hash[lang] = mohash
        new_hash[lang][:style] = []
    end
  end
  languages.each do |type, hash|
    hash.each do |lang, mohash|
      binding.pry
      new_hash[lang][:style] << type
    end
  end
  new_hash
end
