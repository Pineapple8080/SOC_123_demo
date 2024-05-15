Attribute VB_Name = "VBT_module_A"
Option Explicit


Public Function test1_func() As Long
    On Error GoTo errHandler
    
    Dim test_R As New PinListData
    
    With TheHdw.PPMU.Pins("dummy_pin1")
        .Connect
        .ForceI 200 * uA
        .Gate = tlOn
        test_R = .Read(tlPPMUReadMeasurements)
    End With
    
    TheExec.Flow.TestLimit resultVal:=test_R, ForceResults:=tlForceFlow
    TheExec.Datalog.WriteComment "End of first Test"
    
    Exit Function
errHandler:
    If AbortTest Then Exit Function Else Resume Next
End Function

