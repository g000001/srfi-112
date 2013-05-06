;;;; srf-112.lisp

(cl:in-package :srfi-112.internal)

;;; "srfi-112" goes here. Hacks and glory await!

(defmacro define (name&args &body body)
  `(eval-when (:compile-toplevel :load-toplevel :execute)
     (setf (symbol-function ',name&args) (progn ,@body))))


(define implementation-name #'cl:lisp-implementation-type)


(define implementation-version #'cl:lisp-implementation-version)


(define cpu-architecture #'cl:machine-type)


(defun c-memory-model ()
  cl:nil)
    

(define system-instance #'cl:machine-instance)
    

(define os-type #'cl:software-type)


(define os-version #'cl:software-version)


;;; *EOF*
