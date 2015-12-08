(defpackage :jacobmoeller/lib/routes
  (:use :cl)
  (:import-from :jacobmoeller/lib/controllers)
  (:import-from :jacobmoeller/lib/blog/routes)
  (:export :register-routes))

(in-package :jacobmoeller/lib/routes)

(defun get-param (params name)
  (cdr (assoc name params :test #'string=)))

(defun register-routes (app)
  (setf (ningle:route app "/" :method :GET)
        'jacobmoeller/lib/controllers:home)

  (jacobmoeller/lib/blog/routes:register-routes app)

  (setf (ningle:route app "/:id") '(lambda (params) ("HULLO"))))

  ;; (setf (ningle:route app "/:id")
  ;;       '(lambda (params)
  ;;          (format nil "the id is, ~A" (get-param params :id)))))
