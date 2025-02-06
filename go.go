package main

import "fmt"

type Stack []int

func (s *Stack) Push(v int) {
    *s = append(*s, v)
}

func (s *Stack) Pop() int {
    res := (*s)[len(*s)-1]
    *s = (*s)[:len(*s)-1]
    return res
}

func main() {
    var stack Stack
    stack.Push(1)
    stack.Push(2)
    fmt.Println(stack.Pop())  // 2
}