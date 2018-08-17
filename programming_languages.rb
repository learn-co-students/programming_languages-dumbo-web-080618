def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |paradigm, language|
    language.each do |name, type|
      new_hash[name] = type
      new_hash[name][:style] = [paradigm]
    end
  end

  new_hash[:javascript][:style] << :oo
  new_hash
end

