require_relative '../lib/message.rb'

describe Translatbot do
  let(:translate) { Translatbot.new }
  let(:word) { Word.new }
  let(:my_string){'hello'}
  let(:unknown) { String }
  let(:logic1) { Word.api_translate(:translat_word) }
  let(:logic2) { Word.api_translate(unknown) }

  describe '#translat_word' do

    it 'the array should not be empty' do
      expect(my_string.length).not_to eql(0)
    end
    it 'the method retuen a Hash' do
      expect(logic1.class).to eql(Hash)
    end
    it 'when it unknown word ' do
      expect(logic2.class).to eql(Hash)
    end
  end
end
