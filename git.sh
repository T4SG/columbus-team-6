while true; do
  rdoc="$(find . -name 'README.rdoc')"
  md="$(find . -name 'README.md')"

  if [ "$rdoc" == "" ]
    then
      mv ./README.md ./README.rdoc
    else
      mv ./README.rdoc ./README.md
  fi

  git add .
  git ci -m "Update README"
  git pull origin master
  git push origin master

  sleep 60
  wait

done
