puts 'Start.'
module Greeter
    def hello
        'hello'
    end
end

# 例外処理を組み込んで例外処理を組み込んでみましょう
begin
    greeter = Greeter.new
rescue
    puts '例外が発生したが、このまま実行する'
end

# 上の行で例外が発生するため、ここから下は実行されない
puts 'End.'