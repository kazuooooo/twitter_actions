module TwitterActions::Favorite
  include TwitterActions::Base
  extend Forwardable
  def_delegator :client, :favorite
end
