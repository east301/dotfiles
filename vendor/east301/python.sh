###
### Python helpers
###

function make-python-package-directory () {
    if [ "x$1" = "x" ]; then
        echo "[Usage] make-python-package-directory [path to target directory]"
    else
        mkdir -p $1
        touch $1/__init__.py
    fi
}
