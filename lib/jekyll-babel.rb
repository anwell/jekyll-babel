require "jekyll-babel/version"
require "babel/transpiler"

module Jekyll
  class ES < Converter
    def matches(ext)
      ext.downcase.eql?(".es") 
    end

    def output_ext(ext)
      ".js"
    end

    def convert(content)
      if transpiled = Babel::Transpiler.transform(content, { ast: false, sourceMap: false })
        transpiled["code"]
      else
        ""
      end
    end
  end
end
