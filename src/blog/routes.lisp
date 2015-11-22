(defpackage :jacobmoeller.blog.routes
  (:use :cl)
  (:import-from :jacobmoeller.blog.controllers :index)
  (:export :register-routes))

(in-package :jacobmoeller.blog.routes)

(defun get-param (params name)
 (cdr (assoc name params :test #'string=)))

(defun register-routes (app)
  (setf (ningle:route app "/blog/:id") 'index))

