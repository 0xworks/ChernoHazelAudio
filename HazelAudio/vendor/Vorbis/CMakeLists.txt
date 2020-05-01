cmake_minimum_required (VERSION 3.10)

project ("Vorbis" VERSION 0.1 DESCRIPTION "Vorbis library for use in HazelAudio")

add_library(
	${PROJECT_NAME} STATIC
	"include/vorbis/codec.h"
	"include/vorbis/vorbisenc.h"
	"include/vorbis/vorbisfile.h"
	"lib/books/coupled/res_books_51.h"
	"lib/books/coupled/res_books_stereo.h"
	"lib/books/floor/floor_books.h"
	"lib/books/uncoupled/res_books_uncoupled.h"
	"lib/modes/floor_all.h"
	"lib/modes/psych_11.h"
	"lib/modes/psych_16.h"
	"lib/modes/psych_44.h"
	"lib/modes/psych_8.h"
	"lib/modes/residue_16.h"
	"lib/modes/residue_44.h"
	"lib/modes/residue_44p51.h"
	"lib/modes/residue_44u.h"
	"lib/modes/residue_8.h"
	"lib/modes/setup_11.h"
	"lib/modes/setup_16.h"
	"lib/modes/setup_22.h"
	"lib/modes/setup_32.h"
	"lib/modes/setup_44.h"
	"lib/modes/setup_44p51.h"
	"lib/modes/setup_44u.h"
	"lib/modes/setup_8.h"
	"lib/modes/setup_X.h"
	"lib/analysis.c"
	"lib/backends.h"
#	"lib/barkmel.c"
	"lib/bitrate.c"
	"lib/bitrate.h"
	"lib/block.c"
	"lib/codebook.c"
	"lib/codebook.h"
	"lib/codec_internal.h"
	"lib/envelope.c"
	"lib/envelope.h"
	"lib/floor0.c"
	"lib/floor1.c"
	"lib/highlevel.h"
	"lib/info.c"
	"lib/lookup.c"
	"lib/lookup.h"
	"lib/lookup_data.h"
	"lib/lpc.c"
	"lib/lpc.h"
	"lib/lsp.c"
	"lib/lsp.h"
	"lib/mapping0.c"
	"lib/masking.h"
	"lib/mdct.c"
	"lib/mdct.h"
#	"lib/misc.c"
	"lib/misc.h"
	"lib/os.h"
	"lib/psy.c"
	"lib/psy.h"
#	"lib/psytune.c"
	"lib/registry.c"
	"lib/registry.h"
	"lib/res0.c"
	"lib/scales.h"
	"lib/sharedbook.c"
	"lib/smallft.c"
	"lib/smallft.h"
	"lib/synthesis.c"
#	"lib/tone.c"
	"lib/vorbisenc.c"
	"lib/vorbisfile.c"
	"lib/window.c"
	"lib/window.h"
)

target_compile_definitions(
	${PROJECT_NAME} PRIVATE
)

if(WIN32)
	target_compile_definitions(
		libogg PRIVATE
		"WIN32"
		"NDEBUG"
	)
endif()

target_include_directories(
	${PROJECT_NAME} PRIVATE
	"../libogg/include"
)

target_include_directories(
	${PROJECT_NAME} PUBLIC
	"include"
)

