MouseGesture.ahk	by AutoHotkey�𗬍s�点��y�[�W�Ǘ��l

���T�v
�}�E�X�{�^�������J�[�\���ړ��Ȃǂ̑g�ݍ��킹�ɗl�X�ȓ�������蓖�Ă�B
�J�[�\�����E�B���h�E�̏����Ȃǂɉ����ĕʂ̓�������蓖�Ă邱�Ƃ��\�B

����ɂ�AutoHotkey(http://www.autohotkey.com/)���K�v�B


���t�@�C������
readme.txt
    ���̐���
MouseGesture.ahk
    �}�E�X�W�F�X�`���X�N���v�g�{��
MG_Edit.ahk
    �ݒ�ҏW��MG_Config.ahk�̐������s���B�ʏ�̓��j���[����Ăяo���B
    �����Ɂu/ini2ahk�v��t���Ď��s����ƁAMG_Config.ahk�̐����̂ݍs��

MouseGesture.ini
    �ݒ��ۑ�����ini�t�@�C��
MouseGesture.ini.sample
    �f�t�H���g��ini�t�@�C��(�A�b�v�f�[�g���ɏ㏑������Ȃ��悤�ɕʖ��Ƃ���)
MG_User.ahk
    �A�v���P�[�V������`��Custom������A�W�F�X�`���Ɋ��蓖�Ă铮�삩��
    ���p���邽�߂̃T�u���[�`����֐����`���Ă����X�N���v�g�B
MG_Config.ahk
    ini�t�@�C�����琶�������J�X�^�������̃X�N���v�g
MG_Buttons\
    �{�^����`���W���[�����i�[����t�H���_
MG_ScreenEdge\
	��ʒ[�F���@�\�̃X�N���v�g���W���[���ƃ{�^����`���W���[��
	�g�������ꍇ�́A����readme.txt���Q��


���g�p���@
�P�Ƃŗ��p����ꍇ�́AMouseGesture.ahk��AutoHotkey�Ŏ��s����΂悢�B
�g���C�A�C�R���̃��j���[�ɒǉ������T�u���j���[����A�ȉ��̑��삪�s����B

�L��                �W�F�X�`���̊J�n�g���K�[�̗L��/������؂�ւ�
�i�r�\��            ���͒��W�F�X�`���̃c�[���`�b�v�\����L��/������
�g���X�N���v�g�ҏW  �uMG_User.ahk�v���G�f�B�^�ŊJ��
�ċN��              ��`�X�N���v�g���Đ�����A�X�N���v�g���ċN������
�ݒ�ҏW            �ݒ��ʂ��J��

#Include�ő��̃X�N���v�g�ɑg�ݍ��ޏꍇ�́A�g����X�N���v�g�Ɠ����t�H���_��
�S�Ẵt�@�C���E�t�H���_��u���B
��������������#Include���������A�uGosub,MG_Init�v�����s���邱�ƁB


���T�u���[�`��
�z�b�g�L�[�⃁�j���[�Ȃǂ��痘�p���邽�߂ɁA�ȉ��̃T�u���[�`�����p�ӂ���Ă���B

Gosub,MG_NaviToggleEnable:    �i�r�\����ON/OFF
Gosub,MG_Enable:              �J�n�g���K�̗L����
Gosub,MG_Disable:             �J�n�g���K������
Gosub,MG_ToggleEnable:        �J�n�g���K�̗L��/�����؂�ւ�
Gosub,MG_Edit:                �ݒ��ʕ\��
Gosub,MG_EditUser:            MG_User.ahk�ҏW
Gosub,MG_Reload:              ��`�X�N���v�g���Đ�����A�X�N���v�g���ċN��



���ݒ���
�S�̂ŋ��ʂ̃{�^���̖����͈ȉ��̒ʂ�
 +          �����E�W�F�X�`����`��V�K�쐬
 -          �I�����ڂ��폜
 C          �I��������`��ini�`���e�L�X�g���N���b�v�{�[�h�ɃR�s�[
 ��         �I�����ڂ���Ɉړ�
 ��         �I�����ڂ����Ɉړ�

 �ύX       �ҏW���̒�`���̕ύX
 �ǉ�       �ҏW���̃��[���A�W�F�X�`���p�^�[���A���슄�蓖�Ă�V�K�ɓo�^
 �X�V       �ҏW���̃��[���A�W�F�X�`���p�^�[���A���슄�蓖�Ă��㏑��

 OK         �ݒ��ۑ����A�X�N���v�g�ɔ��f������
 �L�����Z�� �ݒ��ۑ������ɏI������
 
 �N���b�v�{�[�h����C���|�[�g
            �N���b�v�{�[�h����ini�`���e�L�X�g�����`��ǉ�����

�N���b�v�{�[�h�ւ̃R�s�[�E�C���|�[�g�ł́A�f���Ȃǂ֓\��t���邱�Ƃ��l�����A
Tab�������yTAB�z�ɒu�������B


���u������`�v�^�u
�\�t�g���Ƃ�u�^�C�g���o�[��v�Ȃǂ̏����ɉ��������슄�蓖�Ă�����ꍇ�A
���炩���߂����ŏ������`���Ă����B
��`���ɂ́A���p�p�����Ɓu_�v�̂ݎg�p�ł��A���̒�`�Ɠ������O�͕t�����Ȃ��B
�uDisable�v������`�ɂ́A�W�F�X�`���̔F���������̂𖳌����������\�t�g�Ȃǂ�
������񋓂���B���̏�����`�́A�폜�E���l�[���ł��Ȃ��B

������ʂƏ����l����͂��A�u�ǉ��v�u�X�V�v�œo�^����B
�ЂƂ̒�`�ɑ΂��āA�����̃��[����o�^�ł���B
�ʏ�́A���[���̂ǂꂩ�ЂƂɈ�v����Ώ����Ɉ�v�Ƃ݂Ȃ���邪�A
�u���ׂĂɈ�v�v���I������Ă���ƁA�񋓂��ꂽ���ׂẴ��[���Ɉ�v�����Ƃ��̂�
���̏�����`�Ɉ�v�������̂Ƃ݂Ȃ����悤�ɂȂ�B

�e������ʂ̈Ӗ��͈ȉ��̒ʂ�
  WClass     �^�[�Q�b�g�E�B���h�E�̃N���X�����l�Ɏw�肵��������ƈ�v���邩
  CClass     �^�[�Q�b�g�R���g���[���̃N���X�����l�Ɏw�肵��������ƈ�v���邩
  Exe        �^�[�Q�b�g�E�B���h�E�����L����v���Z�X�̖��O���l�ƈ�v���邩
  Title      �^�[�Q�b�g�E�B���h�E�̃^�C�g�����l�Ɏw�肵��������ƈ�v���邩
  Custom     �l�Ɏw�肵��AutoHotkey�̏��������^�ɂȂ邩
  Include    �l�Ɏw�肵��������`�Ɉ�v���Ă��邩

�^�[�Q�b�g�E�B���h�E�A�^�[�Q�b�g�R���g���[���Ƃ́A�W�F�X�`�����J�n���ꂽ�Ƃ���
�}�E�X�J�[�\�����ɂ������E�B���h�E��R���g���[���̂��Ƃł���B
�N���X���́A�E�B���h�E�̎�ނ����ʂ��邽�߂ɕt�����閼�O�̂��ƁB

��ʑI�𗓂̉E�́u���́v�{�^���������ƁA�l�̓��͕⏕�@�\�����s�����B
Custom�ł͏������e���v���[�g�̑I�����j���[�AInclude�ł͏�����`�I�����j���[
���\������A����ȊO�ł͎w��E�B���h�E����l���擾����@�\�����s�����B


���u�W�F�X�`����`�v�^�u
�F�����������W�F�X�`���̃p�^�[����o�^����B
�ЂƂ̃W�F�X�`����`�ɑ΂��ĕ����̃W�F�X�`���p�^�[����o�^�ł���B
�������e�̃W�F�X�`���́A�S�̂ň���������o�^�ł��Ȃ��B

�W�F�X�`���p�^�[���́A�J�[�\���ړ���{�^���̉��������E�����グ�ɑΉ�����������
���q�������̂ŕ\�����B�ڂ����d�l�͌�q�B
���͗��Ƀp�^�[�����������͂��A�u�ǉ��v�u�X�V�v�ŁA���X�g�ɓo�^����B
�����̓��̓p�l���ŃX�g���[�N��\���{�^�����N���b�N������A�{�^�������X�g
���_�u���N���b�N���邱�ƂŁA���͗��Ƀp�^�[���������ǉ��ł���B
�u-�v�{�^���ŁA�����̓������폜�ł���B
���͗��𒼐ڕҏW���邱�Ƃ��\�B


���u���슄�蓖�āv�^�u
�W�F�X�`����`�œo�^�����W�F�X�`�����F�����ꂽ�Ƃ��Ɏ��s����铮���ݒ肷��

�u�����v�ŁA������`�œo�^����������I�����A�u����v�ł��̏����Ɉ�v����Ƃ���
���s����铮���ݒ肵�A�u�ǉ��v�u�X�V�v�{�^���œo�^����B
�����ŁuDefault�v��I������ƁA���̊��蓖�čςݏ����Ɉ�v���Ȃ������Ƃ���
�����ݒ�ł���B
�����ɕ����̏����𖞂����ꍇ�ɂ́A��ԏ�̊��蓖�Ă݂̂����s�����悤�ɂȂ�B

�u����v��AutoHotkey�̃X�N���v�g�Ŏw�肷��B
���̃h���b�v�_�E�����X�g�Ńe���v���[�g��I�����āu���́v�{�^�����������ƂŁA
�悭�g���铮��̓��͂��\�ł���B
�������A�p�����[�^����ǉ��ŋL�q���Ȃ���΂Ȃ�Ȃ����̂�����B
���ɂ悭�g����L�[���쑗�M�R�}���h�uSend�v�̎g�����ɂ��ẮA���LURL���Q�ƁB
http://lukewarm.s101.xrea.com/commands/Send.html
Win�`�n�R�}���h�ŃE�B���h�E�w��̈������ȗ������Ƃ��́A�^�[�Q�b�g�E�B���h�E
���ΏۂƂȂ�B�������ASend�R�}���h�ȂǁA�^�[�Q�b�g�E�B���h�E�Ɋ֌W�Ȃ�
Windows�S�̂ɑ΂��č�p����R�}���h������B
���̑����x�ȋ@�\�ɂ��Ă͌�q�B


���u�ݒ�v�^�u
�e��̐ݒ��ύX����

�E�u�X�g���[�N�F���ɕK�v�ȃs�N�Z�����v
�W�F�X�`���F�����ɂ��̋����ȏ�J�[�\�����ړ�����ƃX�g���[�N�Ƃ��ĔF�������B
�������X�g���[�N�ɂ��Ă͌�q�B

�E�u�^�C���A�E�g�v
�u�ړ��J�n�Ƃ݂Ȃ���Ȃ��s�N�Z�����v�ȏ�J�[�\������������ŁA
�u��~�Ƃ݂Ȃ����ԁv�ȏ�J�[�\�����~������ƁA�W�F�X�`���̔F�����ł��؂���B

�E�u�X�g���[�N�F���̃C���^�[�o���v
�傫������ƔF�������̕��ׂ����邪�A�F�����x�͒ቺ����B

�E�u�A�N�e�B�u�E�B���h�E���^�[�Q�b�g�ɂ���v
�W�F�X�`���J�n���̃J�[�\�����̃E�B���h�E�E�R���g���[���ł͂Ȃ��A
�A�N�e�B�u�E�B���h�E�ƃt�H�[�J�X�̂������R���g���[�����^�[�Q�b�g�Ƃ݂Ȃ��B

�E�u�N��������i�r��L���v
���͒��̃W�F�X�`����������c�[���`�b�v�\������@�\���N��������ON�ɂ���B

�E�u���i�r�v
�W�F�X�`��������̑��ɁA���͂��ꂽ�X�g���[�N����ŕ\������

�E�u���������[�h�v
�X�g���[�N��4�����ł͂Ȃ�8�����ŔF������

�E�u�΂߂̍L���v
�^�΂�(45,135,225,315�x)�𒆐S�ɉ��x�͈̔͂��΂߂Ƃ݂Ȃ����B
0�ɂ���Əc���݂̂ɁA90�ɂ���Ǝ΂߂݂̂ɂȂ�B45�x�ŁA�c����45�x��8�����ƂȂ�B
�΂߂�F�����₷���������ꍇ��60�A�F������ɂ����������ꍇ��30�Ƃ���Ƃ����B
��1�X�g���[�N�̂ݎ΂߂��g�p����ꍇ�A�u�c���̌�v�u�΂߂̌�v��0�ɂ���B
�c���ŊJ�n�����Ƃ��͏c���̂݁A�΂߂ŊJ�n�����Ƃ��͎΂߂݂̂ɂ���ꍇ�́A
�u�c���̌�v��0�ɁA�u�΂߂̌�v��90�ɂ���B

�E�u�V�K�{�^����`�v
�u�L�[�v�Ŏw�肵���L�[���u���O�v�Ŏw�肵���{�^���Ƃ��ĔF�������悤�ɂȂ�B
�Ⴆ�΁A���{�^���}�E�X�̃h���C�o���[�e�B���e�B�ő�6�{�^����F13�L�[�����蓖�Ă�
�u���O�v��X3B�A�u�L�[�v�ɁuF13�v�Ɠ��͂��āu���s�v�������΁A
��6�{�^�����uX3B�v�Ƃ��āu�W�F�X�`����`�v�^�u�̃{�^���ꗗ�ɒǉ������B
�u�L�[�v�ɋL�q����L�[���ɂ��ẮA���LURL���Q�ƁB
http://lukewarm.s101.xrea.com/KeyList.html

���E�`���g���6�`12�{�^�����W�F�X�`����`���̃{�^�����ꗗ�ɐ������\����������
�ꍇ�́A�{�^���������ꂼ��uLT�v�uRT�v�uX3B�v�`�uX9B�v�Ƃ��Ē�`���邱�ƁB
����ȊO�̖��O�œo�^���ꂽ�{�^���́A�P�Ƀ{�^�����݂̂��\�������B


���ݒ��ʂɂȂ��ݒ荀��
���L�̐ݒ�́AMG_User.ahk�̏����������ɋL�q����
�w�肪�Ȃ���΃f�t�H���g�l���g����

;;;;;���i�r�̐ݒ�
MG_ExNaviFG=000000		;�����F(�e����RRGGBB��\��6����16�i��)
MG_ExNaviBG=			;�w�i�F(�V�B�󔒎��͓���)
MG_ExNaviSize=24		;�����T�C�Y
MG_ExNaviSpacing=2		;�����̊Ԋu
MG_ExNaviPadding=4		;�����Ɖ��̊Ԋu
MG_ExNaviMargin=8		;�J�[�\������̋���(-1�ɂ���ƁA�J�n�ʒu�ɌŒ�\��)

MG_ExNaviFG_RB=			;RB/X1B/X2B�Ȃǃ{�^�����ƂɐF��ς���ꍇ�Ɏw��

;;;;;;�W�F�X�`��������̏�ԂɂȂ����Ƃ��A�o�������Ȃǂ̃e�L�X�g��\��
MG_Tooltip_(�W�F�X�`����`������)=
(
�W�F�X�`���̊��蓖�ĕ\�Ȃ�
)

���W�F�X�`���̎d�l

���{�^������
�{�^���̉��������́A�{�^�����ɑ����āu_�v��t����������(��:LB_)�ŕ\���B
������Ԃŗp�ӂ���Ă���{�^�����́A�uLB(��)�v�uRB(�E)�v�uMB(�z�C�[��)�v
�uX1B(��4)�v�uX2B(��5)�v�uWU(�z�C�[������])�v�uWD(�z�C�[������])�v�ł���B
�u�V�K�{�^����`�v�@�\���q�̃{�^����`���W���[���Œǉ��\�B

�{�^�����������́A�{�^���̎�ނ͋�ʂ����u_�v�ŕ\���B
�N���b�N(�{�^���������ė���)�́A�uLB__�v�uRB__�v�̂悤�ɕ\�����ƂɂȂ�B
�z�C�[����]�ɂ́A�{�^�����������͑��݂��Ȃ��B


���X�g���[�N
�{�^�����������܂܃J�[�\���𓯂������Ɉ��ʓ������ƁA�X�g���[�N�Ƃ݂Ȃ����B
4�������[�h�ł́A�㉺���E�ւ̃X�g���[�N�����ꂼ��uU�v�uD�v�uL�v�uR�v�ŕ\���B
8�������[�h�ł́A���L�̂悤�Ƀe���L�[��̈ʒu�ɑΉ����������ŕ\���B

7  8  9
 �_|�^ 
4�| �|6
 �^|�_ 
1  2  3

8�������[�h�ł́A�u�΂߂̍L���v�̐ݒ肪�\�B
�����ݒ�ł́A�e����45�x�ł���B���̏ꍇ�̏c���̍L����45�x�ƂȂ�B
�΂߂�60�x�ɐݒ肵���ꍇ�c����30�x�A30�x�ɐݒ肷���60�x�ɂȂ�B
����ɂ��A�c���������͎΂߃X�g���[�N�̂ǂ��炩��F������Ղ��ł���B

��1�X�g���[�N�ƁA�c���X�g���[�N�̌�A�΂߃X�g���[�N�̌�ňقȂ�ݒ���\�ŁA
���ꂼ��L����0�x��90�x�ɂ��邱�Ƃ��ł���B
����ɂ��A�c���Ŏn�߂��ꍇ�͏c���X�g���[�N�݂̂Ƃ��A��1�X�g���[�N�̂�8����
�Ƃ������ݒ���\�ł���B


���������X�g���[�N
�u�ݒ�v�^�u�́u�ʏ�X�g���[�N�v�Ŏw�肵���ȏ�̈ړ��ł���΁A
���s�N�Z���ł�1�X�g���[�N�Ƃ݂Ȃ���邪�A��3�̐ݒ�Ŏw�肵�������𒴂����
�uLL�v�uRR�v�uUU�v�uDD�v�̂悤�Ȓ������X�g���[�N�Ƃ��ĔF�������B

�f�t�H���g�ݒ�͂��Ȃ�傫�߂Ȃ̂ŁA��ʓI�ȃf�B�X�v���C�ł�2�i�K�܂łł��邪�A
�ݒ�l������������΁uLLL�v�̂悤��3�i�K�ȏ�̃X�g���[�N���\�ł���B


����ʒ[�ւ̐ڐG�̔F��
�J�[�\������ʒ[�ɒB���邱�Ƃ��{�^������Ƃ��ĔF������@�\���p�ӂ���Ă���B
�ڍׂ́uMG_ScreenEdge�v�t�H���_���Q�ƁB


���W�F�X�`���̘A������
�uRB_MB__�v��uRB_L�v�̂悤�ȃW�F�X�`������������ƁA�����������̃{�^���ȊO��
���e�����Z�b�g����A�uRB_�v�܂œ��͂��ꂽ��Ԃ���F���������ĊJ�����B
���ׁ̈A�����̃W�F�X�`���́A�{�^�����������܂܉��x�ł��A�������ł���B

�Ȃ��A�uRB_MB_�v�ɓ��삪���蓖�Ă��Ă���ꍇ�A�z�C�[���{�^���������ꂽ���_��
�W�F�X�`�����������A���̌�uRB_MB_�v�̏�Ԃ���F�������s�����B
���̌�z�C�[���{�^��������ƁuRB_MB__�v�̏�ԂɂȂ�B


���u�������ςȂ��ŘA�������v����������ɂ�
�uRB_LB_�v�ȂǁA�{�^�����������������_�Ŕ�������W�F�X�`���ɁA
���L�̂悤�ȓ�������蓖�Ă�B
MG_While()�֐��̏ڍׂɂ��Ă͌�q�B

if(MG_While()){
	;�����Ă���Ԃ̓���
}else{
	;�������Ƃ��̓���
}


���_�u���W�F�X�`��
�ʏ�A�uRB_LR_�v��uRB__�v�̂悤�ȑ��삪���s����A�S�Ẵ{�^���������ꂽ
��ԂɂȂ�ƁA���͒��̃W�F�X�`�����e�͊��S�ɔj�������B
���ׁ̈A�uRB__RB__�v�̂悤�ȁA�r���őS�{�^�����������W�F�X�`���͔F���ł��Ȃ��B

�������A�u�ݒ�v�^�u�̃_�u���W�F�X�`���̊Ԋu�����ݒ肵�Ă����ꍇ��A
�uRB__�v�̊��蓖�ē���ŁuMG_Wait(500)�v�̂悤�ȏ��������s�����ꍇ�́A
�w�肳�ꂽ����(�~���b)�����W�F�X�`���̒ǉ����͂��\�ƂȂ�B

����ɂ��uWU_�v��uWD_�v�Ȃǂ̉������ςȂ��ɂȂ�Ȃ��{�^������J�n����
�W�F�X�`������`�ł��邪�A����ɂ̓W�F�X�`���̊J�n�{�^���Ƃ��Ďg���Ă���
�{�^�������g�ݍ��߂Ȃ��B
�Ⴆ�΁A�uX1B_�v�Ŏn�܂�W�F�X�`�������݂��Ȃ��ꍇ�A�uWU_X1B__�v�̂悤��
�W�F�X�`�����`���Ă��F������Ȃ��B


���^�C���A�E�g
�F���������ɁA�����J�[�\�����ړ����Ă��炵�΂炭��~����ƁA�^�C���A�E�g�ɂȂ�B
���̎��_�ŉ����������̃{�^���̉�����������ƃJ�[�\���ړ����Č����ꂳ��A
�ȍ~�͕��ʂ̃}�E�X���삪�\�ɂȂ�B�ED&D���������Ƃ��Ȃǂɗ��p����B

�uMG_Abort()�v�����蓖�Ă�΁A�����Ƀ^�C���A�E�g��Ԃɂ��邱�Ƃ��\�B


���������Z�b�g
�F�����̃W�F�X�`�������񂪒�`����Ă���W�F�X�`��������̍ő咷�𒴂���ƁA
�����I�ɉ����������̃{�^���ȊO�̓��e���N���A���ꂽ��ԂɂȂ�B



�������`
�X�N���v�g�Ŏg�p�ł���@�\�̏ڍׂ́A���LURL�̃��t�@�����X���Q�ƁB
�L�[����𔭐�������Send�R�}���h��A�E�B���h�E�֘A�R�}���h���悭�g����B
http://lukewarm.s101.xrea.com/
http://lukewarm.s101.xrea.com/commands/Send.html
http://lukewarm.s101.xrea.com/commands/index.html#window
�E�B���h�E�֘A�R�}���h�ł́A�f�t�H���g�̑ΏۃE�B���h�E���^�[�Q�b�g�E�B���h�E��
�Ȃ��Ă���̂ŁA�ΏۃE�B���h�E���w�肷������͏ȗ��\�ł���B

���������Ȃ���΁A�P�ɓ��͍ς݃W�F�X�`���̃��Z�b�g�݂̂��s����B

���蓖�Ă����쎩�̂́A�Ȃ�ׂ������ɏI������悤�ɂ��邱�ƁB
�_�C�A���O�̕\���Ȃǂ��s�������ꍇ�́A��q��MG_Timer()�𗘗p����B



�����[�e�B���e�B�ϐ��E�֐�
������`�́uCustom�v������A�W�F�X�`���Ɋ��蓖�Ă铮��ł́A
�ȉ��̕ϐ���֐��𗘗p�ł���B
�Ȃ��A������`�Œ�`������������́A�uMG_Is�ݒ薼�v�Ƃ������O�̊֐��Ƃ���
��`�����B

MG_Gesture      ���͒��̃W�F�X�`��������
MG_TickCount    �W�F�X�`���J�n����A_TickCount�̒l(����̎��_����̌o�߃~���b)
MG_X            �W�F�X�`���J�n���W(��)
MG_Y            �W�F�X�`���J�n���W(�c)
MG_HWND         �W�F�X�`���J�n���W�ł̃}�E�X���E�B���h�E�̃n���h��
MG_HCTL         �W�F�X�`���J�n���W�ł̃}�E�X���R���g���[���̃n���h��
MG_PID          �^�[�Q�b�g�E�B���h�E�����L����v���Z�X��PID
MG_Exe          �^�[�Q�b�g�E�B���h�E�����L����v���Z�X�̖��O
MG_WClass       �^�[�Q�b�g�E�B���h�E�̃N���X��
MG_CClass       �^�[�Q�b�g�R���g���[���̃N���X��
MG_Title        �^�[�Q�b�g�E�B���h�E�̃^�C�g��
MG_Executed     ����̃W�F�X�`���F�����ɔ��������W�F�X�`���̐�

MG_GetFocus()
	�t�H�[�J�X�̂���R���g���[���̃n���h���𓾂�
MG_Win(cmd)
	�^�[�Q�b�g�E�B���h�E����WinGet(�ڍׂ͉��LURL�Q��)�ŏ����擾�B
	cmd�ɂ�"PID"�A"Transparent"�A"TransColor"�A"Style"�A"ExStyle"�Ȃ�
    http://lukewarm.s101.xrea.com/commands/WinGet.html
MG_WinX()
	�^�[�Q�b�g�E�B���h�E�̉����W��Ԃ�
MG_WinY()
	�^�[�Q�b�g�E�B���h�E�̏c���W��Ԃ�
MG_WinW()
	�^�[�Q�b�g�E�B���h�E�̕���Ԃ�
MG_WinH()
	�^�[�Q�b�g�E�B���h�E�̍�����Ԃ�
MG_CIndex()
	�^�[�Q�b�g�E�B���h�E��ɂ��铯�N���X�R���g���[�����ł�
	�^�[�Q�b�g�R���g���[���̏��ʂ�1����̐����ŕԂ��B
	���̒l�͒ʏ�A�R���g���[�����������ꂽ���ԂɂȂ�B
	�����E�B���h�E�ł��A���ʕt�����ϓ�����ꍇ������̂ŁA���܂蓖�ĂɂȂ�Ȃ��B
MG_ControlX()
	�^�[�Q�b�g�R���g���[���̃E�B���h�E���ł̉����W��Ԃ�
MG_ControlY()
	�^�[�Q�b�g�R���g���[���̃E�B���h�E���ł̏c���W��Ԃ�
MG_ControlW()
	�^�[�Q�b�g�R���g���[���̕���Ԃ�
MG_ControlH()
	�^�[�Q�b�g�R���g���[���̍�����Ԃ�
MG_ExePath(pid)
	�^�[�Q�b�g�E�B���h�E(PID�w�莞�͂��̃v���Z�X)�̎��s�t�@�C���p�X���擾
MG_CommandLine()
	�^�[�Q�b�g�E�B���h�E�̏��L�v���Z�X�̃R�}���h���C�����擾����B
	�X�N���v�g�z�X�g�ȂǂŎ��s����Ă���v���O�����ŁA�����ƂȂ����X�N���v�g��
	�t�@�C�������肪����ɔ��ʂ��s�������Ƃ��Ɏg�p����B
	�����̈�v����ɂ́uInStr()�v��uRegExMatch()�v���g���B
MG_HitTest(c)
	�^�[�Q�b�g�E�B���h�E(c=1�Ȃ�R���g���[��)��̏ꏊ�̎�ނ�Ԃ�
    ��ȕԂ�l��"Client","Menu","HScroll","VScroll","Border","SizeBorder",
    "Caption","SysMenu","MinButton","MaxButton","CloseButton","HelpButton"�B
    SysMenu�Ƃ����̂́A�^�C�g���o�[���[�̃A�C�R���̂��ƁB
MG_LvHitTest()
	�^�[�Q�b�g�R���g���[�������X�g�r���[�̎��A�J�[�\�����ɂ�����̂̎�ނ�Ԃ�
	�Ԃ�l�́A���X�g�r���[�ȊO�ł�""�A�����Ȃ��Ƃ���ł�0�A���̑��͉��L������B
	"ItemIcon","ItemLabel","ItemState"(�s�I���^�ڍו\���̎���2��ڈȍ~�Ȃ�)
MG_TvHitTest()
	�^�[�Q�b�g�R���g���[�����c���[�r���[�̎��A�J�[�\�����ɂ�����̂̎�ނ�Ԃ�
	�Ԃ�l�́A�c���[�r���[�ȊO�ł�""�A�����Ȃ��Ƃ���ł�0�A���̑��͉��L������B
	"ItemIcon","ItemLabel","ItemState"(�s�I���^�ڍו\���̎���2��ڈȍ~�Ȃ�)
	"Indent"(���ڂ̍�),"Button"(�T�u�A�C�e���̊J�{�^��),"Right"(���ڂ̉E)
MG_TreeListHitTest()
	�J�[�\�����c���[�r���[�A���X�g�r���[�̃A�C�e����ɂ��邩�ǂ�����Ԃ�
MG_GetCursor()
	�^�[�Q�b�g�E�B���h�E�ɂ�����A���݂̃}�E�X�J�[�\���̃n���h���𓾂�B
	Windows�W���̃J�[�\���𔻕ʂ��鎮�́A�J�X�^���������̓��͕⏕���j���[����
	�I�����ē��͂ł���B
MG_DumpWinInfo()
	�^�[�Q�b�g�E�B���h�E�A�R���g���[���̃N���X�A�ʒu�Ȃǂ̏���񋓂���
	�������Ԃ��B�uMsgBox,% MG_DumWinInfo()�v�ȂǂƂ��Ďg���B


MG_Send(btn,DorU)
    �{�^��������G�~�����[�g����Bbtn�̓{�^����(�u"RB"�v�Ȃ�)
    DorU��"D"�Ȃ牟�������A"U"�Ȃ牟���グ�A���w�莞�̓N���b�N�B
MG_Move(x,y)
    �}�E�X�J�[�\�����w����W�Ɉړ�����
    x,y���ȗ������ꍇ�A�W�F�X�`���̊J�n���W�Ɉړ�����
MG_Scroll(x=0,y=0,hctl=MG_HCTL)
	hctl�Ŏw�肵���R���g���[��������x�J�E���g�A�c��y�J�E���g�X�N���[��������
	1�J�E���g�ӂ�̈ړ��ʂ́A�R���g���[�����ƂɈႤ
MG_InstantScroll(stay=1,ppc_x=8,ppc_y=12,hctl=MG_HCTL)
	�W�F�X�`���J�n�ʒu����̑��΋����ɉ����ăX�N���[��������
	ppc_x,ppc_y�́A1�J�E���g�X�N���[��������̂ɕK�v�Ȉړ���
	MG_While()�Ƒg�ݍ��킹�Ďg���B
	stay=1�ł́A�X�N���[�����������J�[�\���ʒu���߂�
	stay=0�ɂ���ƃJ�[�\���ʒu���߂炸�AIE�̃z�C�[���{�^���̂悤�ȓ���ɂȂ�
MG_DragScroll(ppc_x=8,ppc_y=12,hctl=MG_HCTL)
	�R���g���[�����h���b�O���Ĉړ�����悤�Ȋ����ɃX�N���[��������
MG_DropFiles(filenames=Clipboard,target=ahk_id %MG_HWND%)
	�t�@�C�����E�B���h�E�Ƀh���b�v����BWM_DROPFILES���g�p�B
	�������́A�h���b�v����t�@�C�����B���s��؂�ŕ����w��\�B
	���������ȗ������ꍇ�́A�N���b�v�{�[�h���̃t�@�C��/�t�@�C�����B
	�������́APostMessage�̃E�B���h�E�w��Ŏg����^�C�g�����B
	���������w�莞�̓^�[�Q�b�g�E�B���h�E���w�肳���B
MG_FilesToClipboard(flilenames,isMove=0)
	�w��t�@�C�����G�N�X�v���[���Ȃǂɓ\��t����`���ŃN���b�v�{�[�h�ɃR�s�[
	�������́A�h���b�v����t�@�C�����B���s��؂�ŕ����w��\�B
	��������1�ɂ���ƁA�\��t�����Ƃ��ɃR�s�[�ł͂Ȃ��ړ������悤�ɂȂ�B


MG_Abort()
    �W�F�X�`�����ɋ����I�Ƀ^�C���A�E�g������
MG_Counter(name=MG_Gesture,count=2)
	����name�ł��̊֐����Ă΂ꂽ�񐔂��J�E���g����B
	name���w�莞�́A���͒��̃W�F�X�`�������񂪎g����B
	���s���邲�ƂɈ��̏��Ԃŕʂ̓���𔭐����������ꍇ�ȂǂɎg�p����B
	count��2�ȏ�̏ꍇ�́A���̐��Ŋ������]��(0�`count-1)��Ԃ��B
	count��1�̏ꍇ�́A�l��0�Ƀ��Z�b�g�����B
	count��0�̏ꍇ�́A�J�E���g�𑝂₵����ŁA���݂̃J�E���g����Ԃ��B
	count��-1�̏ꍇ�́A�J�E���g���𑝂₳���ɁA���݂̃J�E���g����Ԃ��B
	�Ⴆ�΁Acount��2�Ȃ�A���s���邲�Ƃ�0,1�����݂ɕԂ����B
	count�����̏ꍇ�́A���݂̒l�̎擾�݂̂��s���B
MG_Wait(ms=0)
    ���蓖�Ă�������Ŏ��s����ƁA�W�F�X�`���������L�����Z�������ƂȂ�A
    ���͍ς݃W�F�X�`���̃��Z�b�g���s��ꂸ�A�����ē��͉\�ɂȂ�B
    ms�őҋ@�~���b�����w�肷��ƁA�_�u���W�F�X�`���̎�t�҂����s���B
    ����́A�_�u���W�F�X�`���̋N�_�ɂ������W�F�X�`�������Ȃ��ꍇ�Ɏg���B
MG_Timer(ms)
    ���ԍ����s�̃^�C�}�[���Z�b�g����Bms�ɑ҂�����(�~���b)���w��B
    �������}�C�i�X�ɂ����l���w�肵���ꍇ�AMG_Wait()�����s�����B
    ���̏ꍇ�A�҂����Ԃ܂ł̊Ԃɓ��͓��e���ω�����ƁA�^�C�}�[�͎��s����Ȃ��B
    �_�u���N���b�N�Ɓu1��̂݁v�̃N���b�N�œ���𕪂���Ƃ��ȂǂɎg���B
    ms���ȗ�����ƁA�W�F�X�`���F�������̏I����҂B
    ����́A�_�C�A���O�\���Ȃǂ̎��Ԃ̊|���鏈�������蓖�Ă�Ƃ��Ɏg���B
    �^�C�}�[�����s�����ƁA�����W�F�X�`���T�u���[�`�����ēx���s�����B
    ���̊֐��́A�^�C�}�[�o�^�������ꍇ��1�A�^�C�}�[�ŌĂ΂ꂽ�ꍇ��0��Ԃ��B
    ���蓖�Ă�������̑O�Ɂuif(MG_Timer())	return	�v�����������Ďg���B
MG_Defer()
	�u!MG_Timer()�v��Ԃ��B
	�W�F�X�`���̔F���I����҂��Ēx�����s����Ƃ��Ɏg���B
MG_While(ms=20)
	�uRB_�v��uRB_LB_�v�Ȃǂ̃{�^����������Ă���Ԓ��J��Ԃ����s������A
	�{�^����������Ƃ��ɓ���̓�������s�����肷��B
	�W�F�X�`��������Ăяo���Ɠo�^����A�{�^�����������Ɖ��������B
	ms������1�ȏ�̏ꍇ�Ams�~���b���Ƃɓ����W�F�X�`���T�u���[�`�������s�����B
	�{�^���������ꂽ�Ƃ��ɂ́A��ɓ����W�F�X�`���T�u���[�`�������s�����B
	���̊֐��́A�o�^���ƌJ��Ԃ����s���́u1�v��Ԃ��A�������́u0�v��Ԃ��B
	�܂��A�uMG_WhileState�v�ϐ������o�^����0�A�o�^����1�ɂȂ��Ă���B
	�����Ɏ��s�ł���͈̂�̂݁B
	�uRB_�v�ƁuRB_LB_�v�ȂǁA2�ȏ㓯���Ɏ��s���邱�Ƃ͏o���Ȃ��B
MG_Hold(max=0)
	������Ă���{�^���������ꂽ�Ƃ��ɓ����W�F�X�`���T�u���[�`�������s�����B
	�W�F�X�`�������������Ƃ��ɂ͋�̕����񂪁A�{�^���������ꂽ�Ƃ��ɂ�
	�W�F�X�`����������̌o�ߎ���(�{�^���������Ă�������)���Ԃ����B
	��̃W�F�X�`���T�u���[�`�����ł́A���x�ł��Ăяo����B
	�uif(MG_Hold()>500){	;����	}�v�̂悤�ɂ��邱�ƂŁA
	��莞�Ԉȏ�̒������ɓ�������蓖�Ă���B
	�uif(MG_Hold() && MG_Hold()<500){	;����	}�v�ŁA�Z���N���b�N�����Ƃ�
	�ɔ�����������B
	�uRB_�v�ƁuRB_LB_�v�ȂǁA2�ȏ㓯���Ɏ��s���邱�Ƃ͏o���Ȃ��B


���ݒ��
���L�̐ݒ�́A�ݒ��ʂ́u�N���b�v�{�[�h����C���|�[�g�v�Ŏ�荞�݉\�B
8�������[�h�p�̃X�g���[�N��`�͊����B

�E�W���I�ȃW�F�X�`����`
[�E��]
G=RB_U_
[�E��]
G=RB_D_
[�E��]
G=RB_L_
[�E��]
G=RB_R_
[�E+����]
G=RB_LR_
[�E+���N���b�N]
G=RB_LB__
[�E+�����N���b�N]
G=RB_MB__
[�E�z�C�[����]
G=RB_WU_
[�E�z�C�[����]
G=RB_WD_

�ECtrl�L�[�������Ă���Ƃ��͖�����

[Disable]
Custom=GetKeyState("Ctrl")

�E�W�F�X�`���F���J�n���Ƀ^�[�Q�b�g���A�N�e�B�u�ɂ���
;�uSend�v�ȂǂŐ��������삪���s�����悤��
[Gesture_Start]
G=RB_
Default=WinActivate�yTAB�zControlFocus,,ahk_id %MG_HCTL%


�E�E�{�^���ŉ��Ƀh���b�O�����ꍇ�́A�����ɒʏ��D&D���J�n����
[R_DragStart]
G=RB_D
Default=MG_Abort()


�E�z�C�[��������^�[�Q�b�g�R���g���[���Ƀ��_�C���N�g

[WheelRedirectUp]
G=WU_
Default=PostMessage,0x020A,% 0x00780000|GetKeyState("LButton")|GetKeyState("RButton")<<1|GetKeyState("Shift")<<2|GetKeyState("Ctrl")<<3|GetKeyState("MButton")<<4|GetKeyState("XButton1")<<5|GetKeyState("XButton2")<<6,% MG_Y<<16|MG_X,,ahk_id %MG_HCTL%

[WheelRedirectDown]
G=WD_
Default=PostMessage,0x020A,% 0xFF880000|GetKeyState("LButton")|GetKeyState("RButton")<<1|GetKeyState("Shift")<<2|GetKeyState("Ctrl")<<3|GetKeyState("MButton")<<4|GetKeyState("XButton1")<<5|GetKeyState("XButton2")<<6,% MG_Y<<16|MG_X,,ahk_id %MG_HCTL%


�E�E�{�^���������Ȃ��獶�ړ����ĕ����Ɓu�߂�v�A�E�ړ��Łu�i�ށv

[R_Left]
G=RB_L_
Default=Send,!{Left}

[R_Right]
G=RB_R_
Default=Send,!{Right}


�E�E�{�^���������Ȃ��獶�A�E�Ɠ������Ă�������ƃE�B���h�E�����

[R_LR]
G=RB_LR_
Default=WinClose

�E�E�{�^���������Ȃ��獶�N���b�N�ŁuF5�v�L�[�𑗐M
[R_LButton]
G=RB_LB__
Browser=Send,{F5}


�E�E�{�^���������Ȃ���z�C�[���̏㉺��PageUp/PageDown
[R_WheelUp]
G=RB_WU_
Default=Send,{PgUp}

[R_WheelDown]
G=RB_WD_
Default=Send,{PgDn}


�E�E�{�^���������Ȃ��獶�{�^���������č��A�E�Ɠ������Ă�����������Ƌ����I��

[R_L_LR]
G=RB_LB_LR_
Default=Process,Close,% MG_Win("pid")


�E�E�{�^���������Ȃ��獶����E�ɑ傫���ړ����ă{�^��������ƑS�E�B���h�E�ŏ���

[R_RightLong]
G=RB_RR_
Default=WinMinimizeAll


�E���̔��΂ŕ���

[R_LeftLong]
G=RB_LL_
Default=WinMinimizeAllUndo


�E��5�{�^���N���b�N�ōő剻/����

[MaximizedWindow]
Custom=MG_Win("MinMax")=1

[X2B]
G=X2B__
MaximizedWindow=WinRestore
Default=WinMaximize


�E��5�{�^���������Ȃ��獶�E�Ɉړ�����ƁA���X������ނ̃E�B���h�E��؂�ւ�

[X2_Rights]
G=X2B_R
Default=WinSet,Bottom,,ahk_class %MG_WClass%	WinActivate,ahk_class %MG_WClass%

[X2_Lefts]
G=X2B_L
Default=WinActivateBottom,ahk_class %MG_WClass%

#��5�{�^���N���b�N�ɓ�������蓖�Ă����ꍇ�́A�uif(MG_Executed=1)�v������
#�؂�ւ��W�F�X�`�����������Ă����ꍇ�͔������Ȃ��悤�ɂ���
[X2B]
G=X2B__
Default=if(MG_Executed=1)	WinSet,Topmost,Toggle


�E��L�ł͏������������Ƃɐ؂�ւ���Ă��܂��Ďg���Â炢�ꍇ
[X2_Ignore]
G=X2B_L
G=X2B_LL
G=X2B_LLL
G=X2B_R
G=X2B_RR
G=X2B_RRR
Default=MG_Wait(1)
#MG_Wait()�ő������󂯕t����ꍇ�AThreshold�s�N�Z���̈ړ��Ŏ����F�������B

#�r���Ŕ��΂Ɍ��������ꍇ�̓��Z�b�g
[X2_Cancel]
G=X2B_LR
G=X2B_LLR
G=X2B_LLLR
G=X2B_RL
G=X2B_RRL
G=X2B_RRRL
Default=

#Threshold�Ŏw�肵��������4�{���������Ƃɔ���
[X2_4Rights]
G=X2B_RRRR
Default=WinSet,Bottom,,ahk_class %MG_WClass%	WinActivate,ahk_class %MG_WClass%

[X2_Lefts]
G=X2B_LLLL
Default=WinActivateBottom,ahk_class %MG_WClass%

[X2B]
G=X2B__
Default=if(MG_Executed=1)	WinSet,Topmost,Toggle



�E�E�{�^���������Ȃ���~��`�����ƂɎ��s
[R_CircleR]
#�F�����������Ⴗ����̂ŁA8�������[�h�̒�`�͏ȗ�
G=RB_URDL
G=RB_RDLU
G=RB_DLUR
G=RB_LURD

IrfanView=Send,{+}

[R_CircleL]
G=RB_ULDR
G=RB_LDRU
G=RB_DRUL
G=RB_RULD

IrfanView=Send,{-}



�E��5�{�^���Ń^�C�g���o�[���N���b�N����ƍŏ����A���̕����ł͍őO�ʕ\��ON/OFF

[TitleBar]
Custom=MG_HitTest()="Caption"

[X2B]
G=X2B__
TitleBar=WinMinimize
Default=WinSet,Topmost,Toggle


�E��5�{�^���̃V���O���N���b�N�ōs�I���A�_�u���N���b�N�őS�I��

[x2]
G=X2B__
Editor=MG_Send("LB")	Send,{End}+{Home}	MG_Wait(500)
#{End}+{Home}�Ƃ́A[End]�����������[Shift]+[Home]�������Ƃ����Ӗ�
#MG_Wait(500)�ő����̓��͂�҂�

[x2d]
G=X2B__X2B__
Editor=Send,^a


�E��5�{�^���̃V���O���E�_�u���E�g���v���N���b�N�ɂ��ꂼ��ʂ̓�������蓖��

[x2]
G=X2B__
Default=if(MG_Timer(-500))	return	Send,1

[x2d]
G=X2B__X2B__
Default=if(MG_Timer(-500))	return	Send,2

[x2t]
G=X2B__X2B__X2B__
Default=Send,3


�E��5�{�^����D&D���邱�Ƃɂ��A�I��͈͂̈ړ�(�J�b�g&�y�[�X�g)���s��

#��5�{�^���������Ȃ���}�E�X�𓮂����Ă���������(�uX2B_�v�̏�Ԃɖ߂�)
[X2_IgnoreStroke]
G=X2B_L
G=X2B_R
G=X2B_D
G=X2B_U
Default=

#Ctrl+X�ŃJ�b�g�A�ړ�����N���b�N�ACtrl+V�œ\��t��
[X2_DnDMove]
G=X2B__
Default=Send,^x	MG_Send("LB")	Send,^v

#�����{�^���������΁A�uX2B_LB___�v�̂悤�ɂȂ��Ĕ�����j�~�ł���



�E���E�`���g�X�N���[��

[LT]
G=LT_
Default=if(MG_While()){�yTAB�zMG_Scroll(-3)�yTAB�z}

[RT]
G=RT_
Default=if(MG_While()){�yTAB�zMG_Scroll(3)�yTAB�z}



���u�}�E�؁v����̈ڍs���@
�K���Ɋ撣���Ă��������B


���uStrokeIt�v����̈ڍs���@
�K���Ɋ撣���Ă��������B


��WindowsVista�ł̐���
UAC�̈�ʌ����ł́A�Ǘ��Ҍ����̃v���Z�X��Send�Ȃǂő���ł��Ȃ��B
�t��AutoHotkey�̃v���Z�X�����Ǘ��Ҍ����Ŏ��s����Ă���ꍇ�A
MG_CommandLine()�ň�ʃv���Z�X�̃R�}���h���C�����擾�ł��Ȃ��Ȃǂ̐���������B

MG_User.ahk�Ɂu#SingleInstance,off�v���L�q���ADisable�ɁuMG_CommandLine()=""�v
��o�^���āA��ʌ����ƊǗ��Ҍ����̗�����MouseGesture.ahk�����s����΁A
�����̌����̃v���Z�X�Ŋ��S�ɓ��삷��悤�ȋC������B




��MouseGesture.ini�̒��ڕҏW�ɂ��ݒ�
ini�t�@�C���̎d�l�́A�e�L�X�g�G�f�B�^�Ȃǂł��ҏW���₷���悤�ɐ݌v����Ă���B
���̑���A�G���g���E�Z�N�V�������̏d��������������d�l�̂��߁A
AutoHotkey��IniWrite�Ȃǂœǂݏ�������Ɖ���\�������邱�Ƃɒ��ӁB

Settings�Z�N�V�����ŉ��L�̗�̂悤��EditCommand��ݒ肵�Ă����ƁA
���j���[�́u�ݒ�ҏW�v�ł��̃R�}���h�����s�����悤�ɂȂ�B
���̏ꍇ�A�ҏW��Ɂu�ċN���v�����s���ăX�N���v�g�ɔ��f������K�v������B

EditCommand="edit " . A_ScriptDir . "\MouseGesture.ini"


���t�@�C���t�H�[�}�b�g
�u[�Z�N�V������]�v�̂悤�ȍs���Z�N�V�����̎n�܂�A
�u���O=�l�v�̂悤�ȍs���G���g�����Ĉ�����B
�u#�v�Ŏn�܂�s�Ƌ�s�A���̑���L�t�H�[�}�b�g�Ɉ�v���Ȃ��s�͖��������B
���p�X�y�[�X�������̓^�u�����ɑ����u#�v����s���A
�u/*�v�Ŏn�܂�s����u*/�v�ŏI��s���R�����g�Ƃ��Ė��������B


��������`�Z�N�V����
�Z�N�V�������ɂ́A�C�ӂ̉p������Œ�`�����L�q����B
���L�̃G���g�����ƁuG�v�uDefault�v�Ƃ������O�͎g���Ȃ��B

�uWClass�v�uCClass�v�uTitle�v�uExe�v�uCustom�v�uInclude�v
�Ƃ������O�̃G���g���ŁA���[�����`����B
�uAnd=1�v�Ƃ����G���g��������ƁA�S�ĂɈ�v�����ꍇ�̂݃}�b�`�ƂȂ�B


���W�F�X�`���Z�N�V����
�W�F�X�`���ƁA����ɑ΂��铮����`����B�Z�N�V�������͉��ł��悢�B
�W�F�X�`���p�^�[�����`�����uG�v�Ƃ������O�̃G���g������ȏ�܂ނ��ƁB

�����ʊ��蓖�ẮA������`����uDefault�v�Ƃ������O���G���g�����Ƃ��A
�l�ɓ���̃X�N���v�g���L�q�B
�����s�̃X�N���v�g�́ATab�����ŋ�؂���1�s�ŋL�q����B


���uSettings�v�Z�N�V����
�G���g�����͈ȉ��̕��B�l�ɂ�AutoHotkey�̎�(�ʏ�͒P�Ȃ鐔�l)���w��B
��������w�肷��ꍇ�́A�u"�v�ň͂܂Ȃ��Ă͂Ȃ�Ȃ��B

Interval=           �W�F�X�`���F���̃��[�v�Ԋu(�������������x���オ��)
TimeoutThreshold=   �^�C���A�E�g�\�ɂȂ�̂ɕK�v�Ȉړ��s�N�Z����
Timeout=            �^�C���A�E�g��ԂɂȂ�܂ł̐Î~�~���b
Threshold=          �X�g���[�N�̔F���ɕK�v�Ȉړ��s�N�Z����
8Dir=               1�ɂ����8�������[�h�ɂȂ�
DGInterval          �_�u���W�F�X�`���̊Ԋu�̏���~���b
LongThresholdX=     �uLL�v�uRR�v�̔F���ɕK�v�Ȉړ��s�N�Z����
LongThresholdY=     �uUU�v�uDD�v�̔F���ɕK�v�Ȉړ��s�N�Z����
LongThreshold=      8�������[�h�ł̒������X�g���[�N�F���ɕK�v�Ȉړ��s�N�Z����
EditCommand=        �u�ҏW�v���j���[�Ŏ��s�����R�}���h


���{�^����`���W���[���d�l
�}�E�X�{�^���Ȃǂ̔F�������́A�@�\��ǉ����Ղ��悤�Ƀ��W���[��������Ă���B
�V�K���W���[���́A�ݒ��ʂ́u�ݒ�v�^�u�u�V�K�{�^����`�v�ō쐬�ł���B
�����ŃX�N���v�g���쐬����΁A����ȔF��������v����{�^������`�\�ł���B

���W���[���́uMG_Buttons�v�t�H���_�Ɂu���O.ahk�v�̂悤�Ȗ��O�ŕۑ�����B
���O��D,L,R,U�ȊO�̃A���t�@�x�b�g���Œ��܂ށA�Ȃ�ׂ��Ȍ��ȉp������ɂ���B
�����������ȊO�̃T�u���[�`���Ȃǂ́AGoto�Ŕ�щz���悤�ɋL�q���邱�ƁB
�܂��A���s����A_ScriptDir�ϐ��́AMouseGesture.ahk�̂���t�H���_�ɂȂ�̂Œ��ӁB

�}�E�X�{�^���̂悤�ɉ������܂܂ɂ��邱�Ƃ��o������̂́A�u�g���K�v�Ƃ݂Ȃ����B
�g���K��`���W���[���ɂ́A�ȉ��̂悤�ȃ��x�����̃T�u���[�`�����`����B

MG_���O_Enable:         ;�g���K��L��������T�u���[�`��
MG_���O_Disable:        ;�g���K�𖳌�������T�u���[�`��
MG_���O_Down:           ;�g���K�̉����������G�~�����[�g����T�u���[�`��
MG_���O_Up:             ;�g���K�̉����グ���G�~�����[�g����T�u���[�`��

����Ƃ͕ʂɁA�g���K�̔F��������p�ӂ���B(�z�b�g�L�[���蓖�ĂȂ�)
�F�������ɂ���ĉ����������F�����ꂽ��uMG_TriggerDown("���O")�v�A
�����グ���F�����ꂽ��uMG_TriggerUp("���O")�v�����s���A�{�̂ɒʒm����B

�z�C�[����]�̂悤�ɁA�����������܂܂̏�Ԃ��������́u�{�^���v�Ƃ݂Ȃ����B
�{�^����`���W���[���̏ꍇ�A�ȉ��̃T�u���[�`�����`����B

MG_���O_Enable:         ;�{�^����L��������T�u���[�`��
MG_���O_Disable:        ;�{�^���𖳌�������T�u���[�`��
MG_���O_Press:          ;�{�^��������G�~�����[�g����T�u���[�`��

�{�^���������ꂽ���Ƃ�F��������A�uMG_ButtonPress("���O")�v�����s����B



�������p�O���[�o���ϐ��E�֐��E�T�u���[�`��
�O�q�̃��[�e�B���e�B�ϐ��ƁAMouseGesture.ini��Settings�Z�N�V�����̍��ږ���
�uMG_�v��t�������O�̕ϐ�(�uMG_Interval�v�Ȃ�)�̑��A�ȉ��̕�������B
�ڍׂ̓X�N���v�g���e���Q�ƁB

MG_Triggers         �W�F�X�`���̊J�n�Ɏg����{�^��(�u_�v��؂�)
MG_SubTriggers      ���͓r���ł̂ݎg�p����{�^��(�u_�v��؂�)
MG_MaxLength        �o�^����Ă���W�F�X�`��������̍ő啶����

MG_Enabled          �W�F�X�`���̊J�n�{�^�����L��������Ă��邩
MG_NaviEnabled      �u�i�r�\���v�̏��

MG_Active           �W�F�X�`���̃X�g���[�N�F�������s�����ǂ���
MG_TimedOut         �W�F�X�`�����^�C���A�E�g�������ǂ���
MG_Aborted          MG_Abort()�Œ��f���ꂽ�ꍇ�u1�v
MG_LastTime         �Ō�ɃW�F�X�`�������񂪕ω���������(A_TickCount)

MG_CurTriggers      ���݉��������Ă���{�^���̈ꗗ(�u_�v��؂�)
MG_TriggerCount     ���݉��������Ă���{�^����

MG_TimerGesture     MG_Timer()�ŗ\�񂵂��W�F�X�`����
MG_TimerMode        �^�C�}�[�̎�ނ��Ԃ��i�[
MG_WaitNext         MG_Wait()�Őݒ肳�ꂽ�ҋ@�~���b

MG_ShowNavi:            �i�r�\���p�^�C�}�[�T�u���[�`��
MG_TimerExecute:        MG_Timer()�̃^�C�}�[�T�u���[�`��

MG_TriggerDown(name)    �g���K�{�^�����������̕񍐂��󂯕t��
MG_TriggerUp(name)      �g���K�{�^�������グ�̕񍐂��󂯕t��
MG_ButtonPress(name)    �{�^������̕񍐂��󂯕t��
MG_GetMousePosInfo()    �}�E�X�J�[�\���ʒu��MG_HWND�Ȃǂ��擾
MG_Check(gesture)       ���͂��ꂽ�W�F�X�`������`�ς݂̏ꍇ���s
                        ����������������1���Ԃ�B
                        gesture�����w�莞�́A���̃W�F�X�`���̓�������s�B
MG_Gesture(trigger)     �W�F�X�`���̃X�g���[�N�F�������Btrigger�͊J�n�{�^��
                        �F���������s�����ꍇ��1���Ԃ�B



���X�V����
��2008/10/07
�EMG_DropFiles()�AMG_FilesToClipboard()��ǉ�

��2008/09/18
�E�V�K�{�^����`�Łu~�v���̃L�[���`�����Ƃ����������삷��悤�ɕύX

��2008/09/15
�EMG_Hold()�AMG_Defer()��ǉ�

��2008/09/12
�EMG_CommandLine()��ǉ�

��2008/09/11
�EMG_GetCursor()�Ƃ���ɔ����J�X�^���������e���v���[�g��ǉ�

��2008/09/08
�E�ꕔ���Łu�ǂꂩ�Ɉ�v�v�̕������\��������Ȃ��s����C��
�E�f�t�H���g�Ńg���C���j���[�����[�g�ɕ\������悤�ɕύX
�E���̑�

��2008/09/07
�E�^�[�Q�b�g�E�B���h�E�E�R���g���[���̈ʒu��T�C�Y�Ȃǂ��擾����֐���ǉ�
�E�T���v���Ƃ��ēo�^����Ă���ݒ�����炵��
�E���̑�

��2008/08/24
�EMG_LvHitTest()�AMG_TvHitTest()�AMG_TreeListHitTest()�AMG_PID��ǉ�

��2008/03/16
�EMG_GetFocus()�AMG_Counter()�AMG_ExePath()�ǉ�
�E�s��C��

��2008/03/13
�EMG_Scroll()�AMG_DragScroll()�AMG_InstantScroll()�ǉ�
�E�u�A�N�e�B�u�E�B���h�E���^�[�Q�b�g�Ƃ���v�ݒ��ǉ�
�E�W�F�X�`���̊J�n�{�^�����蓖�Ă�������s���^�[�Q�b�g���s���ɂȂ���C��

��2008/03/12
�E��ʒ[�ڐG�F�����W���[�����쐬
�E�ݒ��ʂɁuLT�v�uRT�v�uX3B�v�`�uX9B�v�̕\�������`����

��2008/03/01
�EMG_While()�ǉ�
�E��������MG_Timer()�̌�A�F���������ɃW�F�X�`�����e���ω����Ă����삷��悤��
�E�L�[���s�[�g������L�[���g���K�ɂ����Ƃ��̕s��C��

��2008/02/24
�E�ݒ��ʂɐV�K�{�^����`�@�\��ǉ�

��2007/12/07
�E�ŏ��̃g���K���������ɃA�N�V���������蓖�Ă���悤�ɕύX
�E�c�[���`�b�v�i�r�Ɏw��̃e�L�X�g��\������@�\��ǉ�
�E�ꕔ�t�@�C���̉��s�R�[�h��LF�����������̂�CRLF�ɕύX

��2007/11/14
�E���i�r�̋@�\��ǉ�
�E�N��������i�r��L��������ݒ��ǉ�

��2007/11/05
�E8�������[�h�ŁA�΂߂Ƃ݂Ȃ��p�x�͈̔͂�ݒ�\�ɂ���
�E�J�[�\�����ړ�����MG_Move()��ǉ�
�E�I�v�V�����ݒ肪�ۑ�����Ȃ��o�O�C��
�E�����s�̓����ۑ������2�s�ڈȍ~��������o�O�C��
�E����N�����̏������A������MG_Config.ahk�Ɉړ]

��2007/11/01
�E���슄�蓖�ĉ�ʂŃc�[���o�[�̃{�^��ID�𒲂ׂ�@�\��ǉ�
�E�X�N���v�g�̃e���v���[�g�ŁA�����̓��̓_�C�A���O���o���悤�ɂ���
�E�ݒ�ҏW��ɃX�N���v�g���ċN������Ȃ��̂��C��

��2007/10/31
�E������`���Ɏg���Ȃ��������܂񂾖��O�̊m��h�~
�E�W�F�X�`����`�̏d���h�~
�E�W�F�X�`����`�̃o�b�N�X�y�[�X�{�^��

��2007/10/30
�E������ԂŋN�����o���Ȃ������C��

��2007/10/28
�E�ݒ��ʂ��쐬

