CC = g++

CFLAGS = -g -Wall

TARGET = start

OBJ = 

all: $(TARGET)
	
$(TARGET):$(OBJ)
	$(CC) $(CFLAGS) -o $(TARGET) *.o

%.o: src/%.cpp src/%.h
	$(CC) $(CFLAGS) -c src/$(basename $@).cpp -o $(basename $@).o

run: all
	$(RM) $(OBJ)
	./$(TARGET)

clean:
	$(RM) $(TARGET) $(OBJ)
	$(info Cleaning)

run-dirty: all
	./$(TARGET)
