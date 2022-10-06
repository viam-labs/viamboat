
PROTOBUF=/Users/erh/work/open-source/protobuf

run: runmac

buf: Makefile buf.yaml buf.gen.yaml
	rm -rf lib/viam/gen
	buf generate buf.build/viamrobotics/goutils	
	protoc --dart_out=grpc:lib/viam/gen -I$(PROTOBUF) $(PROTOBUF)/src/google/protobuf/timestamp.proto
	protoc --dart_out=grpc:lib/viam/gen -I$(PROTOBUF) $(PROTOBUF)/src/google/protobuf/struct.proto
	protoc --dart_out=grpc:lib/viam/gen -I$(PROTOBUF) $(PROTOBUF)/src/google/protobuf/duration.proto	
	mv lib/viam/gen/src/google lib/viam/gen/
	buf generate buf.build/viamrobotics/api

runmac:
	flutter run -d macos


setup:
	dart pub global activate protoc_plugin
	dart pub global activate grpc
