#include <math.h>
#include <stdlib.h>
#include <time.h>
#include <omp.h>
#include <stdio.h>
#include <xmmintrin.h>
// setting the number of trials in the monte carlo simulation:
#ifndef SSE_WIDTH
#define SSE_WIDTH		4
#endif


#ifndef N
#define N 1500
#endif

#ifndef NUMT
#define NUMT 100
#endif

float A[N];
float B[N];
float C;
// function prototypes:
float
SimdMulSum( float *a, float *b, int len );


// main program:
int
main( int argc, char *argv[ ] )
{
	#ifndef _OPENMP
		fprintf( stderr, "No OpenMP support!\n" );
		return 1;
	#endif

	// inialize the arrays:
	for( int i = 0; i < N; i++ )
	{
		A[ i ] = 1.;
		B[ i ] = 2.;
	}
	double SimDMaxPerf  = 0;
	double NSimDMaxPerf = 0;
	for( int t = 0; t < NUMT; t++ )
		{double time0 = omp_get_wtime( );
		C             = SimdMulSum( &A[0], &B[0], N );
		double time1  = omp_get_wtime( );
		for (int i =0;i<N;i++)
			{C += A[i]+B[i];}
		double time2  = omp_get_wtime( );
		double SimDMegaSums  = (double)N/(time1-time0)/1000000.;
		double NSimDMegaSums = (double)N/(time2-time1)/1000000.;
		if (SimDMegaSums > SimDMaxPerf)
			{SimDMaxPerf = SimDMegaSums;}
		if (NSimDMegaSums > NSimDMaxPerf)
			{NSimDMaxPerf = NSimDMegaSums;}
		}
	printf( "SIMD Peak Performance = %8.2lf MegaSums/Sec\n", SimDMaxPerf);
	printf( "NSIMD Peak Performance = %8.2lf MegaSums/Sec\n", NSimDMaxPerf);
	printf( "Speedup = %8.2lf\n", SimDMaxPerf/NSimDMaxPerf);
	printf( "Num sums = %8.2lf",(float)N);
}

float
SimdMulSum( float *a, float *b, int len )
{
	float sum[4] = { 0., 0., 0., 0. };
	int limit = ( len/SSE_WIDTH ) * SSE_WIDTH;
	register float *pa = a;
	register float *pb = b;

	__m128 ss = _mm_loadu_ps( &sum[0] );
	for( int i = 0; i < limit; i += SSE_WIDTH )
	{
		ss = _mm_add_ps( ss, _mm_mul_ps( _mm_loadu_ps( pa ), _mm_loadu_ps( pb ) ) );
		pa += SSE_WIDTH;
		pb += SSE_WIDTH;
	}
	_mm_storeu_ps( &sum[0], ss );

	for( int i = limit; i < len; i++ )
	{
		sum[0] += a[i] * b[i];
	}

	return sum[0] + sum[1] + sum[2] + sum[3];
}