require 'pry'

def reformat_languages(languages)
new_hash = {}
 languages.each do |k, v|
  v.each do |key, value|
   if new_hash.keys.include?(key)
     new_hash[key][:style] << k
     
    else
    new_hash[key] = {}
    new_hash[key] = value
        new_hash[key][:style] = [k]
      end
end
end
new_hash
end