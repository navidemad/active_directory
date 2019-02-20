require 'net/ldap'

require 'active_directory/base.rb'
require 'active_directory/container.rb'
require 'active_directory/member.rb'

require 'active_directory/user.rb'
require 'active_directory/group.rb'
require 'active_directory/computer.rb'

require 'active_directory/field_type/password.rb'
require 'active_directory/field_type/binary.rb'
require 'active_directory/field_type/date.rb'
require 'active_directory/field_type/timestamp.rb'
require 'active_directory/field_type/dn_array.rb'
require 'active_directory/field_type/user_dn_array.rb'
require 'active_directory/field_type/group_dn_array.rb'
require 'active_directory/field_type/member_dn_array.rb'

module ActiveDirectory
  
  #Special Fields
  def self.special_fields
    @@special_fields
  end

  def self.special_fields= sp_fields
    @@special_fields = sp_fields
  end

  @@special_fields = {

    #All objects in the AD
    :Base => {
      :objectguid => :Binary,
      :whencreated => :Date,
      :whenchanged => :Date,
      :memberof => :DnArray,
    },

    #User objects
    :User => {
      :objectguid => :Binary,
      :whencreated => :Date,
      :whenchanged => :Date,
      :objectsid => :Binary,
      :msexchmailboxguid => :Binary,
      :msexchmailboxsecuritydescriptor => :Binary,
      :lastlogontimestamp => :Timestamp,
      :pwdlastset => :Timestamp,
      :accountexpires => :Timestamp,
      :memberof => :MemberDnArray,
    },

    #Group objects
    :Group => {
      :objectguid => :Binary,
      :whencreated => :Date,
      :whenchanged => :Date,
      :objectsid => :Binary,
      :memberof => :GroupDnArray,
      :member => :MemberDnArray,
    },

    #Computer objects
    :Computer => {
      :objectguid => :Binary,
      :whencreated => :Date,
      :whenchanged => :Date,
      :objectsid => :Binary,
      :memberof => :GroupDnArray,
      :member => :MemberDnArray,
    },
  }
end
