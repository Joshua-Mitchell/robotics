//
// State_WAIT_AND_COUNT.mm
//
// Automatically created through MiCASE -- do not change manually!
//
#include "RosPingPong_Includes.h"
#include "RosPingPong.h"
#include "State_WAIT_AND_COUNT.h"

#include "State_WAIT_AND_COUNT_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMRosPingPong;
using namespace State;

WAIT_AND_COUNT::WAIT_AND_COUNT(const char *name): CLState(name, *new WAIT_AND_COUNT::OnEntry, *new WAIT_AND_COUNT::OnExit, *new WAIT_AND_COUNT::Internal)
{
	_transitions[0] = new Transition_0();
	_transitions[1] = new Transition_1();
}

WAIT_AND_COUNT::~WAIT_AND_COUNT()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

	delete _transitions[0];
	delete _transitions[1];
}

void WAIT_AND_COUNT::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "RosPingPong_VarRefs.mm"
#	include "State_WAIT_AND_COUNT_VarRefs.mm"
#	include "State_WAIT_AND_COUNT_OnEntry.mm"
}

void WAIT_AND_COUNT::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "RosPingPong_VarRefs.mm"
#	include "State_WAIT_AND_COUNT_VarRefs.mm"
#	include "State_WAIT_AND_COUNT_OnExit.mm"
}

void WAIT_AND_COUNT::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "RosPingPong_VarRefs.mm"
#	include "State_WAIT_AND_COUNT_VarRefs.mm"
#	include "State_WAIT_AND_COUNT_Internal.mm"
}

bool WAIT_AND_COUNT::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "RosPingPong_VarRefs.mm"
#	include "State_WAIT_AND_COUNT_VarRefs.mm"

	return
	(
#		include "State_WAIT_AND_COUNT_Transition_0.expr"
	);
}

bool WAIT_AND_COUNT::Transition_1::check(CLMachine *_machine, CLState *_state) const
{
#	include "RosPingPong_VarRefs.mm"
#	include "State_WAIT_AND_COUNT_VarRefs.mm"

	return
	(
#		include "State_WAIT_AND_COUNT_Transition_1.expr"
	);
}
