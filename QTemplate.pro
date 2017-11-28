######################################################################
# Automatically generated by qmake (1.07a) Tue Jan 17 08:57:50 2017
######################################################################

message("====Qxxx.pro============================")
TARGET_NAME=$$QTARGET_NAME
TARGET_PRO=$$TARGET_NAME".pro"
include($$TARGET_PRO)
message("TARGET_NAME="$$TARGET_NAME)
message("TARGET_PRO="$$TARGET_PRO)

#########################################################################################
# copy for qmake generated TARGET_NAME
#########################################################################################
PRJ_ROOT = ../iniparser
include( $${PRJ_ROOT}/QTemplate.pri )

DEPENDPATH +=
INCLUDEPATH += 

# Input
HEADERS += 
SOURCES += 


message("SOURCES="$$SOURCES)

#SOURCES -= example/iniexample.c
SOURCES -= example/parse.c
SOURCES -= test/AllTests.c
SOURCES -= test/CuTest.c
SOURCES -= test/test_iniparser.c
SOURCES -= test/test_dictionary.c



#------------------------------------------------------------------
win32: {	#win32
    error ("win32")
    warning()
    message()
}
unix :{ 	#linux
    message("build linux platform....")
} else{
    error ("error build...")
}
#------------------------------------------------------------------
message("QDEFS = "$$QDEFS)
contains(QDEFS, .*x86.*) {
    message("compile x86(debug)")
    TARGET_DIR=debug
    DEFINES += _DEBUG
}
contains(QDEFS, .*arm.*) {
    message("compile am335x(release)")
    TARGET_DIR=release
    DEFINES += _RELEASE
}

#------------------------------------------------------------------
contains(QDEFS, .*app.*) {
    message("compile app")
    TEMPLATE = app
    TARGET = ./out_test/$$TARGET_DIR/$$TARGET_NAME
}
contains(QDEFS, .*static.*) {
    message("compile static library")
    TEMPLATE = lib
    CONFIG += staticlib
    TARGET = ./out_lib/$$TARGET_DIR/$$TARGET_NAME
}
contains(QDEFS, .*shared.*) {
    message("compile shared library")
    TEMPLATE = lib
    TARGET = ./out_lib/$$TARGET_DIR/$$TARGET_NAME
}

OBJECTS_DIR= ./obj/$$TARGET_DIR




#########################################################################################
#
#########################################################################################
QMAKE_CXXFLAGS += $$(CXXFLAGS)
QMAKE_CXXFLAGS += -fmax-errors=1
QMAKE_CXXFLAGS += -fpermissive
#QMAKE_CXXFLAGS += -std=c++11

QMAKE_CFLAGS += $$(CFLAGS)
QMAKE_CFLAGS += -fmax-errors=1
#QMAKE_CFLAGS += -std=c99

QMAKE_LFLAGS += $$(LDFLAGS)
QMAKE_LFLAGS += "-ldl"
QMAKE_LFLAGS += "-lrt"
QMAKE_LFLAGS += -Wl,-Map=xxx.map
QMAKE_LFLAGS += -static


# add the desired -O3 if not present
#QMAKE_CXXFLAGS_RELEASE += -O0
#QMAKE_CFLAGS_RELEASE   += -O0

#QMAKE_CXXFLAGS_WARN_ON += -Wall -Wno-parentheses
QMAKE_CFLAGS_WARN_ON -= -Wall
QMAKE_CXXFLAGS_WARN_ON -= -Wall

QMAKE_CXXFLAGS += -std=c++0x -pthread

LIBS += -pthread  -dl
contains(QDEFS, .*arm.*) {
    #LIBS += -L./library/$$TARGET_DIR -levse
    #LIBS += -L./library/$$TARGET_DIR -lpev
}


CONFIG -= qt
CONFIG += no_lflags_merge


#########################################################################################
# http://doc.qt.io/qt-4.8/qmake-project-files.html
#########################################################################################
isEmpty(VARIABLE) {

}

equals(VARIABLE, foo) {

}

contains(VARIABLE, .*foo.*) {

}


