package to

import (
	"fmt"
	"strconv"
	"strings"
)

const (
	secondsInHour   = 3600
	minutesInHour   = 60
	secondsInMinute = 60
)

func plural(count int, singular, plural string) string {
	if (count == 1) || (count == 0) {
		return strconv.Itoa(count) + " " + singular
	}
	return strconv.Itoa(count) + " " + plural
}

func StringFromSeconds(seconds int, short bool) string {
	if seconds < 0 {
		if short {
			return fmt.Sprintf("%ds", seconds)
		}
		return plural(seconds, "second", "seconds")
	}

	hours := seconds / secondsInHour
	minutes := (seconds - hours*secondsInHour) / minutesInHour
	seconds %= secondsInMinute

	var parts []string

	if hours > 0 {
		if short {
			parts = append(parts, fmt.Sprintf("%dh", hours))
		} else {
			parts = append(parts, plural(hours, "hour", "hours"))
		}
	}

	if minutes > 0 {
		if short {
			parts = append(parts, fmt.Sprintf("%dm", minutes))
		} else {
			parts = append(parts, plural(minutes, "minute", "minutes"))
		}
	}

	if seconds > 0 {
		if short {
			parts = append(parts, fmt.Sprintf("%ds", seconds))
		} else {
			parts = append(parts, plural(seconds, "second", "seconds"))
		}
	}

	if len(parts) == 0 {
		if short {
			return "0s"
		}
		return "0 seconds"
	}

	return strings.Join(parts, " ")
}
