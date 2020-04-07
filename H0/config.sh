for t in 1 4 
do
    echo $t
    g++ -DNUMT=$t main.cc -o proj -lm -fopenmp
    ./proj
done