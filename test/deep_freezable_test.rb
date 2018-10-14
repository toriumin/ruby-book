require 'minitest/autorun'
require './lib/bank'
require './lib/team'

class DeepFreezableTest < Minitest::Test
    def test_deep_freeze_to_array
        #配列の値は正しいか？
        assert_equal ['Japan', 'US', 'India'], Team::COUNTRIES
        #配列自身がfreezeされているか？
        assert COUNTRIES.frozen?
        #配列の要素がすべてfreezeされているか？
        assert Team::COUNTRIES.all? { |country| country.frozen? }
    end
end

    def test_deep_freeze_to_hash
        assert_equal (
            { 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' }
            Bank::COURRENCIES.all?
        )
        #ハッシュ自身がfreezeされているか？
        assert Bank::COURRENCIES.frozen?
        #ハッシュの要素(キーと値)がすべてfreezeされているか？
        assert Bank::COUNTRIES.all? ( |key, value| key.frozen? && value.frozen? )
    end
end