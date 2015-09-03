#ifndef GRAPH_H
#define GRAPH_H

#include <QQuickPaintedItem>

class Graph : public QQuickPaintedItem
{
public:
    Graph();

    // QQuickPaintedItem interface
public:
    virtual void paint(QPainter *painter);
};

#endif // GRAPH_H
