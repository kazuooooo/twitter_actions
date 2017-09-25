module TwitterActions::Follow
  include TwitterActions::Base
  extend Forwardable
  def_delegator :client, :favorite
end
