(defpackage :clams/app
  (:use :cl)
  (:import-from :clams/config :configure :shutdown)
  (:import-from :clams/api/routes :register-routes)
  (:export :start :stop))

(in-package :clams/app)

(defvar *app* (make-instance 'ningle:<app>))
(register-routes *app*)

(defvar *handler* nil)

(defun start ()
  (when *handler* (stop))
  (configure)
  (setf *handler*
        (clack:clackup *app*)))

(defun stop ()
  (shutdown)
  (clack:stop *handler*)
  (setf *handler* nil))
