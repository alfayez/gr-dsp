#include <stdio.h>
#include <string>

#include <math.h>
#include <complex>
#include "gnuradio_beagleboard_dsp.h"

#ifndef CWT_SUPPORT_FUNC_H
#define CWT_SUPPORT_FUNC_H

//#define MAX_SIZE	1024
//#define ARRAY_SIZE	512
#define FIXED_FLOAT_SCALE 1
#define PROCESSOR_ID	0

#if defined (__cplusplus)
extern "C" {
#endif /* defined (__cplusplus) */

//enum	{
//	NO_ERROR,
//	ERROR_DSP_INIT,
//	ERROR_DSP_PARAMETER,
//	ERROR_FILE_NAME
//	};
//
//typedef short bufferType;
//typedef float bufferTypeFloat;
//typedef short bufferTypeFloat;

//typedef std::complex<float>			gr_complex;
//typedef std::complex<double>			gr_complexd;

struct dsp {
	std::string dsp_prog_name;
	int processorId;

	//static char *gpp_dsp_buff;
	//DSP_STATUS status;
//	int status;

	/*  ============================================================================
	 *  @name   LOOP_BufferSize
	 *
	 *  @desc   Size of buffer to be used for data transfer.
	 *  ============================================================================
	 */
	//STATIC Uint32  LOOP_BufferSize;
//	unsigned int  LOOP_BufferSize;
};

class gnuRadioType {
	public:
		// Variables		
		FILE *fp;
		bufferType    rfDataInt[MAX_SIZE];
		bufferType    rfDataIntPtr[MAX_SIZE];
		bufferType    rfDataOut[MAX_SIZE];

		bufferTypeFloat rfData1[MAX_SIZE];
		bufferTypeFloat rfData2[MAX_SIZE];
		bufferType buff_size;
		gnuRadioType();

		bufferTypeFloat *rfDataOutPtr;
		bufferTypeFloat *rfDataInPtr;

		struct dsp dsp_instance;
	//	~gunRadioType();

		// Functions
//		int convertFloatToFixed(bufferTypeFloat *(&out), bufferTypeFloat *(&in), int scale, int arraySize);
//		int convertFixedToFloat(bufferTypeFloat *(&out), bufferTypeFloat *(&in), int scale, int arraySize);
		//int convertFloatToFixed(bufferType *out, bufferTypeFloat *in, int scale, int arraySize);
		int convertFixedToFloat(bufferTypeFloat *out, bufferType *in, bufferType scale, int arraySize);
		int convertFloatToFixed(bufferType out[], bufferTypeFloat *in, bufferType scale, int arraySize);
		//int convertFixedToFloat(bufferTypeFloat *out, bufferType in[], int scale, int arraySize);
		int inputFromFile();
		void printFixedInt();
};


int convolution(bufferType (&in1)[MAX_SIZE], int length1, bufferType (&in2)[MAX_SIZE], int length2, bufferType (&out)[MAX_SIZE]);
int square(bufferType* in1, int length1, bufferType* out);


//int FIR_main (const bufferTypeFloat *in, bufferTypeFloat *out, int buff_size);
//int dsp_init();

#if defined (__cplusplus)
}
#endif /* defined (__cplusplus) */

#endif
