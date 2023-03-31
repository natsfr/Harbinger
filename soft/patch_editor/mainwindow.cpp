#include <cmath>

#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    this->period = 1.0f/this->freq;
}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::on_pbGenerate_clicked()
{
    this->genOuputWord();
    this->genModInputWord();
    this->genFreqRatio();
    this->genMaxAmp();

    char patch[8192];
    sprintf(patch, "Reference period = %f ns\nimod = 0x%08X\nomix = 0x%08X\nop0_FRatio = 0x%04X\nop1_FRatio = 0x%04X\nop2_FRatio = 0x%04X\nop3_FRatio = 0x%04X\nop4_FRatio = 0x%04X\nop5_FRatio = 0x%04X",\
            this->period*1e9, this->imod, this->omix, this->freqs[0], this->freqs[1], this->freqs[2], this->freqs[3], this->freqs[4], this->freqs[5]);

    sprintf(patch, "Reference period = %f ns\nimod = 0x%08X\nomix = 0x%08X\nop0_FRatio = 0x%08X\nop1_FRatio = 0x%08X\nop2_FRatio = 0x%08X\nop3_FRatio = 0x%08X\nop4_FRatio = 0x%08X\nop5_FRatio = 0x%08X",\
            this->period*1e9, this->imod, this->omix, this->at_time[0], this->at_time[1], this->at_time[2], this->at_time[3], this->at_time[4], this->at_time[5]);

    ui->txtPatch->setPlainText(patch);
}

int32_t MainWindow::d2q32(double a, uint8_t fracbits) {
    return (int32_t)(round(a * (1 << fracbits)));
}

int16_t MainWindow::d2q16(double a, uint8_t fracbits) {
    return (int16_t)(round(a * (1 << fracbits)));
}

void MainWindow::genFreqRatio() {
    double op0_FRatio = this->ui->txt_op_0_FRatio->text().toDouble();
    this->freqs[0] = this->d2q16(op0_FRatio, 7);
    double op1_FRatio = this->ui->txt_op_1_FRatio->text().toDouble();
    this->freqs[1] = this->d2q16(op1_FRatio, 7);
    double op2_FRatio = this->ui->txt_op_2_FRatio->text().toDouble();
    this->freqs[2] = this->d2q16(op2_FRatio, 7);
    double op3_FRatio = this->ui->txt_op_3_FRatio->text().toDouble();
    this->freqs[3] = this->d2q16(op3_FRatio, 7);
    double op4_FRatio = this->ui->txt_op_4_FRatio->text().toDouble();
    this->freqs[4] = this->d2q16(op4_FRatio, 7);
    double op5_FRatio = this->ui->txt_op_5_FRatio->text().toDouble();
    this->freqs[5] = this->d2q16(op5_FRatio, 7);
}

void MainWindow::genMaxAmp() {
    double op0_MaxAmp = this->ui->txt_op_0_Att_Amp->text().toDouble();
    if (this->ui->op0_cb_fixamp->isChecked())
        this->amp[0] = this->d2q32(op0_MaxAmp, 30);
    else
        this->amp[0] = 0;
    double op0_timeAtt = this->ui->txt_op_0_Att_time->text().toDouble();
    double op0_nbStep = op0_timeAtt * this->freq;
    this->at_time[0] = this->d2q32(op0_nbStep, 0);
    double op0_inc_amp = op0_MaxAmp / op0_nbStep;
    this->at_inc[0] = this->d2q32(op0_inc_amp, 30);

    double op1_MaxAmp = this->ui->txt_op_1_Att_Amp->text().toDouble();
    if (this->ui->op1_cb_fixamp->isChecked())
        this->amp[1] = this->d2q32(op1_MaxAmp, 31);
    else
        this->amp[1] = 0;
    double op1_timeAtt = this->ui->txt_op_1_Att_time->text().toDouble();
    double op1_nbStep = op1_timeAtt * this->freq;
    this->at_time[1] = this->d2q32(op1_nbStep, 32);
    this->at_inc[1] = this->d2q32(op1_MaxAmp, 31);

    double op2_MaxAmp = this->ui->txt_op_2_Att_Amp->text().toDouble();
    if (this->ui->op2_cb_fixamp->isChecked())
        this->amp[2] = this->d2q32(op2_MaxAmp, 31);
    else
        this->amp[2] = 0;
    double op2_timeAtt = this->ui->txt_op_2_Att_time->text().toDouble();
    double op2_nbStep = op2_timeAtt * this->freq;
    this->at_time[2] = this->d2q32(op2_nbStep, 32);
    this->at_inc[2] = this->d2q32(op2_MaxAmp, 31);

    double op3_MaxAmp = this->ui->txt_op_3_Att_Amp->text().toDouble();
    if (this->ui->op3_cb_fixamp->isChecked())
        this->amp[3] = this->d2q32(op3_MaxAmp, 31);
    else
        this->amp[3] = 0;
    double op3_timeAtt = this->ui->txt_op_3_Att_time->text().toDouble();
    double op3_nbStep = op3_timeAtt * this->freq;
    this->at_time[3] = this->d2q32(op3_nbStep, 32);
    this->at_inc[3] = this->d2q32(op3_MaxAmp, 31);

    double op4_MaxAmp = this->ui->txt_op_4_Att_Amp->text().toDouble();
    if (this->ui->op4_cb_fixamp->isChecked())
        this->amp[4] = this->d2q32(op4_MaxAmp, 31);
    else
        this->amp[4] = 0;
    double op4_timeAtt = this->ui->txt_op_4_Att_time->text().toDouble();
    double op4_nbStep = op4_timeAtt * this->freq;
    this->at_time[4] = this->d2q32(op4_nbStep, 32);
    this->at_inc[4] = this->d2q32(op4_MaxAmp, 31);

    double op5_MaxAmp = this->ui->txt_op_5_Att_Amp->text().toDouble();
    if (this->ui->op5_cb_fixamp->isChecked())
        this->amp[5] = this->d2q32(op5_MaxAmp, 31);
    else
        this->amp[5] = 0;
    double op5_timeAtt = this->ui->txt_op_5_Att_time->text().toDouble();
    double op5_nbStep = op5_timeAtt * this->freq;
    this->at_time[5] = this->d2q32(op5_nbStep, 32);
    this->at_inc[5] = this->d2q32(op5_MaxAmp, 31);
}

void MainWindow::genOuputWord() {
    omix = 0;
    omix |= (ui->Out_0->checkState() == Qt::Checked) ? 1 : 0;
    omix |= (ui->Out_1->checkState() == Qt::Checked) ? 2 : 0;
    omix |= (ui->Out_2->checkState() == Qt::Checked) ? 4 : 0;
    omix |= (ui->Out_3->checkState() == Qt::Checked) ? 8 : 0;
    omix |= (ui->Out_4->checkState() == Qt::Checked) ? 16 : 0;
    omix |= (ui->Out_5->checkState() == Qt::Checked) ? 32 : 0;
}

void MainWindow::genModInputWord() {
    imod = 0;

    uint32_t op0_in = 0;
    op0_in = (ui->r_0_0->isChecked()) ? 1 : op0_in;
    op0_in = (ui->r_1_0->isChecked()) ? 2 : op0_in;
    op0_in = (ui->r_2_0->isChecked()) ? 3 : op0_in;
    op0_in = (ui->r_3_0->isChecked()) ? 4 : op0_in;
    op0_in = (ui->r_4_0->isChecked()) ? 5 : op0_in;
    op0_in = (ui->r_5_0->isChecked()) ? 6 : op0_in;

    uint32_t op1_in = 0;
    op1_in = (ui->r_0_1->isChecked()) ? 1 : op1_in;
    op1_in = (ui->r_1_1->isChecked()) ? 2 : op1_in;
    op1_in = (ui->r_2_1->isChecked()) ? 3 : op1_in;
    op1_in = (ui->r_3_1->isChecked()) ? 4 : op1_in;
    op1_in = (ui->r_4_1->isChecked()) ? 5 : op1_in;
    op1_in = (ui->r_5_1->isChecked()) ? 6 : op1_in;

    uint32_t op2_in = 0;
    op2_in = (ui->r_0_2->isChecked()) ? 1 : op2_in;
    op2_in = (ui->r_1_2->isChecked()) ? 2 : op2_in;
    op2_in = (ui->r_2_2->isChecked()) ? 3 : op2_in;
    op2_in = (ui->r_3_2->isChecked()) ? 4 : op2_in;
    op2_in = (ui->r_4_2->isChecked()) ? 5 : op2_in;
    op2_in = (ui->r_5_2->isChecked()) ? 6 : op2_in;

    uint32_t op3_in = 0;
    op3_in = (ui->r_0_3->isChecked()) ? 1 : op3_in;
    op3_in = (ui->r_1_3->isChecked()) ? 2 : op3_in;
    op3_in = (ui->r_2_3->isChecked()) ? 3 : op3_in;
    op3_in = (ui->r_3_3->isChecked()) ? 4 : op3_in;
    op3_in = (ui->r_4_3->isChecked()) ? 5 : op3_in;
    op3_in = (ui->r_5_3->isChecked()) ? 6 : op3_in;

    uint32_t op4_in = 0;
    op4_in = (ui->r_0_4->isChecked()) ? 1 : op4_in;
    op4_in = (ui->r_1_4->isChecked()) ? 2 : op4_in;
    op4_in = (ui->r_2_4->isChecked()) ? 3 : op4_in;
    op4_in = (ui->r_3_4->isChecked()) ? 4 : op4_in;
    op4_in = (ui->r_4_4->isChecked()) ? 5 : op4_in;
    op4_in = (ui->r_5_4->isChecked()) ? 6 : op4_in;

    uint32_t op5_in = 0;
    op5_in = (ui->r_0_5->isChecked()) ? 1 : op5_in;
    op5_in = (ui->r_1_5->isChecked()) ? 2 : op5_in;
    op5_in = (ui->r_2_5->isChecked()) ? 3 : op5_in;
    op5_in = (ui->r_3_5->isChecked()) ? 4 : op5_in;
    op5_in = (ui->r_4_5->isChecked()) ? 5 : op5_in;
    op5_in = (ui->r_5_5->isChecked()) ? 6 : op5_in;

    imod = op0_in | (op1_in << 3) | (op2_in << 6) | (op3_in << 9) | (op4_in << 12) | (op5_in << 15);
}

void MainWindow::genFreqADSRAmp() {

}

void MainWindow::dumpPatch() {

}
