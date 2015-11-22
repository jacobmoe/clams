(asdf:defsystem #:jacobmoeller
  :description "Site"
  :author "Jacob Moeller <jacobmoe@gmail.com>"
  :license ""
  :depends-on (:clack
               :lack
               :ningle)
  :serial t
  :components ((:module "src"
                :components
                ((:file "main" :depends-on ("routes"))
                 (:file "routes" :depends-on ("controllers"))
                 (:file "controllers")))))
