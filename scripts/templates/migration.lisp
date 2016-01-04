;; migration using sxql

;; (execute
;;  (create-table (:users :if-not-exists t)
;;    ((id :type 'bigint
;;         :primary-key t)
;;     (email :type 'text
;;            :not-null t)
;;     (password :type 'text
;;               :not-null t)
;;     (updated_at :type 'timestamp)
;;     (created_at :type 'timestamp))))

(format t "running migration ~A~%" (pathname-name *load-truename*))
