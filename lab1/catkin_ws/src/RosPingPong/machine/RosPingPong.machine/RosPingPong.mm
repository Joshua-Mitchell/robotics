//
// RosPingPong.mm
//
// Automatically created through MiCASE -- do not change manually!
//
#include "RosPingPong_Includes.h"
#include "RosPingPong.h"

#include "State_Initial.h"
#include "State_Publish.h"
#include "State_WAIT_AND_COUNT.h"
#include "State_END.h"

using namespace FSM;
using namespace CLM;

extern "C"
{
	RosPingPong *CLM_Create_RosPingPong(int mid, const char *name)
	{
		return new RosPingPong(mid, name);
	}
}

RosPingPong::RosPingPong(int mid, const char *name): CLMachine(mid, name)
{
	_states[0] = new FSMRosPingPong::State::Initial;
	_states[1] = new FSMRosPingPong::State::Publish;
	_states[2] = new FSMRosPingPong::State::WAIT_AND_COUNT;
	_states[3] = new FSMRosPingPong::State::END;

	setInitialState(_states[0]);            // set initial state
}

RosPingPong::~RosPingPong()
{
	delete _states[0];
	delete _states[1];
	delete _states[2];
	delete _states[3];
}
