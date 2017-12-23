module Samurai
  module Tasks
    class Engine < ::Rails::Engine
      isolate_namespace Samurai::Tasks
    end
  end
end
