module TwitterActions::Follow
  include TwitterActions::Base
  #FIXME: なぜかDeadLockする
  def follow(*users)
    client.follow(*users)
  end

end
