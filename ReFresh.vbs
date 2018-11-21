

'caution
'
' 1. 指定桁で折り返す設定は考慮していない
'
' 2. 画面端で折り返す設定は、
'    `((viewColmns - 1) = wrapColmns)` でも判定できるが、
'    この方法はサクラエディタの実装依存になるので使わない
'
'折返し設定を取得
viewColmns = Editor.GetViewColumns() '現在の画面に表示されている桁数を取得
wrapColmns = Editor.ChangeWrapColm(0) '現在の折返し桁数を取得

If (wrapColmns = 10240) Then '折り返さない設定の場合
    wrapMethodType = 0 '折り返さない設定を保存
    
Else '画面端で折り返す設定の場合
    wrapMethodType = 2 '画面端で折り返す設定を保存
    
End If

'ReFresh
Editor.FileReopen(0) '開き直す
Editor.TextWrapMethod(wrapMethodType) '折り返し方法
Editor.GoFileEnd(0) 'ファイルの最後に移動
Editor.GoLineTop(0) '行頭に移動(折り返し単位)
