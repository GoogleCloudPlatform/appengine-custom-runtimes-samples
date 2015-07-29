# Copyright 2015 Google Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require_relative "app"
require "minitest/autorun"
require "rack/test"

describe "Ruby App Engine v2 sample app" do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "says Hello World" do
    get "/"

    last_response.body.must_equal "Hello World"
  end

  it "responds to health checks" do
    get "/_ah/health"

    last_response.status.must_equal 200
    last_response.body.wont_be_nil
  end

end
