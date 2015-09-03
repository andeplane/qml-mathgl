#ifndef QMLMATHGLPLUGIN_H
#define QMLMATHGLPLUGIN_H
#include <QQmlExtensionPlugin>

class QMLMathGLPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "org.qt-project.Qt.QQmlExtensionInterface")
public:
    void registerTypes(const char *uri);

    // QQmlExtensionInterface interface
public:
    void initializeEngine(QQmlEngine *engine, const char *uri);
};
#endif // QMLMATHGLPLUGIN_H
