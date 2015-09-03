#include "qmlmathglplugin.h"
#include "graph.h"
#include <qqml.h>
#include <QQmlEngine>

void QMLMathGLPlugin::registerTypes(const char *uri)
{
    Q_ASSERT(uri == QLatin1String("QMLMathGL"));
//    qmlRegisterUncreatableType<Simulator>("SimVis", 1, 0, "Simulator",
//                                          "Cannot create abstract type Simulator. This must be subclassed.");
    qmlRegisterType<Graph>("QMLMathGL", 1, 0, "Graph");
}

void QMLMathGLPlugin::initializeEngine(QQmlEngine *engine, const char *uri)
{
}


