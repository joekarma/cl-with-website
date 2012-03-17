;;;; cl-with-website.lisp

(in-package #:cl-with-website)

;;; "cl-with-website" goes here. Hacks and glory await!

(defmacro with-website ((dom-var website-url) &body body)
  `(let ((,dom-var (chtml:parse (drakma:http-request ,website-url)
				(cxml-dom:make-dom-builder))))
     (xpath:with-namespaces (("" "http://www.w3.org/1999/xhtml"))
       ,@body)))