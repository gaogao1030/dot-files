user_path="/Users/mac-gaogao/"

DATE="$(date +%s)"

dotFiles=(
  .vimrc
  .gitconfig
  .tmux.conf
  .zshrc
  .ackrc
)

sync_to_system(){
  for dot_file in "${dotFiles[@]}"
  do
    full_path=$user_path$dot_file
    rm $full_path
    echo "remove ${full_path}"
    cp $dot_file $full_path
    echo "copy ${dot_file} to ${full_path}"
  done
}

sync_from_system(){
  for dot_file in "${dotFiles[@]}"
  do
    echo "${dot_file}"
    full_path=$user_path$dot_file
    if [ -e $full_path ]
    then
      rm $dot_file
      echo "remove ${dot_file}"
      cp $full_path $dot_file
      echo "copy ${full_path} to ${dot_file}"
    else
      echo "${full_path} isn't exist"
    fi
  done
}

sync_to_github(){
  git add .
  git commit -m "updated ${DATE}"
  git push origin master
}
