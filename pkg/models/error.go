package models

type JavascriptweeklyNameNotFoundError struct{}

func (k *JavascriptweeklyNameNotFoundError) Error() string {
	return "Javascriptweekly name not found"
}
