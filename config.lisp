(defpackage :clams/config
  (:use :cl :ningle :envy)
  (:import-from :datafly)
  (:export :project-root :configure :shutdown pg-connection))

(in-package :clams/config)

(setf (config-env-var) "LISP_APP_ENV")
(defvar project-root (asdf:system-source-directory :clams))
(defvar *pg-connection* nil)

(setf database-development-config
  '(:system :postgres
    :name "clams_dev"
    :username "postgres"
    :password ""))

(defconfig :common
  (cons :database-config (list database-development-config)))

(defconfig |development|
  (cons :database-config (list database-development-config)))

(defun pg-connection () *pg-connection*)

(defun configure ()
  (shutdown)

  (let ((database-config
         (getf (config :clams/config) :database-config)))

    (setq *pg-connection*
        (datafly:connect-toplevel (getf database-config :system)
                    :database-name (getf database-config :name)
                    :username (getf database-config :username)
                    :password (getf database-config :password)))))

(defun shutdown ()
  (when *pg-connection*
    (datafly:disconnect-toplevel)
    (setq *pg-connection* nil)))
