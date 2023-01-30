#lang info
(define collection "plot-cookbook")
(define deps
  '("base"
    "colormaps"
    "latex-pict"
    "metapict"
    "sci"
    "simple-polynomial"))
(define build-deps
  '("csv-reading"
    "data-frame"
    "infix"
    "racket-doc"
    "rackunit-lib"
    "scribble-lib"
    "threading"))
(define scribblings '(("scribblings/plot-cookbook.scrbl" ())))
(define pkg-desc "Description Here")
(define version "0.0")
(define pkg-authors '(spdegabrielle))
(define license '(Apache-2.0 OR MIT))
