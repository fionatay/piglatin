require_relative 'pig_latin'

describe PigLatin do
  describe '#translate_word' do
    it "doesnt blow up on empty strings" do
      PigLatin.translate_word('').should eq ''
    end

    it "translates a word that starts with a single consonant" do
      PigLatin.translate_word('hello').should eq 'ellohay'
    end

    it "translates a word that starts with multiple consonants" do
      PigLatin.translate_word('school').should eq 'oolschay'
    end

    it "translates a word that starts 'qu'" do
      PigLatin.translate_word('quick').should eq 'ickquay'
    end

    it "translates a word that starts with a vowel" do
      PigLatin.translate_word('apples').should eq 'applesay'
    end

    it 'translates a word that starts with a capitalize' do
      PigLatin.translate_word('Hello').should eq 'Ellohay'
      PigLatin.translate_word('Apples').should eq 'Applesay'
    end
  end

  describe '#translate' do
    it "translates multiple word sentences" do
      PigLatin.translate('hello world').should eq 'ellohay orldway'
    end

    it "preserves punctuation" do
      PigLatin.translate('Hello, world!?').should eq 'Ellohay, orldway!?'
    end
  end
end