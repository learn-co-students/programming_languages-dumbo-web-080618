require 'pry'
def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, lang_att|
    lang_att.each do |lang, type|
      new_hash[lang] = type
      new_hash[lang][:style] = []
    end
  end
  languages.each do |style, lang_att|
    lang_att.each do |lang, type|
      new_hash[lang][:style] << style
    end
  end
  new_hash
end
