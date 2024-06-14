Attribute VB_Name = "VBT_tf_Core1_Func"
Option Explicit

Public Function tf_Core1_Func(Patterns As Pattern)

    On Error GoTo errHandler
    
    TheHdw.Digital.ApplyLevelsTiming True, True, True, tlPowered
    TheHdw.Patterns(Patterns).test pfAlways, 0
    
'    Core1_FuncInfo Patterns
    Core_FuncInfo 1, Patterns
    
    Exit Function
     
errHandler:
    If AbortTest Then Exit Function Else Resume Next

End Function
