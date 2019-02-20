module ActiveDirectory
	module FieldType
		class MemberDnArray
			#
			# Encodes an array of objects into a list of dns
			# 
			def self.encode(obj_array)
				obj_array.collect { |obj| obj.dn }
			end

			#
			# Decodes a list of DNs into the objects that they are
			#
			def self.decode(dn_array)
				# Ensures that the objects are cast correctly
				users = User.find(:all, :distinguishedname => dn_array)
				groups = Group.find(:all, :distinguishedname => dn_array)

				arr = Array.new
				arr << users unless users.nil?
				arr << groups unless groups.nil?

				return arr.flatten
			end
		end
	end
end
