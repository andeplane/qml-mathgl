TEMPLATE = subdirs
SUBDIRS += src \
    examples/Lineplot
CONFIG += ordered

examples/Lineplot.depends = src
