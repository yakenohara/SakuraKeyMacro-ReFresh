

'caution
'
' 1. �w�茅�Ő܂�Ԃ��ݒ�͍l�����Ă��Ȃ�
'
' 2. ��ʒ[�Ő܂�Ԃ��ݒ�́A
'    `((viewColmns - 1) = wrapColmns)` �ł�����ł��邪�A
'    ���̕��@�̓T�N���G�f�B�^�̎����ˑ��ɂȂ�̂Ŏg��Ȃ�
'
'�ܕԂ��ݒ���擾
viewColmns = Editor.GetViewColumns() '���݂̉�ʂɕ\������Ă��錅�����擾
wrapColmns = Editor.ChangeWrapColm(0) '���݂̐ܕԂ��������擾

If (wrapColmns = 10240) Then '�܂�Ԃ��Ȃ��ݒ�̏ꍇ
    wrapMethodType = 0 '�܂�Ԃ��Ȃ��ݒ��ۑ�
    
Else '��ʒ[�Ő܂�Ԃ��ݒ�̏ꍇ
    wrapMethodType = 2 '��ʒ[�Ő܂�Ԃ��ݒ��ۑ�
    
End If

'ReFresh
Editor.FileReopen(0) '�J������
Editor.TextWrapMethod(wrapMethodType) '�܂�Ԃ����@
Editor.GoFileEnd(0) '�t�@�C���̍Ō�Ɉړ�
Editor.GoLineTop(0) '�s���Ɉړ�(�܂�Ԃ��P��)
