module AssetsInitializers
  class Railtie < Rails::Railtie
    initializer "assets_initializers.initialize_rails",
                :group => :assets do |app|
      app.config.assets.paths << File.expand_path("../../scss", __FILE__)
      app.config.assets.paths << File.expand_path("../../js", __FILE__)

      # Ensure Zepto and Modernizr are precompiled in production
      app.config.assets.precompile += %w(vendor/zepto.js vendor/custom.modernizr.js)
    end
  end
end