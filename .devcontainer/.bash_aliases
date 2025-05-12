# Set Environment Variables

PROJECT_NAME=devlite
WORKSPACE_DIR="/workspace/${PROJECT_NAME}"

# Create Aliases

alias art='php artisan'
alias reseed='php artisan migrate:fresh --seed'
alias ls='ls -la --color=auto'
alias dir='ls'
alias bashrc_reload='source ~/.bashrc'

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

git-create-release() {

  if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: git-create-release <main_version> <develop_version>"
    echo "Example: git-create-release 1.0.2 1.0.3-dev"
    return 1
  fi

  main_version="$1"
  develop_version="$2"

  echo "You are about to create a new release."
  echo "Main Version: $main_version"
  echo "Develop Version: $develop_version"
  read -p "Do you want to continue? [y/N] " confirm

  if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
    echo "Aborted."
    return 1
  fi

  git checkout develop &&
  git pull origin develop &&
  git checkout main &&
  git pull origin main &&
  git merge --no-ff develop -m "Merge develop into main for release $main_version" &&
  git tag -a "$main_version" -m "Release version $main_version" &&
  git push origin main &&
  git push origin "$main_version" &&
  git checkout develop &&
  git commit -am "Prepare for $develop_version development" &&
  git push origin develop
}

cache-wipe() {
  php artisan cache:clear
  php artisan config:clear
  php artisan route:clear
  php artisan view:clear
  php artisan clear-compiled
  php artisan queue:restart
  composer dump-autoload
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