;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; The prime factors of 13195 are 5, 7, 13 and 29.
;; What is the largest prime factor of the number 600851475143?

(define (check number divisor)
  (cond [(= (modulo number divisor) 0)
         divisor]
        [else (check number (add1 divisor))]))

(define (findthing number)
  (cond [(= (check number 2) number) number]
        [else (findthing (/ number (check number 2)))]))

(findthing 600851475143)

;; Answer: 6857


