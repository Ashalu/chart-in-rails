class User < ApplicationRecord

	self.inheritance_column = nil

	enum type: [:abc, :xyz]
end
