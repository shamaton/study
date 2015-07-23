# コメント

# 定数
TEISUU = "これは定数"
#p TEISUU.length
#p TEISUU.reverse

class User

	@@count = 0 # クラス変数

	def initialize(name)
		@name = name
	end

	def sayHi
		puts "hello my name is #{@name}"
	end

	#accessor
	attr_accessor :name
	#attr_reader :time # read only
	#attr_writer :time # write only

	def debug
		msg = "hogehoge"
		p msg


		# 変数展開
		test = "connect #{TEISUU}"
		puts test

		puts "hogehoge" + 'fugauga'
		puts 'koti' * 3

		# 配列
		sales = [1,2,3,4]
		p sales[0..3]
		sss = %W(a b c"a)
		p sss

		# 配列に追加
		sales[1, 0] = [55,66]
		p sales

		sales.push(100)
		p sales

		sales << 99
		p sales

		# 繰り返し
		3.times { |x|
			puts x 
		}
	end
end

# 継承
class SuperUser < User
	def shout
		puts "my name #{@name}!!"
	end
end

hoge = User.new("shamaton")
hoge.sayHi

fuga = SuperUser.new("fuga")
fuga.shout
fuga.name = "tonton"
fuga.shout