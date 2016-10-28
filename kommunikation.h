#ifndef KOMMUNIKATION_H
#define KOMMUNIKATION_H

#include <QMainWindow>

namespace Ui {
class kommunikation;
}

class kommunikation : public QMainWindow
{
    Q_OBJECT

public:
    explicit kommunikation(QWidget *parent = 0);
    ~kommunikation();

private:
    Ui::kommunikation *ui;
};

#endif // KOMMUNIKATION_H
