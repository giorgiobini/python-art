echo "Please insert the word you want to print:"
read word

echo "Do you want a random font? (y/n)"
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
    docker run -ti python-art --input_word="${word}" --random_font='True'
else
    docker run -ti python-art --input_word="${word}" --random_font='False'
fi
