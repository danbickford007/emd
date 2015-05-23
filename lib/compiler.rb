require 'github/markup'
require 'parslet' 
require 'taginator'
require 'utils'

class Compiler < Parslet::Parser

  def initialize code=''
    @code = code
  end

  def parse code
    @code = code if code
    utils = Utils.new @code
    while words = @code.scan(Utils::FINDER) and words.count > 0
      words.each do |_word|
        utils.sub_tag _word[1], utils.attributes(_word[2]), _word[3]
      end
    end
    Style.new(@code).parse
  end


end
