class Post < ActiveRecord::Base
	belongs_to  :user
	has_many    :comments
        validates   :category, :inclusion => { :in ["한식","일식","중식","양식"], : message =>"한식, 일식, 중식, 양식 중 하나를 선택해주세요"}
	validates   :title, :presence => { :message => "제목을 반드시 입력하셔야 합니다."}
end
