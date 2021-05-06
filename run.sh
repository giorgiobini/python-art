echo "Please insert the word you want to print:"
read word

echo "Do you want a random font? (y/n)"
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
    python ./main.py --input_word="${word}" --random_font='True' #docker run -ti python-art --input_word="${word}" --random_font='True'
else
    python ./main.py --input_word="${word}" --random_font='False' #docker run -ti python-art --input_word="${word}" --random_font='False'
fi
