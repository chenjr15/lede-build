LEDE_SRC="$HOME/lede"
echo $LEDE_SRC
docker run -v $LEDE_SRC:/home/alex/lede --user alex -it lede_build

