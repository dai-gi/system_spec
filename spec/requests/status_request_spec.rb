require 'rails_helper'

RSpec.describe "Statuses", type: :request do
  it "GET /status" do
    get "/status"
    expect(response).to have_http_status(200)
    expect(response.content_type).to include("application/json;")
    expect(response.body).to include({ status: "ok" }.to_json)
  end
end
