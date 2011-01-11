class Video < ActiveRecord::Base
  has_many :comments
  
  validates_presence_of :title, :embed_code
  validate :must_have_valid_embed_code
  
  def must_have_valid_embed_code
    unless embed_code.include?("<embed")
      errors.add(:embed_code, "Must include an embed tag")
    end
  end
end
