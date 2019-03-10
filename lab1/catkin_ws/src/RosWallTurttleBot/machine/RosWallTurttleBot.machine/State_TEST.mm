//
// State_TEST.mm
//
// Automatically created through MiCASE -- do not change manually!
//
#include "RosWallTurttleBot_Includes.h"
#include "RosWallTurttleBot.h"
#include "State_TEST.h"

#include "State_TEST_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMRosWallTurttleBot;
using namespace State;

TEST::TEST(const char *name): CLState(name, *new TEST::OnEntry, *new TEST::OnExit, *new TEST::Internal)
{
	_transitions[0] = new Transition_0();
	_transitions[1] = new Transition_1();
	_transitions[2] = new Transition_2();
}

TEST::~TEST()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

	delete _transitions[0];
	delete _transitions[1];
	delete _transitions[2];
}

void TEST::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "RosWallTurttleBot_VarRefs.mm"
#	include "State_TEST_VarRefs.mm"
#	include "State_TEST_OnEntry.mm"
}

void TEST::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "RosWallTurttleBot_VarRefs.mm"
#	include "State_TEST_VarRefs.mm"
#	include "State_TEST_OnExit.mm"
}

void TEST::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "RosWallTurttleBot_VarRefs.mm"
#	include "State_TEST_VarRefs.mm"
#	include "State_TEST_Internal.mm"
}

bool TEST::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "RosWallTurttleBot_VarRefs.mm"
#	include "State_TEST_VarRefs.mm"

	return
	(
#		include "State_TEST_Transition_0.expr"
	);
}

bool TEST::Transition_1::check(CLMachine *_machine, CLState *_state) const
{
#	include "RosWallTurttleBot_VarRefs.mm"
#	include "State_TEST_VarRefs.mm"

	return
	(
#		include "State_TEST_Transition_1.expr"
	);
}

bool TEST::Transition_2::check(CLMachine *_machine, CLState *_state) const
{
#	include "RosWallTurttleBot_VarRefs.mm"
#	include "State_TEST_VarRefs.mm"

	return
	(
#		include "State_TEST_Transition_2.expr"
	);
}
