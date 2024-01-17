#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_src_V_cap_bc;
static AESL_RUNTIME_BC __xlx_src_V_size_Reader("../tv/stream_size/stream_size_in_src_V.dat");
unsigned int ap_apatb_dst_V_cap_bc;
static AESL_RUNTIME_BC __xlx_dst_V_size_Reader("../tv/stream_size/stream_size_out_dst_V.dat");
struct __cosim_s7__ { char data[7]; };
struct __cosim_s80__ { char data[128]; };
struct __cosim_s25__ { char data[37]; };
extern "C" int ORB_accel(__cosim_s7__*, __cosim_s80__*, int, int, int, int, int);
extern "C" int apatb_ORB_accel_hw(volatile void * __xlx_apatb_param_src, volatile void * __xlx_apatb_param_dst, int __xlx_apatb_param_height, int __xlx_apatb_param_width, int __xlx_apatb_param_height_new, int __xlx_apatb_param_width_new, int __xlx_apatb_param_threshold) {
  // collect __xlx_src_tmp_vec
  unsigned __xlx_src_V_tmp_Count = 0;
  unsigned __xlx_src_V_read_Size = __xlx_src_V_size_Reader.read_size();
  vector<__cosim_s7__> __xlx_src_tmp_vec;
  while (!((hls::stream<__cosim_s7__>*)__xlx_apatb_param_src)->empty() && __xlx_src_V_tmp_Count < __xlx_src_V_read_Size) {
    __xlx_src_tmp_vec.push_back(((hls::stream<__cosim_s7__>*)__xlx_apatb_param_src)->read());
    __xlx_src_V_tmp_Count++;
  }
  ap_apatb_src_V_cap_bc = __xlx_src_tmp_vec.size();
  // store input buffer
  __cosim_s7__* __xlx_src_input_buffer= new __cosim_s7__[__xlx_src_tmp_vec.size()];
  for (int i = 0; i < __xlx_src_tmp_vec.size(); ++i) {
    __xlx_src_input_buffer[i] = __xlx_src_tmp_vec[i];
  }
  //Create input buffer for dst
  ap_apatb_dst_V_cap_bc = __xlx_dst_V_size_Reader.read_size();
  __cosim_s80__* __xlx_dst_input_buffer= new __cosim_s80__[ap_apatb_dst_V_cap_bc];
  // DUT call
  int ap_return = ORB_accel(__xlx_src_input_buffer, __xlx_dst_input_buffer, __xlx_apatb_param_height, __xlx_apatb_param_width, __xlx_apatb_param_height_new, __xlx_apatb_param_width_new, __xlx_apatb_param_threshold);
  for (unsigned i = 0; i <ap_apatb_dst_V_cap_bc; ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_dst)->write(__xlx_dst_input_buffer[i]);
return ap_return;
}
