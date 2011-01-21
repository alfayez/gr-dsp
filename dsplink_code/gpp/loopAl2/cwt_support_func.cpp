#include <stdio.h>
#include <string.h>
#include <math.h>
#include <time.h>
#include "cwt_support_func.h"

int gnuRadioType::inputFromFile()
{
	int i=0;
	double var1=0;
	fp = fopen("mpsk_rf_data.dat", "r");
	if (fp == NULL)
	{
		printf("ERROR opening file\n");
		return ERROR_FILE_NAME;
	}

	i=0;
	while ( (fscanf(fp,"%lf", &var1) != EOF) && (i < MAX_SIZE) ) 
	{
		rfData1[i]=var1;
		i++;
	}
	
	fclose(fp);	
	return NO_ERROR;
}
//int gnuRadioType::convertFloatToFixed(bufferTypeFloat *(&out), bufferTypeFloat *(&in), int scale, int arraySize)
//int gnuRadioType::convertFloatToFixed(bufferType *out, bufferTypeFloat *in, int scale, int arraySize)
int gnuRadioType::convertFloatToFixed(bufferType out[], bufferTypeFloat *in, bufferType scale, int arraySize)
{
	int i=0;
	while (i < arraySize)
	{
		//rfDataInt[i]=(bufferType)(rfData1[i] * scale);
		out[i]=(bufferType)(in[i] * scale);
		#ifdef DEBUG
		printf("CONV [%d] from %f to %d\n", i, in[i], (int)out[i]);
		#endif
		i++;
	} 
	return NO_ERROR;
}

//int gnuRadioType::convertFixedToFloat(bufferTypeFloat *(&out), bufferTypeFloat *(&in), int scale, int arraySize)
int gnuRadioType::convertFixedToFloat(bufferTypeFloat *out, bufferType *in, bufferType scale, int arraySize)
//int gnuRadioType::convertFixedToFloat(bufferTypeFloat *out, bufferType in[], int scale, int arraySize)
{
	int i=0;
	while (i < arraySize)
	{
		//rfData2[i]=((double)rfDataInt[i] / scale);
		out[i]=(bufferTypeFloat)((bufferTypeFloat)in[i] / (bufferTypeFloat)scale);
		#ifdef DEBUG
		printf("I[%d] Fixed = %d to Float = %f\n", i, in[i], out[i]);		
		#endif
		i++;
	} 
	return NO_ERROR;
}

gnuRadioType::gnuRadioType()
{
	memset((void *)rfDataInt, 0, sizeof(rfDataInt));
	memset(rfData1,   0, sizeof(rfData1));
	memset(rfData2,   0, sizeof(rfData2));
	memset((void *)rfDataOut, 0, sizeof(rfDataOut));
	buff_size = 0;
	rfDataOutPtr = NULL;
	rfDataInPtr  = NULL;
	//gpp_dsp_buff = NULL;
}

void gnuRadioType::printFixedInt()
{
	
	int i=0;
	for (i = 0 ; i < ARRAY_SIZE ; i++) {
	    printf("orig %d \n", rfDataInt[i]);  
	}

}

int convolution(bufferType (&in1)[MAX_SIZE], int length1, bufferType (&in2)[MAX_SIZE], int length2, bufferType (&out)[MAX_SIZE])
{
	int i=0,j=0;
	for (i=0; i < length1+length2-1; i++)
	{
		for (j=0; j<length1; j++)
		{
			if (i-j >= 0)
			{
				out[i] = out[i] + in1[j]*in2[i-j];
				//printf("i=%d j=%d i-j=%d out=%d\n", i, j, i-j, out[i]);
			}
		}
	}
	return 1;
}

int square(bufferType* in1, int length1, bufferType* out)
{
	int i=0;
	#pragma MUST_ITERATE(10,10)
	for (i=0; i < length1; i++)
	{
		out[i] = in1[i]*in1[i];
	}
	return 1;

}

