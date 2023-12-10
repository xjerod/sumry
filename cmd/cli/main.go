package main

import (
	"log"
	"os"
	"strings"

	"github.com/xjerod/sumry/pkg/changelog"
)

func main() {
	data, err := os.ReadFile("test_input.txt")
	if err != nil {
		log.Fatalln(err)
	}

	lines := strings.Split(string(data), "\n")

	for _, line := range lines {
		changelog.Parse(line)
	}
}
