CXXFLAGS = -std=c++11
LINKFLAGS= -lEGL -lGL

egl_opengl_test: egl_opengl_test.cpp
	g++ $(CXXFLAGS) -o $@ $< $(LINKFLAGS)

test: egl_opengl_test
	./egl_opengl_test

test_without_x11: egl_opengl_test
	EGL_PLATFORM=drm ./egl_opengl_test

clean:
	rm -f egl_opengl_test img.png
