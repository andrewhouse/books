# == Schema Information
#
# Table name: friends
#
#  id         :integer          not null, primary key
#  source_id  :integer
#  target_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe Friend, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
