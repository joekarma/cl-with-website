;;;; cl-with-website.asd

(asdf:defsystem #:cl-with-website
  :serial t
  :components ((:file "package")
               (:file "cl-with-website"))
  :depends-on (:closure-html :xpath :drakma))

