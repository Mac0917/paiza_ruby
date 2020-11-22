require "pry"
require "pry-byebug"

puts "D 掛け算"
# Dランク 掛け算
input_line = gets.to_i
input_line2 = gets.to_i
def judge(num)
    if 0<=num && num<=100
        return true
    end
end
if judge(input_line) && judge(input_line2)
    puts input_line*input_line2
end

puts "D 足し算"
# Dランク 足し算
input_line = gets.split(" ", 2)
a = input_line[0].to_i
b = input_line[1].to_i
def judge(num)
    if 0<=num && num<=100
        return true
    end
end
if judge(a) && judge(b)
    puts a+b
end
## splitは第一引数は分割する部分 第二引数は要素の数 配列を作る

puts "D 一番小さい値"
# Dランク 一番小さい値
n1 = gets.to_i
n2 = gets.to_i
n3 = gets.to_i
n4 = gets.to_i
n5 = gets.to_i
def judge(num)
    if 1<=num && num<=100
        return true
    end
end
if judge(n1) && judge(n2) && judge(n3) && judge(n4) && judge(n5)
    array = [n1, n2, n3, n4, n5]
    puts array.min
end
## 配列の作り方
# ary = ["foo", "bar", "baz"] # []記法 
# ary = Array.new # 引数なし、空の配列
# ary = Array.new(3, "foo") # 引数あり
# 一番小さい値はminメソッド 一番大きい値はmaxメソッド

puts "D 文字列の一致"
# D 文字列の一致
input_line = gets.chomp
input_line2 = gets.chomp
def judge(str1, str2)
    if 1<=str1.length && str1.length<=100 && 1<=str2.length && str2.length<=100 && str1==str2
        puts "OK"
    else
        puts "NG"
    end
end
judge(input_line, input_line2)
## デフォではgetsだと必ず改行が入る。すなわち/nが入る。これを取り除くにはchompメソッドを使う

puts "C fizz buzz"
# C fizz buzz
input_line = gets.to_i
for num in 1..input_line do
    if num%3==0 && num%5==0
        puts "Fizz Buzz"
    elsif num%3 == 0
        puts "Fizz"
    elsif num%5 == 0
        puts "Buzz"
    else
        puts num
    end
end
## for文の使い方を確認

