require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'shoulda/hanami'
require 'hanami/validations'

require 'fixtures/without_validation_model'
require 'fixtures/with_validation_format_model'
require 'fixtures/with_validation_inclusion_model'
require 'fixtures/with_validation_length_model'
require 'fixtures/with_validation_presence_model'
require 'fixtures/with_validation_type_model'
