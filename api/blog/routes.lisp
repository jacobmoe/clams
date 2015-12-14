(defpackage :jacobmoeller/api/blog/routes
  (:use :cl)
  (:import-from :jacobmoeller/api/blog/controller)
  (:export :register-routes))

(in-package :jacobmoeller/api/blog/routes)

(defun get-param (params name)
 (cdr (assoc name params :test #'string=)))

(defun register-routes (app)
  (setf (ningle:route app "/blog") 'jacobmoeller/api/blog/controller:index)
  (setf (ningle:route app "/blog/:id") 'jacobmoeller/api/blog/controller:show))
