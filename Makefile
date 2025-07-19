

all: simulation referee

simulation:
	mkdir -p src/vssproto/simulation
	protoc --proto_path=proto/simulation/ \
		--python_out=src/vssproto/simulation/ \
		--pyi_out=src/vssproto/simulation/ \
		proto/simulation/*

referee:
	mkdir -p src/vssproto/referee
	protoc --proto_path=proto/referee/ \
		--python_out=src/vssproto/referee/ \
		--pyi_out=src/vssproto/referee/ \
		proto/referee/*
