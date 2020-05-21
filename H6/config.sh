#On flip:
#g++ -o printinfo printinfo.cpp /usr/local/apps/cuda/cuda-10.1/lib64/libOpenCL.so.1.1 -lm -fopenmp
#./printinfo   

LOCAL_OPEN_CL=/usr/lib/x86_64-linux-gnu/libOpenCL.so.1

g++ -o printinfo printinfo.cpp $LOCAL_OPEN_CL -lm -fopenmp
./printinfo  