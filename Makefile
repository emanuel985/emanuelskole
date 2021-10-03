EXECUTABLE := hello
CXX := g++

$(EXECUTABLE): $(EXECUTABLE).o
	@echo "Creating executable"
	@$(CXX) -o $(EXECUTABLE) $(EXECUTABLE).o

$(EXECUTABLE).o: $(EXECUTABLE).cpp
	@echo "Compiling $(EXECUTABLE).cpp"
	@$(CXX) -c $(EXECUTABLE).cpp

.PHONY: clean
clean:
	@echo "Cleaning up build files"
	@rm -f *.o hello

.PHONY: all
all: $(EXECUTABLE)

.PHONY: help
help:
	@echo "Targets:"
	@echo "clean: Remove build files"
	@echo "all: Build all targets"
	@echo "$(EXECUTABLE): Build $(EXECUTABLE) target"