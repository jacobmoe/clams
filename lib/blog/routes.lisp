(defpackage :jacobmoeller/lib/blog/routes
  (:use :cl)
  (:import-from :jacobmoeller/lib/blog/controllers)
  (:export :register-routes))

(in-package :jacobmoeller/lib/blog/routes)

(defun get-param (params name)
 (cdr (assoc name params :test #'string=)))

(defun register-routes (app)
  (setf (ningle:route app "/blog") 'jacobmoeller/lib/blog/controllers:index)
  (setf (ningle:route app "/blog/:id") 'jacobmoeller/lib/blog/controllers:show))
