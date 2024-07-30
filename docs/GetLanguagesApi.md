# GetLanguagesApi

All URIs are relative to *https://api-b2b.backenster.com/b1/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetLanguagesGet**](GetLanguagesApi.md#GetLanguagesGet) | **GET** /getLanguages | Getting the list of languages


# **GetLanguagesGet**
> GetLanguagesGet200Response GetLanguagesGet(platform, code = "en_GB")

Getting the list of languages

### Example
```R
library(openapi)

# Getting the list of languages
#
# prepare function argument(s)
var_platform <- "api" # character | api
var_code <- "en_GB" # character | the language code in the format “language code_code of the country”, which is used to display the names of the languages. The language code is represented only in lowercase letters, the country code only in uppercase letters (example en_GB, es_ES, ru_RU etc). If this option is not present, then English is used by default (Optional)

api_instance <- GetLanguagesApi$new()
# Configure API key authorization: APIKeyHeader
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetLanguagesGet(var_platform, code = var_codedata_file = "result.txt")
result <- api_instance$GetLanguagesGet(var_platform, code = var_code)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **platform** | **character**| api | [default to &quot;api&quot;]
 **code** | **character**| the language code in the format “language code_code of the country”, which is used to display the names of the languages. The language code is represented only in lowercase letters, the country code only in uppercase letters (example en_GB, es_ES, ru_RU etc). If this option is not present, then English is used by default | [optional] [default to &quot;en_GB&quot;]

### Return type

[**GetLanguagesGet200Response**](_getLanguages_get_200_response.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **403** | Authorization error. You should add the API_KEY to request which can be created on the user control panel page https://lingvanex.com/account |  -  |

