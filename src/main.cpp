#include <stdio.h>
#include <stdlib.h> 
#include "engine.h"
#include "actions.h"

#define FPS 60
#define FRAME_TARGET_TIME (1000 / FPS)

void HandleEvents(Engine* engine)
{
    SDL_Event event;
    while(SDL_PollEvent(&event))
    {
        switch (event.type)
        {
        
            case SDL_QUIT:
            {
                engine->isRunning = false;
            }break;
            case SDL_KEYDOWN:
            {
                uint32_t scanCode = event.key.keysym.scancode;
                if(scanCode == SDL_SCANCODE_ESCAPE)
                {
                    engine->isRunning = false;
                }
                SetKeyDown(&engine->input, scanCode);

            }break;
            case SDL_KEYUP:
            {
                uint32_t scanCode = event.key.keysym.scancode;
                SetKeyUp(&engine->input, scanCode);
            }break;
            default:
            {
            
            }break; 
        }
    }
}

void UpdateAndRender(Engine* engine, float dt)
{
    // update stuff 
    
    engine->sm.Update(dt, 4,
                      (void*)&engine->hero,
                      (void*)&engine->map,
                      (void*)&engine->input,
                      (void*)&engine->sm);
    UpdateEntityAnim(&engine->hero, dt);

    if(GetKeyJustDown(&engine->input, SDL_SCANCODE_SPACE))
    {
        int2 xy = GetFacedTileCoords(&engine->hero);
        Trigger trigger = GetTrigger(&engine->map, xy.a, xy.b, engine->hero.layer);
        if(trigger.OnUse != NULL)
        {
            trigger.OnUse(&engine->hero, trigger.index);
        }
    }
     

    // render stuff
    ClearBuffer(engine->colorBuffer, 0xFF000000);

    for(int i = 0; i < engine->map.numLayers; i++)
    {
        DrawMap(engine->colorBuffer, &engine->map, i);
        if(engine->hero.layer == i)
        {
            DrawFrame(engine->colorBuffer,
                      engine->hero.uvs,
                      engine->hero.x,
                      engine->hero.y,
                      engine->hero.frame,
                      &engine->hero.image);
        }
    }

    RenderColorBuffer(engine);
}

int main(int argc, char* argv[])
{
    Engine engine = {};
    printf("Initializing SDL\n");
    if(SDL_Init(SDL_INIT_EVERYTHING) < 0)
    {
        printf("ERROR :: Initializing SDL\n");
        return 1;
    }
    engine.window = SDL_CreateWindow("RPG", 
                                     SDL_WINDOWPOS_CENTERED, 
                                     SDL_WINDOWPOS_CENTERED, 
                                     WNDWIDTH, WNDHEIGHT, 
                                     SDL_WINDOW_SHOWN /*| SDL_WINDOW_FULLSCREEN*/);
    if(engine.window != 0)
    {
        engine.renderer = SDL_CreateRenderer(engine.window, -1, 0);
        if(engine.renderer == 0)
        {
            printf("ERROR :: Creating the RENDERER\n");
            return 1;
        }
    }
    else
    {
        printf("ERROR :: Creating the WINDOW\n");
        return 1;
    }

    engine.colorBuffer = (uint32_t*)malloc(((int)WNDWIDTH * (int)WNDHEIGHT) * sizeof(uint32_t));
    engine.textureBuffer = SDL_CreateTexture(engine.renderer,
                                             SDL_PIXELFORMAT_RGBA32, 
                                             SDL_TEXTUREACCESS_STREAMING,
                                             (int)WNDWIDTH,
                                             (int)WNDHEIGHT);

    LoadMap(&engine.map, "./assets/cMap2.lua", "./assets/rpg_indoor.bmp");
    LoadEntity(&engine.hero, "./assets/walk_cycle.bmp");
    SetEntityFrame(&engine.hero, 8);
   
    ReturnFunc TP0 = TeleportAction(&engine.map, 9, 6);
    ReturnFunc TP1 = TeleportAction(&engine.map, 9, 1);
    ReturnFunc TP2 = TeleportAction(&engine.map, 9, 10);
    
    Trigger trigger1 = {};
    Trigger trigger2 = {};
    trigger1.OnUse = TP1;
    trigger1.index = 1;
    trigger2.OnUse = TP2;
    trigger2.index = 2;

    std::map<int, Trigger> mapTriggers {{CoordToIndex(&engine.map, 9, 11), trigger1},
                                        {CoordToIndex(&engine.map, 9, 0), trigger2}};
    engine.map.triggers.push_back(mapTriggers);

    TP0(&engine.hero, 0);
 
    engine.sm.PushState(engine.hero.waitState, 1,
                       (void*)&engine.hero); 

    engine.isRunning = true;

    uint32_t previusFrameTime = 0;
    while(engine.isRunning)
    {
        int timeToWait = FRAME_TARGET_TIME - (SDL_GetTicks() - previusFrameTime);
        if(timeToWait > 0 && timeToWait <= FRAME_TARGET_TIME)
        {
            SDL_Delay(timeToWait);
        }
        uint32_t currentFrameTime = SDL_GetTicks();
        float dt = (float)(currentFrameTime - previusFrameTime) / 1000.0f; 

        HandleEvents(&engine);
        UpdateAndRender(&engine, dt);  
        previusFrameTime = currentFrameTime;
    }
    
    FreeGlobals(); 
    ArrayFree(engine.map.uvs);
    free(engine.colorBuffer);
    SDL_DestroyRenderer(engine.renderer);
    SDL_DestroyWindow(engine.window);
    SDL_Quit();

    return 0;
}
