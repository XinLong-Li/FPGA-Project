#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_src_V_data_V "../tv/cdatafile/c.ORB_accel.autotvin_src_V_data_V.dat"
#define AUTOTB_TVOUT_src_V_data_V "../tv/cdatafile/c.ORB_accel.autotvout_src_V_data_V.dat"
#define AUTOTB_TVIN_src_V_keep_V "../tv/cdatafile/c.ORB_accel.autotvin_src_V_keep_V.dat"
#define AUTOTB_TVOUT_src_V_keep_V "../tv/cdatafile/c.ORB_accel.autotvout_src_V_keep_V.dat"
#define AUTOTB_TVIN_src_V_strb_V "../tv/cdatafile/c.ORB_accel.autotvin_src_V_strb_V.dat"
#define AUTOTB_TVOUT_src_V_strb_V "../tv/cdatafile/c.ORB_accel.autotvout_src_V_strb_V.dat"
#define AUTOTB_TVIN_src_V_user_V "../tv/cdatafile/c.ORB_accel.autotvin_src_V_user_V.dat"
#define AUTOTB_TVOUT_src_V_user_V "../tv/cdatafile/c.ORB_accel.autotvout_src_V_user_V.dat"
#define AUTOTB_TVIN_src_V_last_V "../tv/cdatafile/c.ORB_accel.autotvin_src_V_last_V.dat"
#define AUTOTB_TVOUT_src_V_last_V "../tv/cdatafile/c.ORB_accel.autotvout_src_V_last_V.dat"
#define AUTOTB_TVIN_src_V_id_V "../tv/cdatafile/c.ORB_accel.autotvin_src_V_id_V.dat"
#define AUTOTB_TVOUT_src_V_id_V "../tv/cdatafile/c.ORB_accel.autotvout_src_V_id_V.dat"
#define AUTOTB_TVIN_src_V_dest_V "../tv/cdatafile/c.ORB_accel.autotvin_src_V_dest_V.dat"
#define AUTOTB_TVOUT_src_V_dest_V "../tv/cdatafile/c.ORB_accel.autotvout_src_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_IN_src_V_data_V "../tv/stream_size/stream_size_in_src_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_src_V_data_V "../tv/stream_size/stream_ingress_status_src_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_src_V_keep_V "../tv/stream_size/stream_size_in_src_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_src_V_keep_V "../tv/stream_size/stream_ingress_status_src_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_src_V_strb_V "../tv/stream_size/stream_size_in_src_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_src_V_strb_V "../tv/stream_size/stream_ingress_status_src_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_src_V_user_V "../tv/stream_size/stream_size_in_src_V_user_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_src_V_user_V "../tv/stream_size/stream_ingress_status_src_V_user_V.dat"
#define WRAPC_STREAM_SIZE_IN_src_V_last_V "../tv/stream_size/stream_size_in_src_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_src_V_last_V "../tv/stream_size/stream_ingress_status_src_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_src_V_id_V "../tv/stream_size/stream_size_in_src_V_id_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_src_V_id_V "../tv/stream_size/stream_ingress_status_src_V_id_V.dat"
#define WRAPC_STREAM_SIZE_IN_src_V_dest_V "../tv/stream_size/stream_size_in_src_V_dest_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_src_V_dest_V "../tv/stream_size/stream_ingress_status_src_V_dest_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_dst_V_data_V "../tv/cdatafile/c.ORB_accel.autotvin_dst_V_data_V.dat"
#define AUTOTB_TVOUT_dst_V_data_V "../tv/cdatafile/c.ORB_accel.autotvout_dst_V_data_V.dat"
#define AUTOTB_TVIN_dst_V_keep_V "../tv/cdatafile/c.ORB_accel.autotvin_dst_V_keep_V.dat"
#define AUTOTB_TVOUT_dst_V_keep_V "../tv/cdatafile/c.ORB_accel.autotvout_dst_V_keep_V.dat"
#define AUTOTB_TVIN_dst_V_strb_V "../tv/cdatafile/c.ORB_accel.autotvin_dst_V_strb_V.dat"
#define AUTOTB_TVOUT_dst_V_strb_V "../tv/cdatafile/c.ORB_accel.autotvout_dst_V_strb_V.dat"
#define AUTOTB_TVIN_dst_V_user_V "../tv/cdatafile/c.ORB_accel.autotvin_dst_V_user_V.dat"
#define AUTOTB_TVOUT_dst_V_user_V "../tv/cdatafile/c.ORB_accel.autotvout_dst_V_user_V.dat"
#define AUTOTB_TVIN_dst_V_last_V "../tv/cdatafile/c.ORB_accel.autotvin_dst_V_last_V.dat"
#define AUTOTB_TVOUT_dst_V_last_V "../tv/cdatafile/c.ORB_accel.autotvout_dst_V_last_V.dat"
#define AUTOTB_TVIN_dst_V_id_V "../tv/cdatafile/c.ORB_accel.autotvin_dst_V_id_V.dat"
#define AUTOTB_TVOUT_dst_V_id_V "../tv/cdatafile/c.ORB_accel.autotvout_dst_V_id_V.dat"
#define AUTOTB_TVIN_dst_V_dest_V "../tv/cdatafile/c.ORB_accel.autotvin_dst_V_dest_V.dat"
#define AUTOTB_TVOUT_dst_V_dest_V "../tv/cdatafile/c.ORB_accel.autotvout_dst_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_OUT_dst_V_data_V "../tv/stream_size/stream_size_out_dst_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_dst_V_data_V "../tv/stream_size/stream_egress_status_dst_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_dst_V_keep_V "../tv/stream_size/stream_size_out_dst_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_dst_V_keep_V "../tv/stream_size/stream_egress_status_dst_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_dst_V_strb_V "../tv/stream_size/stream_size_out_dst_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_dst_V_strb_V "../tv/stream_size/stream_egress_status_dst_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_dst_V_user_V "../tv/stream_size/stream_size_out_dst_V_user_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_dst_V_user_V "../tv/stream_size/stream_egress_status_dst_V_user_V.dat"
#define WRAPC_STREAM_SIZE_OUT_dst_V_last_V "../tv/stream_size/stream_size_out_dst_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_dst_V_last_V "../tv/stream_size/stream_egress_status_dst_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_dst_V_id_V "../tv/stream_size/stream_size_out_dst_V_id_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_dst_V_id_V "../tv/stream_size/stream_egress_status_dst_V_id_V.dat"
#define WRAPC_STREAM_SIZE_OUT_dst_V_dest_V "../tv/stream_size/stream_size_out_dst_V_dest_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_dst_V_dest_V "../tv/stream_size/stream_egress_status_dst_V_dest_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_height "../tv/cdatafile/c.ORB_accel.autotvin_height.dat"
#define AUTOTB_TVOUT_height "../tv/cdatafile/c.ORB_accel.autotvout_height.dat"
// wrapc file define:
#define AUTOTB_TVIN_width "../tv/cdatafile/c.ORB_accel.autotvin_width.dat"
#define AUTOTB_TVOUT_width "../tv/cdatafile/c.ORB_accel.autotvout_width.dat"
// wrapc file define:
#define AUTOTB_TVIN_height_new "../tv/cdatafile/c.ORB_accel.autotvin_height_new.dat"
#define AUTOTB_TVOUT_height_new "../tv/cdatafile/c.ORB_accel.autotvout_height_new.dat"
// wrapc file define:
#define AUTOTB_TVIN_width_new "../tv/cdatafile/c.ORB_accel.autotvin_width_new.dat"
#define AUTOTB_TVOUT_width_new "../tv/cdatafile/c.ORB_accel.autotvout_width_new.dat"
// wrapc file define:
#define AUTOTB_TVIN_threshold "../tv/cdatafile/c.ORB_accel.autotvin_threshold.dat"
#define AUTOTB_TVOUT_threshold "../tv/cdatafile/c.ORB_accel.autotvout_threshold.dat"
// wrapc file define:
#define AUTOTB_TVOUT_return "../tv/cdatafile/c.ORB_accel.autotvout_ap_return.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_src_V_data_V "../tv/rtldatafile/rtl.ORB_accel.autotvout_src_V_data_V.dat"
#define AUTOTB_TVOUT_PC_src_V_keep_V "../tv/rtldatafile/rtl.ORB_accel.autotvout_src_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_src_V_strb_V "../tv/rtldatafile/rtl.ORB_accel.autotvout_src_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_src_V_user_V "../tv/rtldatafile/rtl.ORB_accel.autotvout_src_V_user_V.dat"
#define AUTOTB_TVOUT_PC_src_V_last_V "../tv/rtldatafile/rtl.ORB_accel.autotvout_src_V_last_V.dat"
#define AUTOTB_TVOUT_PC_src_V_id_V "../tv/rtldatafile/rtl.ORB_accel.autotvout_src_V_id_V.dat"
#define AUTOTB_TVOUT_PC_src_V_dest_V "../tv/rtldatafile/rtl.ORB_accel.autotvout_src_V_dest_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_dst_V_data_V "../tv/rtldatafile/rtl.ORB_accel.autotvout_dst_V_data_V.dat"
#define AUTOTB_TVOUT_PC_dst_V_keep_V "../tv/rtldatafile/rtl.ORB_accel.autotvout_dst_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_dst_V_strb_V "../tv/rtldatafile/rtl.ORB_accel.autotvout_dst_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_dst_V_user_V "../tv/rtldatafile/rtl.ORB_accel.autotvout_dst_V_user_V.dat"
#define AUTOTB_TVOUT_PC_dst_V_last_V "../tv/rtldatafile/rtl.ORB_accel.autotvout_dst_V_last_V.dat"
#define AUTOTB_TVOUT_PC_dst_V_id_V "../tv/rtldatafile/rtl.ORB_accel.autotvout_dst_V_id_V.dat"
#define AUTOTB_TVOUT_PC_dst_V_dest_V "../tv/rtldatafile/rtl.ORB_accel.autotvout_dst_V_dest_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_height "../tv/rtldatafile/rtl.ORB_accel.autotvout_height.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_width "../tv/rtldatafile/rtl.ORB_accel.autotvout_width.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_height_new "../tv/rtldatafile/rtl.ORB_accel.autotvout_height_new.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_width_new "../tv/rtldatafile/rtl.ORB_accel.autotvout_width_new.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_threshold "../tv/rtldatafile/rtl.ORB_accel.autotvout_threshold.dat"
#define AUTOTB_TVOUT_PC_return "../tv/rtldatafile/rtl.ORB_accel.autotvout_ap_return.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  src_V_data_V_depth = 0;
  src_V_keep_V_depth = 0;
  src_V_strb_V_depth = 0;
  src_V_user_V_depth = 0;
  src_V_last_V_depth = 0;
  src_V_id_V_depth = 0;
  src_V_dest_V_depth = 0;
  dst_V_data_V_depth = 0;
  dst_V_keep_V_depth = 0;
  dst_V_strb_V_depth = 0;
  dst_V_user_V_depth = 0;
  dst_V_last_V_depth = 0;
  dst_V_id_V_depth = 0;
  dst_V_dest_V_depth = 0;
  height_depth = 0;
  width_depth = 0;
  height_new_depth = 0;
  width_new_depth = 0;
  threshold_depth = 0;
  return_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{src_V_data_V " << src_V_data_V_depth << "}\n";
  total_list << "{src_V_keep_V " << src_V_keep_V_depth << "}\n";
  total_list << "{src_V_strb_V " << src_V_strb_V_depth << "}\n";
  total_list << "{src_V_user_V " << src_V_user_V_depth << "}\n";
  total_list << "{src_V_last_V " << src_V_last_V_depth << "}\n";
  total_list << "{src_V_id_V " << src_V_id_V_depth << "}\n";
  total_list << "{src_V_dest_V " << src_V_dest_V_depth << "}\n";
  total_list << "{dst_V_data_V " << dst_V_data_V_depth << "}\n";
  total_list << "{dst_V_keep_V " << dst_V_keep_V_depth << "}\n";
  total_list << "{dst_V_strb_V " << dst_V_strb_V_depth << "}\n";
  total_list << "{dst_V_user_V " << dst_V_user_V_depth << "}\n";
  total_list << "{dst_V_last_V " << dst_V_last_V_depth << "}\n";
  total_list << "{dst_V_id_V " << dst_V_id_V_depth << "}\n";
  total_list << "{dst_V_dest_V " << dst_V_dest_V_depth << "}\n";
  total_list << "{height " << height_depth << "}\n";
  total_list << "{width " << width_depth << "}\n";
  total_list << "{height_new " << height_new_depth << "}\n";
  total_list << "{width_new " << width_new_depth << "}\n";
  total_list << "{threshold " << threshold_depth << "}\n";
  total_list << "{ap_return " << return_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int src_V_data_V_depth;
    int src_V_keep_V_depth;
    int src_V_strb_V_depth;
    int src_V_user_V_depth;
    int src_V_last_V_depth;
    int src_V_id_V_depth;
    int src_V_dest_V_depth;
    int dst_V_data_V_depth;
    int dst_V_keep_V_depth;
    int dst_V_strb_V_depth;
    int dst_V_user_V_depth;
    int dst_V_last_V_depth;
    int dst_V_id_V_depth;
    int dst_V_dest_V_depth;
    int height_depth;
    int width_depth;
    int height_new_depth;
    int width_new_depth;
    int threshold_depth;
    int return_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
struct __cosim_s7__ { char data[7]; };
struct __cosim_s80__ { char data[128]; };
struct __cosim_s25__ { char data[128]; };
extern "C" int ORB_accel_hw_stub_wrapper(volatile void *, volatile void *, int, int, int, int, int);

extern "C" int apatb_ORB_accel_hw(volatile void * __xlx_apatb_param_src, volatile void * __xlx_apatb_param_dst, int __xlx_apatb_param_height, int __xlx_apatb_param_width, int __xlx_apatb_param_height_new, int __xlx_apatb_param_width_new, int __xlx_apatb_param_threshold) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
    int AESL_return;
    {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_return);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > return_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "return");
  
            // push token into output port buffer
            if (AESL_token != "") {
              return_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((int*)&AESL_return)[0] = return_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_src_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_src_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_src_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_src_stream_buf_final_size; ++i)((hls::stream<__cosim_s7__>*)__xlx_apatb_param_src)->read();
{sc_bv<1024> xlx_stream_dst_pc_buffer;
unsigned xlx_stream_dst_size = 0;

          std::vector<sc_bv<296> > dst_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_dst_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<296> > dst_V_data_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "dst");
  
            // push token into output port buffer
            if (AESL_token != "") {
              dst_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_dst_size=dst_V_data_V_pc_buffer.size();
dst_V_data_V_pc_buffer_Copy=dst_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<296> > dst_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_dst_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<296> > dst_V_keep_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "dst");
  
            // push token into output port buffer
            if (AESL_token != "") {
              dst_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_dst_size=dst_V_keep_V_pc_buffer.size();
dst_V_keep_V_pc_buffer_Copy=dst_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<296> > dst_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_dst_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<296> > dst_V_strb_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "dst");
  
            // push token into output port buffer
            if (AESL_token != "") {
              dst_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_dst_size=dst_V_strb_V_pc_buffer.size();
dst_V_strb_V_pc_buffer_Copy=dst_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<296> > dst_V_user_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_dst_V_user_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<296> > dst_V_user_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "dst");
  
            // push token into output port buffer
            if (AESL_token != "") {
              dst_V_user_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_dst_size=dst_V_user_V_pc_buffer.size();
dst_V_user_V_pc_buffer_Copy=dst_V_user_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<296> > dst_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_dst_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<296> > dst_V_last_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "dst");
  
            // push token into output port buffer
            if (AESL_token != "") {
              dst_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_dst_size=dst_V_last_V_pc_buffer.size();
dst_V_last_V_pc_buffer_Copy=dst_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<296> > dst_V_id_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_dst_V_id_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<296> > dst_V_id_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "dst");
  
            // push token into output port buffer
            if (AESL_token != "") {
              dst_V_id_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_dst_size=dst_V_id_V_pc_buffer.size();
dst_V_id_V_pc_buffer_Copy=dst_V_id_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<296> > dst_V_dest_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_dst_V_dest_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<296> > dst_V_dest_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "dst");
  
            // push token into output port buffer
            if (AESL_token != "") {
              dst_V_dest_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_dst_size=dst_V_dest_V_pc_buffer.size();
dst_V_dest_V_pc_buffer_Copy=dst_V_dest_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_dst_size; j != e; ++j) {
xlx_stream_dst_pc_buffer.range(511, 0) = dst_V_data_V_pc_buffer_Copy[j];
xlx_stream_dst_pc_buffer.range(575, 512) = dst_V_keep_V_pc_buffer_Copy[j];
xlx_stream_dst_pc_buffer.range(639, 576) = dst_V_strb_V_pc_buffer_Copy[j];
xlx_stream_dst_pc_buffer.range(647, 640) = dst_V_user_V_pc_buffer_Copy[j];
xlx_stream_dst_pc_buffer.range(655, 648) = dst_V_last_V_pc_buffer_Copy[j];
xlx_stream_dst_pc_buffer.range(663, 656) = dst_V_id_V_pc_buffer_Copy[j];
xlx_stream_dst_pc_buffer.range(1023, 664) = dst_V_dest_V_pc_buffer_Copy[j];
__cosim_s80__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*16+0] = xlx_stream_dst_pc_buffer.range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*16+1] = xlx_stream_dst_pc_buffer.range(127,64).to_int64();
((long long*)&xlx_stream_elt)[0*16+2] = xlx_stream_dst_pc_buffer.range(191,128).to_int64();
((long long*)&xlx_stream_elt)[0*16+3] = xlx_stream_dst_pc_buffer.range(255,192).to_int64();
((long long*)&xlx_stream_elt)[0*16+4] = xlx_stream_dst_pc_buffer.range(319,256).to_int64();
((long long*)&xlx_stream_elt)[0*16+5] = xlx_stream_dst_pc_buffer.range(383,320).to_int64();
((long long*)&xlx_stream_elt)[0*16+6] = xlx_stream_dst_pc_buffer.range(447,384).to_int64();
((long long*)&xlx_stream_elt)[0*16+7] = xlx_stream_dst_pc_buffer.range(511,448).to_int64();
((long long*)&xlx_stream_elt)[0*16+8] = xlx_stream_dst_pc_buffer.range(575,512).to_int64();
((long long*)&xlx_stream_elt)[0*16+9] = xlx_stream_dst_pc_buffer.range(639,576).to_int64();
((long long*)&xlx_stream_elt)[0*16+10] = xlx_stream_dst_pc_buffer.range(703,640).to_int64();
((long long*)&xlx_stream_elt)[0*16+11] = xlx_stream_dst_pc_buffer.range(767,704).to_int64();
((long long*)&xlx_stream_elt)[0*16+12] = xlx_stream_dst_pc_buffer.range(831,768).to_int64();
((long long*)&xlx_stream_elt)[0*16+13] = xlx_stream_dst_pc_buffer.range(895,832).to_int64();
((long long*)&xlx_stream_elt)[0*16+14] = xlx_stream_dst_pc_buffer.range(959,896).to_int64();
((long long*)&xlx_stream_elt)[0*16+15] = xlx_stream_dst_pc_buffer.range(1023,960).to_int64();
((hls::stream<__cosim_s80__>*)__xlx_apatb_param_dst)->write(xlx_stream_elt);
}}
    AESL_transaction_pc++;
    return  AESL_return;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//src
aesl_fh.touch(AUTOTB_TVIN_src_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_src_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_src_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_src_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_src_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_src_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_src_V_user_V);
aesl_fh.touch(AUTOTB_TVOUT_src_V_user_V);
aesl_fh.touch(AUTOTB_TVIN_src_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_src_V_last_V);
aesl_fh.touch(AUTOTB_TVIN_src_V_id_V);
aesl_fh.touch(AUTOTB_TVOUT_src_V_id_V);
aesl_fh.touch(AUTOTB_TVIN_src_V_dest_V);
aesl_fh.touch(AUTOTB_TVOUT_src_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_src_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_src_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_src_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_src_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_src_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_src_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_src_V_user_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_src_V_user_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_src_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_src_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_src_V_id_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_src_V_id_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_src_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_src_V_dest_V);
//dst
aesl_fh.touch(AUTOTB_TVIN_dst_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_dst_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_dst_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_dst_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_dst_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_dst_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_dst_V_user_V);
aesl_fh.touch(AUTOTB_TVOUT_dst_V_user_V);
aesl_fh.touch(AUTOTB_TVIN_dst_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_dst_V_last_V);
aesl_fh.touch(AUTOTB_TVIN_dst_V_id_V);
aesl_fh.touch(AUTOTB_TVOUT_dst_V_id_V);
aesl_fh.touch(AUTOTB_TVIN_dst_V_dest_V);
aesl_fh.touch(AUTOTB_TVOUT_dst_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_dst_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_dst_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_dst_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_dst_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_dst_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_dst_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_dst_V_user_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_dst_V_user_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_dst_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_dst_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_dst_V_id_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_dst_V_id_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_dst_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_dst_V_dest_V);
//height
aesl_fh.touch(AUTOTB_TVIN_height);
aesl_fh.touch(AUTOTB_TVOUT_height);
//width
aesl_fh.touch(AUTOTB_TVIN_width);
aesl_fh.touch(AUTOTB_TVOUT_width);
//height_new
aesl_fh.touch(AUTOTB_TVIN_height_new);
aesl_fh.touch(AUTOTB_TVOUT_height_new);
//width_new
aesl_fh.touch(AUTOTB_TVIN_width_new);
aesl_fh.touch(AUTOTB_TVOUT_width_new);
//threshold
aesl_fh.touch(AUTOTB_TVIN_threshold);
aesl_fh.touch(AUTOTB_TVOUT_threshold);
CodeState = DUMP_INPUTS;
std::vector<__cosim_s7__> __xlx_apatb_param_src_stream_buf;
{
  while (!((hls::stream<__cosim_s7__>*)__xlx_apatb_param_src)->empty())
    __xlx_apatb_param_src_stream_buf.push_back(((hls::stream<__cosim_s7__>*)__xlx_apatb_param_src)->read());
  for (int i = 0; i < __xlx_apatb_param_src_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s7__>*)__xlx_apatb_param_src)->write(__xlx_apatb_param_src_stream_buf[i]);
  }
long __xlx_apatb_param_src_stream_buf_size = ((hls::stream<__cosim_s7__>*)__xlx_apatb_param_src)->size();
std::vector<__cosim_s80__> __xlx_apatb_param_dst_stream_buf;
long __xlx_apatb_param_dst_stream_buf_size = ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_dst)->size();
// print height Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_height, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_height);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_height, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.height_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_height, __xlx_sprintf_buffer.data());
}
// print width Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_width, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_width);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_width, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.width_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_width, __xlx_sprintf_buffer.data());
}
// print height_new Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_height_new, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_height_new);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_height_new, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.height_new_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_height_new, __xlx_sprintf_buffer.data());
}
// print width_new Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_width_new, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_width_new);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_width_new, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.width_new_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_width_new, __xlx_sprintf_buffer.data());
}
// print threshold Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_threshold, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_threshold);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_threshold, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.threshold_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_threshold, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
int ap_return = ORB_accel_hw_stub_wrapper(__xlx_apatb_param_src, __xlx_apatb_param_dst, __xlx_apatb_param_height, __xlx_apatb_param_width, __xlx_apatb_param_height_new, __xlx_apatb_param_width_new, __xlx_apatb_param_threshold);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_src_stream_buf_final_size = __xlx_apatb_param_src_stream_buf_size - ((hls::stream<__cosim_s7__>*)__xlx_apatb_param_src)->size();

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_src_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_src_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_src_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_src_V_user_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_src_V_last_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_src_V_id_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_src_V_dest_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_src_stream_buf_final_size; j != e; ++j) {
sc_bv<56> __xlx_tmp_lv = ((long long*)&__xlx_apatb_param_src_stream_buf[j])[0];
sc_bv<8> __xlx_tmp_0_lv = __xlx_tmp_lv.range(7, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_src_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_1_lv = __xlx_tmp_lv.range(15, 8);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_src_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_2_lv = __xlx_tmp_lv.range(23, 16);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_src_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_3_lv = __xlx_tmp_lv.range(31, 24);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_3_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_src_V_user_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(39, 32);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_src_V_last_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_5_lv = __xlx_tmp_lv.range(47, 40);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_5_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_src_V_id_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_6_lv = __xlx_tmp_lv.range(55, 48);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_6_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_src_V_dest_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_src_stream_buf_final_size, &tcl_file.src_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_src_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_src_stream_buf_final_size, &tcl_file.src_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_src_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_src_stream_buf_final_size, &tcl_file.src_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_src_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_src_stream_buf_final_size, &tcl_file.src_V_user_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_src_V_user_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_src_stream_buf_final_size, &tcl_file.src_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_src_V_last_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_src_stream_buf_final_size, &tcl_file.src_V_id_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_src_V_id_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_src_stream_buf_final_size, &tcl_file.src_V_dest_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_src_V_dest_V, __xlx_sprintf_buffer.data());

// dump stream ingress status to file

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_data_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_src_stream_buf_final_size > 0) {
  long src_V_data_V_stream_ingress_size = __xlx_apatb_param_src_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_src_stream_buf_final_size; j != e; j++) {
    src_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long src_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_data_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_data_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_keep_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_src_stream_buf_final_size > 0) {
  long src_V_keep_V_stream_ingress_size = __xlx_apatb_param_src_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_src_stream_buf_final_size; j != e; j++) {
    src_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long src_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_keep_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_keep_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_strb_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_src_stream_buf_final_size > 0) {
  long src_V_strb_V_stream_ingress_size = __xlx_apatb_param_src_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_src_stream_buf_final_size; j != e; j++) {
    src_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long src_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_strb_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_strb_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_user_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_src_stream_buf_final_size > 0) {
  long src_V_user_V_stream_ingress_size = __xlx_apatb_param_src_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_user_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_src_stream_buf_final_size; j != e; j++) {
    src_V_user_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_user_V, __xlx_sprintf_buffer.data());
  }
} else {
  long src_V_user_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_user_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_user_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_last_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_src_stream_buf_final_size > 0) {
  long src_V_last_V_stream_ingress_size = __xlx_apatb_param_src_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_src_stream_buf_final_size; j != e; j++) {
    src_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long src_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_last_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_last_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_id_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_src_stream_buf_final_size > 0) {
  long src_V_id_V_stream_ingress_size = __xlx_apatb_param_src_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_id_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_src_stream_buf_final_size; j != e; j++) {
    src_V_id_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_id_V, __xlx_sprintf_buffer.data());
  }
} else {
  long src_V_id_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_id_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_id_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_dest_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_src_stream_buf_final_size > 0) {
  long src_V_dest_V_stream_ingress_size = __xlx_apatb_param_src_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_dest_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_src_stream_buf_final_size; j != e; j++) {
    src_V_dest_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_dest_V, __xlx_sprintf_buffer.data());
  }
} else {
  long src_V_dest_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_dest_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_dest_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_src_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_src_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_src_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_user_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_src_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_user_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_user_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_src_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_id_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_src_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_id_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_id_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_dest_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_src_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_dest_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_dest_V, __xlx_sprintf_buffer.data());
}
//********************** dump C output stream *******************
long __xlx_apatb_param_dst_stream_buf_final_size = ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_dst)->size() - __xlx_apatb_param_dst_stream_buf_size;
{
  while (!((hls::stream<__cosim_s80__>*)__xlx_apatb_param_dst)->empty())
    __xlx_apatb_param_dst_stream_buf.push_back(((hls::stream<__cosim_s80__>*)__xlx_apatb_param_dst)->read());
  for (int i = 0; i < __xlx_apatb_param_dst_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_dst)->write(__xlx_apatb_param_dst_stream_buf[i]);
  }

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_dst_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_dst_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_dst_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_dst_V_user_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_dst_V_last_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_dst_V_id_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_dst_V_dest_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_dst_stream_buf_final_size; j != e; ++j) {
sc_bv<1024> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_dst_stream_buf[__xlx_apatb_param_dst_stream_buf_size+j])[0*16+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_dst_stream_buf[__xlx_apatb_param_dst_stream_buf_size+j])[0*16+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_dst_stream_buf[__xlx_apatb_param_dst_stream_buf_size+j])[0*16+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_dst_stream_buf[__xlx_apatb_param_dst_stream_buf_size+j])[0*16+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_dst_stream_buf[__xlx_apatb_param_dst_stream_buf_size+j])[0*16+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_dst_stream_buf[__xlx_apatb_param_dst_stream_buf_size+j])[0*16+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_dst_stream_buf[__xlx_apatb_param_dst_stream_buf_size+j])[0*16+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_dst_stream_buf[__xlx_apatb_param_dst_stream_buf_size+j])[0*16+7];
__xlx_tmp_lv.range(575,512) = ((long long*)&__xlx_apatb_param_dst_stream_buf[__xlx_apatb_param_dst_stream_buf_size+j])[0*16+8];
__xlx_tmp_lv.range(639,576) = ((long long*)&__xlx_apatb_param_dst_stream_buf[__xlx_apatb_param_dst_stream_buf_size+j])[0*16+9];
__xlx_tmp_lv.range(703,640) = ((long long*)&__xlx_apatb_param_dst_stream_buf[__xlx_apatb_param_dst_stream_buf_size+j])[0*16+10];
__xlx_tmp_lv.range(767,704) = ((long long*)&__xlx_apatb_param_dst_stream_buf[__xlx_apatb_param_dst_stream_buf_size+j])[0*16+11];
__xlx_tmp_lv.range(831,768) = ((long long*)&__xlx_apatb_param_dst_stream_buf[__xlx_apatb_param_dst_stream_buf_size+j])[0*16+12];
__xlx_tmp_lv.range(895,832) = ((long long*)&__xlx_apatb_param_dst_stream_buf[__xlx_apatb_param_dst_stream_buf_size+j])[0*16+13];
__xlx_tmp_lv.range(959,896) = ((long long*)&__xlx_apatb_param_dst_stream_buf[__xlx_apatb_param_dst_stream_buf_size+j])[0*16+14];
__xlx_tmp_lv.range(1023,960) = ((long long*)&__xlx_apatb_param_dst_stream_buf[__xlx_apatb_param_dst_stream_buf_size+j])[0*16+15];
sc_bv<296> __xlx_tmp_0_lv = __xlx_tmp_lv.range(295, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_dst_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<40> __xlx_tmp_1_lv = __xlx_tmp_lv.range(551, 512);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_dst_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<40> __xlx_tmp_2_lv = __xlx_tmp_lv.range(615, 576);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_dst_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_3_lv = __xlx_tmp_lv.range(647, 640);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_3_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_dst_V_user_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(655, 648);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_dst_V_last_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_5_lv = __xlx_tmp_lv.range(663, 656);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_5_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_dst_V_id_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_6_lv = __xlx_tmp_lv.range(671, 664);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_6_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_dst_V_dest_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_dst_stream_buf_final_size, &tcl_file.dst_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_dst_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_dst_stream_buf_final_size, &tcl_file.dst_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_dst_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_dst_stream_buf_final_size, &tcl_file.dst_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_dst_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_dst_stream_buf_final_size, &tcl_file.dst_V_user_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_dst_V_user_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_dst_stream_buf_final_size, &tcl_file.dst_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_dst_V_last_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_dst_stream_buf_final_size, &tcl_file.dst_V_id_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_dst_V_id_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_dst_stream_buf_final_size, &tcl_file.dst_V_dest_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_dst_V_dest_V, __xlx_sprintf_buffer.data());
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_dst_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_dst_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_dst_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_user_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_dst_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_user_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_user_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_dst_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_id_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_dst_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_id_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_id_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_dest_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_dst_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_dest_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_dest_V, __xlx_sprintf_buffer.data());
}// print return Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_return, __xlx_sprintf_buffer.data());
  sc_bv<32> __xlx_tmp_lv = ((int*)&ap_return)[0];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_return, __xlx_sprintf_buffer.data()); 
  
  tcl_file.set_num(1, &tcl_file.return_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_return, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
return ap_return;
}
