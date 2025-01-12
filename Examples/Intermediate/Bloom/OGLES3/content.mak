#--------------------------------------------------------------------------
# Name         : content.mak
# Title        : Makefile to build content files
#
# Copyright    : Copyright (C) by Imagination Technologies Limited.
#
# Description  : Makefile to wrap content files for examples in the PowerVR SDK
#
# Platform     :
#
#--------------------------------------------------------------------------

#############################################################################
## Variables
#############################################################################
FILEWRAP 	= ..\..\..\..\Utilities\Filewrap\Windows_x86_32\Filewrap.exe
CONTENTDIR = Content

#############################################################################
## Instructions
#############################################################################

RESOURCES = \
	$(CONTENTDIR)/PostBloomFragShader.cpp \
	$(CONTENTDIR)/PostBloomVertShader.cpp \
	$(CONTENTDIR)/PreBloomFragShader.cpp \
	$(CONTENTDIR)/PreBloomVertShader.cpp \
	$(CONTENTDIR)/BlurFragShader.cpp \
	$(CONTENTDIR)/BlurVertShader.cpp \
	$(CONTENTDIR)/FragShader.cpp \
	$(CONTENTDIR)/VertShader.cpp \
	$(CONTENTDIR)/Mask.cpp \
	$(CONTENTDIR)/BaseTex.cpp \
	$(CONTENTDIR)/bloom_mapping.cpp

all: resources
	
help:
	@echo Valid targets are:
	@echo resources, clean
	@echo FILEWRAP can be used to override the default path to the Filewrap utility.

clean:
	@for i in $(RESOURCES); do test -f $$i && rm -vf $$i || true; done

resources: $(RESOURCES)

$(CONTENTDIR):
	-mkdir "$@"

$(CONTENTDIR)/PostBloomFragShader.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -s  -o $@ ./PostBloomFragShader.fsh

$(CONTENTDIR)/PostBloomVertShader.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -s  -o $@ ./PostBloomVertShader.vsh

$(CONTENTDIR)/PreBloomFragShader.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -s  -o $@ ./PreBloomFragShader.fsh

$(CONTENTDIR)/PreBloomVertShader.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -s  -o $@ ./PreBloomVertShader.vsh

$(CONTENTDIR)/BlurFragShader.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -s  -o $@ ./BlurFragShader.fsh

$(CONTENTDIR)/BlurVertShader.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -s  -o $@ ./BlurVertShader.vsh

$(CONTENTDIR)/FragShader.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -s  -o $@ ./FragShader.fsh

$(CONTENTDIR)/VertShader.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -s  -o $@ ./VertShader.vsh

$(CONTENTDIR)/Mask.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ ./Mask.pod

$(CONTENTDIR)/BaseTex.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ ./BaseTex.pvr

$(CONTENTDIR)/bloom_mapping.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ ./bloom_mapping.pvr

############################################################################
# End of file (content.mak)
############################################################################
