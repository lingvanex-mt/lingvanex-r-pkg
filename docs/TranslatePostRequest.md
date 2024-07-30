# openapi::TranslatePostRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **character** | the language code in the format “language code_code of the country” from which the text is translated. The language code is represented only in lowercase letters, the country code only in uppercase letters (example en_GB, es_ES, ru_RU and etc.). If this parameter is not present, the auto-detect language mode is enabled | [optional] 
**to** | **character** | language code in the format “language code_code of the country” to which the text is translated (required) | 
**data** | [**TranslatePostRequestData**](_translate_post_request_data.md) |  | 
**translateMode** | **character** | Describe the input text format. Possible value is \&quot;html\&quot; for  translating and preserving html structure. If value is not  specified or is other than \&quot;html\&quot; than plain text is translating.   | [optional] [Enum: [html]] 
**enableTransliteration** | **character** | If true response includes sourceTransliteration and targetTransliteration fields.           platform: | [optional] 
**platform** | **character** | api | [default to &quot;api&quot;] 


