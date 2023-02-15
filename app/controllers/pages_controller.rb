class PagesController < ApplicationController
  before_action :set_script_path
  before_action :set_is_running_vite_dev_server

  def home
    render 'empty'
  end

  def user
    render 'empty'
  end

private

  def set_script_path
    manifest = JSON.load(File.open(Rails.root.join('public', 'dist', 'manifest.json')))

    @script_path = File.join('/dist', manifest['app/frontend/main.ts']['file'])
    @style_path  = File.join('/dist', manifest['style.css']['file'])
  end

  def set_is_running_vite_dev_server
    TCPSocket.open('localhost', 5173)
    @is_running_vite_dev_server = true
  rescue
    @is_running_vite_dev_server = false
  end
end
