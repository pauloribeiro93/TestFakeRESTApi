require "json_matchers/rspec"
require_relative "routes/books"
require_relative "helpers"
require "json-schema-rspec"

# JsonMatchers.schema_root = "spec/support/api/schemas"

RSpec.configure do |config|
  config.include JSON::SchemaMatchers

  #schema file
  config.json_schemas[:my_schema] = "spec/support/api/schemas/books_schema.json"

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
