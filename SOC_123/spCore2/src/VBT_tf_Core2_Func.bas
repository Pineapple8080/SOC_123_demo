Attribute VB_Name = "VBT_tf_Core2_Func"
Option Explicit

Public Function tf_Core2_Func(Patterns As Pattern)
    
    On Error GoTo errHandler

    TheHdw.Digital.ApplyLevelsTiming True, True, True, tlPowered
    TheHdw.Patterns(Patterns).test pfAlways, 0
    
'    Core2_FuncInfo Patterns
    Core_FuncInfo 2, Patterns
     
    Exit Function
     
errHandler:
    If AbortTest Then Exit Function Else Resume Next

End Function
