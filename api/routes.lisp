(defpackage :clams/api/routes
  (:use :cl)
  (:import-from :clams/api/controller)
  (:import-from :clams/api/blog/routes)
  (:export :register-routes))

(in-package :clams/api/routes)

(defun register-routes (app)
  (setf (ningle:route app "/" :method :GET)
        'clams/api/controller:index)

  (clams/api/blog/routes:register-routes app)

  (setf (ningle:route app "/:id")
        'clams/api/controller:show))
