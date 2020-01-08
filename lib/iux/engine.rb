# frozen_string_literal: true

module Iux
  class Engine < ::Rails::Engine
    isolate_namespace Iux

    initializer "iux.asset_paths" do |app|
      app.config.assets.paths << Iux.components_path if app.config.respond_to?(:assets)
    end

    initializer "iux.view_helpers" do
      ActiveSupport.on_load :action_controller do
        helper Iux::ComponentHelper
      end
    end

    initializer "iux.view_paths" do
      ActiveSupport.on_load :action_controller do
        append_view_path Iux.components_path
      end
    end
  end
end
