module TwitterActions
  module Base
    def client
      TwitterActions::Client.instance.client
    end
  end
end