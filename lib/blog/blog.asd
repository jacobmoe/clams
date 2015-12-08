(asdf:defsystem :lib/blog
  :description "Blog"
  :author "Jacob Moeller <jacobmoe@gmail.com>"
  :license "MIT"
  :serial t
  :components ((:file "routes" :depends-on "controllers")
               (:file "controllers")))
