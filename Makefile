CC = g++

CFLAGS = -g -Wall

TARGET = start

OBJ = main.o test.o

all: $(TARGET)
	
$(TARGET):$(OBJ)
	$(CC) $(CFLAGS) -o $(TARGET) *.o

%.o: src/%.cpp
	$(CC) $(CFLAGS) -c src/$(basename $@).cpp -o $(basename $@).o

run: all
	$(RM) *.o
	./$(TARGET)

clean:
	$(RM) $(TARGET)
	$(RM) *.o
	$(info Cleaning) 

run-dirty: all
	./$(TARGET)
