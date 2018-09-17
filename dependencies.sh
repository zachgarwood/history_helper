install () {
    echo "Installing dependencies..."
    brew tap msoap/tools
    brew install shell2http
    echo "Installed."
}

"$@"
