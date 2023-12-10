package changelog

import (
	"fmt"
	"regexp"
)

var (
	typeGroupWithoutPRregex = regexp.MustCompile(`^(.+)\((.+)\):(.+)$`)
	typeGroupWithPRregex    = regexp.MustCompile(`^(.+)\((.+)\):(.+)(\(.+\))$`)
)

func Parse(line string) {
	switch {
	case typeGroupWithPRregex.MatchString(line):
		fmt.Println("with PR: ", line)
	case typeGroupWithoutPRregex.MatchString(line):
		fmt.Println("without PR: ", line)
	default:
		fmt.Println("default: ", line)
	}
}
