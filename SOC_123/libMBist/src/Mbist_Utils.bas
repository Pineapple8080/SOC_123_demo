Attribute VB_Name = "Mbist_Utils"
Option Explicit

Private Const MBistRev = "1.2.3"
    
Public Function AboutMBist()
    
    Mbist_frmAbout.MBist_lblRev.Caption = "Version " + MBistRev
    Mbist_frmAbout.Show
    
End Function

Public Function MBIST_GetRev() As String

    MBIST_GetRev = MBistRev
    
End Function

