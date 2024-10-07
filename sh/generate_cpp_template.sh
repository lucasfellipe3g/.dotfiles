#!/bin/bash

function generate_template() {
  local template=$1
  local file=$2
  local current_date=$(date "+%d.%m.%Y %H:%M:%S")

  case $template in
    --console | -c)
      cat <<EOF > "$file"
/**
 *    author:  lucasfellipe
 *    created: $current_date
**/
#include <bits/stdc++.h>

using namespace std;

int main() {
  ios::sync_with_stdio(false);
  cin.tie(nullptr);

  return 0;
}
EOF
      ;;
    --leetcode | -lc)
      cat <<EOF > "$file"
/**
 *    author:  lucasfellipe
 *    created: $current_date
**/
#include <bits/stdc++.h>

using namespace std;

class Solution {
  public:
};

int main() {
  ios::sync_with_stdio(false);
  cin.tie(nullptr);

  return 0;
}
EOF
      ;;
    *)
      echo "Unknown template: $template"
      exit 1
      ;;
  esac
}

if [ $# -lt 2 ]; then
    echo "Usage: $0 <template> <filename>"
    exit 1
fi

generate_template "$1" "$2"
