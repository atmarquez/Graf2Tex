VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmMain 
   Caption         =   "Conversor Gráfico a Texto by Antonio T. Márquez Muñoz"
   ClientHeight    =   2700
   ClientLeft      =   165
   ClientTop       =   450
   ClientWidth     =   5910
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   180
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   394
   StartUpPosition =   2  'CenterScreen
   Begin MSComctlLib.StatusBar sbStatusBar 
      Align           =   2  'Align Bottom
      Height          =   270
      Left            =   0
      TabIndex        =   0
      Top             =   2430
      Width           =   5910
      _ExtentX        =   10425
      _ExtentY        =   476
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   3
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            AutoSize        =   1
            Object.Width           =   4789
            Text            =   "Estado"
            TextSave        =   "Estado"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            AutoSize        =   2
            TextSave        =   "27/01/03"
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            AutoSize        =   2
            TextSave        =   "19:02"
         EndProperty
      EndProperty
   End
   Begin VB.Menu Archivo 
      Caption         =   "&Archivo"
      Begin VB.Menu Abrir 
         Caption         =   "&Abrir"
         Shortcut        =   ^N
      End
      Begin VB.Menu sep1 
         Caption         =   "-"
      End
      Begin VB.Menu Salir 
         Caption         =   "&Salir"
         Shortcut        =   ^X
      End
   End
   Begin VB.Menu Conversion 
      Caption         =   "&Conversión"
      Begin VB.Menu config 
         Caption         =   "&Configuración"
         Shortcut        =   {F4}
      End
      Begin VB.Menu sep2 
         Caption         =   "-"
      End
      Begin VB.Menu Procesar 
         Caption         =   "&Procesar"
         Shortcut        =   {F5}
      End
   End
   Begin VB.Menu Ayuda 
      Caption         =   "Ay&uda"
      Begin VB.Menu help 
         Caption         =   "A&yuda"
         Shortcut        =   {F1}
      End
      Begin VB.Menu Acercade 
         Caption         =   "&Acerca de..."
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Abrir_Click()
  Dim name As String
  Dim n As Integer

  name = OpenDialog("Gráficos *.JPG" & Chr$(0) & "*.JPG", False)
  If name = "" Then Exit Sub

  If gb.LoadFileJpg(name, 0) Then
    Estado = True
    Me.Refresh
  Else
    MsgBox "Imposible leer JPG " & name & ". Asegurese que el fichero tiene el formato correcto", vbCritical, "Error de Programa"
  End If
End Sub

Private Sub Acercade_Click()
  Dim Acerca As frmAbout
  Set Acerca = New frmAbout
  Acerca.Show vbModal
End Sub

Private Sub config_Click()
  Dim Tabla As Tabla
  Set Tabla = New Tabla
  Tabla.Show vbModal
End Sub

Private Sub Form_Load()

    Me.Left = GetSetting(App.Title, "Settings", "MainLeft", 1000)
    Me.Top = GetSetting(App.Title, "Settings", "MainTop", 1000)
    Me.Width = GetSetting(App.Title, "Settings", "MainWidth", 6500)
    Me.Height = GetSetting(App.Title, "Settings", "MainHeight", 6500)
    
    Set gb = New GBitmap
    
    TablaConv(0) = "@"
    TablaConv(1) = "W"
    TablaConv(2) = "M"
    TablaConv(3) = "R"
    TablaConv(4) = "S"
    TablaConv(5) = "s"
    TablaConv(6) = "b"
    TablaConv(7) = "o"
    TablaConv(8) = "i"
    TablaConv(9) = "="
    TablaConv(10) = "*"
    TablaConv(11) = ";"
    TablaConv(12) = ":"
    TablaConv(13) = ","
    TablaConv(14) = "."
    TablaConv(15) = " "
End Sub


Private Sub Form_Paint()
  If Estado = True Then
    gb.Draw hDC, 0, 0, ScaleWidth, ScaleHeight
  End If
End Sub

Private Sub Form_Resize()
    Me.Refresh
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Dim i As Integer


    'close all sub forms
    For i = Forms.Count - 1 To 1 Step -1
        Unload Forms(i)
    Next
    If Me.WindowState <> vbMinimized Then
        SaveSetting App.Title, "Settings", "MainLeft", Me.Left
        SaveSetting App.Title, "Settings", "MainTop", Me.Top
        SaveSetting App.Title, "Settings", "MainWidth", Me.Width
        SaveSetting App.Title, "Settings", "MainHeight", Me.Height
    End If
End Sub

Public Sub Procesa()

Dim i As Integer
Dim j As Integer
Dim px As IPixelPtr
Dim py As IPixelPtr
Dim numero As Long
Dim r, g, b As Long

Dim fso, txtfile
Dim RetVal


  Set fso = CreateObject("Scripting.FileSystemObject")
  Set txtfile = fso.CreateTextFile(App.Path & "\Grafico.txt", True)
  
  Set py = gb.GetPixelPtr(0, 0)
  
  For y = 0 To gb.Height - 1
    Set px = py.Clone
    For x = 0 To gb.Width - 1
      'px = y
      numero = px.Pixel
      
      r = Int(numero / 65536)
      g = Int((numero - (r * 65536)) / 256)
      b = Int(numero - (r * 65536)) - (g * 256)
       
      'MsgBox r & "," & g & "," & b & "," & numero
      numero = Int((r + g + b) / 3)
      'px.Pixel = numero * 65536 + numero * 256 + numero
      txtfile.write TablaConv(Int(numero / 16))
      txtfile.write TablaConv(Int(numero / 16))
      px.AddX 1
    Next x
    txtfile.WriteBlankLines (1)
    py.AddY 1
  Next y
  
  txtfile.Close
  
  RetVal = MsgBox("El Grafico se encuentra en el fichero " + App.Path & "\Grafico.txt" + Chr(13) + "¿Desea Visualizarlo?", vbInformation + vbYesNo, "GRÁFICO DE TEXTO COMPLETADO")
  
  If RetVal = vbNo Then
    Exit Sub
  End If
  
  On Error GoTo ErrOpen:
  
  RetVal = Shell("C:\Archivos de programa\Accesorios\WORDPAD.EXE " & App.Path & "\Grafico.txt", 1)   ' Ejecuta NotePad.
  
  Exit Sub
  
ErrOpen:
  
  MsgBox "No se puede encontrar el programa WORDPAD. Asegurese que el programa está instalado y en una ruta accesible", vbOKOnly + vbCritical, "Error de Programa"
    
End Sub

Private Sub help_Click()
Dim RetVal

RetVal = Shell("Explorer " & App.Path & "\index.htm", 1)   ' Ejecuta NotePad.
End Sub

Private Sub Procesar_Click()

Dim i As Integer
Dim j As Integer
Dim px As IPixelPtr
Dim py As IPixelPtr
Dim numero As Long
Dim r, g, b As Long

  If Estado = False Then
    Exit Sub
  End If

  Set py = gb.GetPixelPtr(0, 0)
  
  For y = 0 To gb.Height - 1
    Set px = py.Clone
    For x = 0 To gb.Width - 1
      'px = y
      numero = px.Pixel
      
      r = Int(numero / 65536)
      g = Int((numero - (r * 65536)) / 256)
      b = Int(numero - (r * 65536)) - (g * 256)
       
      'MsgBox r & "," & g & "," & b & "," & numero
      numero = Int((r + g + b) / 3)
      numero = Int(numero / 16) * 16
      px.Pixel = (numero * 65536 + numero * 256 + numero)
      px.AddX 1
    Next x
    py.AddY 1
  Next y
  Me.Refresh
  
  Procesa
End Sub

Private Sub Salir_Click()
  Unload Me
End Sub
