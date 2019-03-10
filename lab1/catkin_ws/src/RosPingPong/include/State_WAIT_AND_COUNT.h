//
// State_WAIT_AND_COUNT.h
//
// Automatically created through MiCASE -- do not change manually!
//
#ifndef clfsm_RosPingPong_State_WAIT_AND_COUNT_h
#define clfsm_RosPingPong_State_WAIT_AND_COUNT_h

#include "CLState.h"
#include "CLAction.h"
#include "CLTransition.h"

namespace FSM
{
    namespace CLM
    {
      namespace FSMRosPingPong
      {
        namespace State
        {
            class WAIT_AND_COUNT: public CLState
            {
                class OnEntry: public CLAction
                {
                    virtual void perform(CLMachine *, CLState *) const;
                };

                class OnExit: public CLAction
                {
                    virtual void perform(CLMachine *, CLState *) const;
                };

                class Internal: public CLAction
                {
                    virtual void perform(CLMachine *, CLState *) const;
                };

                class Transition_0: public CLTransition
                {
                public:
                    Transition_0(int toState = 3): CLTransition(toState) {}

                    virtual bool check(CLMachine *, CLState *) const;
                };

                class Transition_1: public CLTransition
                {
                public:
                    Transition_1(int toState = 1): CLTransition(toState) {}

                    virtual bool check(CLMachine *, CLState *) const;
                };

                CLTransition *_transitions[2];

                public:
                    WAIT_AND_COUNT(const char *name = "WAIT_AND_COUNT");
                    virtual ~WAIT_AND_COUNT();

                    virtual CLTransition * const *transitions() const { return _transitions; }
                    virtual int numberOfTransitions() const { return 2; }

#                   include "State_WAIT_AND_COUNT_Variables.h"
            };
        }
      }
    }
}

#endif
