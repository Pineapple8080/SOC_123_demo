Attribute VB_Name = "CoreAll_Utils"
Option Explicit

Public Function Core_FuncInfo(CoreNum As Long, Patterns As Pattern)

    Dim InstanceName As String
    
    On Error GoTo errHandler
    
    InstanceName = TheExec.DataManager.InstanceName

    TheExec.Datalog.WriteComment "*I* Func Test Info"
    TheExec.Datalog.WriteComment "    Core Number  " + CStr(CoreNum)
    TheExec.Datalog.WriteComment "    Test Name:   " + InstanceName
    TheExec.Datalog.WriteComment "    Pattern:     " + Patterns.Value
    TheExec.Datalog.WriteComment "    Logger Rev:  " + Logger_GetRev

    Exit Function
     
errHandler:
    TheExec.Datalog.WriteComment "*E* Core_FuncInfo"

End Function

Public Function Core_ScanInfo(CoreNum As Long, Patterns As Pattern)

    Dim InstanceName As String
    
    InstanceName = TheExec.DataManager.InstanceName

    TheExec.Datalog.WriteComment "*I* Scan Test Info"
    TheExec.Datalog.WriteComment "    Core Number    " + CStr(CoreNum)
    TheExec.Datalog.WriteComment "    Test Name:     " + InstanceName
    TheExec.Datalog.WriteComment "    Pattern:       " + Patterns.Value
    TheExec.Datalog.WriteComment "    Logger Rev:    " + Logger_GetRev
    TheExec.Datalog.WriteComment "    Scan Diag Rev: " + ScanDiag_GetRev

    Exit Function
     
errHandler:
    TheExec.Datalog.WriteComment "*E* Core_ScanInfo"

End Function

Public Function Core_MBistInfo(CoreNum As Long, Patterns As Pattern)

    Dim InstanceName As String
    
    InstanceName = TheExec.DataManager.InstanceName

    TheExec.Datalog.WriteComment "*I* MBist Test Info"
    TheExec.Datalog.WriteComment "    Core Number    " + CStr(CoreNum)
    TheExec.Datalog.WriteComment "    Test Name:     " + InstanceName
    TheExec.Datalog.WriteComment "    Pattern:       " + Patterns.Value
    TheExec.Datalog.WriteComment "    Logger Rev:    " + Logger_GetRev
    TheExec.Datalog.WriteComment "    MBist Lib Rev: " + MBIST_GetRev

    Exit Function
     
errHandler:
    TheExec.Datalog.WriteComment "*E* Core_MBistInfo"

End Function


