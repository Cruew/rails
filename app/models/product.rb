class Product < ActiveRecord::Base	
    has_many :orders
    validates :name, :description, :colour, :textimage_url, :price, :presence => true

    
end