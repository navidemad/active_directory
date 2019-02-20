module ActiveDirectory
	module FieldType
		class UserDnArray
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
				# How to do user or group?
				User.find(:all, :distinguishedname => dn_array)
			end
		end
	end
end
