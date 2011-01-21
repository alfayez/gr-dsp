#include <stdio.h>
#include <string>
#include <math.h>
#include <complex>

#ifndef GNURADIO_BEAGLEBOARD_DSP_H
#define GNURADIO_BEAGLEBOARD_DSP_H

//#define MAX_SIZE	4096
//#define MAX_SIZE	16384
//#define ARRAY_SIZE	4096
//#define FIR_SIZE	4096

#define MAX_SIZE	16384
//#define MAX_SIZE	25600
#define ARRAY_SIZE	4096
//#define FIR_SIZE	4096
#define FIR_SIZE	4096
//#define ARRAY_SIZE	7680
//#define FIR_SIZE	7680


#define DSP_BLOCK_TYPE_INDEX	0
#define DSP_BLOCK_ID_INDEX	1
#define SCALING_INDEX 		2
#define INTERPOLATION_INDEX 	3
#define DECIMATION_INDEX	4
#define COEFF_INDEX 		5


#define FIXED_FLOAT_SCALE 1
//#define DEBUG


//#define FLOATING_POINT	0
//#define FIXED_POINT	1

#if defined (__cplusplus)
extern "C" {
#endif /* defined (__cplusplus) */

typedef short bufferType;
//typedef float bufferTypeFloat;
typedef short bufferTypeFloat;
typedef std::complex<float>			gr_complex;
typedef std::complex<double>			gr_complexd;

enum	{
	NO_ERROR,
	ERROR_DSP_INIT,
	ERROR_DSP_PARAMETER,
	ERROR_FILE_NAME,
	ERROR_DSP_TX,
	ERROR_DSP_RX
	};

enum {
    FLOATING_POINT = 0,
    FIXED_POINT = 1
  };

enum {
    CCF_INIT    = 0,
    DSP_PROCESS = 1,
    CFF_FM_DEMOD_DECIM_INIT = 2,
    CFF_FM_DEMOD_DEEMPH_INIT = 3,
    CFF_FM_MOD_INIT = 4
  };

int dsp_init_function (std::string dsp_prog_name);
bool dsp_clean_function ();
//////////////////////////////////////////////////////////////////////////////////////
int transmit_data_dsp(const short *gpp_local, short &buff_size, bufferType &interp, bufferType &decim, bufferType &block_id);
int receive_data_dsp(short *gpp_local, short &buff_size, bufferType &block_id);

int transmit_data_dsp_fs(const float *gpp_local, short &buff_size, bufferType &scale, bufferType &input_sig, bufferType &output_sig, bufferType &interp, bufferType &decim, bufferType d_ntaps, bufferType &block_id);
int receive_data_dsp_fs(float *gpp_local, short &buff_size, bufferType &scale, bufferType &input_sig, bufferType &output_sig, bufferType &block_id);

int transmit_data_dsp_cs(const gr_complex *gpp_local0, short buff_size, bufferType &scale, bufferType &input_sig, bufferType &output_sig, bufferType &interp, bufferType &decim, short d_ntaps, bufferType &block_id);

int receive_data_dsp_cs(gr_complex *gpp_local0, short buff_size, bufferType &scale, bufferType &input_sig, bufferType &output_sig, bufferType &block_id);

int set_mutex();
int clear_mutex();


///////////////////////////////////////////////////////////////////////////////////////


//int dsp_init();



#if defined (__cplusplus)
}
#endif /* defined (__cplusplus) */

#endif
