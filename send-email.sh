echo $1 | mail -s $2 $3

if [ "$#" -lt 3 ]; then
  echo "Usage => ./send-email.sh mail-body subject target-mail"
fi
