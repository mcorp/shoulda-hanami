$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'shoulda/lotus'
require 'lotus/validations'

require 'fixtures/person'
require 'fixtures/without_validation_model'
require 'fixtures/with_validation_presence_model'
