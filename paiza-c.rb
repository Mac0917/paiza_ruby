require "pry"
require "pry-byebug"
require "date"

# cランクレベルアップメニュー
#getsは文字列を入力する


puts "d 文字の出力"
# c 文字の出力
input_line = gets
puts input_line


puts "d 複数行"
# d 複数行
input_line = gets.to_i
input_line.times do
    puts "paiza"
end


puts "d 複数行"
#d 複数行
input_line = gets.to_i
array = Array.new
input_line.times do
    num = gets.to_i
    array.push(num)
end
puts array
## 配列をputsすると一つずつ改行されて出力される


puts "d 配列"
# d 配列
n = gets.to_i
array = Array.new
n.times do
    a = gets.to_i
    array.push(a)
end
puts array.max


puts "d 半角区切り"
# d 半角区切り
input_line = gets.to_i
array = Array.new(input_line, "paiza")
i = 1
array.each do |num|
    if i==input_line
        print "#{num}"
    else
        print "#{num} "
    end
    i+=1
end
# やり直し
puts "やり直し"
input_line = gets.to_i
array = Array.new(input_line, "paiza")
puts array.join(" ")
# やり直し
## putsとprintの違い
# print 'こんにちは'
# print '今日の天気は'
# print '晴れですね'
# こんにちは今日の天気は晴れですね
# puts 'こんにちは'
# puts '今日の天気は'
# puts '晴れですね'
# こんにちは
# 今日の天気は
# 晴れですね
## joinの使い方
# array = ["GSE", "VSE", "MSE"]
# puts array.join
# #=>
# GSEVSEMSE
# array = ["GSE", "VSE", "MSE"]
# puts array.join(",")
# #=>
# GSE,VSE,MSE


puts "d 改行区切り"
# d 改行区切り
input_line = gets.to_i
input_line2 = gets.split
puts input_line2
## splitは引数なしだと空白文字(” “(半角スペース)、”\n”(改行コード)、”\t”(タブ)など)で分割される
#引数ありgets.split(" ", 2)


puts "c 標準出力"
input_line = gets.to_i
array = Array.new
input_line.times do
    info = gets.split
    info[1] = info[1].to_i + 1
    array.push("#{info[0]} #{info[1]}")
end
puts array


puts "d 整数と文字列"
input_line = gets.to_i
array = Array.new
input_line.times do
    num = gets.chomp
    array.push(num)
end
array.each do |num|
    puts num.length
end
#普通に入力すると改行が入る


puts "d 部分文字列"
input_line = gets.chomp
input_line2 = gets.chomp
if input_line2.include?(input_line)
    puts "YES"
else
    puts "NO"
end

puts "d 数字の文字列"
input_line = gets
a = input_line.strip[0].to_i
b = input_line.strip[1].to_i
c = input_line.strip[2].to_i
d = input_line.strip[3].to_i
front = (a+d).to_s
back = (b+c).to_s
puts front + back
# stripの使い方
# a = "1253"
# a.strip[0] => 1 a.strip[1] => 2 a.strip[0..1] = 12 a.strip[2..3] => 53


puts "d 数字の文字列2"
input_line = gets.to_s
if input_line.length == 1
    puts "00"+input_line
elsif input_line.length == 2
    puts "0"+input_line
else
    puts input_line
end
# 入力は数値


puts "数字の文字列3"
input_line = gets.split(":")
input_line.each do |num|
    if num.strip[0] == "0"
        puts num.strip[1]
    else
        puts num
    end
end


puts "数字の文字列4"
input_array = gets.split(":")
time = Time.local(2020,01,01,input_array[0].to_i,input_array[1].to_i) + 60*30
def plus(string)
    if string.length == 1
        return "0" + string
    else
        return string
    end
end
hour = plus(time.hour.to_s)
min = plus(time.min.to_s)
puts hour + ":" + min
# Time.new(   ) Date.new(   )  Time.now Date.today


puts "c 時刻"
input_line = gets.to_i
array = Array.new
input_line.times do 
    time_info = gets.split
    time = Time.new(2020,01,01,time_info[0].strip[0..1].to_i,time_info[0].strip[3..4].to_i) + time_info[1].to_i * 3600 + time_info[2].to_i * 60
    array.push(time)
end
def plus(string)
    if string.length == 1
        return "0" + string
    else
        return string
    end
end
array.each do |t|
    hour = plus(t.hour.to_s)
    min = plus(t.min.to_s)
    puts hour + ":" + min
end


puts "d 3の倍数カウント"
input_line = gets
input_line2 = gets.split.map {|time| time.to_i%3==0}.count(true)
puts input_line2
# countの使い方


puts "d フラグ管理"
num = gets.to_i
array = Array.new
num.times do
    number = gets.to_i
    array.push(number)
end
array.map! {|number| number==7}
if array.include?(true)
    puts "YES"
else 
    puts "NO"
end


puts "d インデックス"
n = gets.to_i
array = Array.new
n.times do
    money = gets.to_i
    array.push(money)
end
k = gets.to_i
puts array.index(k).to_i + 1


puts "d 多重ループ"
m = gets.to_i
c_array = Array.new
m.times do
    c = gets.chomp
    c_array.push(c)
end

n = gets.to_i
s_array = Array.new
n.times do
    s = gets.chomp
    s_array.push(s)
end

c_array.each do |c|
    s_array.each do |s|
        if s.include?(c)
            puts "YES"
        else
            puts "NO"
        end
    end
end


puts "c ループ"
input = gets.split
N = input[0].to_i
M = input[1].to_i
K = input[2].to_i
like_array = Array.new
N.times do
    like = gets.split
    like.map! {|a| a.to_i}
    like_array.push(like)
end

like_array.each do |like|
    puts like.count(K)
end


puts "d ソート"
n = gets.to_i
a_array = Array.new
n.times do
    a = gets.to_i
    a_array.push(a)
end
a_array.sort!
puts a_array
# 配列を昇順にするのはsort 降順はsort.reverse

puts "d 降順ソート"
n = gets.to_i
a_array = Array.new
n.times do
    a = gets.to_i
    a_array.push(a)
end
a_array = a_array.sort.reverse
puts a_array
# a.sort.reverse!はできなかった
[3, 2, 1].sort{|v0, v1|
  binding.pry
  v0 <=> v1
}
h = { "def" => 2, "ghi" => 1, "abc" => 3 }
h.sort{ | a, b | 
  binding.pry #aは["def",2] bは["ghi", 1]
a[1] <=> b[1] }
[3, 2, 1].sort{|v0, v1| v0 <=> v1}
[3, 2, 1].sort{|v0, v1| v1 <=> v0}
[5,6,2,9].sort {|s, t| s <=>t}


[[1,3],[2,2]].sort {|a, b| b[0]<=>a[0]}

test_score = { 'suzuki' => 90, 'sato' => 50, 'kato' => 60, 'wada' => 40 }
test_score.sort_by {|k, v|
#binding.pry
 k } 
 #sort_by場合はkはキー vはヴァリュー



puts  "d 辞書式ソート"
n = gets.to_i
ab_array = Array.new
n.times do
    ab = gets.split.map {|ele| ele.to_i}
    ab_array.push(ab)
end
ab_array = ab_array.sort.reverse
ab_array.each do |ab|
    puts ab.join(" ")
end
 
puts "c 辞書式ソート"
n = gets.to_i
ab_array = Array.new
n.times do
    ab = gets.split.map {|ele| ele.to_i}
    ab.reverse!
    ab_array.push(ab)
end
ab_array = ab_array.sort.reverse
ab_array.each do |ab|
    ab.reverse!
    puts ab.join(" ")
end
###
# [[1,3,4], [3,4,3]] このような二次元配列でソートをすると各配列の0番目からくらべていく


puts "c 辞書の基本"
n = gets.to_i
h = {}
n.times do
    s = gets.split
    key = s[0].chomp
    value = s[1].to_i
    h[key] = value
end
S = gets.chomp
puts h[S] 
# ハッシュは{:a=>"aaa", :b=>"bbb", "d"=>"ddd"}このようにもあらわせる


puts "c 辞書のデータ更新"
n = gets.to_i
s_hash = {}
n.times do
    s = gets.chomp
    s_hash[s] = 0
end

m = gets.to_i
m.times do
    p = gets.split
    attack = p[0].chomp
    damege = p[1].to_i
    s_hash[attack] += damege
end

S = gets.chomp
puts s_hash[S]



puts "c 辞書データの順序"
n = gets.to_i
s_hash = {}
n.times do
    s = gets.chomp
    s_hash[s] = 0
end

m = gets.to_i
m.times do
    p = gets.split
    attack = p[0].chomp
    damege = p[1].to_i
    s_hash[attack] += damege
end
s_hash = s_hash.sort_by {|k, v| k}
s_hash.each {|k, v|
  puts v
}
# sortでアルファベットはアルファベット順



puts "c 辞書 しんどい"
input = gets.split
p = input[0].to_i
q = input[1].to_i
r = input[2].to_i

p_ask = {}
p.times do
    p_q = gets.split
    p_ask[p_q[0].to_i] = p_q[1].to_i
end

q_ask = {}
q.times do
    q_r = gets.split
    q_ask[q_r[0].to_i] = q_r[1].to_i
end

p_r_ask = {}
p_ask.each {|k,v|
   p_r_ask[k] = q_ask[p_ask[k]]
}

p_r_ask = p_r_ask.sort_by {|k, v| k}
p_r_ask.sort!
p_r_ask.each do |p_r|
    puts p_r.join(" ")
end


puts "c 条件を満たす自然数"
num = rand(10000..10012)
while num%13 != 0 do 
    num = rand(10000..10012)
end
puts num

num = 10000
while num%13 != 0 do
    num += 1
end
puts num


puts "c シュミレーションの練習"
n = gets.to_i
ab = gets.split
a = ab[0].to_i
b = ab[1].to_i
paiza = 1
kyoko = 1
i = 0
while kyoko <= n
    kyoko += paiza*a
    paiza += kyoko%b
    i += 1
end
puts i


puts "c シュミレーション2"
H = gets.to_i
i = 1
paiza_attack = {}
monster_attack = {}
while 0<H do
    if i==1 || i==2
        paiza_attack[i] = 1
    else 
        paiza_attack[i] = monster_attack[i-1] + monster_attack[i-2]
    end
    if i==1 || i==2
        monster_attack[i] = 1
    else
        monster_attack[i] = paiza_attack[i-1]*2 + paiza_attack[i-2]
    end
    H -= monster_attack[i]
    i += 1
end
puts i-1
    
