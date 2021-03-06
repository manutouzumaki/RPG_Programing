#ifndef INPUT_H
#define INPUT_H

#include <stdint.h>

struct Input
{

    bool keysDown[322];
    bool keysWasDown[322];
};

void SetKeyDown(Input* input, uint32_t scanCode);
void SetKeyUp(Input* input, uint32_t scanCode);
bool GetKeyJustDown(Input* input, uint32_t scanCode);
bool GetKeyDown(Input* input, uint32_t scanCode);

#endif
