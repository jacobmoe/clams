(defpackage :jacobmoeller/lib/routes
  (:use :cl)
  (:import-from :jacobmoeller/lib/controllers)
  (:import-from :jacobmoeller/lib/blog/routes)
  (:export :register-routes))

(in-package :jacobmoeller/lib/routes)

(defun register-routes (app)
  (setf (ningle:route app "/" :method :GET)
        'jacobmoeller/lib/controllers:index)

  (jacobmoeller/lib/blog/routes:register-routes app)

  (setf (ningle:route app "/:id")
        'jacobmoeller/lib/controllers:show))
