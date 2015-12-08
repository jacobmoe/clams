(defpackage :jacobmoeller.routes
  (:use :cl)
  (:import-from :jacobmoeller.controllers :home)
  (:import-from :jacobmoeller.blog.routes :blog/register-routes)
  (:export :register-routes))

(in-package :jacobmoeller.routes)

(defun get-param (params name)
  (cdr (assoc name params :test #'string=)))

(defun register-routes (app)
  (setf (ningle:route app "/" :method :GET)
        '(lambda (params)
                "HOME")))

(print "LIB CONTROLLERS ======================")


  ;; (blog/register-routes app)

  ;; (setf (ningle:route app "/:id")
  ;;       '(lambda (params)
  ;;          (format nil "the id is, ~A" (get-param params :id)))))
