require "minruby"

def evaluate(tree)
  case tree[0]
  when "lit"
    tree[1]
  when "+"
    evaluate(tree[1]) + evaluate(tree[2])
  when "-"
    evaluate(tree[1]) + evaluate(tree[2])
  when "*"
    evaluate(tree[1]) * evaluate(tree[2])
  when "/"
    evaluate(tree[1]) / evaluate(tree[2])
  when "func_call" #仮の実装
    p(evaluate(tree[2]))
  end
end
  
# ①計算式の文字列を読み込む
str = minruby_load()
# ②計算式の文字列を計算の木に変換する
tree = minruby_parse(str)
# ③計算の木を実行（計算）する
answer = evaluate(tree)

