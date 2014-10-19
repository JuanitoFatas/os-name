if ENV['CODECLIMATE_REPO_TOKEN'] && !ENV['CODECLIMATE_REPO_TOKEN'].empty?
  require 'codeclimate-test-reporter'
  CodeClimate::TestReporter.start
end

require 'minitest/autorun'
require_relative '../lib/os_name'

module OSName
  class Test < Minitest::Test
    include OSName
  end
end
