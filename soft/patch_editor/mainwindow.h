#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

#define NB_OP 6

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
    void dumpPatch();
    void genFreqRatio();
    void genMaxAmp();

    int32_t d2q32(double a, uint8_t fracbits);
    int16_t d2q16(double a, uint8_t fracbits);

    Ui::MainWindow *ui;

    double freq = 24575000.0; // Hz
    double period;
    double freq_step = 0.3662109375; // Hz

    uint32_t omix;
    uint32_t imod;

    int16_t freqs[NB_OP];

    uint32_t at_time[NB_OP];
    int32_t at_inc[NB_OP];
    uint32_t de_time[NB_OP];
    int32_t de_inc[NB_OP];
    uint32_t su_time[NB_OP];
    int32_t su_lvl[NB_OP];
    uint32_t re_time[NB_OP];
    int32_t re_inc[NB_OP];
    int32_t amp[NB_OP];

    QString crapTemplate = "#define NB_OP 6\nint16_t temp_freqs[NB_OP] = {0x%04X, 0x%04X, 0x%04X, 0x%04X, 0x%04X, 0x%04X};\nint32_t temp_at_time[NB_OP] = {0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X};\nint32_t temp_at_inc[NB_OP] = {0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X};\nint32_t temp_de_time[NB_OP] = {0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X};\nint32_t temp_de_inc[NB_OP] = {0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X};\nint32_t temp_su_time[NB_OP] = {0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X};\nint32_t temp_su_lvl[NB_OP] = {0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X};\nint32_t temp_re_time[NB_OP] = {0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X};\nint32_t temp_re_inc[NB_OP] = {0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X};\nint32_t temp_amp[NB_OP] = {0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X};\nuint32_t temp_omix = 0x%08X;\nuint32_t temp_imod = 0x%08X;";

};
#endif // MAINWINDOW_H
