module Spree
  class Info < Spree::Base
  	validates :info_p, presence: true
  	validates :info_h1, presence: true
  end
end
