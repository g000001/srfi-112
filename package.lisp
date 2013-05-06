;;;; package.lisp

(cl:in-package :cl-user)

(defpackage :srfi-112
  (:use)
  (:export :implementation-name 
           :implementation-version 
           :cpu-architecture 
           :c-memory-model 
           :system-instance 
           :os-type 
           :os-version ))

(defpackage :srfi-112.internal
  (:use :srfi-112 :cl))

