# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  name                   :string(255)
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  has_many :identities
  has_many :reviews

  #TODO: add friends to users somehow

  # FIXME: these should probably be has_many :through =>
  #   / allow for doing JOINs
  def friends
    target_ids = Friend.where(source_id: id).pluck :target_id
    User.find target_ids
  end

  def received_recommendations
    Recommendation.where(recipient: self)
  end

  def friend! other
    Friends.where(source_id: id, target_id: other.id).first_or_create!
  end

  def unfriend! other
    Friends.where(source_id: id, target_id: other.id).delete_all
  end
end
