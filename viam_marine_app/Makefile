
PROTOBUF=/usr/local/Cellar/protobuf/21.8/include

run:
	flutter pub get
	flutter run --flavor dev --dart-define=ENVIRONMENT=dev --target lib/main.dart

buf: Makefile buf.yaml buf.gen.yaml
	rm -rf lib/sdk/src/gen
	buf generate buf.build/viamrobotics/goutils	
	protoc --dart_out=grpc:lib/sdk/src/gen -I$(PROTOBUF) $(PROTOBUF)/google/protobuf/timestamp.proto
	protoc --dart_out=grpc:lib/sdk/src/gen -I$(PROTOBUF) $(PROTOBUF)/google/protobuf/struct.proto
	protoc --dart_out=grpc:lib/sdk/src/gen -I$(PROTOBUF) $(PROTOBUF)/google/protobuf/duration.proto
	protoc --dart_out=grpc:lib/sdk/src/gen -I$(PROTOBUF) $(PROTOBUF)/google/protobuf/any.proto		
	buf generate buf.build/viamrobotics/api
	buf generate buf.build/googleapis/googleapis
	buf generate buf.build/erdaniels/gostream

setup:
	dart pub global activate protoc_plugin
	dart pub global activate grpc