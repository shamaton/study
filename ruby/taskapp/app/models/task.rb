class Task < ActiveRecord::Base
  belongs_to :project
	validates :title, presence: true # 必ず値入ってないとダメ
	scope :unfinished, -> {where(done: false)}
end
