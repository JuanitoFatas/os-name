require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

require 'minitest/autorun'
require 'os_name'

module OSName
  class Test < Minitest::Test
    include OSName
  end
end
