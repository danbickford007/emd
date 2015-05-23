class Taginator

  def initialize

  end

  def self.convert tag
    case tag
    when '#'
      return 'h1'
    when '##'
      return 'h2'
    when '###'
      return 'h3'
    when '####'
      return 'h4'
    when '#####'
      return 'h5'
    when '######'
      return 'h6'
    when '`'
      return 'code'
    when '```'
      return 'code'
    end
  end

end
