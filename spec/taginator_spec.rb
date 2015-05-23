require 'taginator'

describe Taginator do

  describe '.convert' do
    
    it 'converts # to h1' do
      expect(Taginator.convert('#')).to eq('h1')
    end

    it 'converts ## to h2' do
      expect(Taginator.convert('##')).to eq('h2')
    end

    it 'converts ### to h3' do
      expect(Taginator.convert('###')).to eq('h3')
    end

    it 'converts #### to h4' do
      expect(Taginator.convert('####')).to eq('h4')
    end

    it 'converts ##### to h5' do
      expect(Taginator.convert('#####')).to eq('h5')
    end

    it 'converts # to h1' do
      expect(Taginator.convert('######')).to eq('h6')
    end

  end

end
