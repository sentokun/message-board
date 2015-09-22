class Message < ActiveRecord::Base
    # 名前は必須入力かつ20文字以内
    validates :name , length: { maximum: 20 } , presence: true
    # 内容は必須入力かつ2文字以上30文字以内
    validates :body , length: { minimum: 2 , maximum: 30 } , presence:true
    # 
    validates_numericality_of :age , greater_than: 0, only_integer:true , presence:true
end
