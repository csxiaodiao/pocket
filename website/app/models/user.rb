class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :validatable, :omniauthable




  def self.find_or_create_from_auth_hash(auth_hash)

    openid = auth_hash.extra.raw_info.openid

    find_or_create_by!(openid: openid) do |sns_user|
      sns_user.provider = auth_hash.provider
      sns_user.uid = openid
      sns_user.openid = openid

      sns_user.name = auth_hash.info.nickname
      sns_user.sex = auth_hash.info.sex
      sns_user.headimgurl = auth_hash.extra.raw_info.headimgurl

      sns_user.country = auth_hash.info.country
      sns_user.province = auth_hash.info.province
      sns_user.city = auth_hash.info.city
    end
  end
end
