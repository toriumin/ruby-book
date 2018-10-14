module Effects
    def self.reverse
        ->(words) do
            words.split(' ').map(&:reverse).join(' ')
    end

    def self.echo(rate)
        ->(words) do
        words.chars.map { |c| c == ' ' ? c : c * rate }.join
    end

    def self.loud(level)
        ->(words) do
        words.split(' ').map { |word| word.upcase + '!' * level }.join(' ')
        end
    end
end