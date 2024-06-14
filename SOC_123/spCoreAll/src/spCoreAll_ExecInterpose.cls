VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "spCoreAll_ExecInterpose"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Implements IExecInterposeFunctions

Private Function IExecInterposeFunctions_OnAlarmOccurred(alarmList As String) As Variant
 
End Function

Private Function IExecInterposeFunctions_OnAutoCalCompleted() As Variant

End Function

Private Function IExecInterposeFunctions_OnAutoCalStarted() As Variant

End Function

Private Function IExecInterposeFunctions_OnGlobalVariableReset() As Variant

End Function

Private Function IExecInterposeFunctions_OnPostShutDownSite() As Variant

End Function

Private Function IExecInterposeFunctions_OnPreShutDownSite() As Variant

End Function

Private Function IExecInterposeFunctions_OnProgramClose() As Variant

End Function

Private Function IExecInterposeFunctions_OnProgramEnded() As Variant

End Function

Private Function IExecInterposeFunctions_OnProgramFailedValidation() As Variant

End Function

Private Function IExecInterposeFunctions_OnProgramLoaded() As Variant
        ScanDiag_OnProgramLoaded
End Function

Private Function IExecInterposeFunctions_OnProgramValidated() As Variant
        ScanDiag_OnProgramValidated
End Function

Private Function IExecInterposeFunctions_OnProgramStarted() As Variant

End Function


Private Function IExecInterposeFunctions_OnTDRCalibrated() As Variant

End Function

Private Function IExecInterposeFunctions_OnTesterInitialized() As Variant

End Function

Private Function IExecInterposeFunctions_OnValidationStart() As Variant

End Function
