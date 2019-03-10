//
// RosBlindTurttleBot.h
//
// Automatically created through MiCASE -- do not change manually!
//
#ifndef __clfsm__RosBlindTurttleBot__
#define __clfsm__RosBlindTurttleBot__

#include "CLMachine.h"

namespace FSM
{
    class CLState;

    namespace CLM
    {
        class RosBlindTurttleBot: public CLMachine
        {
            CLState *_states[4];
        public:
            RosBlindTurttleBot(int mid  = 0, const char *name = "RosBlindTurttleBot");
            virtual ~RosBlindTurttleBot();
            virtual CLState * const * states() const { return _states; }
            virtual int numberOfStates() const { return 4; }
#           include "RosBlindTurttleBot_Variables.h"
        };
    }
}

extern "C"
{
    FSM::CLM::RosBlindTurttleBot *CLM_Create_RosBlindTurttleBot(int mid, const char *name);
}

#endif // defined(__gufsm__RosBlindTurttleBot__)
