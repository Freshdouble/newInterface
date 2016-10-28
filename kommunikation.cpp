#include "kommunikation.h"
#include "ui_kommunikation.h"

kommunikation::kommunikation(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::kommunikation)
{
    ui->setupUi(this);
}

kommunikation::~kommunikation()
{
    delete ui;
}
