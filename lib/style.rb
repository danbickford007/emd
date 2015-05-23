class Style

  def initialize code
    @code = code
    italics
  end

  def parse
    @code
  end

  def italics
    pattern = /_([\w\s]+)_/ 
    parts = @code.scan(pattern)
    index = 0
    while @code.match(pattern)
      @code.sub!(pattern, "<i>#{parts[index][0]}</i>")
      index += 1
    end
    @code
  end 

  def strong
    pattern = /\*([\w\s]+)\*/ 
    parts = @code.scan(pattern)
    index = 0
    while @code.match(pattern)
      @code.sub!(pattern, "<strong>#{parts[index][0]}</strong>")
      index += 1
    end
    @code
  end 


end
