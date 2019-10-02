GDPC                                                                                L   res://.import/Bouncy Platform Long.png-9b2628c180785c5ec622adb5c4ee7b17.stex�            <g�j��"O|�o��P   res://.import/Bouncy Platform Medium.png-7896338a5f44da1e83084c154a3c4a9e.stex  �+      �      ,��+�[0<D���)�D   res://.import/ballBlue_10.png-a6ac20f1eeff46860499a0f8c7bba4ff.stex =      b      x��*�aGʃse�'�;<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�Z      �      �Q!����|M�   res://Ball.tscn 0      G      �������]���ٺa   res://Main.gd.remap @k             �(@Er�#��K�F�[   res://Main.gdc  �      �      ]�\��6:������F   res://Main.tscn 0	      J      VA�ю�T��7�b   res://PaddleRight.gd.remap  `k      &       .7��� ޴���O�*   res://PaddleRight.gdc   �            IvǣR������/�0?,   res://assets/Bouncy Platform Long.png.import�(      �      ��/i3Mc���z0   res://assets/Bouncy Platform Medium.png.import  P:      �      ��#�̋�^��:�/$   res://assets/ballBlue_10.png.import �V      �      /�nk����\�۩tTc   res://default_env.tres   Y      �      �Y^%-�,^�͍6�   res://icon.png  �k      �      �~dg`!����I�҃   res://icon.png.import   �h      �      �����%��(#AB�   res://project.binary@y      �      ��X]B�%��'5[J            [gd_scene load_steps=4 format=2]

[ext_resource path="res://assets/ballBlue_10.png" type="Texture" id=1]

[sub_resource type="PhysicsMaterial" id=1]
bounce = 1.0

[sub_resource type="CircleShape2D" id=2]
radius = 37.1452

[node name="Ball" type="RigidBody2D"]
physics_material_override = SubResource( 1 )
gravity_scale = 4.0
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="."]
scale = Vector2( 0.5, 0.5 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
scale = Vector2( 0.5, 0.5 )
shape = SubResource( 2 )
         GDSC         	   6      ���Ӷ���   ����������Ӷ   ���ڶ���   �����¶�   ����¶��   ����������������Ҷ��   �������ڶ���   �������Ӷ���   �������ض���   �����������¶���   �����������������ض�   ��������Ҷ��      click                      
                        $      0   	   3YY8P�  Q;�  YY0�  P�  QV�  &�  T�  PQV�  ;�  �  T�  PQ�  �  T�  �	  PQT�
  PQ�  �  P�  Q`             [gd_scene load_steps=9 format=2]

[ext_resource path="res://Main.gd" type="Script" id=1]
[ext_resource path="res://Ball.tscn" type="PackedScene" id=2]
[ext_resource path="res://PaddleRight.gd" type="Script" id=3]
[ext_resource path="res://assets/Bouncy Platform Long.png" type="Texture" id=4]

[sub_resource type="CapsuleShape2D" id=2]
radius = 28.7617
height = 253.621

[sub_resource type="PhysicsMaterial" id=5]
bounce = 0.5

[sub_resource type="PhysicsMaterial" id=7]
bounce = 0.5

[sub_resource type="PhysicsMaterial" id=8]
bounce = 0.5

[node name="Main" type="Node"]
script = ExtResource( 1 )
Ball = ExtResource( 2 )

[node name="WallContainer" type="Node" parent="."]

[node name="PaddleRight" type="KinematicBody2D" parent="WallContainer"]
position = Vector2( 281.357, 764.056 )
rotation = -0.315905
scale = Vector2( 0.5, 0.5 )
script = ExtResource( 3 )

[node name="Sprite" type="Sprite" parent="WallContainer/PaddleRight"]
texture = ExtResource( 4 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="WallContainer/PaddleRight"]
rotation = 1.5708
shape = SubResource( 2 )

[node name="Wall4" type="StaticBody2D" parent="WallContainer"]
editor/display_folded = true
position = Vector2( 365, 580 )
rotation = -1.5708
physics_material_override = SubResource( 5 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="WallContainer/Wall4"]
texture = ExtResource( 4 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="WallContainer/Wall4"]
rotation = 1.5708
shape = SubResource( 2 )

[node name="Wall7" type="StaticBody2D" parent="WallContainer"]
editor/display_folded = true
position = Vector2( 365, 272.418 )
rotation = -1.5708
physics_material_override = SubResource( 5 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="WallContainer/Wall7"]
texture = ExtResource( 4 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="WallContainer/Wall7"]
rotation = 1.5708
shape = SubResource( 2 )

[node name="PaddleLeft" type="KinematicBody2D" parent="WallContainer"]
position = Vector2( 76.9838, 759.464 )
rotation = 0.315662
scale = Vector2( 0.5, 0.5 )

[node name="Sprite" type="Sprite" parent="WallContainer/PaddleLeft"]
texture = ExtResource( 4 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="WallContainer/PaddleLeft"]
rotation = 1.5708
shape = SubResource( 2 )

[node name="Wall5" type="StaticBody2D" parent="WallContainer"]
position = Vector2( -5, 580 )
rotation = 1.5708
physics_material_override = SubResource( 7 )

[node name="Sprite" type="Sprite" parent="WallContainer/Wall5"]
texture = ExtResource( 4 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="WallContainer/Wall5"]
rotation = 1.5708
shape = SubResource( 2 )

[node name="Wall6" type="StaticBody2D" parent="WallContainer"]
position = Vector2( -5, 272 )
rotation = 1.5708
physics_material_override = SubResource( 7 )

[node name="Sprite" type="Sprite" parent="WallContainer/Wall6"]
texture = ExtResource( 4 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="WallContainer/Wall6"]
rotation = 1.5708
shape = SubResource( 2 )

[node name="Wall3" type="StaticBody2D" parent="WallContainer"]
editor/display_folded = true
position = Vector2( 179.249, 21.0109 )
physics_material_override = SubResource( 8 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="WallContainer/Wall3"]
texture = ExtResource( 4 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="WallContainer/Wall3"]
rotation = 1.5708
shape = SubResource( 2 )

[node name="Ball" parent="." instance=ExtResource( 2 )]
position = Vector2( 209.156, 389.604 )
      GDSC                  ������������τ�   �  
# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)
	set_process_input(true)
	
func _physics_process(delta):
	if rotation >= 0.3:
		rotation = 0.3
	
	if rotation <= -0.3:
		rotation = -0.3
		
	if Input.is_action_pressed("ui_right"):
		rotation -= 0.06
	else:
		rotation += 0.06

	set_rot(rotation)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
                   3Y`   GDST2  9            �  PNG �PNG

   IHDR  2   9   �v��  �IDATx���y��}�������rO]�ceɇ|TrlÎ�8��µӺ0`�?��"E�z�-���&)�-\�-�6(Р�a$�#	������eY�J�Vڃ�ܛ\�3����C.�&[�}�g�y+`~�����ӔR,9��D����V��b��HEB��f�	 � �G��z+9?��om)�������c�}��ޛ
!�:l��=�9 �^��`�)��	b>�w�?���%��4|x�ֺ�P��ᾃ�U� �o���4O!�>�u�^�F��(Ą���_�F�2����n������>�.c�Bw�QX�"V��.X�с?��^���?X'��>�(�X�@{ݨ�r'�����̧I�$YL,P�k]����T��Ȟ�P�&��!����Ny�B4�R���3Ó���)��-3�j۵���_�V:����w�$�i�1c�N�uH�� !��Ni��?�}Kv�&��+� 2�R5JeW��� C@���{7�Թ���w1���(��K^���B\?��9&Ύ���t��B�W���%��޸e�A�(1 M�s�73!��!����}�������c)��|��ꮝ�D�;j�P���<p��� �,���mêiQBQM[W��6U;��F�_-��K��? ����M�X;��Ǹip��36I��_��4R�=<���Y����,��K��Rh����2+S�k��8�&���o��J,���Ⱥ�Ҍ�״�}J�7��^��� �hеr�0|��зW�ʪd��3�@-� 0�^�7������94]o�c���C)��m종��S��q��r�\�s�qޭ7� ����p	b����A@�=�� �H�=��{_[M�a��0���B��M��L�4�� ۲ȧ)d�/�����#�kOE�_ѩ���u�_ihw����-�#�RB\��$��N��o��KR5���j�с����k2gx��ym"QGӄ��0v��u6�����%��@�'�kbx�M�,qFƱ��-�s��ډsu7Pq����{�1<�c�����\�@���<���K�?�]
�>�Z���Ў�����`�&�	!�2�0u������M�ش�*�+Lo}�L�6����s��B��QBQA7ںb��ղ���)h��O���F����JѲ ���d~$Azf��tǶ	t�	ŢD�b�vo�;�
!�e�9?Fzz���<��,���PW�P,Jlp3�X����M�@{��l�%��*Uh��V|m뎰������n�����HO/p��'HM�ּ����[�޳�em�Z�X6#o�%~�uވ4zn���=7c��-i���V>_��������Q�U<����(�F?�.�ON4ZE]�'/2����2���<�_~��s�����蒫&D]2�)���-�u�J�H����8��O����ō�3Y��7l(������|4P�� ���31��Mד�I����f~l�s?<F�`_S�#ĵȱ.����o,���8w�8�`��ݰQF{�� P{��
�v�3r��5��?,+o��`���7�#����m��C�9%ɩSɦ�I�kQ�I� �{B]:��ꎺ�b9�����Gf���©J̐��x>}�P$�_��L׽�f]fFf�פn�~/������j?�4H��qfz�����3D�'�	q�˥r�f*'aw��{��R:��ļ�&��,��Ǚ>?�rV"W6�%3�H�����tW�_9N���XW'�7��|�����3p�|���1-�F�����1���b�d���,����t���2B���Lű�`?=7�>�i�A��+M�t�>���+��_.�g.��d�٪7�b��],�v��-b �������=O>TQW.�kI��dS�����]YB�yp9�x�?��,�[�iZc�ic����ԫ�-TtTF{�SP\���?;]�,Pޥ.!DI![���o���j���J�t=�o�T>�k�i�h�eiC��j��#�O�V��?J�%I����s��1�/T�i��tBTg:��>���P$�ü�VTb����ylv�L����ڇM�S��č2�5�*�!������,=�mXHQ�Qi��K�\��ߒ6
q-���z@�T�B:�7��ܨL��+Ǘ[�"��Ԛz�����x�S����292_�{Tb���zmYo>�F醎7P�1��N254V�Lvn���W*��@����>J1���{N�c;���Κt+�I�L�������[-���˟����Y�G�.:N�c��3,N�S����$��\z�L)�m�`4��kM��ׂp��b�%��თ�c����4��_�2e����GzzM~���n�E���<Yv��ٙ������(�4�5i��W�X?��0u��o�"� �4���K|(^v�.XL������օ��%�������I�훱�B���/tՆ����wzi��j�&"m�8������B�4?���-�Mo�ך�1�L����ku���_jz���i�'�Z;�r��/V!ߒ�/��[��/����T]e�m￝�y�^;?u;�p��wΡ��Ǿ5M��֝l����Ǒ�J5��Cv-s�i<� �����-�͏����Q��q�\2�z��1�e[�{�I!�����۽���N27<Qu<�����#،5��k+�'��J�]�09]s	�ZL�a���c�J���kY�k��vo!�ʐ�^ 3�±l�mc�a��C�G��y�.�B��L��l�\*�7�#��E������j�y�aT�](���|^{�fY�J�	L��Z��j���gi��,�n68�?�sG��!6��z����Zs]�y�W˃�ϋ�s��}9�3R}	/�=6et����klځ�ϓ��kiZ���O�v��+�4������嫬�6��
V�ĸj����)�l@"��"T;Q]�V_Iñ�9�9ԣ:p��L*��ℎe�JL�K�Z6�I��'��>��:?\�\z�j\��?p;���o��K�"�L�����dK!�;���}��P7 `[��	�/v-b_��]c��FL��v��L ]k�n;0H l�/�dx�x�>L��4�t�e_9��x�'n���g���/X��/�6nۋ��'K+]�-`�}��K�[�<�j�T��7ϻeT, =&`�~{���1���*�B�P޷�t�����3!�������_cuV����@f�8�}�l��N�WK�>PX�d�'���'�%��O���ly�(�ݸD��`���q㮕�C�6\����y��x�9 㩶]P�Zn���*3����k�eq��q�'��mh��J�~/_�J?3Z����o@i��=�P1�@�5�n�B���r
!����<�ӣ�>����(�w%�3n%����a��(�-_!����"14���Wje=�W��t-���w��̧�$�g�t8 _�M��"�c��+�gj�=�<��Vw-��w�Gk�d�<�{��ba�!��-�h�r��4�$����O�<<��i�2� ���G�m��11}&��#;|!�R���KS!M�<<Tl�^m!��Y�O���]��.��g�[�a��� I)����*�o���TB���8�0����#������*z�x�R!�h�)��]���U�A[ZC�H��z*�O����BEq���c��L>G)W���1m�b�u�%J�����V��b�J!Du
��4�(� �G��z+Yݛ�?��x|�    IEND�B`�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Bouncy Platform Long.png-9b2628c180785c5ec622adb5c4ee7b17.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/Bouncy Platform Long.png"
dest_files=[ "res://.import/Bouncy Platform Long.png-9b2628c180785c5ec622adb5c4ee7b17.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        GDST�   9            �  PNG �PNG

   IHDR   �   9   z}�X  mIDATx��{�\�}�?�9�}���^�1.jSB0V�V	����6MU	���#i�GZ���*EH�QUj!�iTl�׀]�Pp����k�kfw�y�u��1�zg���x�v�G��s��ٽ�{����E�"�	B���g�u@�z3I$7� 3�,0�xH4Z�ީCK�WӠX<��O���T"YC������w�\���Q����|	�
0t=-�H���7�o�Z�NB9���z>�3R(�[�I�Jõ��5�J=ʏ�b����I��w��q�^�h�V
膎f��J��I$���y�b��.� �Ѐ�)��O�����J���`O���� �V���H~���ZH��&HFعB��ߣ�{y�������j�=]�=�u���'��|!�O.0wi�B6_+��-���nZ��Y���J�v2�c�� J�.�-���A���8Wg _S��EQ�m>:F�p
E��L��� I�����z�A�,��������Ζ�{�9ԑA ��d��[-�#����L���p\��40Fi�̆�\�0�u�P_{K�Q�����n\�9:�2k���H�#�@8N�A8�B룖p��0��q�� %m|�	�>`�[��j��4�wnG�C$R��qu���(h)�9�zJ��,~Th���$7��P�氳Y
�,�]����;W`�ܔ[�~�[��E���ke��~��T��:ԏ�k���^���Ѷ����	�"��Y]�x�^�L��!�C;ter��/#��CQ4�����(�t���b)
يr
%o�W�N���Y�߷o���@M������V&
����M\��� (:M}	��U��`����F}�d�K'ι��ā^��J� ����bP������k���mK�HVEU	tv�k7����v�ܒ��#*�[j���������.6�d5����d�a�?��*.+
��:��"�b�te|���I$���1�wu4�7��V�GڨV�n�h�V�R��(|��k�2E=�AC��HV����QvV�5���堎�`Oc������{qz:QRʙ�h?9V�Y$�5�'���bgk�ӽ��l٠T,�����nC=�������D�B��48o8��~rν��0���X��MWt�^m�q�ǃ��6�FW���hk.A.���{�w���j��VgRArˑ�rL}����\��Q����:�t2����~6T]��K���6A�r�
��,Y2I.�u��D��`ovm'�ט�&�yB0{�2��>�vq�u��h�t4���K�=���1��^Ǭ#�j4-cϧ���A�y(���c�B0q�4��G8��dR����z��cî��u&!$7'�q8s�8��3����{��K����.4��S]4�@�5�3�n4u7�#���I0JŜ�wb:J�����O��$69����/c��1�}}3M��$�^�&6m�\:���7C۪�n�C1hp�k����8����(��F�!I���*�ܫIͧ��0E�Pk�$k+n1�"US	���m/��X��l�b�|�5������^��QKS��$�_�|�7�c�?x�ⅉ�劅"�*�\�k�s�0���σ����'�=3A>U�fnb�Pg�g6�d�f~�����k0�&����s'��G��o�R.��+�-FQ������ ���	r�i�Lj>U�{x���ǒmb>��=�&�#�/���z��L�Z!HD�t��j�ɒ5��8dV�͠��{7/Ň��=���R�<c�n�
?<�������g򘭼H[؏�*�+�+~1(0��ۖĢ�a����ud��'ܱ�(�s6ٸשdm�K�*�����ʂ�hwn���(h[7ѳy��d�o1�M�WE0�������g��J����T���w�{�fR�m%��A�%j�g���}��R���~��*� ��y����wU��;+�c+�Et�܋��x�~���W�p͇��nV� ��l�K�~�4�羁:�O��%�¶��֖��_`���{��r2�4�ea����~���r���8j�σ�����[�'���t����P<{q������no[�'��ݘ�<�3�~�(N���WeH��!�Pd�t�ٵ��3�V�,�����H����	���|��.!�6
A��d�,���x��=�=w�{��;6a<��˿�x٦��"�p (����q�"�[Fʆ^�]$zn����:�7���U�}���������h���^<m~U!���_���[�u􇛞��F�'����b|��-�:C��I[_���3lb��W�xB>̠���#��\�0�� �v�y+��ӆ��&9W>�.X��# o�K�H���G0�m�fD:Cᕃ�Z�b���M�c��ts���I��%�#��-׷�R#}&��V��Zr3����7O�MT����{M6�چ٢]���w���˪�s����H�5]C�0�ܷ��]�9pk���������N�2�٭���z�|��̞��P<���l�}f����B��L��r-���i�i�xB~�aS�g�ݳK��PT����o��T���L���q7�[�3q����
/bEW	�v2t����\�=�M�^Z��`�9A.���(ds��DEU�1F��:�.N���HG��F�K�;L�;L��!���W�`O;[�}d2�	�#�u�[
-,t灻a�:�GG�F9|����{a��t:� ��Ҫsv��X���%�#��Ʀ�I~P�����i��iDߵ�{b� b��o�p-��v�u�S)ż"sc�ql�L"�P^�d�)>��2�,�|x��TͲve �Iw���w�咩��zJ$716Z5M[?�R�w�b�Q�U�Pq#!HE�92�8���$��1�l�����&��0�T�U�B��ږ�[ o|�X"��(�*��%������,9S��Us���
��zd�)R�9�bs�$���ٱ��s�`�ID�5�E9|q��c@,$�}�׺r�,�9��Ux]���P:��S+s��٦��s�Eri�8h��`�H*�����Cw;tw���)r�Vt�' �@�
���o��ܷ_F��M���)d\�}���:�? �2�K3?�s�r��&B�K�ɧ-�����z�x$�8��!X�\GIG�8�S*>��׭ka"Jz>U-���pyx	����f�MbxMB=����!� oe�VU5�@�4M-��g\JZD�St�����#����ɳebi�d$�̹�'N���(� g���"EU�:L[��J$7��1�Gw#"��_{i&�$fbL��R-������/��g��V��s]7=�ȞArK �`��5	~��)� ,
��;� .�d�ə8���	x[�" ���B���q��e��3b�|���V�0 �#`_��L�I�'L�+��=P�?_"Yk!�Ҥ�	R����L�r~<�Dn���&�DQt�(�\f�瑬D)П���󅆼�?�0�;�NN.��~�%u�5�ԑ�p�l��J$k|���^ka����o�Š�Hn^"����RE, �ީC�*���
..4�M�<�Q�FJ�zU�NBY��<8�h#���/O��Jq�$�O�K�����k�bǢ,wcnP4��{���a` �dx}�Zb��)->�8@f��Q���1�f���    IEND�B`�          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Bouncy Platform Medium.png-7896338a5f44da1e83084c154a3c4a9e.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/Bouncy Platform Medium.png"
dest_files=[ "res://.import/Bouncy Platform Medium.png-7896338a5f44da1e83084c154a3c4a9e.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  GDST�   �            F  PNG �PNG

   IHDR   �   �   u< �  	IDATx���sGvǿ�z��E���K�!]k�SZ�يً�U��+TRf��?X�	�_�b���S.�
t�^\ʖ�NlWH[KIEI(��1ӯs�` Ȟ� ��T�D����;�_�~�Z`��q��g���Df ��� PQ5 ��	k�!���< ��8��E P
�U�ig�fA栽�v�vI04�mu��ʝk�iֱ �>�x�v�/��D6�XA����uUkB�`V-���A4sQ�b]kg��vAI4��������w�lr���n����u�{VA	��	j��^ ��A���\d�ufQP��r��Aq�V�y�\�� �����{�Z^�.�EP2x�Ȼ	� �E� HN����Y�4DQ�^�&H4�j�SP�r�/��zP�5bh�n��/��U@P�D�4�V�f^լ� n�Na�0<����#�=�mVj&'��XKͪ��jM�W l|'���:VA���1�\my�*�\6���h�"�Zp�0�퓧<>�����c���߶��a��n{"?��N�����E���n�)�L��/>�͠��`�������{H�-���UAr�����ᆙ�5�[ ���<��UR>_��>0A��J�OS@T3y�[>)�v�`�ժ�-�S���o5Aݸ��#H���K%INX���lO��Z���!#	Sc�H�(�`+F�a�+5��r�3 �4��ִ`U�*��KI���r";��{�us�Q#Xw��椤�~vo�&
�,�05��x�¥��~]
 ��� �5��ʕ�_W�v-f^W�� <�&&�����웠:��*(�������{�Z��:�7ύ�]<�l�>��v��U��A�9�a�U �T����신�������\������Z�Vi��ś��`��Y��2G�ٯ��|�����%�E2�zU�l-S��� ӗQ`₺~��]��Q}"-����2�0=5��.�����������>�p\��� ��&& ��ħnԍ{�)$!�J���Z�2}�S��Z��� uGa����[/�ú��� 7u&Ig=1As���j� s��(}!�^<��i�����K3+��`3LL>I�*A����^���,)���Ʋ޻<��.�������;��y�'aiV%G� ���L0�,��w�	�q����"�WLI��pW�ϟ��-*uG���+l�܍�ciV%������ �EώzO�
��uUO��d!�߿;=�#�A�_��_?l�4*����;M1��"�؂�v�/�'m��-��$̽}���Iq�x��?oǶVMQu�	p}޸q*��C�c�nkቊ�J+�眗&
�{��Ȇ ��ų�����۱"�Ғ�ʱ7 �S/ĲP7�!t(���2}W�/�iҩ���K<�z�s-��G{�'�4MdA�\ss���b�)��z#nUX@dQE��/�u��LAfף�)u��!�îY�*�>`h
�y���j,���qK�0	�u^��D���_��p@���?��4�_Ŭ6 ����Ͽ��1�Q�ч��g�:r��4saW�+S�d-��ￅ��>G$gQ�{/]b�t.���e��V.DT��tg.L��wވ�|��1DE� V ��)��C�s�7��<Q@T�F��4QH�4 >|�\�(D�-A�O�p���v������r5�M��]�*�LѼ���vs���(���'�u�� �nq��!)���i���-'$� �I"Z��Ȥ�$ X�0.�ɑ{챯j0�O5Y/.�"Zs�q�����w|���-+)�,�FIC�Z��+׳��,dLu(��G�99��l���"ũ4s���$Iv%����OQĔ�Գe �$p6�e|1�g�޹���Z����2�|P/���� 3���\؛7����*r$���o��H O�U}��Z�֪�L��P�=��ǧ�ǷO�H
�C���m_&�ȒK�J1�����b" g, '�'&�=wN�׊�A�<wW��/HNY�V,I�b�+�*Ů���k->����\��=7��D���-*һf���W�/D
'���7\]���6�|q��7-�1��s�$�S��ˈN
�Z'{�뼟T�¿�a�kV% �ڛ�i]�g�L�j����"RW��;o���7��dwYK������xArJC� �Y&���tT�kZ��L�Z7����c/$�� �.�5�:�ŽCE�\��2/+�[�Ϯ"	�p�M/8Y��Ӹ1n[��Z��w1����Q��Ղ�u�)�#; `VW�8�q��XC��X^�⤒�$>|���h�Y]��?��n�H�H.�^�����y��!�i�ܶ$�41��q���2���a-ZFxQ�SF��E�5��>-�@x�'���/G�ۭTM;-��}��"�u�3������=E3�����A��%Hv���q�ax��(�3�N��x�x?�T�D���K��nj��h��j3� $�$��iCzY����4Jm�C֒��T^��2���!'���f-_�f��:-��t,kŞ^��J��S�O�J	�E=پ��t��\�rԢiN�u��6G!��$���Њ�#
�!H@�0��z�N�hY'�QlsT����EA�� �<sUU�1]���*�Q|�G��Q�Z�x�L�sNy�#�c���\�MP����b���X�)��i�}z��$�S�=/�pA;���8\�3��z�׏��Z���Ψ���:��)#��=&�y"j��nA��]�����$J��y#;F�:Ie�S�35�3���_G�fej z��]�����Qls/��k� �y� J�9���D]/ߍQ�9���^0��Dr���3���<��u�Z��ep���^x�yo����ȁ@ F�J�:���d��+��\J�K	A�`f���&���}��+��B� ��%Y�Y�}�G%����)�d�`z��Aؕ�D�0��>JO�(�5IL� 9%HNRNX�&H���M��&I�A�r�y�2����:���f��O̍	�H%����x�ݒ:Ê֧�:�G̥�%h���X���+Cl��m��ؘh̒ -T�J��^ѯa��n�N;�y�5NB���NW�p�N��O��=i�٤O�a�ˤ�ۖ���y2�{��vuN�Ԏi�$HNe�}E���vsaD���؎��(�6��[S������YN�G{���XV�@��I�cA�>�
s�v�J>�fU�Aˤ1T�v��W����F�z�)�G�O����XPn�<�c���ኡ�n�KF��UN�ao�=a�Q�f`?�oه�zO��1Z+�FC�3�8�v�nY�)g��*#\a�J�\�U�T�s����Jg�s[e��wJoT�w?��T���� @�wTx���Œ�F�O�R�����N�RX��j((�\L4叞��uއ��}J'wQ\�U��Mpi4���|�(�w�L
��� �E�����(�:��
xYw��+<~lv}��-�kz�z=���&� �:|�p��I�U9lT��܁��B�,��N��b���pG�����<���߭���zcwG���J&I{!a��8p��%��X*��aݜIH2�c~�y�p��P����BjԐ�+.���GƄ�6�q� ��0�ܬ�APA�������v��~�K{�c��)[��`��'߯�ܙ�
f��-B�rƳ^��d�I��V��}�B��W5��4s ,oG��0(�Qګ ���%�i� w�K4Ev�F�����Ԏ����O�v�T�&�}i�����ƈ10�[1��p�u3c�1�	��!�Jo �H��&�;{����[�0|��όo� W�I�h�J-�BQ�Y֣S	og���!��zhև*�:�������4o*/v���cV�vK'�0�ft��^�楌���#E��;������G���H�1)�I�nc�Z?�@ �uQ�vw��_4�Xj�N>Q�qM׋-��I$���F�ޓFI�)#��=f�ux� �5Uޏ������r2��;@�6L�b����6 <y�czhʈ�lg���*Wת\E�� ��61��^��aw�3O]l��l�ѱ��T�n�aƳW�JN��ǚ�JNd���{a��M�Vm<�Z����l�	��H����j���X59�Ü��NO^���Z4Ě QmK� �BM5~V��]J��	 �u �xE)�R��۶�mc��WMN�Z��A$���>=�ݹ�A�9a!',hV�ƍ�.��1#L�nG�N�j����|�;�>hZ(_H��YxG�0㇭m�������:y���:�va��Ƭ�M�bw;Ƴ�)����A��I�XfH0�W� ���w�>�4�	�JO���V
7���X_�������� 8�Bմ��vPU�[���6��2n`�����v�%R��:��[CPw��@SH6Y��E��(�]��]�3�b ��j�Na��q�?������9 <�x�v}CL�n㻟����%AG��mTPi�'& ��ִl� �9Rߜ28\�i+RW�5-C�2�@�������]-T�򮘚|fF �������)⇭m��^�&����{u��D7�z�"&?��LAf�I�=� ��ߺ�_�?kzxJ���/#���,�?�  4>_�u�������S�Q�> ����4�s�.�E+}�|����D�<�S�gQbS ���TT���J7����{�Y�U2��5������{��n�}R@oD��,"���-L���cJ�ו�|�	gU�,����_{�C�f*(&�
�U���[䷕N"�8b f^dVef��әZ�#W����1 @�U��qK�Z�w�/��z�y�j7r$ ��� ����?����W�����?^񻹰��6͛�q��ݓ�x������v����^����H1��ƽo���?����M�哆��ST�x�? �����ۃ�݈QA�CL ��5(��J�Ŵ�n����T�ƽ�ml!���筋Sxo�Rԏ��~k;V*�[�G�(��ͷT�Y��I�w�}*&/Y��(�e��ɋR:M���Y,1iV%���R\V���$"�	�h�|n�=�
)�9K�bK�ƪ�7, �br�^@�b)];�-~��Pq��ұ|*�_�S�W���.����Xbb��nb�#& ���~�ۮ��&�� ��s��|��u�G�J���󗑒���R��3���q�g��2b�� ���k|��?a;-n�`��������ń<)z�f��>أ'K S��;}���V�+5����SY�01����X' A��j��� 7�0{�<2�tlc+���z^���2��W1		���uE�OI
�	aXD��|o�?{b�e+�g�v���U,�;+}Bv�1q�0ߖ����4��G��8a� 'QXI
I�*9,���:����d��AP@���b�^�bͤ��QXD�89>�#B����߳� 7���^��  �w��D����>	
��SL  )�$ V�h)�kN�p���HX-����Ot7c@�RJ���p��vQ�CL@4s���4w��"����s��8.�=��3���\����^/v����0E�*1� qhs��De����omx��o�B� `�礤e"��jʙ|Sg�p&���|�Uk(�DZ�f^S��I�@s�>LT���f {e��b
��kՎE�3��r�g,���[q7E���Uj���*5�Uj��C��J�xȳB�D_�G1��W}��]L@� �$˒�q��ӈb�B�2�[
�.}K�/)������T�}��VzΒ�"�׺�G3ŷH��[p��4j�I�|��;�>h�����΄�A9�B�%�'�\T�� � ��{u�;�Z\L�1X� ��j@1�/�!.�����"�:mK3ƊE��٭húy�H��-B�CH>C����5��F�4������d��I�������dn��,��!* w�OH>C!(�s$�*X����r���B��T�Z$n�:�<,0�f�"-��X�k�3dD3��UPP�`Fp&��|Z�k5�	p�yox<'-Z��KIL�f�!V��kR҃�&|AMQ��#4]�4(�NP>���G����4�XZ���3y�/B�~J{��נE��յ��nB(�5��;\���� e\�VP>��>����Ei��+�<��AD�mgN�\B/j��A[0f�! 6�k�U1��03�E� E��54E��a�*���T��QaPP6�E8|A��bIBhhh�I���BX� =%������� -P���κ�2�̪, ����FiRR��  ��tPK\�;j��������/�z    IEND�B`�              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/ballBlue_10.png-a6ac20f1eeff46860499a0f8c7bba4ff.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/ballBlue_10.png"
dest_files=[ "res://.import/ballBlue_10.png-a6ac20f1eeff46860499a0f8c7bba4ff.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
   [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]
sky_top_color = Color( 0.0470588, 0.454902, 0.976471, 1 )
sky_horizon_color = Color( 0.556863, 0.823529, 0.909804, 1 )
sky_curve = 0.25
ground_bottom_color = Color( 0.101961, 0.145098, 0.188235, 1 )
ground_horizon_color = Color( 0.482353, 0.788235, 0.952941, 1 )
ground_curve = 0.01
sun_energy = 16.0

[resource]
background_mode = 2
background_sky = SubResource( 1 )
GDST@   @           �  PNG �PNG

   IHDR   @   @   �iq�  tIDATx��{p�U�����#�t��y�@y@�	��D�8;#ಳ���S3���FJ�*�-�]fQ�qx�K��B��$�y����o�AB:�n���U����{�=�|����ۢ`�<<^? �V����.%!L��(�K���m�e5p,� ZD��y x�~��h�=#@u�48��n����@��1��Z�^��$�} j��V��R!�tK��/�"$��^�>��d�=R�����% �7�J�>!Im�	�Ԛ��x !$Tj:c�DB��������4BSd4h ��IH*���x �Tj��$ ����I:��@�J�3�U߅�R���N%-�B�A �V�u�it���J@�7������I � B��В`b��b�3�}��bg��b,	���U ����,̞2�IwR�3!����}���ưm~��1-�����P~�������49�Dϸ;�pD��L徱�!QV�ƻ{�8\�¸O�N�w��[���-�Ⱥ��<�`�0+w����,���u�$�n��ɳ�q�7�������E�ֲ�������w����͜1Cx����Kouk�O̠�dӑx�2��?P��3�ә~GcF����+hs��s\w:�&�&)���w����n���2�r()�'{���!vJ����Ql8T��/wk�����=U,~�I�f�MO��;\�N��Z��@�:[����]��Z������-G�¶�ym�"�h�24����7����[��{:��h������*�S�7}ċ�:���t��Վ�ew���#^�<�u2S�-�LM�y[�KfW=��^{�1���=�8ߝ6�݇������p����,|��&�MU���Ǝ�鋊������sOSR��ʷ6����L����0i�w ��}�xsC�rŨiO) &������i�p�C����/�S����>�MIQ9Y��e5�%Rn���%�ܒ��?�s����OL��?���ƤS�	�������?�(����)3�����x�Lv��"k�U��T#?�7��fݏ�d��i闁})��_���6���Q���geY����U'բg�ܙ��7���}��s�%���P��������n�݌�'S���y���d��SQ����\������j���4^j۾k�9	.[<I�a�S=��ht�t��[==��
+��BRiX�xn�r":`������+il��il���+W���)%�Ft���t�;�l��!�
����y��Y��Et@C��L��Iy���o3��Rȴih����?�MYEK��a3i��@b3iY2-���>�xwĺ
���o֡�^x0?�J$/<��FR��o�
�_@����K��vwg'SZ�wJ�VSZh���d^[�������F���e�3HO2�ZG��xr\�YV�&-�Ml=Vω����h)�Lb��t�N����xm��5rb5��ç{��u,`�k{M�Z�Z^�;�������M����[�n,�5�$���d# ��Iz������������2��xL�`oy�%�ydX��={�E1g�#�zx67ld��lF�%�m���'51�y�ȴD�O�fㆍ�zx6sf?¢��8{�,V#KJ�bQ�W��3��L����e�ϗQYy �������}{�:���Q����%�^PBqfR����۷�7^��3	RYy��?_���e��d����3��a�&�������ԣ|׮�d��<מ�$	$I�kO�)w��]�z.aMMM���#�`Xr�����+�O�N�\�����6��ËV~���WsG���v@c���]��撗��{)I3g��pU�)��UfΜ�$uW1/?���\�_v�%>�KZ��O�Q���rJKKIM�SXX����m���Tc�2w�j�m��|�/),,$5�N���X��+���C��$EO7�����iy����"�����h�6��m���~����\����ҫ�bԪQ�3;X��WT6��o��e�+������0hT��Z�Z"�v��"�+�Ŏ���	�
k�T�fOV�O@[�F��٠' �i<@PVX�eM�r��y#�����I�#@��%C�Q�N�ˏ�����]��OyC;m�9J���OK�f�b3i����L���'4������kvr�Çդ%+�Ș��nuZ=���z�Q�aaL���r���-����.��ǊI�.(����p�9��ΠY�ރ��i8Py�w�Vu{f���g�ΨtK���?�G�-��mrA
���|P����[x�J.?-����ߓM��!}X�Q;  ˨U=á�+J�9<gZѫ%�aBU�$H��[��owV��㟦�R���J�aW�j	�J����uԨ�`�e5QO�m�.����b���]^j���zW���U5�\W���j.�P�$��E���4W^jb���a5ii�� 5�P^]��9��;��Cq��\`p����AZ��+/�.�BWً�BH2j0i�u����+#�9s��O{���{��d��ߡ0�������'eq�e��ZL:5&��I����D���Nez���.��p�H6ki�hl���q���|A\� ��~v�i۾0�B��Ț#'�5+��Q�V���.����G���o��W��I�A��?�>�0꣱.|� /��DA���g �ƌ�����D^Y��O�%�epǾcd���x�L�*�W�����hQK��^���v^�`;���}�����`�%O�&�n�w;+8Zۿ��2&+�N�%�f⵵[X��O1�P����� ZC���ՔU�0�<Z2���8}.�6:���a6M��'����ʲ�ֲm�����Keԓ`84j5ߛu?���5�Ls���O5r�����mx�Oe�E��(L�P��Ĕ�vR���;Y���������]�`�ЅZ�b�]�̚2����U*�BeSU�\Էxhl������㗑C
mW��YT���Ua1h��Ǟ�'�j`� �'��AY��c����9RFP�q��ע�i(�Ϧ8?���3��"����h������q�������0�G"�;B���8x�O���L�Q��b#-�J�لѠC-IX-��rG�9�����t���BC� �=���VP�aVe�~3���o������@���SP�
� !y��m᪭
���� �o�;@���V�߹]�ZQ9���M���$��(�,	i�w{����ֿj'�� ^g�����U�̑ �j��ɠ�<(J!$��c��A�Og��n��PB�;��)!IV:P���V�g�>�*���d�Ƿ�`�-1u>�ۇ*=o n�O��Rp�9�j�P=B�>�������w���
��"��eY�Q�Ѩ��1>��g�    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Main.gdc"
 [remap]

path="res://PaddleRight.gdc"
          �PNG

   IHDR   @   @   �iq�  qIDATx��{pTU����~���I�A	$2$�H E, 
(�>��ؙ\vvqtwj�ف�}��H�S�̨�*����0��
��S^�
B!$��t������!��N��t�_U�n�9�;������sסO�'}��QA!~'i�E�Dw2��P��w=�%EY}���c�˕�ɢ�!u�$m�)��qz�ȷD�~F����y��ly���n\s�i�}�����$!�Pi��4:$YF�V��g%H0��u��� *�.����zr�W֥Ô���V-���>��Z�G�d�����B I2*��FK��A� !��_�#1��'��:� �MH��V�ܯ~\mV���-�HZYZ(@Vk���H�
�V�@�ZYZ(Ձd��V����akPxP�������:[�$�����KJ00u|	�Y�^��43u|	I	�7��U ��������=e<��*bX�@�(�¦���C��ŢG�[6!AE���%v)g���X[�EϘ;�hh�L徱E!Q^�ʻ{�9|��qy&�*�����OEu]�r��Y�-�Ⱥ�8x����F�2����,���u��n�ɩs�1�7�H���w�/���/��x=��3���ɜ�y����ov)���������%\� ��6��%-A�̒L�����y<��JZ�Θ��i޴��HN�g�;�x{Ou��� �r���;�L�@3�Ņ�3f�������<����%�"91�iG�R�ض ����8�L��2��cu̽+��/[��}��˖�u!�tȼ��XS�]k�	:5�������3��t��ڝ��W������(�]�7uĊ�:��� �
��֨ew��#VD��j���L�NO��Z��CfG���N}�Q��_>�ߟ6�݇��ݻ��t�
z���/z��&�Mu���F[Ԋ�Fe���&;���S����͍�<^����9L�= ��c+���\1bړ
���6��?������_�������%���wSZ\@^N&�y���*7oiT�`^� ����z�<���'��{�/`Ъ��������x��;��r4[�eFR��b�̛�ί/�v� v�n�G�����qx�,�t��5�}2�7�A�u�/p���{x�e�Y�e��9�9�'�X2o&��>?p�W��� �dֿ�sj��<���@ׯ�o���	P���yё��Ǡ��l�wy���}l����l�WZB��h�v�˗�C�լ�v��� ���o�x��W7�|�U�N#�j�/�׫���=��qŅ���*�B��#�mn��k��=�4lް���E���'b�����\�:��6_X44Y�6�1� ��{;3� �lSM�']a��ǻ)��a�LML�OLK�P^YÇ��7��� ���:Ԓ�s�T���QK
���:�����(p��
����ݹ)��ҺՔ��;7�W�n�bÕ^�G4�ӧ{Y��2��=�Ѫ$��CI��AC����c���z����df��dHZ�/�k���`m�+ǁ�8�>?�toD�#^�u���8/�E�1 ��ƽ��ܓ�ʻ{����ͅ�����\`����J�(+�������hvz{(�T<��`Oq�ed�8w��-f��G���l6n�Ȃ���HY.=QGzb�����,�������l��~�ŋs��9��q,-+�F��sH,^�b�n7�~����� 8�N^�u����������dV/,e��RJ����Oaf߾�����8��A����,��r�n7����{8���b@AEE��[��]�< ���|s�$�$A�9�������}�X,TTT �`pJ���쀦k�O�V2]���d�~�ds�ф�{t��d�{|��hlss���|

��.%Ib����>v���̙3���*����ū���Ob�
+����2����b�op���<��̝�q�ͬX����HO7S�@+W�@A��'�P=6A�3m����xfZ���!pz�l=ZǺ��!��=�������yj�`^x�e�4*E��e�>��*K������p���O��
�Z����9|�`�ח1^[_�8u9d_@a͞j��&˨�j���B�Yb�7��z5�PX�eM�r#�y3��'�b@�-@����Q�I�Ë�����\�쥢������e$�(�H�d�`2h04�����j����r����7ٹb�`4h�I�c� c�<-.~�ցee%1:��c:���fN��|`ţ%dܰ(�j�`ux9��ƀ-9ƞm7Up��*�����x��O�?��Ia�?�@٦���RY��P������_Tauxivt]��=��؋%��|� *��r���uV%�Ft*	w���,	2���l�;+�����|J�R�%A ��N%��%ꬮ�A�,��C����lms`��9,f���
���7�ʜ�C%K�\qt�7��\q��%�7��a����.u��h���j�-��BÇ���n��7�UO|s�������iq�P�}к0{i�?4! 9N�A�"N�U͎�B1<#���z�������)&��=�2�8U߽����2No��x�
�V�ɠ!��s�^�U���K=wp�Z�:<��khs�hluc���:�8<~?W�^v�m
Y�(+�Lck���Ԭ�7G�5����3�s�v~��I���ǐ�<�����~(�xk���ǋk61,#��(�v:G-D{$xXF"/��ԫ���0�c�1r�SY2o&*Y���g�m+<RT��_�c�p3�}����EW>�
Wo����ҧf�o��՝���[��f���O��m2���-�����eȩy#�@��<�t���5L9���C�����r?O�����lb��!�pR�--,e-�v�J���>TF�	�B�R�Y�3����i����t#'j[8Uߊ�~W&Rtj���$�s��2�Lj���6;�?���>��?�%rG'�'t��e&�UĬ)�_2�,*TYlT_qP�좱͍��M�ˇ� Th�vL.I�F�z�L�^MZ�s��,���IK@��@�/��a�_��H9���;8���VMqa.%����#7�L�)��'���T�5r��y�WTs�L5�(z�pDuF(�O�������4j�&2R�$���kQIƤ�p���N ����fw���LC��/�9�͢RP��(J�������[���op+P�����B=�_&���i�B��t���w����a��k�.	X�(J��q}'ZA0���q�(J@�j���5jԨUw|d�!�m�J�?n{(
N����s�o�~�]��S}|�dP�=.%�B�;��h��Y?>����Bvۮ��o=,�i]��IZ�w��˳��lY��u���NCWj^��.%e���O-T&�(:��s������|�3�y?��c�ٓ��Z}�s�����J~u�qK    IEND�B`�      ECFG
      _global_script_classes             _global_script_class_icons             application/config/name      
   instancing     application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png     display/window/size/width      h     display/window/size/height      H     importer_defaults/texture              compress/hdr_mode                compress/lossy_quality    ffffff�?      compress/mode                compress/normal_map           	   detect_3d               flags/anisotropic                flags/filter             flags/mipmaps                flags/repeat          
   flags/srgb              process/HDR_as_SRGB              process/fix_alpha_border            process/premult_alpha             
   size_limit               stream            	   svg/scale        �?   input/click�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script         )   rendering/environment/default_environment          res://default_env.tres  GDPC