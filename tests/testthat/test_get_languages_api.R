# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test GetLanguagesApi")

api_instance <- GetLanguagesApi$new()

test_that("GetLanguagesGet", {
  # tests for GetLanguagesGet
  # base path: https://api-b2b.backenster.com/b1/api/v3
  # Getting the list of languages
  # @param platform character api
  # @param code character the language code in the format “language code_code of the country”, which is used to display the names of the languages. The language code is represented only in lowercase letters, the country code only in uppercase letters (example en_GB, es_ES, ru_RU etc). If this option is not present, then English is used by default (optional)
  # @return [GetLanguagesGet200Response]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})
