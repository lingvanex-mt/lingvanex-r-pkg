# openapi::GetLanguagesGet200ResponseResultInner


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**full_code** | **character** | the language code in the format “language code_code of the country” | [optional] 
**code_alpha_1** | **character** | the language code in the “language code” format | [optional] 
**englishName** | **character** | English name of the language | [optional] 
**codeName** | **character** | the language name translated using the language specified by the query parameter “code” | [optional] 
**flagPath** | **character** | the relative address of which is the image of the country flag. Example static/flags/afrikaans. The full address for downloading the flag will be https://backenster.com/v2/static/flags/afrikaans.png. In order to download flags in increased resolutions, you should add to this parameter: @2x or @3x (example https://backenster.com/v2/static/flags/afrikaans@2x.png or  https://backenster.com/v2/static/flags/afrikaans@3x.png) | [optional] 
**testWordForSyntezis** | **character** | a word for testing a speech synthesizer | [optional] 
**modes** | [**array[GetLanguagesGet200ResponseResultInnerModesInner]**](_getLanguages_get_200_response_result_inner_modes_inner.md) | an array of objects, each of which is a description of the function that is supported in the given language | [optional] 


