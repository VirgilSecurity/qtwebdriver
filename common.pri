
!win* {
	QMAKE_CFLAGS += -Wall -W -Wno-unused-parameter -fPIC
	QMAKE_CXXFLAGS += -Wall -W -Wno-unused-parameter -fPIC
}

clang {
	QMAKE_CFLAGS += -Wno-unknown-warning-option
	QMAKE_CXXFLAGS += -Wno-unknown-warning-option
}

macx {
	QMAKE_MAC_SDK = macosx
}

linux* {
	DEFINES += __STDC_FORMAT_MACROS OS_POSIX
	LIBS += -ldl
}

win* {
	DEFINES += _WIN32 OS_WIN NOMINMAX _CRT_RAND_S WIN32 _UNICODE _WINSOCKAPI_
	DEFINES += _SILENCE_STDEXT_HASH_DEPRECATION_WARNINGS
}

android {
	DEFINES += ANDROID _GLIBCXX_PERMIT_BACKWARD_HASH
}

macx | ios {
	DEFINES += OS_POSIX
}
