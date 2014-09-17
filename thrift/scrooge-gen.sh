#!/bin/sh

BASE_DIR=/Users/shaunlindsay/src/data_choice/
SCROOGE_DIR=$BASE_DIR/scrooge/scrooge
THRIFT_SRCS=$BASE_DIR/data_comparison/thrift/person.thrift

OUTPUT_DIR=$BASE_DIR/data_comparison/thrift

pushd $SCROOGE_DIR
./sbt "scrooge-generator/run-main com.twitter.scrooge.Main \
  -d $OUTPUT_DIR \
  -s $THRIFT_SRCS"

popd
