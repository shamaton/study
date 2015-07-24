class Project < ActiveRecord::Base
	# 1対多の関係で結び付いている
	has_many :tasks
	# validation
	validates :title,
	presence: {message: "入力してください"}, # 必ず値入ってないとダメ
	length: {minimum: 3, message: "短いでー"}
end
