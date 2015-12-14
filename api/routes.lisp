(defpackage :jacobmoeller/api/routes
  (:use :cl)
  (:import-from :jacobmoeller/api/controller)
  (:import-from :jacobmoeller/api/blog/routes)
  (:export :register-routes))

(in-package :jacobmoeller/api/routes)

(defun register-routes (app)
  (setf (ningle:route app "/" :method :GET)
        'jacobmoeller/api/controller:index)

  (jacobmoeller/api/blog/routes:register-routes app)

  (setf (ningle:route app "/:id")
        'jacobmoeller/api/controller:show))
