
PRJ_ROOT = ../iniparser

DEPENDPATH +=  $${PRJ_ROOT}/inc
INCLUDEPATH += $${PRJ_ROOT}/inc

# Input
HEADERS += $${PRJ_ROOT}/inc/iniparser.h
#SOURCES += $${PRJ_ROOT}/src/iniparser.c


SOURCES -= $${PRJ_ROOT}/example/iniexample.c
SOURCES -= $${PRJ_ROOT}/example/parse.c
SOURCES -= $${PRJ_ROOT}/test/AllTests.c
SOURCES -= $${PRJ_ROOT}/test/CuTest.c
SOURCES -= $${PRJ_ROOT}/test/test_iniparser.c
SOURCES -= $${PRJ_ROOT}/test/test_dictionary.c

