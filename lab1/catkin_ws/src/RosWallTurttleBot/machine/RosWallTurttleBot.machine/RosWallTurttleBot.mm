//
// RosWallTurttleBot.mm
//
// Automatically created through MiCASE -- do not change manually!
//
#include "RosWallTurttleBot_Includes.h"
#include "RosWallTurttleBot.h"

#include "State_Initial.h"
#include "State_STRAIGHT.h"
#include "State_TURN_RIGHT.h"
#include "State_END.h"
#include "State_STOP.h"
#include "State_TEST.h"
#include "State_BACK.h"

using namespace FSM;
using namespace CLM;

extern "C"
{
	RosWallTurttleBot *CLM_Create_RosWallTurttleBot(int mid, const char *name)
	{
		return new RosWallTurttleBot(mid, name);
	}
}

RosWallTurttleBot::RosWallTurttleBot(int mid, const char *name): CLMachine(mid, name)
{
	_states[0] = new FSMRosWallTurttleBot::State::Initial;
	_states[1] = new FSMRosWallTurttleBot::State::STRAIGHT;
	_states[2] = new FSMRosWallTurttleBot::State::TURN_RIGHT;
	_states[3] = new FSMRosWallTurttleBot::State::END;
	_states[4] = new FSMRosWallTurttleBot::State::STOP;
	_states[5] = new FSMRosWallTurttleBot::State::TEST;
	_states[6] = new FSMRosWallTurttleBot::State::BACK;

	setInitialState(_states[0]);            // set initial state
}

RosWallTurttleBot::~RosWallTurttleBot()
{
	delete _states[0];
	delete _states[1];
	delete _states[2];
	delete _states[3];
	delete _states[4];
	delete _states[5];
	delete _states[6];
}
