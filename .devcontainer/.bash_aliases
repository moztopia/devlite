# Create Helper Functions

toggle_xdebug() {
    if [[ "$1" == "--help" ]]; then
        echo "Usage: toggle_xdebug"
        echo "Toggles the XDEBUG_TRIGGER environment variable."
        echo ""
        echo "If XDEBUG_TRIGGER does not exist, it is set to 1."
        echo "If XDEBUG_TRIGGER is 1, it is set to 0."
        echo "If XDEBUG_TRIGGER is 0, it is set to 1."
        return 0
    fi

    if [[ -z "$XDEBUG_TRIGGER" ]]; then
        export XDEBUG_TRIGGER=1
        echo "[+] XDEBUG_TRIGGER initialized to 1"
    elif [[ "$XDEBUG_TRIGGER" -eq 1 ]]; then
        export XDEBUG_TRIGGER=0
        echo "[*] XDEBUG_TRIGGER set to 0"
    else
        export XDEBUG_TRIGGER=1
        echo "[*] XDEBUG_TRIGGER set to 1"
    fi
}

version() {
  echo "lsb_release -a"
  echo ""
  lsb_release -a
  echo ""
  echo "cat /etc/os-release"
  echo ""
  cat /etc/os-release
  echo ""
  echo "uname -a"
  echo ""
  uname -a
}