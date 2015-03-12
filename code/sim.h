/********************************************************************

  Function Prototypes and #defines file

**********************************************************************/

#define SIMLIMIT ((unsigned)~0 >> 1)   /* largest positive integer */
#define _TRUE 1
#define _FALSE 0
#ifdef DEBUG
#define debug CkPrintf
#else
#define debug DoNothing
#endif

/* "update your global timestep" message */

message {
  int new_time;
  ChareIDType parent;
} Update_Time_Msg;

/* state chares send their id's back to main chare */

message {
  ChareIDType MyCID;
  int statenum;
} StateCID_Msg;

message {
  int _notused_;
} Empty_Msg;

message {
  ChareIDType EventCID;
} EventCID_Msg;

message {
  int stoptime;
} Stop_Sim_Msg;
