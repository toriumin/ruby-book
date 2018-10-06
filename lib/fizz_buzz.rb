# ヒアドキュメントで作成した文字列に対して、直接upcaseメソッドを呼び出す
# (upcaseは文字列を全て大文字にするメソッド)
b = <<TEXT.upcase
Hello,
Good-bye,
TEXT
puts b
