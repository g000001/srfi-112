;;;; package.lisp

(cl:in-package cl-user)


(defpackage "https://github.com/g000001/srfi-112"
  (:use)
  (:export implementation-name 
           implementation-version 
           cpu-architecture 
           system-instance 
           os-type 
           os-version ))


(defpackage "https://github.com/g000001/srfi-112#internals"
  (:use cl "https://github.com/g000001/srfi-112"))


;;; *EOF*
