# == Schema Information
#
# Table name: comments
#
#  id          :integer          not null, primary key
#  title       :string           not null
#  author_id   :integer
#  author_type :string
#  created_at  :datetime
#  updated_at  :datetime
#  body        :string
#

class Comment < ActiveRecord::Base

  belongs_to :author, polymorphic: true

end
