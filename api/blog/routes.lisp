(defpackage :clams/api/blog/routes
  (:use :cl)
  (:import-from :clams/api/blog/controller)
  (:export :register-routes))

(in-package :clams/api/blog/routes)

(defun get-param (params name)
 (cdr (assoc name params :test #'string=)))

(defun register-routes (app)
  (setf (ningle:route app "/blog") 'clams/api/blog/controller:index)
  (setf (ningle:route app "/blog/:id") 'clams/api/blog/controller:show))
