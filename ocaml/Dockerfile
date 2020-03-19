FROM ocaml/opam2:4.10
RUN opam update -y
RUN sudo apt update -y && \
    sudo apt upgrade -y && \
    sudo apt install -y \
	bash \
	curl \
	git \
	m4 \
	perl \
        pkg-config \
	libgmp-dev zlib1g-dev
        
ADD . .
RUN opam install -y -j 10 core dune cryptokit cohttp yojson async cohttp-async
RUN sudo chown -R opam:nogroup .
CMD ["./_build/default/api_server.exe"]
EXPOSE 8080
