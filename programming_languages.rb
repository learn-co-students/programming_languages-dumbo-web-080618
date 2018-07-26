


def reformat_languages(languages)
  new_hash = {}
  languages[:oo].each do |language, description|
    # language    == :ruby
    # description == :type => "interpreted"
    description.each do |type, kind|
      # type == :type
      # kind == "interpreted"
      new_hash[language] = { type => kind, :style => [:oo] }
    end
  end
  languages[:functional].each do |language, description|
    # language    == :clojure
    # description == :type => "compiled"
    description.each do |type, kind|
      # type == :type
      # kind == "compiled"
      if language == :javascript
        new_hash[language] = { type => kind, :style => [:oo, :functional] }
      else
        new_hash[language] = { type => kind, :style => [:functional] }
      end
    end
  end
  new_hash
end





