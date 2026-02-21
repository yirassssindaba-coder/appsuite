On Error Resume Next
Dim fso, shell, root, hta, rc
Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")

root = fso.GetParentFolderName(WScript.ScriptFullName)
hta = root & "\AppSuite.hta"

If Not fso.FileExists(hta) Then
  MsgBox "AppSuite.hta not found:" & vbCrLf & hta, 16, "AppSuite"
  WScript.Quit 1
End If

shell.CurrentDirectory = root
rc = shell.Run("mshta.exe """ & hta & """", 1, False)

If Err.Number <> 0 Then
  If Err.Number = -2147023673 Then
    MsgBox "Windows canceled the launch (SmartScreen / permission prompt)." & vbCrLf & _
           "Fix:" & vbCrLf & _
           "1) Right-click ZIP/folder -> Properties -> check Unblock -> Apply" & vbCrLf & _
           "2) If SmartScreen appears: More info -> Run anyway", 48, "AppSuite"
  Else
    MsgBox "Failed to launch AppSuite." & vbCrLf & _
           "Error: " & Err.Number & vbCrLf & Err.Description, 16, "AppSuite"
  End If
End If
