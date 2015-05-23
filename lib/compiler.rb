require 'github/markup'

class Compiler


  def initialize

  end

  def parse code
    GitHub::Markup.render('README.markdown', code)
  end


end
