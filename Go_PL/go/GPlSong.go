package main

import(
  "fmt"
  //"math/cmplx"
)

func main() {
  scott := make(chan complex64)
  go sexualityModJapan(scott)
  historyOfJapan := <- scott
  fmt.Printf("Go lets Scott-chan send %g to Ryan-chan\n", historyOfJapan)
}

func sexualityModJapan(ryan chan complex64){
  bodypillow := complex64(-5 + 12i)
  ryan <- bodypillow
}