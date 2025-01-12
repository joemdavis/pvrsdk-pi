// This file was created by Filewrap 1.2
// Little endian mode
// DO NOT EDIT

#include "../PVRTMemoryFileSystem.h"

// using 32 bit to guarantee alignment.
#ifndef A32BIT
 #define A32BIT static const unsigned int
#endif

// ******** Start: DefaultFragShader.fsh ********

// File data
static const char _DefaultFragShader_fsh[] = 
	"#version 300 es\r\n"
	"\r\n"
	"uniform sampler2D sTexture;\r\n"
	"\r\n"
	"in mediump vec2 TexCoord;\r\n"
	"\r\n"
	"layout (location = 0) out lowp vec4 oColour;\r\n"
	"\r\n"
	"void main()\r\n"
	"{\r\n"
	"    oColour = texture(sTexture, TexCoord);\r\n"
	"}\r\n";

// Register DefaultFragShader.fsh in memory file system at application startup time
static CPVRTMemoryFileSystem RegisterFile_DefaultFragShader_fsh("DefaultFragShader.fsh", _DefaultFragShader_fsh, 190);

// ******** End: DefaultFragShader.fsh ********

