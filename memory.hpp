//
// Created by X-ray on 5/11/2021.
//
#pragma once
#include <Windows.h>

namespace resource_dump {
    namespace memory {
        DWORD GetMemoryUsage() {
            MEMORYSTATUS ms;
            ::GlobalMemoryStatus(&ms);
            return ms.dwMemoryLoad;
        }
    }
}
