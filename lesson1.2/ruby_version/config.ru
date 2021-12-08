# frozen_string_literal: true

require 'rack'

run lambda { |_env|
  [200,
   { 'Content-Type' => 'text/plain',
     'X-Ruby-Version' => RUBY_VERSION.to_s },
   ['Hello, world!']]
}
