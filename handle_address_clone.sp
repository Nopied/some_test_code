// it works.

#include <sourcemod>
#include <adt_array>

public void OnPluginStart()
{
    ArrayList sample = new ArrayList();
    PrintToServer("%x", sample);
    CloneArrayAddress(sample);
    PrintToServer("Yeah. %d", sample.Get(0));
}

void CloneArrayAddress(ArrayList array)
{
    PrintToServer("In CloneArray: %x", array);

    array.Push(1);
}
