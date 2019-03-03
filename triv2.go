package main

import "fmt"

type timeSpent struct {
	date  string
	who   string
	hours int
}

func (entry *timeSpent) addhours(hours int) {
	entry.hours += hours
}

func main() {
	a := timeSpent{"2019-02-28", "Hörndl", 1}
	a.addhours(2)
	b := timeSpent{"2019-02-27", "Betty", 12}
	fmt.Println(a.who, a.hours)
	fmt.Println(b.who, b.hours)
}
