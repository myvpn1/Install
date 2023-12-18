#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /data/data/com.termux/files/usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY�B�_  �_���}���?��n����l��� @ P�\�hS#��Q"���꟥��j�(�F�F'���S�    J
�z"�ɦ�F@=A���  F�2�h��OI$2j� �  �@� 4 6�  � �               	JzS������L�C@����  h�   �?�f[M�±���tf�fR� �N��:�Z\Wp��F���%�G#gI��\���}mH�S��9���/ 
ӪPUb�rI�S(�G���oe$�=$j�|+�ӳ#�,4\��.�*�u3������E6�`,�36c��r1R��-��_ؽ��f�*�����-�:.�x��E&x���(k�x�B	�� b	E0��hQ(��h]�s�1��-�Uy�m�^�zR�G9ΐ��$�tڭM�e�V�ӄ̐D>����7�3;�Ȁ���	I!9*�N�y�7�8y��a��\"	���ATPQZ��P�\}Nl{����׻o��$��܈�>Uf[{i�܄9�֬������n
�2aYV�*# ��H�d�0,�H{�"*���C�x&C䕕��0(QT��)��j�DIvl[��Q`I)	%}No�E�����S������m��$�BI:vg�h�v�sNA}Z���2Hb���0�Ɨ�����#9"%�$����X�&�D ��N���	��6���e���P�5fbެ�M$mD�R$T�D��Ejer�d��
J��#�^���`�^�d���Bwo"岤WqЇB0�'�]��zzڹ�PϺ�a�b5�c -�H�t�PWH����D�� F8 {B�F �hB9sP�M���2KE�+Lb(�)]	l��B�6pJ��W#Y����q(���)P\
B%%L`c+o,U;�S�k�2v`-[&Ir|䯅}��:�%�d��U�E�FVp&m��HZ@���֒HLF""H�4���(Hk�����Hi&�		|
��?/Q8?�����ESA��iP���B 
�)@�R`&ƉS3"���I˖�h<���&�%),��B*���seಹ��S�FI�(���EbVI
�1A�u
�p�"l!1W���h�b`��V1ߗm�B��k��B�p�$��&S�rC�?���a�習��u�o�����_�]��^���t�N��]��BC%�|