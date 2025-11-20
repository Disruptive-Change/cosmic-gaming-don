# Base: Cosmic Atomic NVIDIA (stable)
FROM ghcr.io/ublue-os/cosmic-atomic-nvidia:latest

# Labels required by Universal Blue
LABEL org.opencontainers.image.title="cosmic-gaming-don"
LABEL org.opencontainers.image.description="Don's custom Cosmic Gaming OS"
LABEL org.opencontainers.image.version="latest"
LABEL org.opencontainers.image.vendor="Disruptive-Change"
LABEL containers.bootc="1"

# Copy custom files from build context
COPY build_files/ /usr/local/share/cosmic-gaming/

# Run customizations
RUN /usr/local/share/cosmic-gaming/build.sh

