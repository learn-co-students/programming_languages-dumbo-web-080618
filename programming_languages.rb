def reformat_languages(languages)
  new_hash = {}

  languages.each do |oo_or_functional, language_coll|
    language_coll.each do |language, attributes|
      attributes.each do |attribute, value|
        if new_hash[language].nil?
          new_hash[language] = {}
        end
        new_hash[language][:style] ||= []
        new_hash[language][:style] << oo_or_functional
        if new_hash[language][attribute].nil?
          new_hash[language][attribute] = value
        end
      end
    end
  end
  new_hash
end
