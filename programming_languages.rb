def reformat_languages(languages)
  result = {}
  languages.each do |language_style, language_hash|
    language_hash.each do |name, type_hash|
      if !result.keys.include?(name)
        result[name] = {:type => type_hash[:type], :style => [language_style]}
      else
        result[name][:style] << language_style
      end
    end
  end
  result
end
