require 'style'

describe Style do

  let(:italic_style) { Style.new("This is some _italic_ text.") }
  let(:strong_style) { Style.new("This is some *italic* text.") }

  describe '#italics' do

    it 'sets text to italics' do
      expect(italic_style.italics).to eq("This is some <i>italic</i> text.")
    end

  end

  describe '#strong' do

    it 'sets text to strong' do
      expect(strong_style.strong).to eq("This is some <strong>italic</strong> text.")
    end

  end

end
