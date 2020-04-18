for t in 1 2 4 8 
do
    echo $t
    for k in 10 250 500 750 1000 1500 2000
    do
        g++ -DNUMT=$t -DNUMTRIALS=$k main.cc -o proj -lm -fopenmp
        ./proj
    done
done