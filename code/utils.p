/***************** Functions callable from any chare ****************/

StopSim(x)  
  int x;
{
  Stop_Sim_Msg *s;
  ChareIDType main_ch;

  CkPrintf("*** StopSim received for time = %d\n",x);
  if ((s = (Stop_Sim_Msg *)CkAllocMsg(sizeof(Stop_Sim_Msg))) == NULL)
    FatalError("Not enough memory to do StopSim\n");
  s->stoptime = x;
  MainChareID(&main_ch);
  SendMsg(main@ReceiveStop,s,&main_ch);
}

DoNothing(w,x,y,z)  { }

FatalError(w,x,y,z)  {   /* print error message and exit */
  CkPrintf("*** FATAL ERROR *** ");
  CkPrintf(w,x,y,z);
  CkExit();
  exit(-1);
}
