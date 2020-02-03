BASE = asst1

all: $(BASE)

OS := $(shell uname -s)

ifeq ($(OS), Linux)
  LIBS += -lGL -lGLU -lglut -lGLEW
endif

ifeq ($(OS), Darwin) # Assume OS X
  CPPFLAGS += -D__MAC__ -stdlib=libstdc++
  LDFLAGS += -framework GLUT -framework OpenGL
endif

ifdef OPT
  #turn on optimization
  CXXFLAGS += -O2
else
  #turn on debugging
  CXXFLAGS += -g
endif

CXX = g++

OBJ = $(BASE).o ppm.o glsupport.o

$(BASE): $(OBJ)
	$(LINK.cpp) -o $@ $^ $(LIBS)

clean:
	rm -f $(OBJ) $(BASE)
