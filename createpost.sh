#!/bin/bash

function createMarkdown(){

	local mydate=$(date +%Y-%m-%d)
	local title=$(echo "$1" | tr -s ' ' | tr ' ' '-'| tr '[:upper:]' '[:lower:]' )
	local file="_posts/articles/${mydate}-${title}.md"

	touch $file
	cat postlayout.txt > $file
  open $file
}

createMarkdown "$1"