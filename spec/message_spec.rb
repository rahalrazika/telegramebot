require_relative '../lib/message.rb'

describe Translatbot do
  let(:translate) { Translatbot.new }
  let(:word) { 'hello' }
  let(:unknown) { String }
  let(:logic1) { Word.api_translate(word) }
  let(:logic2) { Word.api_translate(unknown) }

  describe '#translat_word' do
    it 'when a word translate' do
      expect(logic1.transform_values).to match(Enumerator)
    end
    it 'unknown word' do
      expect(logic2.transform_values).to match(Enumerator)
    end
    it 'the array should not be empty' do
      expect(word.length).not_to eql(0)
    end
  end
end
