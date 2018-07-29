require "pry"

def reformat_languages(languages)
  newLangObj = {}

  languages.each do |style_name, style_hash|
    style_hash each.do  |language, type|
      type.each do |key, value|
        if newLangObj.key?(language)
          if newLangObj[language].key(:style)
            newLangObj[language][:style] << style_name
          else
            newLangObj[langugage][:style] = [style_name]
          end
        else
          newLangObj[language] = {:style => [style_name]}
          binding.pry
        end
      end
    end
  end
  newLangObj
end
