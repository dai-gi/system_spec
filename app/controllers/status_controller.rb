class StatusController < ApplicationController
  def index
    render plain: { status: 'ok' }.to_json, content_type: 'application/json'
  end
end