VERSION 5.00
Begin VB.Form Tabla 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Tabla de Conversión"
   ClientHeight    =   6375
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3210
   Icon            =   "Tabla.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6375
   ScaleWidth      =   3210
   ShowInTaskbar   =   0   'False
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      ScaleHeight     =   195
      ScaleWidth      =   2115
      TabIndex        =   33
      Top             =   5520
      Width           =   2175
   End
   Begin VB.CommandButton CmdCancelar 
      Caption         =   "Cancelar"
      Height          =   390
      Left            =   1680
      TabIndex        =   32
      Top             =   5880
      Width           =   1395
   End
   Begin VB.CommandButton CmdAceptar 
      Caption         =   "Aceptar"
      Height          =   405
      Left            =   105
      TabIndex        =   31
      Top             =   5880
      Width           =   1410
   End
   Begin VB.TextBox Text16 
      Alignment       =   2  'Center
      Height          =   255
      Left            =   2475
      MaxLength       =   1
      TabIndex        =   30
      Text            =   "."
      Top             =   5520
      Width           =   615
   End
   Begin VB.TextBox Text15 
      Alignment       =   2  'Center
      Height          =   255
      Left            =   2475
      MaxLength       =   1
      TabIndex        =   29
      Text            =   "I"
      Top             =   5160
      Width           =   615
   End
   Begin VB.TextBox Text14 
      Alignment       =   2  'Center
      Height          =   255
      Left            =   2475
      MaxLength       =   1
      TabIndex        =   28
      Text            =   "L"
      Top             =   4800
      Width           =   615
   End
   Begin VB.TextBox Text13 
      Alignment       =   2  'Center
      Height          =   255
      Left            =   2475
      MaxLength       =   1
      TabIndex        =   27
      Text            =   "J"
      Top             =   4440
      Width           =   615
   End
   Begin VB.TextBox Text12 
      Alignment       =   2  'Center
      Height          =   255
      Left            =   2475
      MaxLength       =   1
      TabIndex        =   26
      Text            =   "T"
      Top             =   4080
      Width           =   615
   End
   Begin VB.TextBox Text11 
      Alignment       =   2  'Center
      Height          =   255
      Left            =   2475
      MaxLength       =   1
      TabIndex        =   25
      Text            =   "P"
      Top             =   3720
      Width           =   615
   End
   Begin VB.TextBox Text10 
      Alignment       =   2  'Center
      Height          =   255
      Left            =   2475
      MaxLength       =   1
      TabIndex        =   24
      Text            =   "O"
      Top             =   3360
      Width           =   615
   End
   Begin VB.TextBox Text9 
      Alignment       =   2  'Center
      Height          =   255
      Left            =   2475
      MaxLength       =   1
      TabIndex        =   23
      Text            =   "Z"
      Top             =   3000
      Width           =   615
   End
   Begin VB.TextBox Text8 
      Alignment       =   2  'Center
      Height          =   255
      Left            =   2475
      MaxLength       =   1
      TabIndex        =   22
      Text            =   "X"
      Top             =   2640
      Width           =   615
   End
   Begin VB.TextBox Text7 
      Alignment       =   2  'Center
      Height          =   255
      Left            =   2475
      MaxLength       =   1
      TabIndex        =   21
      Text            =   "S"
      Top             =   2280
      Width           =   615
   End
   Begin VB.TextBox Text6 
      Alignment       =   2  'Center
      Height          =   255
      Left            =   2475
      MaxLength       =   1
      TabIndex        =   20
      Text            =   "H"
      Top             =   1920
      Width           =   615
   End
   Begin VB.TextBox Text5 
      Alignment       =   2  'Center
      Height          =   255
      Left            =   2475
      MaxLength       =   1
      TabIndex        =   19
      Text            =   "E"
      Top             =   1560
      Width           =   615
   End
   Begin VB.TextBox Text4 
      Alignment       =   2  'Center
      Height          =   255
      Left            =   2475
      MaxLength       =   1
      TabIndex        =   18
      Text            =   "R"
      Top             =   1200
      Width           =   615
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      Height          =   255
      Left            =   2475
      MaxLength       =   1
      TabIndex        =   17
      Text            =   "W"
      Top             =   840
      Width           =   615
   End
   Begin VB.TextBox Text2 
      Alignment       =   2  'Center
      Height          =   255
      Left            =   2475
      MaxLength       =   1
      TabIndex        =   16
      Text            =   "M"
      Top             =   480
      Width           =   615
   End
   Begin VB.PictureBox Picture16 
      BackColor       =   &H00F0F0F0&
      Height          =   255
      Left            =   120
      ScaleHeight     =   195
      ScaleWidth      =   2115
      TabIndex        =   15
      Top             =   5160
      Width           =   2175
   End
   Begin VB.PictureBox Picture15 
      BackColor       =   &H00E1E1E1&
      Height          =   255
      Left            =   120
      ScaleHeight     =   195
      ScaleWidth      =   2115
      TabIndex        =   14
      Top             =   4800
      Width           =   2175
   End
   Begin VB.PictureBox Picture14 
      BackColor       =   &H00D2D2D2&
      Height          =   255
      Left            =   120
      ScaleHeight     =   195
      ScaleWidth      =   2115
      TabIndex        =   13
      Top             =   4440
      Width           =   2175
   End
   Begin VB.PictureBox Picture13 
      BackColor       =   &H00C3C3C3&
      Height          =   255
      Left            =   120
      ScaleHeight     =   195
      ScaleWidth      =   2115
      TabIndex        =   12
      Top             =   4080
      Width           =   2175
   End
   Begin VB.PictureBox Picture12 
      BackColor       =   &H00B4B4B4&
      Height          =   255
      Left            =   120
      ScaleHeight     =   195
      ScaleWidth      =   2115
      TabIndex        =   11
      Top             =   3720
      Width           =   2175
   End
   Begin VB.PictureBox Picture11 
      BackColor       =   &H00A5A5A5&
      Height          =   255
      Left            =   120
      ScaleHeight     =   195
      ScaleWidth      =   2115
      TabIndex        =   10
      Top             =   3360
      Width           =   2175
   End
   Begin VB.PictureBox Picture10 
      BackColor       =   &H00969696&
      Height          =   255
      Left            =   120
      ScaleHeight     =   195
      ScaleWidth      =   2115
      TabIndex        =   9
      Top             =   3000
      Width           =   2175
   End
   Begin VB.PictureBox Picture9 
      BackColor       =   &H00878787&
      Height          =   255
      Left            =   120
      ScaleHeight     =   195
      ScaleWidth      =   2115
      TabIndex        =   8
      Top             =   2640
      Width           =   2175
   End
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      Height          =   255
      Left            =   2475
      MaxLength       =   1
      TabIndex        =   7
      Text            =   "N"
      Top             =   120
      Width           =   615
   End
   Begin VB.PictureBox Picture8 
      BackColor       =   &H00787878&
      Height          =   255
      Left            =   120
      ScaleHeight     =   195
      ScaleWidth      =   2115
      TabIndex        =   6
      Top             =   2280
      Width           =   2175
   End
   Begin VB.PictureBox Picture7 
      BackColor       =   &H00696969&
      Height          =   255
      Left            =   120
      ScaleHeight     =   195
      ScaleWidth      =   2115
      TabIndex        =   5
      Top             =   1920
      Width           =   2175
   End
   Begin VB.PictureBox Picture6 
      BackColor       =   &H005A5A5A&
      Height          =   255
      Left            =   120
      ScaleHeight     =   195
      ScaleWidth      =   2115
      TabIndex        =   4
      Top             =   1560
      Width           =   2175
   End
   Begin VB.PictureBox Picture5 
      BackColor       =   &H004B4B4B&
      Height          =   255
      Left            =   120
      ScaleHeight     =   195
      ScaleWidth      =   2115
      TabIndex        =   3
      Top             =   1200
      Width           =   2175
   End
   Begin VB.PictureBox Picture4 
      BackColor       =   &H003C3C3C&
      Height          =   255
      Left            =   120
      ScaleHeight     =   195
      ScaleWidth      =   2115
      TabIndex        =   2
      Top             =   840
      Width           =   2175
   End
   Begin VB.PictureBox Picture3 
      BackColor       =   &H002D2D2D&
      Height          =   255
      Left            =   120
      ScaleHeight     =   195
      ScaleWidth      =   2115
      TabIndex        =   1
      Top             =   480
      Width           =   2175
   End
   Begin VB.PictureBox Picture2 
      BackColor       =   &H001E1E1E&
      Height          =   255
      Left            =   120
      ScaleHeight     =   195
      ScaleWidth      =   2115
      TabIndex        =   0
      Top             =   120
      Width           =   2175
   End
End
Attribute VB_Name = "Tabla"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CmdAceptar_Click()
    TablaConv(0) = Text1.Text
    TablaConv(1) = Text2.Text
    TablaConv(2) = Text3.Text
    TablaConv(3) = Text4.Text
    TablaConv(4) = Text5.Text
    TablaConv(5) = Text6.Text
    TablaConv(6) = Text7.Text
    TablaConv(7) = Text8.Text
    TablaConv(8) = Text9.Text
    TablaConv(9) = Text10.Text
    TablaConv(10) = Text11.Text
    TablaConv(11) = Text12.Text
    TablaConv(12) = Text13.Text
    TablaConv(13) = Text14.Text
    TablaConv(14) = Text15.Text
    TablaConv(15) = Text16.Text
    Unload Me
End Sub

Private Sub CmdCancelar_Click()
  Unload Me
End Sub

Private Sub Form_Load()
    Text1.Text = TablaConv(0)
    Text2.Text = TablaConv(1)
    Text3.Text = TablaConv(2)
    Text4.Text = TablaConv(3)
    Text5.Text = TablaConv(4)
    Text6.Text = TablaConv(5)
    Text7.Text = TablaConv(6)
    Text8.Text = TablaConv(7)
    Text9.Text = TablaConv(8)
    Text10.Text = TablaConv(9)
    Text11.Text = TablaConv(10)
    Text12.Text = TablaConv(11)
    Text13.Text = TablaConv(12)
    Text14.Text = TablaConv(13)
    Text15.Text = TablaConv(14)
    Text16.Text = TablaConv(15)
End Sub
