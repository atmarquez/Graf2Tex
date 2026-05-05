Attribute VB_Name = "Module1"
Private Const GMEM_MOVEABLE = &H2
Private Const GMEM_ZEROINIT = &H40
Private Const GHND = (GMEM_MOVEABLE Or GMEM_ZEROINIT)
Private Const SizeBuffer = 512
Private Declare Function GlobalAlloc Lib "kernel32" (ByVal wFlags As Long, ByVal dwBytes As Long) As Long
Private Declare Function GlobalLock Lib "kernel32" (ByVal hMem As Long) As Long
Private Declare Function lstrlen Lib "kernel32" Alias "lstrlenA" (ByVal lpString As String) As Long
Private Declare Sub ZeroMemory Lib "kernel32" Alias "RtlZeroMemory" (direccion As Any, ByVal size As Long)
Private Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (destino As Any, fuente As Any, ByVal size As Long)
'-------------------------------------------------------
Private Const OFN_READONLY = &H1
Private Const OFN_OVERWRITEPROMPT = &H2
Private Const OFN_HIDEREADONLY = &H4
Private Const OFN_NOCHANGEDIR = &H8
Private Const OFN_SHOWHELP = &H10
Private Const OFN_ENABLEHOOK = &H20
Private Const OFN_ENABLETEMPLATE = &H40
Private Const OFN_ENABLETEMPLATEHANDLE = &H80
Private Const OFN_NOVALIDATE = &H100
Private Const OFN_ALLOWMULTISELECT = &H200
Private Const OFN_EXTENSIONDIFFERENT = &H400
Private Const OFN_PATHMUSTEXIST = &H800
Private Const OFN_FILEMUSTEXIST = &H1000
Private Const OFN_CREATEPROMPT = &H2000
Private Const OFN_SHAREAWARE = &H4000
Private Const OFN_NOREADONLYRETURN = &H8000
Private Const OFN_NOTESTFILECREATE = &H10000
Private Const OFN_NONETWORKBUTTON = &H20000
Private Const OFN_NOLONGNAMES = &H40000
Private Const OFN_EXPLORER = &H80000
Private Const OFN_NODEREFERENCELINKS = &H100000
Private Const OFN_LONGNAMES = &H200000
Private Type OPENFILENAME
        lStructSize As Long
        hwndOwner As Long
        hInstance As Long
        lpstrFilter As Long
        lpstrCustomFilter As Long
        nMaxCustFilter As Long
        nFilterIndex As Long
        lpstrFile As Long
        nMaxFile As Long
        lpstrFileTitle As Long
        nMaxFileTitle As Long
        lpstrInitialDir As Long
        lpstrTitle As Long
        Flags As Long
        nFileOffset As Integer
        nFileExtension As Integer
        lpstrDefExt As Long
        lCustData As Long
        lpfnHook As Long
        lpTemplateName As Long
End Type
'----------------------------------------------------------------
Private Declare Function GetOpenFileName Lib "comdlg32.dll" Alias "GetOpenFileNameA" (ByRef pOpenfilename As OPENFILENAME) As Long
Private Declare Function GetSaveFileName Lib "comdlg32.dll" Alias "GetSaveFileNameA" (ByRef pOpenfilename As OPENFILENAME) As Long
'--------------------------------------------------------------
Private OpenStruct As OPENFILENAME
Private PathName As Long
Private masc As Long

Public gb As GBitmap

Public Estado As Boolean

Public TablaConv(0 To 16)

Public fMainForm As frmMain

Function OpenDialog(mascara As String, ByVal save As Boolean) As String
  Dim result As String * SizeBuffer
  If PathName = 0 Then
    PathName = GlobalLock(GlobalAlloc(GHND, SizeBuffer))
    masc = GlobalLock(GlobalAlloc(GHND, SizeBuffer))
  End If
  ZeroMemory ByVal PathName, SizeBuffer
  ZeroMemory ByVal masc, SizeBuffer
  ZeroMemory OpenStruct, 19 * 4
  CopyMemory ByVal masc, ByVal mascara, Len(mascara)
  OpenStruct.lStructSize = 19 * 4
  OpenStruct.lpstrFilter = masc
  OpenStruct.lpstrFile = PathName
  OpenStruct.nMaxFile = SizeBuffer
  OpenStruct.Flags = OFN_PATHMUSTEXIST Or OFN_HIDEREADONLY
  OpenDialog = ""
  If save Then
    OpenStruct.Flags = OpenStruct.Flags Or OFN_OVERWRITEPROMPT
    GetSaveFileName OpenStruct
    CopyMemory ByVal result, ByVal PathName, SizeBuffer
    OpenDialog = Left$(result, lstrlen(result))
  Else
    OpenStruct.Flags = OpenStruct.Flags Or OFN_FILEMUSTEXIST
    GetOpenFileName OpenStruct
    CopyMemory ByVal result, ByVal PathName, SizeBuffer
    OpenDialog = Left$(result, lstrlen(result))
   End If
End Function



Sub Main()
    Set fMainForm = New frmMain
    fMainForm.Show
    Estado = False
End Sub

