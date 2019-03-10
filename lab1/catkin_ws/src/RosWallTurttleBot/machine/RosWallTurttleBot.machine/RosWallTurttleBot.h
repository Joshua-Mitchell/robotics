//
// RosWallTurttleBot.h
//
// Automatically created through MiCASE -- do not change manually!
//
#ifndef __clfsm__RosWallTurttleBot__
#define __clfsm__RosWallTurttleBot__

#include "CLMachine.h"

namespace FSM
{
    class CLState;

    namespace CLM
    {
        class RosWallTurttleBot: public CLMachine
        {
            CLState *_states[7];
        public:
            RosWallTurttleBot(int mid  = 0, const char *name = "RosWallTurttleBot");
            virtual ~RosWallTurttleBot();
            virtual CLState * const * states() const { return _states; }
            virtual int numberOfStates() const { return 7; }
#           include "RosWallTurttleBot_Variables.h"
        };
    }
}

extern "C"
{
    FSM::CLM::RosWallTurttleBot *CLM_Create_RosWallTurttleBot(int mid, const char *name);
}

#endif // defined(__gufsm__RosWallTurttleBot__)
