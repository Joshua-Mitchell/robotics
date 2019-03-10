//
// RosPingPong.h
//
// Automatically created through MiCASE -- do not change manually!
//
#ifndef __clfsm__RosPingPong__
#define __clfsm__RosPingPong__

#include "CLMachine.h"

namespace FSM
{
    class CLState;

    namespace CLM
    {
        class RosPingPong: public CLMachine
        {
            CLState *_states[4];
        public:
            RosPingPong(int mid  = 0, const char *name = "RosPingPong");
            virtual ~RosPingPong();
            virtual CLState * const * states() const { return _states; }
            virtual int numberOfStates() const { return 4; }
#           include "RosPingPong_Variables.h"
        };
    }
}

extern "C"
{
    FSM::CLM::RosPingPong *CLM_Create_RosPingPong(int mid, const char *name);
}

#endif // defined(__gufsm__RosPingPong__)
