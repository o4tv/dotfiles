dex() {
    ssh otavio@192.168.0.$1
}

v() { nvim "${*:-.}"; }
