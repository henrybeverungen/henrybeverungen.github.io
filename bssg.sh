#!/bin/bash

for file in ./drafts/*
	do
		title=$(grep -i "title:*" $file | cut -c8-)
		if test -f ./posts/"$title".html; then
			echo "$title".html Exists
		else
			pandoc --standalone --template post-template.html $file >> ./posts/"$title".html	
		fi
	done

rm index.md
rm index.html
rm posts.md
rm posts.html

echo -e "---\ntitle: Henry Beverungen\n---\n# Posts" >> index.md
echo -e "---\ntitle: Posts\n---\n# Posts" >> posts.md

for file in $(ls -r -1 ./drafts/*)
	do
		tail -n +4 $file >> index.md
		title=$(grep -i "title:*" $file | cut -c8-)
		echo -e "- [$title](./posts/$title.html)" >> posts.md
	done


pandoc --standalone --template template.html posts.md >> posts.html	
pandoc --standalone --template template.html index.md >> index.html	
