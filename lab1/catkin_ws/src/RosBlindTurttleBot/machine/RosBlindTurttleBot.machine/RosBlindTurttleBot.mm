//
// RosBlindTurttleBot.mm
//
// Automatically created through MiCASE -- do not change manually!
//
#include "RosBlindTurttleBot_Includes.h"
#include "RosBlindTurttleBot.h"

#include "State_Initial.h"
#include "State_STRAIGHT.h"
#include "State_TURN_RIGHT.h"
#include "State_END.h"

using namespace FSM;
using namespace CLM;

extern "C"
{
	RosBlindTurttleBot *CLM_Create_RosBlindTurttleBot(int mid, const char *name)
	{
		return new RosBlindTurttleBot(mid, name);
	}
}

RosBlindTurttleBot::RosBlindTurttleBot(int mid, const char *name): CLMachine(mid, name)
{
	_states[0] = new FSMRosBlindTurttleBot::State::Initial;
	_states[1] = new FSMRosBlindTurttleBot::State::STRAIGHT;
	_states[2] = new FSMRosBlindTurttleBot::State::TURN_RIGHT;
	_states[3] = new FSMRosBlindTurttleBot::State::END;

	setInitialState(_states[0]);            // set initial state
}

RosBlindTurttleBot::~RosBlindTurttleBot()
{
	delete _states[0];
	delete _states[1];
	delete _states[2];
	delete _states[3];
}
