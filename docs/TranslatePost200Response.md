# openapi::TranslatePost200Response


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**err** | **character** | the text of the error. It is null if the response status is 200. Otherwise, it contains a string | 
**result** | [**TranslatePost200ResponseResult**](_translate_post_200_response_result.md) |  | 
**sourceTransliteration** | **character** | return only if enableTransliteration request param is true. Transliteration of source data. In the event that a line was sent to the translation, the result is also a string; if an array of strings, then we also get an array of strings | [optional] 
**targetTransliteration** | **character** | return only if enableTransliteration request param is true. Transliteration results. In the event that a line was sent to the translation, the result is also a string; if an array of strings, then we also get an array of strings | [optional] 


