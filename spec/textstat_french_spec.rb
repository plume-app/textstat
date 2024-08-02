require 'rspec'
require 'byebug'
require_relative '../lib/textstat'

describe TextStat do
  before do
    @very_easy_text = "Le chat dort. Il fait beau. Les oiseaux chantent dans les arbres. C'est l'été. Il n'y a pas de nuages."
  end

  context 'very easy text' do
    it 'should return the correct number of syllables' do
      count = TextStat.syllable_count(@very_easy_text, "fr")
      expect(count).to eql 23
    end

    it 'should return the correct number of sentences' do
      count = TextStat.sentence_count(@very_easy_text)
      expect(count).to eql 5
    end

    it 'should return the correct average sentence length' do
      avg = TextStat.avg_sentence_length(@very_easy_text)
      expect(avg).to eql 4.0
    end

    it 'should return the correct Flesch reading-ease test score' do
      score = TextStat.flesch_reading_ease(@very_easy_text, "fr")
      expect(score).to eql 100
    end

    it 'should return the correct Flesch–Kincaid grade' do
      score = TextStat.flesch_kincaid_grade(@very_easy_text, "fr")
      expect(score).to eql 0.5
    end

    it 'should return the correct difficult words result' do
      result = TextStat.difficult_words(@very_easy_text, :fr, true)
      expect(result).to include("oiseaux")
      expect(result.length).to eq 1
    end

    # it 'should return the correct number of polysyllab' do
    #   count = TextStat.polysyllab_count(@very_easy_text)
    #   expect(count).to eql 43
    # end

    # it 'should return the correct smog index' do
    #   index = TextStat.smog_index(@very_easy_text)
    #   expect(index).to eql 12.5
    # end

    # it 'should return the correct Coleman–Liau index' do
    #   index = TextStat.coleman_liau_index(@very_easy_text)
    #   expect(index).to eql 10.65
    # end

    # it 'should return the correct automated readability index' do
    #   index = TextStat.automated_readability_index(@very_easy_text)
    #   expect(index).to eql 12.4
    # end

    # it 'should return the correct linsear write formula result' do
    #   result = TextStat.linsear_write_formula(@very_easy_text)
    #   expect(result).to eql 14.875
    # end

    # it 'should return the correct difficult words result' do
    #   result = TextStat.difficult_words(@very_easy_text)
    #   expect(result).to eql 58
    # end

    # it 'should return the correct difficult words list result' do
    #   result = TextStat.difficult_words_list(@very_easy_text)
    #   expect(result).to include("development", "relationships", "environments")
    # end

    # it 'should return the correct Dale–Chall readability score' do
    #   score = TextStat.dale_chall_readability_score(@very_easy_text)
    #   expect(score).to eql 7.25
    # end

    # it 'should return the correct Gunning fog score' do
    #   score = TextStat.gunning_fog(@very_easy_text)
    #   expect(score).to eql 17.56
    # end

    # it 'should return the correct Lix readability test score' do
    #   score = TextStat.lix(@very_easy_text)
    #   expect(score).to eql 45.11
    # end

    # it 'should return the correct FORCAST readability test score' do
    #   score = TextStat.forcast(@very_easy_text)
    #   expect(score).to eql 10
    # end

    # it 'should return the correct Powers Sumner Kearl readability test score' do
    #   score = TextStat.powers_sumner_kearl(@very_easy_text)
    #   expect(score).to eql 25.04
    # end

    # it 'should return the readability consensus score' do
    #   standard = TextStat.text_standard(@very_easy_text)
    #   expect(standard).to eql '10th and 11th grade'
    # end

    # it 'should return the correct reading time' do
    #   score = TextStat.reading_time(@very_easy_text)
    #   expect(score).to eql 25.68
    # end

    # it 'should return the correct McAlpine EFLAW score' do
    #   score = TextStat.mcalpine_eflaw(@very_easy_text)
    #   expect(score).to eql 30.8
    # end

    # it 'should return the correct mini word count' do
    #   count = TextStat.miniword_count(@very_easy_text)
    #   expect(count).to eql 151
    # end
  end
end

# Le chat dort. Il fait beau. Les oiseaux chantent dans les arbres. C'est l'été. Il n'y a pas de nuages.
