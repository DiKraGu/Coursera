all: guessinggame.sh README.md

guessinggame.sh:
	chmod +x guessinggame.sh

README.md: guessinggame.sh
	@echo "Project Title: Guessing Game" > README.md
	@echo "Date and Time: $(shell date)" >> README.md
	@echo "Lines of code in guessinggame.sh: $(shell wc -l < guessinggame.sh)" >> README.md

.PHONY: clean
clean:
	rm -f guessinggame.sh README.md
