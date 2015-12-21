(defpackage :clams/lib/utils
  (:use :cl :ningle)
  (:import-from :lack.response
                :response
                :response-headers)
  (:import-from :datafly :encode-json)
  (:export :register-routes))

(in-package :clams/lib/utils)

(defun render-json (object)
  (setf (getf (response-headers *response*) :content-type) "application/json")
  (encode-json object))
