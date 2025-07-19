

all: simulation referee

simulation:
	protoc --proto_path=proto/simulation/ \
		--python_out=src/vssproto/simulation/ \
		--pyi_out=src/vssproto/simulation/ \
		proto/simulation/*

referee:
	protoc --proto_path=proto/referee/ \
		--python_out=src/vssproto/referee/ \
		--pyi_out=src/vssproto/referee/ \
		proto/referee/*

build:
	python -m build

clean:
	rm -r dist/
	rm -rf src/VSSProto.egg-info
