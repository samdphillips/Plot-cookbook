#lang racket/base

(require scribble/eval
         (for-label racket
                    plot
                    plot/utils
                    threading
                    (only-in racket/sequence sequence/c)))

(provide (all-defined-out)
         (all-from-out scribble/eval)
         (for-label (all-from-out racket
                                  plot
                                  plot/utils
                                  threading)
                    sequence/c))

(require (for-syntax racket/base
                     syntax/parse
                     racket/syntax)
         (only-in racket/contract any/c)
         (for-label (only-in racket/contract any/c)))

(define plot-eval
  (let ([eval (make-base-eval)])
    (eval '(begin
             (require racket/dict
                      racket/format
                      racket/function
                      racket/list
                      racket/match
                      racket/math
                      math/statistics
                      plot/pict
                      plot/utils
                      threading)))
    eval))

(define (close-plot-eval)
  (close-eval plot-eval))
