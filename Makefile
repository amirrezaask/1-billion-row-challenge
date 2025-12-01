data:
	python3 ./create_measurements.py 1000000000

.PHONY: go
go-medium:
	cd go && go build -o 1brc-go main.go
	cd go && fish -c "time ./1brc-go ../data/medium.txt"

go-small:
	cd go && go build -o 1brc-go main.go
	cd go && fish -c "time ./1brc-go ../data/small.txt"

go-measurements:
	cd go && go build -o 1brc-go main.go
	cd go && fish -c "time ./1brc-go ../data/measurements.txt"