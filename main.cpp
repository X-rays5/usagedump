#include <fstream>
#include <future>
#include <chrono>
#include <string>
#include <Windows.h>
#include <rapidjson/document.h>
#include <rapidjson/stringbuffer.h>
#include <rapidjson/writer.h>
#include "cpu.hpp"
#include "memory.hpp"

void HideConsole() {
    ::ShowWindow(::GetConsoleWindow(), SW_HIDE);
}

void ShowConsole(){
    ::ShowWindow(::GetConsoleWindow(), SW_SHOW);
}

bool consolevisible = true;
void ToggleConsole() {
    consolevisible ? HideConsole() : ShowConsole();
    consolevisible = !consolevisible;
}

std::string stringify(rapidjson::Document& json) {
    rapidjson::StringBuffer strbuf;
    strbuf.Clear();

    rapidjson::Writer<rapidjson::StringBuffer> writer(strbuf);
    json.Accept(writer);

    return strbuf.GetString();
}

[[noreturn]] void DumpUsage() {
    while (true) {
        rapidjson::Document json;
        json.SetObject();

        int cpuusage = (resource_dump::cpu::GetCPULoad() * 100);
        int memoryusage = resource_dump::memory::GetMemoryUsage();
        json.AddMember("cpu", cpuusage, json.GetAllocator());
        json.AddMember("memory", memoryusage, json.GetAllocator());

        std::fstream writer("log.txt", std::ios_base::app);
        if (writer.is_open()) {
            writer << stringify(json) << "\n";
        }
        writer.flush();

        std::this_thread::sleep_for(std::chrono::milliseconds(60000));
    }
}

int main() {
    ToggleConsole();
    auto programthread = std::async(std::launch::async, DumpUsage);
    while (programthread.wait_for(std::chrono::milliseconds(0)) != std::future_status::ready) {
        if(GetAsyncKeyState(VK_END)) {
            ToggleConsole();
        }
        std::this_thread::sleep_for(std::chrono::milliseconds(100));
    }

    return 0;
}
