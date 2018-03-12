// it works.

#include <sourcemod>
#include <adt_array>

public void OnPluginStart()
{
    ArrayList sample = new ArrayList();
    PrintToServer("%x", sample);

    CreateTimer(1.0, TestTimer, sample);
}

public Action TestTimer(Handle timer, any sample)
{
    CloneArrayAddress(view_as<ArrayList>(sample));
}

void CloneArrayAddress(ArrayList array)
{
    PrintToServer("In CloneArray: %x", array);

    array.Push(1);
}
