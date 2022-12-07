class ApplicationController < ActionController::Base
  def script_for(bundle)
    JSON.load(File.open(Rails.root.join('webpack-assets.json')))[bundle]['js']
  end
end
