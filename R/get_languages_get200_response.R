#' Create a new GetLanguagesGet200Response
#'
#' @description
#' GetLanguagesGet200Response Class
#'
#' @docType class
#' @title GetLanguagesGet200Response
#' @description GetLanguagesGet200Response Class
#' @format An \code{R6Class} generator object
#' @field err the text of the error. It is null if the response status is 200. Otherwise, it contains a string character [optional]
#' @field result  list(\link{GetLanguagesGet200ResponseResultInner}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GetLanguagesGet200Response <- R6::R6Class(
  "GetLanguagesGet200Response",
  public = list(
    `err` = NULL,
    `result` = NULL,
    #' Initialize a new GetLanguagesGet200Response class.
    #'
    #' @description
    #' Initialize a new GetLanguagesGet200Response class.
    #'
    #' @param err the text of the error. It is null if the response status is 200. Otherwise, it contains a string
    #' @param result result
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`err` = NULL, `result` = NULL, ...) {
      if (!is.null(`err`)) {
        if (!(is.character(`err`) && length(`err`) == 1)) {
          stop(paste("Error! Invalid data for `err`. Must be a string:", `err`))
        }
        self$`err` <- `err`
      }
      if (!is.null(`result`)) {
        stopifnot(is.vector(`result`), length(`result`) != 0)
        sapply(`result`, function(x) stopifnot(R6::is.R6(x)))
        self$`result` <- `result`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GetLanguagesGet200Response in JSON format
    #' @export
    toJSON = function() {
      GetLanguagesGet200ResponseObject <- list()
      if (!is.null(self$`err`)) {
        GetLanguagesGet200ResponseObject[["err"]] <-
          self$`err`
      }
      if (!is.null(self$`result`)) {
        GetLanguagesGet200ResponseObject[["result"]] <-
          lapply(self$`result`, function(x) x$toJSON())
      }
      GetLanguagesGet200ResponseObject
    },
    #' Deserialize JSON string into an instance of GetLanguagesGet200Response
    #'
    #' @description
    #' Deserialize JSON string into an instance of GetLanguagesGet200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetLanguagesGet200Response
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`err`)) {
        self$`err` <- this_object$`err`
      }
      if (!is.null(this_object$`result`)) {
        self$`result` <- ApiClient$new()$deserializeObj(this_object$`result`, "array[GetLanguagesGet200ResponseResultInner]", loadNamespace("openapi"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GetLanguagesGet200Response in JSON format
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
          [%s]
',
          paste(sapply(self$`result`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of GetLanguagesGet200Response
    #'
    #' @description
    #' Deserialize JSON string into an instance of GetLanguagesGet200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetLanguagesGet200Response
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`err` <- this_object$`err`
      self$`result` <- ApiClient$new()$deserializeObj(this_object$`result`, "array[GetLanguagesGet200ResponseResultInner]", loadNamespace("openapi"))
      self
    },
    #' Validate JSON input with respect to GetLanguagesGet200Response
    #'
    #' @description
    #' Validate JSON input with respect to GetLanguagesGet200Response and throw an exception if invalid
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
    #' @return String representation of GetLanguagesGet200Response
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
# GetLanguagesGet200Response$unlock()
#
## Below is an example to define the print function
# GetLanguagesGet200Response$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GetLanguagesGet200Response$lock()

