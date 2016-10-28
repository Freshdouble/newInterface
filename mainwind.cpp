#include "mainwind.h"
#include "ui_mainwind.h"
#include "kommunikation.h"

MainWind::MainWind(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWind)
{
    ui->setupUi(this);
    QAction *kommunikation = findChild<QAction *>("actionKommunikation");
    QObject::connect(kommunikation,SIGNAL(triggered(bool)),this,SLOT(openComView()));
}

void MainWind::openComView()
{
    kommunikation *com = new kommunikation(this);
    com->show();
}

MainWind::~MainWind()
{
    delete ui;
}
