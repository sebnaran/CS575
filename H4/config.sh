for N in 10 100 500 800 1500 3000 4500 6000 7500 9000 10500 12000
do
    echo  #This echo puts a line between each time we run the code (makes it easier to read)
    echo $N
    g++ -DN=$N main.cc -o proj -lm -fopenmp
    ./proj
done