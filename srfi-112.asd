;;;; srfi-112.asd -*- Mode: Lisp;-*- 

(cl:in-package :asdf)


(defsystem :srfi-112
  :version "20200228"
  :description "SRFI 112 for CL: Environment Inquiry"
  :long-description "SRFI 112 for CL: Environment Inquiry
https://srfi.schemers.org/srfi-112"
  :author "CHIBA Masaomi"
  :maintainer "CHIBA Masaomi"
  :serial t
  :components ((:file "package")
               (:file "srfi-112")))


(defmethod perform :after ((o load-op) (c (eql (find-system :srfi-112))))
  (let ((name "https://github.com/g000001/srfi-112")
        (nickname :srfi-112))
    (if (and (find-package nickname)
             (not (eq (find-package nickname)
                      (find-package name))))
        (warn "~A: A package with name ~A already exists." name nickname)
        (rename-package name name `(,nickname)))))


;;; *EOF*


