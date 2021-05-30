class User < ApplicationRecord

    has_one_attached :avatar do |attachable|
        attachable.variant :thumb, resize: "100x100"
      end
      
    has_many_attached :documents
    
end
