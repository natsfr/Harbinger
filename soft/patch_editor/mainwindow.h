#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private slots:
    void on_pbGenerate_clicked();

private:
    void genOuputWord();
    void genModInputWord();
    void genFreqADSRAmp();

    int32_t d2q32(double a, uint8_t fracbits);
    int16_t d2q16(double a, uint8_t fracbits);

    Ui::MainWindow *ui;
    uint32_t omix;
    uint32_t imod;

    double freq = 24575000.0; // Hz
    double period;
    double freq_step = 0.3662109375; // Hz
};
#endif // MAINWINDOW_H
