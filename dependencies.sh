install () {
    echo "Installing dependencies..."
    if [ "$(uname -s)" == "Darwin" ]; then
        brew tap msoap/tools
        brew install shell2http
    elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
	snap install shell2http
    fi
    echo "Installed."
}

"$@"
