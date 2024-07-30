# TranslateTextHTMLTransliterateAutoDetectionApi

All URIs are relative to *https://api-b2b.backenster.com/b1/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**TranslatePost**](TranslateTextHTMLTransliterateAutoDetectionApi.md#TranslatePost) | **POST** /translate | Translate


# **TranslatePost**
> TranslatePost200Response TranslatePost(translate_post_request = var.translate_post_request)

Translate

This method translates text and HTML single string or arrays. Also it performs transliteration, language auto detection. Please, check request examples on the right to check these capabilities.

### Example
```R
library(openapi)

# Translate
#
# prepare function argument(s)
var_translate_post_request <- _translate_post_request$new("to_example", _translate_post_request_data$new(), "platform_example", "from_example", "html", "enableTransliteration_example") # TranslatePostRequest |  (Optional)

api_instance <- TranslateTextHTMLTransliterateAutoDetectionApi$new()
# Configure API key authorization: APIKeyHeader
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TranslatePost(translate_post_request = var_translate_post_requestdata_file = "result.txt")
result <- api_instance$TranslatePost(translate_post_request = var_translate_post_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **translate_post_request** | [**TranslatePostRequest**](TranslatePostRequest.md)|  | [optional] 

### Return type

[**TranslatePost200Response**](_translate_post_200_response.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |
| **403** | Authorization error. You should add the API_KEY to request which can be created on the user control panel page https://lingvanex.com/account |  -  |

