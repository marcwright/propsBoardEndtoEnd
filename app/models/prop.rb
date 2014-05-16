class Prop
  include Mongoid::Document
  include Mongoid::Timestamps
  field :author, type: String
  field :recipient, type: String
  field :reason, type: String

  validates :author, presence: {:message => "author must be present"}
  validates :recipient, presence: {:message => "recipient must be present"}
  validates :reason, presence: {:message => "reason must be present"}


end
