VPATH := math:_output
SOURCE_DIR := $(word 1,$(subst :, ,$(VPATH)))
TARGET_DIR := $(word 2,$(subst :, ,$(VPATH)))

TEX := xelatex
TEX_FLAGS := -output-directory=../$(TARGET_DIR)

ann_math.pdf: ann_math.tex Ai_logo.sty
	cd $(SOURCE_DIR); \
	$(TEX) $(TEX_FLAGS) ann_math.tex

clean:
	rm -rf $(TARGET_DIR)/ann_math.{aux,log}

really_clean: clean
	rm -rf $(TARGET_DIR)/ann_math.pdf

PHONY: clean really_clean
