require 'jekyll-paginate'

# $:.unshift '/Users/dpo/dev/jekyll-scholar/lib'
require 'latex/decode'
require 'jekyll/scholar'

# Disable the Math module of latex-decode as it interferes with MathJax
module LaTeX
  module Decode
    class Maths < Decoder
      def self.decode! (string)
        string
      end
    end
  end
end

# Hyperlink DOIs.
# Regexp from
# http://stackoverflow.com/questions/27910/finding-a-doi-in-a-document-or-page
DOI_PATTERN = Regexp.compile([
  '\b(10[.][0-9]{4,}(?:[.][0-9]+)*/(?:(?!["&\'<>])\S)+)\b',
  URI.regexp(['doi'])
].join('|'))

module Jekyll
  class Scholar
    class DOI < BibTeX::Filter
      def apply(value)
        value.to_s.gsub(DOI_PATTERN) {
          "<a href='https://dx.doi.org/#{$&}'>#{$&}</a>"
        }
      end
    end
  end
end

# Transform common LaTeX markup.
module Jekyll
  class Scholar
    class LatexMarkup < BibTeX::Filter
      def apply(value)
        result = value.to_s.gsub(/\\textsf(\{((?:.|\g<1>)*?)\})/) {
          "<i>#{$2}</i>"  # for lack of a better idea
        }
        result = result.to_s.gsub(/\\textit(\{((?:.|\g<1>)*?)\})/) {
          "<i>#{$2}</i>"
        }
        result = result.to_s.gsub(/\\textbf(\{((?:.|\g<1>)*?)\})/) {
          "<b>#{$2}</b>"
        }
        result = result.gsub(/\\student/) {
          ""
        }
        result = result.gsub(/\\relax/) {
          ""
        }
      end
    end
  end
end
