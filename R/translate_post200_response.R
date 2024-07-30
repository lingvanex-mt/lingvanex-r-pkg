#' Create a new TranslatePost200Response
#'
#' @description
#' TranslatePost200Response Class
#'
#' @docType class
#' @title TranslatePost200Response
#' @description TranslatePost200Response Class
#' @format An \code{R6Class} generator object
#' @field err the text of the error. It is null if the response status is 200. Otherwise, it contains a string character
#' @field result  \link{TranslatePost200ResponseResult}
#' @field sourceTransliteration return only if enableTransliteration request param is true. Transliteration of source data. In the event that a line was sent to the translation, the result is also a string; if an array of strings, then we also get an array of strings character [optional]
#' @field targetTransliteration return only if enableTransliteration request param is true. Transliteration results. In the event that a line was sent to the translation, the result is also a string; if an array of strings, then we also get an array of strings character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TranslatePost200Response <- R6::R6Class(
  "TranslatePost200Response",
  public = list(
    `err` = NULL,
    `result` = NULL,
    `sourceTransliteration` = NULL,
    `targetTransliteration` = NULL,
    #' Initialize a new TranslatePost200Response class.
    #'
    #' @description
    #' Initialize a new TranslatePost200Response class.
    #'
    #' @param err the text of the error. It is null if the response status is 200. Otherwise, it contains a string
    #' @param result result
    #' @param sourceTransliteration return only if enableTransliteration request param is true. Transliteration of source data. In the event that a line was sent to the translation, the result is also a string; if an array of strings, then we also get an array of strings
    #' @param targetTransliteration return only if enableTransliteration request param is true. Transliteration results. In the event that a line was sent to the translation, the result is also a string; if an array of strings, then we also get an array of strings
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`err`, `result`, `sourceTransliteration` = NULL, `targetTransliteration` = NULL, ...) {
      if (!missing(`err`)) {
        if (!(is.character(`err`) && length(`err`) == 1)) {
          stop(paste("Error! Invalid data for `err`. Must be a string:", `err`))
        }
        self$`err` <- `err`
      }
      if (!missing(`result`)) {
        stopifnot(R6::is.R6(`result`))
        self$`result` <- `result`
      }
      if (!is.null(`sourceTransliteration`)) {
        if (!(is.character(`sourceTransliteration`) && length(`sourceTransliteration`) == 1)) {
          stop(paste("Error! Invalid data for `sourceTransliteration`. Must be a string:", `sourceTransliteration`))
        }
        self$`sourceTransliteration` <- `sourceTransliteration`
      }
      if (!is.null(`targetTransliteration`)) {
        if (!(is.character(`targetTransliteration`) && length(`targetTransliteration`) == 1)) {
          stop(paste("Error! Invalid data for `targetTransliteration`. Must be a string:", `targetTransliteration`))
        }
        self$`targetTransliteration` <- `targetTransliteration`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TranslatePost200Response in JSON format
    #' @export
    toJSON = function() {
      TranslatePost200ResponseObject <- list()
      if (!is.null(self$`err`)) {
        TranslatePost200ResponseObject[["err"]] <-
          self$`err`
      }
      if (!is.null(self$`result`)) {
        TranslatePost200ResponseObject[["result"]] <-
          self$`result`$toJSON()
      }
      if (!is.null(self$`sourceTransliteration`)) {
        TranslatePost200ResponseObject[["sourceTransliteration"]] <-
          self$`sourceTransliteration`
      }
      if (!is.null(self$`targetTransliteration`)) {
        TranslatePost200ResponseObject[["targetTransliteration"]] <-
          self$`targetTransliteration`
      }
      TranslatePost200ResponseObject
    },
    #' Deserialize JSON string into an instance of TranslatePost200Response
    #'
    #' @description
    #' Deserialize JSON string into an instance of TranslatePost200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of TranslatePost200Response
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`err`)) {
        self$`err` <- this_object$`err`
      }
      if (!is.null(this_object$`result`)) {
        `result_object` <- TranslatePost200ResponseResult$new()
        `result_object`$fromJSON(jsonlite::toJSON(this_object$`result`, auto_unbox = TRUE, digits = NA))
        self$`result` <- `result_object`
      }
      if (!is.null(this_object$`sourceTransliteration`)) {
        self$`sourceTransliteration` <- this_object$`sourceTransliteration`
      }
      if (!is.null(this_object$`targetTransliteration`)) {
        self$`targetTransliteration` <- this_object$`targetTransliteration`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TranslatePost200Response in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`err`)) {
          sprintf(
          '"err":
            "%s"
                    ',
          self$`err`
          )
        },
        if (!is.null(self$`result`)) {
          sprintf(
          '"result":
          %s
          ',
          jsonlite::toJSON(self$`result`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`sourceTransliteration`)) {
          sprintf(
          '"sourceTransliteration":
            "%s"
                    ',
          self$`sourceTransliteration`
          )
        },
        if (!is.null(self$`targetTransliteration`)) {
          sprintf(
          '"targetTransliteration":
            "%s"
                    ',
          self$`targetTransliteration`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of TranslatePost200Response
    #'
    #' @description
    #' Deserialize JSON string into an instance of TranslatePost200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of TranslatePost200Response
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`err` <- this_object$`err`
      self$`result` <- TranslatePost200ResponseResult$new()$fromJSON(jsonlite::toJSON(this_object$`result`, auto_unbox = TRUE, digits = NA))
      self$`sourceTransliteration` <- this_object$`sourceTransliteration`
      self$`targetTransliteration` <- this_object$`targetTransliteration`
      self
    },
    #' Validate JSON input with respect to TranslatePost200Response
    #'
    #' @description
    #' Validate JSON input with respect to TranslatePost200Response and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `err`
      if (!is.null(input_json$`err`)) {
        if (!(is.character(input_json$`err`) && length(input_json$`err`) == 1)) {
          stop(paste("Error! Invalid data for `err`. Must be a string:", input_json$`err`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TranslatePost200Response: the required field `err` is missing."))
      }
      # check the required field `result`
      if (!is.null(input_json$`result`)) {
        stopifnot(R6::is.R6(input_json$`result`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TranslatePost200Response: the required field `result` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TranslatePost200Response
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
      # check if the required `err` is null
      if (is.null(self$`err`)) {
        return(FALSE)
      }

      # check if the required `result` is null
      if (is.null(self$`result`)) {
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
      # check if the required `err` is null
      if (is.null(self$`err`)) {
        invalid_fields["err"] <- "Non-nullable required field `err` cannot be null."
      }

      # check if the required `result` is null
      if (is.null(self$`result`)) {
        invalid_fields["result"] <- "Non-nullable required field `result` cannot be null."
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
# TranslatePost200Response$unlock()
#
## Below is an example to define the print function
# TranslatePost200Response$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TranslatePost200Response$lock()

