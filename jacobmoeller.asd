(asdf:defsystem :jacobmoeller
  :description "Site"
  :author "Jacob Moeller <jacobmoe@gmail.com>"
  :license "MIT"
  :depends-on (:clack
               :lack
               :ningle)
  :serial t
  :components ((:module lib
                        :components
                        ((:file "routes"
                                :depends-on
                                ("controllers" blog))
                         (:file "controllers")
                         (:module blog
                                  :components
                                  ((:file "routes"
                                          :depends-on
                                          ("controllers"))
                                   (:file "controllers")))))

               (:file "app" :depends-on (lib))))
