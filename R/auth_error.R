#' Create a new AuthError
#'
#' @description
#' AuthError Class
#'
#' @docType class
#' @title AuthError
#' @description AuthError Class
#' @format An \code{R6Class} generator object
#' @field err the text of the error. It is null if the response status is 200. Otherwise, it contains a string character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AuthError <- R6::R6Class(
  "AuthError",
  public = list(
    `err` = NULL,
    #' Initialize a new AuthError class.
    #'
    #' @description
    #' Initialize a new AuthError class.
    #'
    #' @param err the text of the error. It is null if the response status is 200. Otherwise, it contains a string
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`err` = NULL, ...) {
      if (!is.null(`err`)) {
        if (!(is.character(`err`) && length(`err`) == 1)) {
          stop(paste("Error! Invalid data for `err`. Must be a string:", `err`))
        }
        self$`err` <- `err`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AuthError in JSON format
    #' @export
    toJSON = function() {
      AuthErrorObject <- list()
      if (!is.null(self$`err`)) {
        AuthErrorObject[["err"]] <-
          self$`err`
      }
      AuthErrorObject
    },
    #' Deserialize JSON string into an instance of AuthError
    #'
    #' @description
    #' Deserialize JSON string into an instance of AuthError
    #'
    #' @param input_json the JSON input
    #' @return the instance of AuthError
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`err`)) {
        self$`err` <- this_object$`err`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AuthError in JSON format
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
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of AuthError
    #'
    #' @description
    #' Deserialize JSON string into an instance of AuthError
    #'
    #' @param input_json the JSON input
    #' @return the instance of AuthError
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`err` <- this_object$`err`
      self
    },
    #' Validate JSON input with respect to AuthError
    #'
    #' @description
    #' Validate JSON input with respect to AuthError and throw an exception if invalid
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
    #' @return String representation of AuthError
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
# AuthError$unlock()
#
## Below is an example to define the print function
# AuthError$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AuthError$lock()

