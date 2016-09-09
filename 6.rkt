;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |6|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; Find the difference between the sum of the squares of 
;; the first one hundred natural numbers and the square of 
;; the sum.

(define mylist (build-list 101 values))
(define sqrlist (map sqr mylist))
(define sum (foldr + 0 mylist))
(define sqrsum (foldr + 0 sqrlist))
(printf "~a\n" sqrsum)
(printf "~a\n" sum)
(define difference (- (sqr sum) sqrsum))
(printf "~a\n" difference)

;; Answer: 25164150


