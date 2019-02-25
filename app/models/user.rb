class User < ApplicationRecord

	self.inheritance_column = nil

	enum type: [:abc, :xyz]

	def self.common_data user
		@arr = []
  	@arr1 = []
  	@arr2 = []
  	@arr3 = []
  	@h = Hash.new 
  	user.each do |name|
		  	if !@arr.to_set.include?(name.pi) 
							@arr.push(name.pi)	
				end		
	  end
	  c = (@arr.last - @arr.first)
	  a = (c.to_f/10)
	  a = a.round(2)
	  @arr1.push(@arr[0])
	  i = 1;
	  while i<= 10
	  	@arr1.push((@arr1[i-1] + a).round(2))
	  	@value = User.all.where("pi >= ? and pi <= ?", @arr1[i-1],@arr1[i]).count
	  	x = @arr1[i-1].to_s + '-' + @arr1[i].to_s
	  	@arr3.push(x)
	  	@arr2.push(@value)
	  	i +=1
	  end
	  j = 0;
	  while j<=10
	  	@h[@arr3[j]] = @arr2[j]
	  	j += 1;
	  end

	  return @h
	end
end
