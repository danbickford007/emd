require 'compiler'

describe Compiler do

  let(:compiler) { Compiler.new  }

  describe '#parse' do

    it 'parses code to html' do
      expect(compiler.parse('#{class: "test"} hi')).to eq("<h1 class='test'> hi</h1>\n")
    end

    it 'parses tags without attributes' do
      expect(compiler.parse('# hi')).to eq("<h1> hi</h1>\n")
    end

    it 'parses h1 to html' do
      expect(compiler.parse('#{class: "test", id: "myId"} hi')).to eq("<h1 class='test' id='myId'> hi</h1>\n")
    end

    it 'parses h2 to html' do
      expect(compiler.parse('##{class: "test"} hi')).to eq("<h2 class='test'> hi</h2>\n")
    end

    it 'parses h3 to html' do
      expect(compiler.parse('###{class: "test"} hi')).to eq("<h3 class='test'> hi</h3>\n")
    end

    it 'parses h4 to html' do
      expect(compiler.parse('####{class: "test"} hi')).to eq("<h4 class='test'> hi</h4>\n")
    end

    it 'parses h5 to html' do
      expect(compiler.parse('#####{class: "test"} hi')).to eq("<h5 class='test'> hi</h5>\n")
    end

    it 'parses h6 to html' do
      expect(compiler.parse('######{class: "test"} hi')).to eq("<h6 class='test'> hi</h6>\n")
    end

    it 'parses ` to html' do
      expect(compiler.parse('`{class: "test"} hi')).to eq("<code class='test'> hi</code>")
    end

    it 'parses ``` to html' do
      expect(compiler.parse('```{class: "test"} hi')).to eq("<code class='test'> hi</code>\n")
    end

  end


end
