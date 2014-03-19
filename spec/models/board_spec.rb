# == Schema Information
#
# Table name: boards
#
#  id          :integer          not null, primary key
#  name        :string(255)      not null
#  description :text
#  owner_id    :integer          not null
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

describe Board do
  pending "add some examples to (or delete) #{__FILE__}"
end
