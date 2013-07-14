# coding: utf-8
class Actress
  include Mongoid::Document
  field :name, type: String
  field :text, type: String
  field :display, :type => Boolean , :default=>true
  has_many :photos 
  has_and_belongs_to_many :similar_actresses

  def thumbnail_rand
    photos.map{|p| p.url}[rand(4)]
  end

end
