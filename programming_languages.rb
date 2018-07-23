def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each { |style, data|
    data.each { |lang_name, describe|
      if new_hash[lang_name] == nil
          new_hash[lang_name] = describe
          new_hash[lang_name][:style] = []
        end
        new_hash[lang_name][:style] << style
    }
  }
  new_hash
end
