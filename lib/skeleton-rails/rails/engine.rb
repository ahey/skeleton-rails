require 'rails'

module SkeletonRails
  module Rails
    class Engine < ::Rails::Engine
      initializer 'skeleton-rails.setup', 
        :group => :all do |app|
          app.config.paths['vendor'] = File.join(config.root, 'vendor')
      end
    end
  end
end
