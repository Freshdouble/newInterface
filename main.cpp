#include "mainwind.h"
#include <QApplication>
#include <QFontDatabase>


int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    int id = QFontDatabase::addApplicationFont(":/fonts/digital-7.ttf");
    QString family = QFontDatabase::applicationFontFamilies(id).at(0);
    QFont digital(family);
    MainWind w;
    w.show();

    return a.exec();
}
