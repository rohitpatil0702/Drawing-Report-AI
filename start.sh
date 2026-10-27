#!/bin/sh
cd "$(dirname "$0")"
(command -v xdg-open >/dev/null && xdg-open http://localhost:8080) || (command -v open >/dev/null && open http://localhost:8080) &
python3 -m http.server 8080
