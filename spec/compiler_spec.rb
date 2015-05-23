require 'compiler'

describe Compiler do

  let(:compiler) { Compiler.new  }

  describe '#parse' do

    it 'parses code to html' do
      expect(compiler.parse("hi")).to eq("<h1>hi</h1>")
    end

  end


end
