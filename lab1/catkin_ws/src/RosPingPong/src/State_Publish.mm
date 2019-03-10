//
// State_Publish.mm
//
// Automatically created through MiCASE -- do not change manually!
//
#include "RosPingPong_Includes.h"
#include "RosPingPong.h"
#include "State_Publish.h"

#include "State_Publish_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMRosPingPong;
using namespace State;

Publish::Publish(const char *name): CLState(name, *new Publish::OnEntry, *new Publish::OnExit, *new Publish::Internal)
{
	_transitions[0] = new Transition_0();
	_transitions[1] = new Transition_1();
}

Publish::~Publish()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

	delete _transitions[0];
	delete _transitions[1];
}

void Publish::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "RosPingPong_VarRefs.mm"
#	include "State_Publish_VarRefs.mm"
#	include "State_Publish_OnEntry.mm"
}

void Publish::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "RosPingPong_VarRefs.mm"
#	include "State_Publish_VarRefs.mm"
#	include "State_Publish_OnExit.mm"
}

void Publish::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "RosPingPong_VarRefs.mm"
#	include "State_Publish_VarRefs.mm"
#	include "State_Publish_Internal.mm"
}

bool Publish::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "RosPingPong_VarRefs.mm"
#	include "State_Publish_VarRefs.mm"

	return
	(
#		include "State_Publish_Transition_0.expr"
	);
}

bool Publish::Transition_1::check(CLMachine *_machine, CLState *_state) const
{
#	include "RosPingPong_VarRefs.mm"
#	include "State_Publish_VarRefs.mm"

	return
	(
#		include "State_Publish_Transition_1.expr"
	);
}
