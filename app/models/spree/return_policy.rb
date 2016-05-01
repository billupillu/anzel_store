module Spree
  class ReturnPolicy < Spree::Base
  	validates :content, presence: true
  end
end
