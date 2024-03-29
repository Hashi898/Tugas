import sys
from PyQt5.QtGui import *
from PyQt5.QtCore import *
from PyQt5.QtWidgets import *


class DialogForm(QDialog):

    def __init__(self):
        super().__init__()
        self.setupUi()

    def setupUi(self):
        self.resize(300, 100)
        self.move(320, 280)
        self.setWindowTitle('Demo Dialog Modal dan Non-Modal @aku_bisa')
        self.label = QLabel('')
        self.closeButton = QPushButton('Tutup')
        hbox = QHBoxLayout()
        hbox.addStretch()
        hbox.addWidget(self.closeButton)
        layout = QVBoxLayout()
        layout.addWidget(self.label)
        layout.addLayout(hbox)
        self.setLayout(layout)
        self.closeButton.clicked.connect(self.close)


class MainForm(QWidget):
    def __init__(self):
        super().__init__()
        self.setupUi()

    def setupUi(self):
        self.resize(350, 100)
        self.move(300, 300)
        self.setWindowTitle('Contoh QDialog.setModal()@aku_bisa')
        self.label = QLabel('Tulislah sesuatu yang bermanfaat di bawah ' +
                            'ketika dialog ditampilkan.')
        self.lineEdit = QLineEdit()
        self.showModalDialogButton = QPushButton('Modal')
        self.showModelessDialogButton = QPushButton('Non-Modal')
        self.showModelessDialogButton
        hbox = QHBoxLayout()
        hbox.addWidget(self.showModalDialogButton)
        hbox.addWidget(self.showModelessDialogButton)
        layout = QVBoxLayout()
        layout.addWidget(self.label)
        layout.addWidget(self.lineEdit)
        layout.addLayout(hbox)
        self.setLayout(layout)
        self.showModalDialogButton.clicked.connect(
            self.showModalDialogButtonClick)
        self.showModelessDialogButton.clicked.connect(
            self.showModelessDialogButtonClick)

    def showModalDialogButtonClick(self):
        self.form = DialogForm()
        self.form.label.setText('Contoh Dialog bersifat modal')
        self.form.setModal(True)
        self.form.show()

    def showModelessDialogButtonClick(self):
        self.form = DialogForm()
        self.form.label.setText('Contoh Dialog bersifat non-modal (modeless)')
        self.form.setModal(False)
        self.form.show()


if __name__ == "__main__":
    app = QApplication([])
    form = MainForm()
    form.setupUi()
    form.show()
    app.exec()
