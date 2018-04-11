#include <sourcemod>

#include "test_access_modifiers/test2.sp"
#include "test_access_modifiers/test.sp"

public void OnPluginStart()
{
    PrintToServer("I am %d", this_is); // 여기에 작성되어있지 않지만, 한정자와 관계 없이 그냥 이 형태로만 주고받을 수 있음.
    // PrintFF(); // Failed.
    PrintYeah();
}
