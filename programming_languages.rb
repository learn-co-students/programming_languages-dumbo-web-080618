require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |styles, hashes|
    hashes.each do |language, language_data|
      language_data.each do |type, type_value|
        if new_hash.include?(language)
          new_hash[language][:style] << styles
        else
          new_hash[language] = {:type => type_value, :style => [styles]}
        end
      end
    end
  end
  new_hash
end
