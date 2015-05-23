class Utils

  FINDER = /((#|##|###|####|#####|######|`|```)(?:\{(.*)\})*([\w\s]+)$)/

  def initialize code
    @code = code

  end

  def sub_tag tag, attrs, word
    @code.sub!(FINDER, "<#{Taginator.convert tag}#{attrs}>#{word}</#{Taginator.convert tag}>#{tag_ender tag}") 
  end

  def tag_ender tag
    if tag == '`'
      ''
    else
      "\n"
    end
  end

  def attributes word
    return '' if !word
    attrs = word.scan(/(\w+):\s['|"]([\w+\s\:\,]+)[\'|\"]/)
    attr_string = " "
    attrs.each_with_index do |attr, index|
      attr_string += "#{attr[0]}='#{attr[1]}'#{space(attrs, index)}" 
    end
    attr_string
  end

  def space attrs, index
    space = ''
    if attrs.length > 1
      space = ' '
    end
    if attrs.count - 1 == index
      space = ''
    end
    space
  end

end
