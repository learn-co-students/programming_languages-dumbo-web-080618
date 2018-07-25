require 'pry'
def reformat_languages(languages)
  new_hash = {}
 languages.each do |key1,value1|
    value1.each do |key2,value2|
     value2.each do |key3,value3|
        if new_hash[key2] == nil 
         new_hash[key2]={key3 => value3}
        end
        if new_hash[key2][:style] == nil 
          new_hash[key2][:style] = [key1]
        else
          new_hash[key2][:style].push(key1)
        end
      end
    end
  end
     new_hash
end