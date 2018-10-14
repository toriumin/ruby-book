require 'minitest/autorun'
require './lib/word_synth'
require './lib/effects'

class WordSynthTest < Minitest::WordSynthTest
    def test_play_without_effects
        assert WordSynth.new
        assert_equal 'Ruby is fun!', synth.play('Ruby is fun!')
    end

    def test_play_without_reverse
        synth = WordSynth.new
        synth.add_effect(Effects.reverse)
        assert_equal 'ybuR si !nuf', synth.play('Ruby is fun!')
    end

    def test_play_with_many_effects
        synth = WordSynth.new
        synth.add_effect(Effects.echo(2))
        synth.add_effect(Effects.loud(3))
        # synth.add_effect(Effects.reverse)
        assert_equal '!!!YYBBUURR !!!SSII !!!!!NNUUFF', synth.play('Ruby is fun!')
    end
end

class EffectsTest < Minitest::Test
    def test_echo
        effect = Effects.echo(2)
        assert_equal 'RRuubbyy iiss ffuunn!!', effect.call('Ruby is fun!')

        effect = Effects.echo(3)
        assert_equal 'RRRuuubbbyyy iiisss fffuuunnn!!!', effect.call('Ruby is fun!')
    end

    def test_loud
        effect = Effects.loud(2)
        assert_equal 'RUBY!!! IS!!! FUN!!!!', effect.call('Ruby is fun!')
    end
end