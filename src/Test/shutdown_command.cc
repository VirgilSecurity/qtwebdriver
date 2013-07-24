#include "shutdown_command.h"
#include <iostream>
#include "webdriver_server.h"
#include <QtGui/QApplication>

namespace webdriver {

ShutdownCommand::ShutdownCommand(const std::vector<std::string> &path_segments,
                                 const base::DictionaryValue * const parameters)
                                : Command(path_segments, parameters) {}

ShutdownCommand::~ShutdownCommand() { }

void ShutdownCommand::ExecutePost(Response * const response)
{
    Server *wd_server = Server::GetInstance();
    QApplication::quit();
    wd_server->Stop(true);
}

bool ShutdownCommand::DoesPost() const
{
    return true;
}

}
