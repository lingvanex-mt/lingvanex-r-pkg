# Lingvanex API

Discover the Power of Lingvanex Translator Service

Unlock the potential of your applications with Lingvanex Translator, a cutting-edge cloud-based neural machine translation service. Compatible with any operating system, Lingvanex Translator enables the creation of intelligent, multi-lingual solutions for all supported languages.

With Lingvanex, you can effortlessly translate both text and HTML pages, enhancing your global reach and communication capabilities. Explore the capabilities of [the Lingvanex Cloud API](https://lingvanex.com/en/translationapi/) and learn more about our [Secure On-Premise Machine Translation](https://lingvanex.com/).

## How to get the authentication key

Before using the API in R you need to create the [account](https://lingvanex.com/registration/) and then generate the API key at the bottom of the page. You must use this authorization key to authorize requests.

## Installation

You can install the library:

```r
install.packages("remotes")
remotes::install_github("lingvanex-mt/lingvanex-r-pkg")
```

## Getting the list of languages

To retrieve the list of languages, perform a GET request with the authentication key as follows:

```r
library(httr)

url <- "https://api-b2b.backenster.com/b1/api/v3/getLanguages"

queryString <- list(
  platform = "api",
  code = "en_GB"
)

response <- VERB("GET", url, query = queryString, content_type("application/octet-stream"), accept("application/json"))

content(response, "text")
```

Options:

- `url`: [https://api-b2b.backenster.com/b1/api/v3/getLanguages](https://api-b2b.backenster.com/b1/api/v3/getLanguages)
- `platform`: api
- `Authorization`: The key must be obtained in advance
- `code`: the language code in the format “language code_code of the country”, which is used to display the names of the languages. The language code is represented only in lowercase letters, the country code only in uppercase letters (example en_GB, es_ES, ru_RU etc). If this option is not present, then English is used by default.

## Translate

This POST method translates text and HTML single string or arrays with the authentication key. Also it performs transliteration, language auto detection.

```r
library(httr)

url <- "https://api-b2b.backenster.com/b1/api/v3/translate"

payload <- "{\"platform\":\"api\"}"

encode <- "json"

response <- VERB("POST", url, body = payload, content_type("application/json"), accept("application/json"), encode = encode)

content(response, "text")
```

Options:

- `url`: [https://api-b2b.backenster.com/b1/api/v3/translate](https://api-b2b.backenster.com/b1/api/v3/translate)
- `platform`: api
- `Authorization`: The key must be obtained in advance
- `from`: the language code in the format “language code_code of the country” from which the text is translated. The language code is represented only in lowercase letters, the country code only in uppercase letters (example en_GB, es_ES, ru_RU and etc.). If this parameter is not present, the auto-detect language mode is enabled.
- `to`: language code in the format “language code_code of the country” to which the text is translated (required)
- `data`: data for translation.
- `translateMode`: Describe the input text format. Possible value is "html" for translating and preserving html structure. If value is not specified or is other than "html" than plain text is translating.
- `enableTransliteration`: If true response includes sourceTransliteration and targetTransliteration fields.

## Issues

If you are having problems using the library, please [contact](https://lingvanex.com/contact-us/) us.
