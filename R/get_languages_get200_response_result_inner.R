#' Create a new GetLanguagesGet200ResponseResultInner
#'
#' @description
#' GetLanguagesGet200ResponseResultInner Class
#'
#' @docType class
#' @title GetLanguagesGet200ResponseResultInner
#' @description GetLanguagesGet200ResponseResultInner Class
#' @format An \code{R6Class} generator object
#' @field full_code the language code in the format “language code_code of the country” character [optional]
#' @field code_alpha_1 the language code in the “language code” format character [optional]
#' @field englishName English name of the language character [optional]
#' @field codeName the language name translated using the language specified by the query parameter “code” character [optional]
#' @field flagPath the relative address of which is the image of the country flag. Example static/flags/afrikaans. The full address for downloading the flag will be https://backenster.com/v2/static/flags/afrikaans.png. In order to download flags in increased resolutions, you should add to this parameter: @2x or @3x (example https://backenster.com/v2/static/flags/afrikaans@2x.png or  https://backenster.com/v2/static/flags/afrikaans@3x.png) character [optional]
#' @field testWordForSyntezis a word for testing a speech synthesizer character [optional]
#' @field modes an array of objects, each of which is a description of the function that is supported in the given language list(\link{GetLanguagesGet200ResponseResultInnerModesInner}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GetLanguagesGet200ResponseResultInner <- R6::R6Class(
  "GetLanguagesGet200ResponseResultInner",
  public = list(
    `full_code` = NULL,
    `code_alpha_1` = NULL,
    `englishName` = NULL,
    `codeName` = NULL,
    `flagPath` = NULL,
    `testWordForSyntezis` = NULL,
    `modes` = NULL,
    #' Initialize a new GetLanguagesGet200ResponseResultInner class.
    #'
    #' @description
    #' Initialize a new GetLanguagesGet200ResponseResultInner class.
    #'
    #' @param full_code the language code in the format “language code_code of the country”
    #' @param code_alpha_1 the language code in the “language code” format
    #' @param englishName English name of the language
    #' @param codeName the language name translated using the language specified by the query parameter “code”
    #' @param flagPath the relative address of which is the image of the country flag. Example static/flags/afrikaans. The full address for downloading the flag will be https://backenster.com/v2/static/flags/afrikaans.png. In order to download flags in increased resolutions, you should add to this parameter: @2x or @3x (example https://backenster.com/v2/static/flags/afrikaans@2x.png or  https://backenster.com/v2/static/flags/afrikaans@3x.png)
    #' @param testWordForSyntezis a word for testing a speech synthesizer
    #' @param modes an array of objects, each of which is a description of the function that is supported in the given language
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`full_code` = NULL, `code_alpha_1` = NULL, `englishName` = NULL, `codeName` = NULL, `flagPath` = NULL, `testWordForSyntezis` = NULL, `modes` = NULL, ...) {
      if (!is.null(`full_code`)) {
        if (!(is.character(`full_code`) && length(`full_code`) == 1)) {
          stop(paste("Error! Invalid data for `full_code`. Must be a string:", `full_code`))
        }
        self$`full_code` <- `full_code`
      }
      if (!is.null(`code_alpha_1`)) {
        if (!(is.character(`code_alpha_1`) && length(`code_alpha_1`) == 1)) {
          stop(paste("Error! Invalid data for `code_alpha_1`. Must be a string:", `code_alpha_1`))
        }
        self$`code_alpha_1` <- `code_alpha_1`
      }
      if (!is.null(`englishName`)) {
        if (!(is.character(`englishName`) && length(`englishName`) == 1)) {
          stop(paste("Error! Invalid data for `englishName`. Must be a string:", `englishName`))
        }
        self$`englishName` <- `englishName`
      }
      if (!is.null(`codeName`)) {
        if (!(is.character(`codeName`) && length(`codeName`) == 1)) {
          stop(paste("Error! Invalid data for `codeName`. Must be a string:", `codeName`))
        }
        self$`codeName` <- `codeName`
      }
      if (!is.null(`flagPath`)) {
        if (!(is.character(`flagPath`) && length(`flagPath`) == 1)) {
          stop(paste("Error! Invalid data for `flagPath`. Must be a string:", `flagPath`))
        }
        self$`flagPath` <- `flagPath`
      }
      if (!is.null(`testWordForSyntezis`)) {
        if (!(is.character(`testWordForSyntezis`) && length(`testWordForSyntezis`) == 1)) {
          stop(paste("Error! Invalid data for `testWordForSyntezis`. Must be a string:", `testWordForSyntezis`))
        }
        self$`testWordForSyntezis` <- `testWordForSyntezis`
      }
      if (!is.null(`modes`)) {
        stopifnot(is.vector(`modes`), length(`modes`) != 0)
        sapply(`modes`, function(x) stopifnot(R6::is.R6(x)))
        self$`modes` <- `modes`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GetLanguagesGet200ResponseResultInner in JSON format
    #' @export
    toJSON = function() {
      GetLanguagesGet200ResponseResultInnerObject <- list()
      if (!is.null(self$`full_code`)) {
        GetLanguagesGet200ResponseResultInnerObject[["full_code"]] <-
          self$`full_code`
      }
      if (!is.null(self$`code_alpha_1`)) {
        GetLanguagesGet200ResponseResultInnerObject[["code_alpha_1"]] <-
          self$`code_alpha_1`
      }
      if (!is.null(self$`englishName`)) {
        GetLanguagesGet200ResponseResultInnerObject[["englishName"]] <-
          self$`englishName`
      }
      if (!is.null(self$`codeName`)) {
        GetLanguagesGet200ResponseResultInnerObject[["codeName"]] <-
          self$`codeName`
      }
      if (!is.null(self$`flagPath`)) {
        GetLanguagesGet200ResponseResultInnerObject[["flagPath"]] <-
          self$`flagPath`
      }
      if (!is.null(self$`testWordForSyntezis`)) {
        GetLanguagesGet200ResponseResultInnerObject[["testWordForSyntezis"]] <-
          self$`testWordForSyntezis`
      }
      if (!is.null(self$`modes`)) {
        GetLanguagesGet200ResponseResultInnerObject[["modes"]] <-
          lapply(self$`modes`, function(x) x$toJSON())
      }
      GetLanguagesGet200ResponseResultInnerObject
    },
    #' Deserialize JSON string into an instance of GetLanguagesGet200ResponseResultInner
    #'
    #' @description
    #' Deserialize JSON string into an instance of GetLanguagesGet200ResponseResultInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetLanguagesGet200ResponseResultInner
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`full_code`)) {
        self$`full_code` <- this_object$`full_code`
      }
      if (!is.null(this_object$`code_alpha_1`)) {
        self$`code_alpha_1` <- this_object$`code_alpha_1`
      }
      if (!is.null(this_object$`englishName`)) {
        self$`englishName` <- this_object$`englishName`
      }
      if (!is.null(this_object$`codeName`)) {
        self$`codeName` <- this_object$`codeName`
      }
      if (!is.null(this_object$`flagPath`)) {
        self$`flagPath` <- this_object$`flagPath`
      }
      if (!is.null(this_object$`testWordForSyntezis`)) {
        self$`testWordForSyntezis` <- this_object$`testWordForSyntezis`
      }
      if (!is.null(this_object$`modes`)) {
        self$`modes` <- ApiClient$new()$deserializeObj(this_object$`modes`, "array[GetLanguagesGet200ResponseResultInnerModesInner]", loadNamespace("openapi"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GetLanguagesGet200ResponseResultInner in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`full_code`)) {
          sprintf(
          '"full_code":
            "%s"
                    ',
          self$`full_code`
          )
        },
        if (!is.null(self$`code_alpha_1`)) {
          sprintf(
          '"code_alpha_1":
            "%s"
                    ',
          self$`code_alpha_1`
          )
        },
        if (!is.null(self$`englishName`)) {
          sprintf(
          '"englishName":
            "%s"
                    ',
          self$`englishName`
          )
        },
        if (!is.null(self$`codeName`)) {
          sprintf(
          '"codeName":
            "%s"
                    ',
          self$`codeName`
          )
        },
        if (!is.null(self$`flagPath`)) {
          sprintf(
          '"flagPath":
            "%s"
                    ',
          self$`flagPath`
          )
        },
        if (!is.null(self$`testWordForSyntezis`)) {
          sprintf(
          '"testWordForSyntezis":
            "%s"
                    ',
          self$`testWordForSyntezis`
          )
        },
        if (!is.null(self$`modes`)) {
          sprintf(
          '"modes":
          [%s]
',
          paste(sapply(self$`modes`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of GetLanguagesGet200ResponseResultInner
    #'
    #' @description
    #' Deserialize JSON string into an instance of GetLanguagesGet200ResponseResultInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetLanguagesGet200ResponseResultInner
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`full_code` <- this_object$`full_code`
      self$`code_alpha_1` <- this_object$`code_alpha_1`
      self$`englishName` <- this_object$`englishName`
      self$`codeName` <- this_object$`codeName`
      self$`flagPath` <- this_object$`flagPath`
      self$`testWordForSyntezis` <- this_object$`testWordForSyntezis`
      self$`modes` <- ApiClient$new()$deserializeObj(this_object$`modes`, "array[GetLanguagesGet200ResponseResultInnerModesInner]", loadNamespace("openapi"))
      self
    },
    #' Validate JSON input with respect to GetLanguagesGet200ResponseResultInner
    #'
    #' @description
    #' Validate JSON input with respect to GetLanguagesGet200ResponseResultInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GetLanguagesGet200ResponseResultInner
    #' @export
    toString = function() {
      self$toJSONString()
    },
    #' Return true if the values in all fields are valid.
    #'
    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    #' @export
    isValid = function() {
      TRUE
    },
    #' Return a list of invalid fields (if any).
    #'
    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    #' @export
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },
    #' Print the object
    #'
    #' @description
    #' Print the object
    #'
    #' @export
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# GetLanguagesGet200ResponseResultInner$unlock()
#
## Below is an example to define the print function
# GetLanguagesGet200ResponseResultInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GetLanguagesGet200ResponseResultInner$lock()

