#' Create a new GetLanguagesGet200ResponseResultInnerModesInner
#'
#' @description
#' GetLanguagesGet200ResponseResultInnerModesInner Class
#'
#' @docType class
#' @title GetLanguagesGet200ResponseResultInnerModesInner
#' @description GetLanguagesGet200ResponseResultInnerModesInner Class
#' @format An \code{R6Class} generator object
#' @field name name of the function. Currently, only 4 functions are widely supported: “Speech synthesis“, “Image recognition“, “Translation“, “Speech recognition“ character [optional]
#' @field value logical value true or false, which shows the status of the function: on or off character [optional]
#' @field genders logical value true or false, which shows the ability to synthesize speech for both sexes. Displayed only for function “Speech synthesis“ character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GetLanguagesGet200ResponseResultInnerModesInner <- R6::R6Class(
  "GetLanguagesGet200ResponseResultInnerModesInner",
  public = list(
    `name` = NULL,
    `value` = NULL,
    `genders` = NULL,
    #' Initialize a new GetLanguagesGet200ResponseResultInnerModesInner class.
    #'
    #' @description
    #' Initialize a new GetLanguagesGet200ResponseResultInnerModesInner class.
    #'
    #' @param name name of the function. Currently, only 4 functions are widely supported: “Speech synthesis“, “Image recognition“, “Translation“, “Speech recognition“
    #' @param value logical value true or false, which shows the status of the function: on or off
    #' @param genders logical value true or false, which shows the ability to synthesize speech for both sexes. Displayed only for function “Speech synthesis“
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`name` = NULL, `value` = NULL, `genders` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`value`)) {
        if (!(is.logical(`value`) && length(`value`) == 1)) {
          stop(paste("Error! Invalid data for `value`. Must be a boolean:", `value`))
        }
        self$`value` <- `value`
      }
      if (!is.null(`genders`)) {
        if (!(is.logical(`genders`) && length(`genders`) == 1)) {
          stop(paste("Error! Invalid data for `genders`. Must be a boolean:", `genders`))
        }
        self$`genders` <- `genders`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GetLanguagesGet200ResponseResultInnerModesInner in JSON format
    #' @export
    toJSON = function() {
      GetLanguagesGet200ResponseResultInnerModesInnerObject <- list()
      if (!is.null(self$`name`)) {
        GetLanguagesGet200ResponseResultInnerModesInnerObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`value`)) {
        GetLanguagesGet200ResponseResultInnerModesInnerObject[["value"]] <-
          self$`value`
      }
      if (!is.null(self$`genders`)) {
        GetLanguagesGet200ResponseResultInnerModesInnerObject[["genders"]] <-
          self$`genders`
      }
      GetLanguagesGet200ResponseResultInnerModesInnerObject
    },
    #' Deserialize JSON string into an instance of GetLanguagesGet200ResponseResultInnerModesInner
    #'
    #' @description
    #' Deserialize JSON string into an instance of GetLanguagesGet200ResponseResultInnerModesInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetLanguagesGet200ResponseResultInnerModesInner
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`value`)) {
        self$`value` <- this_object$`value`
      }
      if (!is.null(this_object$`genders`)) {
        self$`genders` <- this_object$`genders`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GetLanguagesGet200ResponseResultInnerModesInner in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`value`)) {
          sprintf(
          '"value":
            %s
                    ',
          tolower(self$`value`)
          )
        },
        if (!is.null(self$`genders`)) {
          sprintf(
          '"genders":
            %s
                    ',
          tolower(self$`genders`)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of GetLanguagesGet200ResponseResultInnerModesInner
    #'
    #' @description
    #' Deserialize JSON string into an instance of GetLanguagesGet200ResponseResultInnerModesInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetLanguagesGet200ResponseResultInnerModesInner
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`value` <- this_object$`value`
      self$`genders` <- this_object$`genders`
      self
    },
    #' Validate JSON input with respect to GetLanguagesGet200ResponseResultInnerModesInner
    #'
    #' @description
    #' Validate JSON input with respect to GetLanguagesGet200ResponseResultInnerModesInner and throw an exception if invalid
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
    #' @return String representation of GetLanguagesGet200ResponseResultInnerModesInner
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
# GetLanguagesGet200ResponseResultInnerModesInner$unlock()
#
## Below is an example to define the print function
# GetLanguagesGet200ResponseResultInnerModesInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GetLanguagesGet200ResponseResultInnerModesInner$lock()

