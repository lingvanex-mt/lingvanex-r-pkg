#' Create a new TranslatePostRequest
#'
#' @description
#' TranslatePostRequest Class
#'
#' @docType class
#' @title TranslatePostRequest
#' @description TranslatePostRequest Class
#' @format An \code{R6Class} generator object
#' @field from the language code in the format “language code_code of the country” from which the text is translated. The language code is represented only in lowercase letters, the country code only in uppercase letters (example en_GB, es_ES, ru_RU and etc.). If this parameter is not present, the auto-detect language mode is enabled character [optional]
#' @field to language code in the format “language code_code of the country” to which the text is translated (required) character
#' @field data  \link{TranslatePostRequestData}
#' @field translateMode Describe the input text format. Possible value is \"html\" for  translating and preserving html structure. If value is not  specified or is other than \"html\" than plain text is translating. character [optional]
#' @field enableTransliteration If true response includes sourceTransliteration and targetTransliteration fields.           platform: character [optional]
#' @field platform api character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TranslatePostRequest <- R6::R6Class(
  "TranslatePostRequest",
  public = list(
    `from` = NULL,
    `to` = NULL,
    `data` = NULL,
    `translateMode` = NULL,
    `enableTransliteration` = NULL,
    `platform` = NULL,
    #' Initialize a new TranslatePostRequest class.
    #'
    #' @description
    #' Initialize a new TranslatePostRequest class.
    #'
    #' @param to language code in the format “language code_code of the country” to which the text is translated (required)
    #' @param data data
    #' @param platform api
    #' @param from the language code in the format “language code_code of the country” from which the text is translated. The language code is represented only in lowercase letters, the country code only in uppercase letters (example en_GB, es_ES, ru_RU and etc.). If this parameter is not present, the auto-detect language mode is enabled
    #' @param translateMode Describe the input text format. Possible value is \"html\" for  translating and preserving html structure. If value is not  specified or is other than \"html\" than plain text is translating.
    #' @param enableTransliteration If true response includes sourceTransliteration and targetTransliteration fields.           platform:
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`to`, `data`, `platform`, `from` = NULL, `translateMode` = NULL, `enableTransliteration` = NULL, ...) {
      if (!missing(`to`)) {
        if (!(is.character(`to`) && length(`to`) == 1)) {
          stop(paste("Error! Invalid data for `to`. Must be a string:", `to`))
        }
        self$`to` <- `to`
      }
      if (!missing(`data`)) {
        stopifnot(R6::is.R6(`data`))
        self$`data` <- `data`
      }
      if (!missing(`platform`)) {
        if (!(is.character(`platform`) && length(`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", `platform`))
        }
        self$`platform` <- `platform`
      }
      if (!is.null(`from`)) {
        if (!(is.character(`from`) && length(`from`) == 1)) {
          stop(paste("Error! Invalid data for `from`. Must be a string:", `from`))
        }
        self$`from` <- `from`
      }
      if (!is.null(`translateMode`)) {
        if (!(`translateMode` %in% c("html"))) {
          stop(paste("Error! \"", `translateMode`, "\" cannot be assigned to `translateMode`. Must be \"html\".", sep = ""))
        }
        if (!(is.character(`translateMode`) && length(`translateMode`) == 1)) {
          stop(paste("Error! Invalid data for `translateMode`. Must be a string:", `translateMode`))
        }
        self$`translateMode` <- `translateMode`
      }
      if (!is.null(`enableTransliteration`)) {
        if (!(is.logical(`enableTransliteration`) && length(`enableTransliteration`) == 1)) {
          stop(paste("Error! Invalid data for `enableTransliteration`. Must be a boolean:", `enableTransliteration`))
        }
        self$`enableTransliteration` <- `enableTransliteration`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TranslatePostRequest in JSON format
    #' @export
    toJSON = function() {
      TranslatePostRequestObject <- list()
      if (!is.null(self$`from`)) {
        TranslatePostRequestObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        TranslatePostRequestObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`data`)) {
        TranslatePostRequestObject[["data"]] <-
          self$`data`$toJSON()
      }
      if (!is.null(self$`translateMode`)) {
        TranslatePostRequestObject[["translateMode"]] <-
          self$`translateMode`
      }
      if (!is.null(self$`enableTransliteration`)) {
        TranslatePostRequestObject[["enableTransliteration"]] <-
          self$`enableTransliteration`
      }
      if (!is.null(self$`platform`)) {
        TranslatePostRequestObject[["platform"]] <-
          self$`platform`
      }
      TranslatePostRequestObject
    },
    #' Deserialize JSON string into an instance of TranslatePostRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of TranslatePostRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of TranslatePostRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`from`)) {
        self$`from` <- this_object$`from`
      }
      if (!is.null(this_object$`to`)) {
        self$`to` <- this_object$`to`
      }
      if (!is.null(this_object$`data`)) {
        `data_object` <- TranslatePostRequestData$new()
        `data_object`$fromJSON(jsonlite::toJSON(this_object$`data`, auto_unbox = TRUE, digits = NA))
        self$`data` <- `data_object`
      }
      if (!is.null(this_object$`translateMode`)) {
        if (!is.null(this_object$`translateMode`) && !(this_object$`translateMode` %in% c("html"))) {
          stop(paste("Error! \"", this_object$`translateMode`, "\" cannot be assigned to `translateMode`. Must be \"html\".", sep = ""))
        }
        self$`translateMode` <- this_object$`translateMode`
      }
      if (!is.null(this_object$`enableTransliteration`)) {
        self$`enableTransliteration` <- this_object$`enableTransliteration`
      }
      if (!is.null(this_object$`platform`)) {
        self$`platform` <- this_object$`platform`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TranslatePostRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`from`)) {
          sprintf(
          '"from":
            "%s"
                    ',
          self$`from`
          )
        },
        if (!is.null(self$`to`)) {
          sprintf(
          '"to":
            "%s"
                    ',
          self$`to`
          )
        },
        if (!is.null(self$`data`)) {
          sprintf(
          '"data":
          %s
          ',
          jsonlite::toJSON(self$`data`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`translateMode`)) {
          sprintf(
          '"translateMode":
            "%s"
                    ',
          self$`translateMode`
          )
        },
        if (!is.null(self$`enableTransliteration`)) {
          sprintf(
          '"enableTransliteration":
            %s
                    ',
          tolower(self$`enableTransliteration`)
          )
        },
        if (!is.null(self$`platform`)) {
          sprintf(
          '"platform":
            "%s"
                    ',
          self$`platform`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of TranslatePostRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of TranslatePostRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of TranslatePostRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`from` <- this_object$`from`
      self$`to` <- this_object$`to`
      self$`data` <- TranslatePostRequestData$new()$fromJSON(jsonlite::toJSON(this_object$`data`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`translateMode`) && !(this_object$`translateMode` %in% c("html"))) {
        stop(paste("Error! \"", this_object$`translateMode`, "\" cannot be assigned to `translateMode`. Must be \"html\".", sep = ""))
      }
      self$`translateMode` <- this_object$`translateMode`
      self$`enableTransliteration` <- this_object$`enableTransliteration`
      self$`platform` <- this_object$`platform`
      self
    },
    #' Validate JSON input with respect to TranslatePostRequest
    #'
    #' @description
    #' Validate JSON input with respect to TranslatePostRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `to`
      if (!is.null(input_json$`to`)) {
        if (!(is.character(input_json$`to`) && length(input_json$`to`) == 1)) {
          stop(paste("Error! Invalid data for `to`. Must be a string:", input_json$`to`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TranslatePostRequest: the required field `to` is missing."))
      }
      # check the required field `data`
      if (!is.null(input_json$`data`)) {
        stopifnot(R6::is.R6(input_json$`data`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TranslatePostRequest: the required field `data` is missing."))
      }
      # check the required field `platform`
      if (!is.null(input_json$`platform`)) {
        if (!(is.character(input_json$`platform`) && length(input_json$`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", input_json$`platform`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TranslatePostRequest: the required field `platform` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TranslatePostRequest
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
      # check if the required `to` is null
      if (is.null(self$`to`)) {
        return(FALSE)
      }

      # check if the required `data` is null
      if (is.null(self$`data`)) {
        return(FALSE)
      }

      # check if the required `platform` is null
      if (is.null(self$`platform`)) {
        return(FALSE)
      }

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
      # check if the required `to` is null
      if (is.null(self$`to`)) {
        invalid_fields["to"] <- "Non-nullable required field `to` cannot be null."
      }

      # check if the required `data` is null
      if (is.null(self$`data`)) {
        invalid_fields["data"] <- "Non-nullable required field `data` cannot be null."
      }

      # check if the required `platform` is null
      if (is.null(self$`platform`)) {
        invalid_fields["platform"] <- "Non-nullable required field `platform` cannot be null."
      }

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
# TranslatePostRequest$unlock()
#
## Below is an example to define the print function
# TranslatePostRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TranslatePostRequest$lock()

