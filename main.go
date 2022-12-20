package main

import (
	"fmt"
	"time"
)

func main() {

	ceos := []string{"Elon Musk", "Sundar Pichai", "Satya Nadella", "Mark Zukerberg"}

	for _, ceo := range ceos {
		go buyTheCompany(ceo)
	}

	time.Sleep(time.Second * 1)
}

func buyTheCompany(name string) {
	fmt.Println(name, "is buying the company")
	time.Sleep(time.Second)
}
