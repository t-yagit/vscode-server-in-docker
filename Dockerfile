FROM ubuntu:20.04
RUN apt update && apt install -y gnome-keyring wget
RUN wget -O- https://aka.ms/install-vscode-server/setup.sh | sh
CMD dbus-run-session -- sh -c "(echo 'yoursecrethere' | gnome-keyring-daemon --unlock) && code-server serve-local --host 0.0.0.0 --accept-server-license-terms"