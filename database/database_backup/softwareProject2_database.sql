PGDMP     &                    z            softwareprojectdatabase    14.2    14.2 1    -           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            .           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            /           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            0           1262    58071    softwareprojectdatabase    DATABASE     {   CREATE DATABASE softwareprojectdatabase WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
 '   DROP DATABASE softwareprojectdatabase;
                postgres    false            �            1255    75000    outstanding_fees()    FUNCTION     �  CREATE FUNCTION public.outstanding_fees() RETURNS json
    LANGUAGE plpgsql
    AS $$
declare
	calcFees JSON;

begin
	SELECT array_to_json(array_agg(row_to_json(student_outstanding_fees)))
	FROM (SELECT student_info.student_id AS INDEXNUMBER, student_info.first_name, student_info.last_name, (student_info.fees - SUM(course.course_fee)) AS OUTSTANDING_FEES into calcFees FROM course, course_enroll, student_info
		 WHERE student_info.student_id = course_enroll.student_info_id AND course_enroll.course_info_id = course.course_id
		GROUP BY student_info.student_id, student_info.first_name, student_info.last_name, student_info.fees
		 ) student_outstanding_fees;
	return calcFees;

end;
$$;
 )   DROP FUNCTION public.outstanding_fees();
       public          postgres    false            �            1255    74992 #   outstanding_fees(character varying)    FUNCTION     �  CREATE FUNCTION public.outstanding_fees(indexnumber character varying) RETURNS real
    LANGUAGE plpgsql
    AS $$
declare
	calcFees float(2);
begin
	SELECT (student_info.fees - SUM(course.course_fee)) AS OUTSTANDING_FEES into calcFees FROM course, course_enroll, student_info
	WHERE student_info.student_id = course_enroll.student_info_id AND course_enroll.student_info_id = indexNumber AND course_enroll.course_info_id = course.course_id
	GROUP BY student_info.fees;
	return calcFees;

end;
$$;
 F   DROP FUNCTION public.outstanding_fees(indexnumber character varying);
       public          postgres    false            �            1259    74926    course    TABLE     �   CREATE TABLE public.course (
    course_id bigint NOT NULL,
    course_name character varying(50) NOT NULL,
    course_fee real NOT NULL
);
    DROP TABLE public.course;
       public         heap    postgres    false            �            1259    74925    course_course_id_seq    SEQUENCE     }   CREATE SEQUENCE public.course_course_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.course_course_id_seq;
       public          postgres    false    213            1           0    0    course_course_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.course_course_id_seq OWNED BY public.course.course_id;
          public          postgres    false    212            �            1259    74976    course_enroll    TABLE        CREATE TABLE public.course_enroll (
    course_info_id integer NOT NULL,
    student_info_id character varying(50) NOT NULL
);
 !   DROP TABLE public.course_enroll;
       public         heap    postgres    false            �            1259    74917    lecturer_info    TABLE     E  CREATE TABLE public.lecturer_info (
    lecturer_id bigint NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    date_of_birth date NOT NULL,
    nationality character varying(50) NOT NULL,
    residential_address character varying(50),
    email character varying(50)
);
 !   DROP TABLE public.lecturer_info;
       public         heap    postgres    false            �            1259    74916    lecturer_info_lecturer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lecturer_info_lecturer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.lecturer_info_lecturer_id_seq;
       public          postgres    false    211            2           0    0    lecturer_info_lecturer_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.lecturer_info_lecturer_id_seq OWNED BY public.lecturer_info.lecturer_id;
          public          postgres    false    210            �            1259    74946    lecturertocourse_assignment    TABLE     �   CREATE TABLE public.lecturertocourse_assignment (
    lecturer_info_id integer NOT NULL,
    course_info_id integer NOT NULL
);
 /   DROP TABLE public.lecturertocourse_assignment;
       public         heap    postgres    false            �            1259    74961    lectures    TABLE     �   CREATE TABLE public.lectures (
    student_info_id character varying(50) NOT NULL,
    lecturer_info_id integer NOT NULL,
    lecture_room character varying(100) NOT NULL
);
    DROP TABLE public.lectures;
       public         heap    postgres    false            �            1259    74909    student_info    TABLE     b  CREATE TABLE public.student_info (
    student_id character varying(50) NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    date_of_birth date NOT NULL,
    nationality character varying(50) NOT NULL,
    residential_address character varying(200),
    email character varying(50),
    fees real
);
     DROP TABLE public.student_info;
       public         heap    postgres    false            �            1259    74933    teaching_assistant_info    TABLE     y  CREATE TABLE public.teaching_assistant_info (
    ta_id bigint NOT NULL,
    lecturer_info_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    date_of_birth date NOT NULL,
    residential_address character varying(50) NOT NULL,
    nationality character varying(50) NOT NULL,
    email character varying(50)
);
 +   DROP TABLE public.teaching_assistant_info;
       public         heap    postgres    false            �            1259    74932 !   teaching_assistant_info_ta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teaching_assistant_info_ta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.teaching_assistant_info_ta_id_seq;
       public          postgres    false    215            3           0    0 !   teaching_assistant_info_ta_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.teaching_assistant_info_ta_id_seq OWNED BY public.teaching_assistant_info.ta_id;
          public          postgres    false    214            y           2604    74929    course course_id    DEFAULT     t   ALTER TABLE ONLY public.course ALTER COLUMN course_id SET DEFAULT nextval('public.course_course_id_seq'::regclass);
 ?   ALTER TABLE public.course ALTER COLUMN course_id DROP DEFAULT;
       public          postgres    false    213    212    213            x           2604    74920    lecturer_info lecturer_id    DEFAULT     �   ALTER TABLE ONLY public.lecturer_info ALTER COLUMN lecturer_id SET DEFAULT nextval('public.lecturer_info_lecturer_id_seq'::regclass);
 H   ALTER TABLE public.lecturer_info ALTER COLUMN lecturer_id DROP DEFAULT;
       public          postgres    false    210    211    211            z           2604    74936    teaching_assistant_info ta_id    DEFAULT     �   ALTER TABLE ONLY public.teaching_assistant_info ALTER COLUMN ta_id SET DEFAULT nextval('public.teaching_assistant_info_ta_id_seq'::regclass);
 L   ALTER TABLE public.teaching_assistant_info ALTER COLUMN ta_id DROP DEFAULT;
       public          postgres    false    215    214    215            %          0    74926    course 
   TABLE DATA           D   COPY public.course (course_id, course_name, course_fee) FROM stdin;
    public          postgres    false    213   �E       *          0    74976    course_enroll 
   TABLE DATA           H   COPY public.course_enroll (course_info_id, student_info_id) FROM stdin;
    public          postgres    false    218   �F       #          0    74917    lecturer_info 
   TABLE DATA           �   COPY public.lecturer_info (lecturer_id, first_name, last_name, date_of_birth, nationality, residential_address, email) FROM stdin;
    public          postgres    false    211   �G       (          0    74946    lecturertocourse_assignment 
   TABLE DATA           W   COPY public.lecturertocourse_assignment (lecturer_info_id, course_info_id) FROM stdin;
    public          postgres    false    216   K       )          0    74961    lectures 
   TABLE DATA           S   COPY public.lectures (student_info_id, lecturer_info_id, lecture_room) FROM stdin;
    public          postgres    false    217   �K       !          0    74909    student_info 
   TABLE DATA           �   COPY public.student_info (student_id, first_name, last_name, date_of_birth, nationality, residential_address, email, fees) FROM stdin;
    public          postgres    false    209   �N       '          0    74933    teaching_assistant_info 
   TABLE DATA           �   COPY public.teaching_assistant_info (ta_id, lecturer_info_id, first_name, last_name, date_of_birth, residential_address, nationality, email) FROM stdin;
    public          postgres    false    215   �V       4           0    0    course_course_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.course_course_id_seq', 10, true);
          public          postgres    false    212            5           0    0    lecturer_info_lecturer_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.lecturer_info_lecturer_id_seq', 20, true);
          public          postgres    false    210            6           0    0 !   teaching_assistant_info_ta_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.teaching_assistant_info_ta_id_seq', 20, true);
          public          postgres    false    214            �           2606    74980     course_enroll course_enroll_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.course_enroll
    ADD CONSTRAINT course_enroll_pkey PRIMARY KEY (course_info_id, student_info_id);
 J   ALTER TABLE ONLY public.course_enroll DROP CONSTRAINT course_enroll_pkey;
       public            postgres    false    218    218            �           2606    74931    course course_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_pkey PRIMARY KEY (course_id);
 <   ALTER TABLE ONLY public.course DROP CONSTRAINT course_pkey;
       public            postgres    false    213            �           2606    74924 %   lecturer_info lecturer_info_email_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.lecturer_info
    ADD CONSTRAINT lecturer_info_email_key UNIQUE (email);
 O   ALTER TABLE ONLY public.lecturer_info DROP CONSTRAINT lecturer_info_email_key;
       public            postgres    false    211            �           2606    74922     lecturer_info lecturer_info_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.lecturer_info
    ADD CONSTRAINT lecturer_info_pkey PRIMARY KEY (lecturer_id);
 J   ALTER TABLE ONLY public.lecturer_info DROP CONSTRAINT lecturer_info_pkey;
       public            postgres    false    211            �           2606    74950 <   lecturertocourse_assignment lecturertocourse_assignment_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.lecturertocourse_assignment
    ADD CONSTRAINT lecturertocourse_assignment_pkey PRIMARY KEY (lecturer_info_id, course_info_id);
 f   ALTER TABLE ONLY public.lecturertocourse_assignment DROP CONSTRAINT lecturertocourse_assignment_pkey;
       public            postgres    false    216    216            �           2606    74965    lectures lectures_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.lectures
    ADD CONSTRAINT lectures_pkey PRIMARY KEY (student_info_id, lecturer_info_id);
 @   ALTER TABLE ONLY public.lectures DROP CONSTRAINT lectures_pkey;
       public            postgres    false    217    217            |           2606    74915 #   student_info student_info_email_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.student_info
    ADD CONSTRAINT student_info_email_key UNIQUE (email);
 M   ALTER TABLE ONLY public.student_info DROP CONSTRAINT student_info_email_key;
       public            postgres    false    209            ~           2606    74913    student_info student_info_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.student_info
    ADD CONSTRAINT student_info_pkey PRIMARY KEY (student_id);
 H   ALTER TABLE ONLY public.student_info DROP CONSTRAINT student_info_pkey;
       public            postgres    false    209            �           2606    74940 9   teaching_assistant_info teaching_assistant_info_email_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.teaching_assistant_info
    ADD CONSTRAINT teaching_assistant_info_email_key UNIQUE (email);
 c   ALTER TABLE ONLY public.teaching_assistant_info DROP CONSTRAINT teaching_assistant_info_email_key;
       public            postgres    false    215            �           2606    74938 4   teaching_assistant_info teaching_assistant_info_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.teaching_assistant_info
    ADD CONSTRAINT teaching_assistant_info_pkey PRIMARY KEY (ta_id);
 ^   ALTER TABLE ONLY public.teaching_assistant_info DROP CONSTRAINT teaching_assistant_info_pkey;
       public            postgres    false    215            �           2606    74981 /   course_enroll course_enroll_course_info_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.course_enroll
    ADD CONSTRAINT course_enroll_course_info_id_fkey FOREIGN KEY (course_info_id) REFERENCES public.course(course_id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.course_enroll DROP CONSTRAINT course_enroll_course_info_id_fkey;
       public          postgres    false    213    3204    218            �           2606    74986 0   course_enroll course_enroll_student_info_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.course_enroll
    ADD CONSTRAINT course_enroll_student_info_id_fkey FOREIGN KEY (student_info_id) REFERENCES public.student_info(student_id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.course_enroll DROP CONSTRAINT course_enroll_student_info_id_fkey;
       public          postgres    false    218    209    3198            �           2606    74956 K   lecturertocourse_assignment lecturertocourse_assignment_course_info_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lecturertocourse_assignment
    ADD CONSTRAINT lecturertocourse_assignment_course_info_id_fkey FOREIGN KEY (course_info_id) REFERENCES public.course(course_id) ON UPDATE CASCADE;
 u   ALTER TABLE ONLY public.lecturertocourse_assignment DROP CONSTRAINT lecturertocourse_assignment_course_info_id_fkey;
       public          postgres    false    3204    213    216            �           2606    74951 M   lecturertocourse_assignment lecturertocourse_assignment_lecturer_info_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lecturertocourse_assignment
    ADD CONSTRAINT lecturertocourse_assignment_lecturer_info_id_fkey FOREIGN KEY (lecturer_info_id) REFERENCES public.lecturer_info(lecturer_id) ON UPDATE CASCADE;
 w   ALTER TABLE ONLY public.lecturertocourse_assignment DROP CONSTRAINT lecturertocourse_assignment_lecturer_info_id_fkey;
       public          postgres    false    3202    211    216            �           2606    74971 '   lectures lectures_lecturer_info_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lectures
    ADD CONSTRAINT lectures_lecturer_info_id_fkey FOREIGN KEY (lecturer_info_id) REFERENCES public.lecturer_info(lecturer_id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.lectures DROP CONSTRAINT lectures_lecturer_info_id_fkey;
       public          postgres    false    211    217    3202            �           2606    74966 &   lectures lectures_student_info_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lectures
    ADD CONSTRAINT lectures_student_info_id_fkey FOREIGN KEY (student_info_id) REFERENCES public.student_info(student_id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.lectures DROP CONSTRAINT lectures_student_info_id_fkey;
       public          postgres    false    217    3198    209            �           2606    74941 E   teaching_assistant_info teaching_assistant_info_lecturer_info_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.teaching_assistant_info
    ADD CONSTRAINT teaching_assistant_info_lecturer_info_id_fkey FOREIGN KEY (lecturer_info_id) REFERENCES public.lecturer_info(lecturer_id) ON DELETE CASCADE;
 o   ALTER TABLE ONLY public.teaching_assistant_info DROP CONSTRAINT teaching_assistant_info_lecturer_info_id_fkey;
       public          postgres    false    211    3202    215            %   �   x��=n�0@�<�� D(K�5I��䵋*0Wd�?�����ᢳZ^�Y[��V�#���|8 ���������R� �lK~�<�#\�e7YۊmMV�(bW)�l�Q�������;r�Tg�"M��H>���j�S+w5���ǁ��	N���E���j�,:K-}����U�*��?�GOa�7B�_�4Bz      *   �   x�M��q1г	��O@��������iTR�z��#\u"���5،���.��N��z(Pν:I�%G0�{@�OZ����I+���L�a���3.J&8�|tp�������8O��n̷�Re��2p��|`sŊO!�.�7:��M�89��=��[���Ωw���}R��ʺb]k����:��_ڼܶںڲڗ���ܵ�9OJ��F�3�'m�m�k�����������c���ܾܺܶ��D��|p      #   v  x�MT�r�8|�B?`��=�n|��-W6U�r/�b!��G��F@bW��i5�==�Wj�w��jmo8B�g�*�V�~���B��;qDsvؿ��U��,��pt%W�5�ʶ��[5��%*Äy�
�3�F��6F��$���@�����������%���ґ��#cH�E�v��%�N�$m�(~�����Z������Y��Ԡ���ir����*�5hXV�������uR�@CP�:.,�j]��� asZ�9�2�e�ǖ���]��D�7�렒�-F;��IO
/�:+������zv�(z*N���N-�թ+���+M�^���>��7��3W�!yI\�.�|B8��?��AZ`�������h3�n]ד�oz�a�S��=�X�Q��Ί��]���DzW\܍ʉ)�_�J��G���y�Q���{hy�lc��UU$�n.3>+NN��'"D!|W����{����r�
�Omi��?,W�=��|�}C�k4=���d_/h��S)qa����a.x򜼴�`y %ba��Э�I6p���rw�&ϓN+�����r�x�b`Epy[�eq#*�8�Ű�8H^��&~��fa�TF:<��+Ǖ���UA�6��� CO��i�ܴ0���4r�\��w�C���� M5��y���L���Pp��G��O+��̒8��Q�Ⱥ�i�ud.���
U)���k��5�ӣ^\�~��W��"w&���x�V�/W2�'z����-��kǁٞ�N�?lB(���~�5�{��܌�#�W�T�ޔ����ڣ�P��Y�<�ʟ?�{�o��iFH^��,Ĩz�����s�$��g�i<P�y��+�	y�����~�?�<�>����w��^�o��ΗYR��:��ڽ�s      (   Y   x����@�PL��{I�u���,3#1��\X��<8��L$�B/�BeV�eZ�e^dC�d+�3�ñ��>�gO}g�fQ���!��>M      )   "  x�m��n�0�5�1���u�.Z�M���n�F���a�G��k͌�#m�����\��16�-\����eӯ��Jw7��^r~�)���K~UP��m>o���)�7o��6��n8�n����9ߨu���^At����$��~?����}��ˇ磲�}��&L���K��?˯��r?���]I�>�ͰN[�����������zܗ�_gE�{�ݟދ�>?����N�g��u��3�V)@B&�[�8�1A��-Gj�TcL��1!��0��b2�'�-�T/�`a��v��v�Dz�j�"z�B���p���M�˟��I`7N8ۍ��'�����n�v��ލe�D�q0�8XU�8�M9$��ˁI��F܍DGQV��� �QL�F,�y9��#�2��`�8�L�*�ئ0�����v5��j����2����Hw5t5�)�mW��r ��S�!��ڶ
K�!tB���C�`�q�t�E���U���ttƦ��#��s$8:G��s���mY�8�0A�CL�!b�H�X�q������q0�8�����Ǳԉt�@��@�U[�E�L�0b���a�6���$�w��$���^1Jߤ
K�K�_��N�K�`�mS��=c�ԉt�@����/�bv�c3g,#��l��e1g,���(p�c27>F��1��n�|e.�L�EXU�0,�An�<!;Dz:`:H��CdJ��������t���� \*����:�-uB,u"[�#�tԾ-�tͦ�TO���LG��Ɯ�Lj:�t��t0�8~}X�V����      !   �  x�mW˖�J����Y����**�@]�Sm������	Tݪ��������K���Y9��ĎE�m�E^y;�o��e �mF��h}�%G�FM�kOyyn�/D����Uv%΅P���8?(q����<��-�}�v�7�?�Ѝ�g��MjaV����5�_���¿(`(�����j��S�D�(�e{h�ű�؎�ڌ�W#�f�@�S���_����e7~:��Q��.$W��l�mǰE�,�fQ���v;?X�dF͉�׋wȲC�:�<����])E�)���m�&b+��%��p���vf�>с�2Ϯ5����̄5���F6M���v�o)����U���411��ڶM�x���%��o<˪��/_��I� �[U�J%��2ᑁw[5M�^�qͽe���	E�(��������^7�v7]Q�y^�C��J;�m�6�~�}���x@/i���m��I��i��?�@B���
�j��,��Z`���*U��	b���?[X���x�����N��N	N.��I\�ʲ��w��n�"N-����
U5l�����[1��V�H�>S���k��Ix#6(;��/Kx%wܳ����E���#��;��	za������������_D������:��o�O�f���%�ݣ:LU�(��i�6 ���ċ���D<�5� �c◶̚�*��ep�u#sqt/��B)���FF�>���71�϶
<2�/���A���LU�h�����o���?�=��U��V:���R�-�������͗��m�L�	|����NK�mگ��_+8��F�{�_�\~:5�Q�����KT4[���8ٳpי�����K����XӚ��Tu^
�w��k��syw��%h�Fc���硝t�������g����9�»�����Ń,�Ҵ,�D�v,�}�{���{P����~�'�p1EG�uv�̿�z\���vi�Q�B�߰�}g��Hgt2s�Q��B`�!�V�[��S�h7��W�dO����t�c�k�A��cv;6b���ؚev����v����*/t�˓���B�~^�F\��
2�/�lKU���p�n��;���	?)_��m� />y{�����!���Lyʊ�=N6ܖ�����,���:��:[ئ��Q����Nv�.�YH���K�������i���{�L�`������ν�f��.�'!���o�@�w��~e�`d�BU�(}�3�%d!]��[�Y����8��?vJ���&��q$�x���ͅ� %]N۪B�� �Yh��������#:���yMb�MU]��F5��V�rQ�,Mp����q�o������0[��ro���s��/D:�p~ͥl��લrA*�=,����j���o�6�Y��_x���P�r�t��B����2������5��>u�=�A;h�v��������Q�N45l<�������]+�3y���n���G�ݒiS�p4���"v����O);,�~>Dt��D?����t��@��o�\;�O{�	(e�V�[X���z|ó���.��>:S"Q��_�+�]+�$=� �
���[��4��g�#�(�Yp���,�#�q�LVw0�f��^ }8\|���mS�La�ņ�;/y���b�O�P�^s=V@[��8�ȇI4PВ�)\iҋh��N���a�U[t����#Wq��?��z�w��VW�g~�	��hX=c	I��]wt�������p)�ӧ�Tw�Fɾ����{�;n��O?���ї�g��*蜝_Ř�G�7�~�6�X2�2�6^�DȘ�����
p��r=�(�Z�Я�/��
��k#�"Kj�N,E�y���8�)��(٤�]@#�2x^�����	���TA:}����d���0��=��x�U���$Q����T��>UG���Ǻ����є %9�c��c���ʏ?�a��      '   �  x�e��v�6���S���e�L2�4���9�JB,F�T\���<Ng��B�g�� ��
^&cPJ�ð�<�
ȋ���v�Z�k=�|D������a��۶z��Î�n�}�s5 ��4 XAȮ{z8 �k��� ߨ���kut%���0\�-�3�;,�<� � ��J�ג=K������� ����&���x!���#5;�Nt+�(����}�Pq�*���nR�4߃h�#�0����� �o'�k?b7jm<-��w�$l����W�)����Ӻ�����-�r�Gc��i���yH�*(�"$�DJ�+)q�'qX���:��T�1	E�9�u�t�A� �ɀR��q�ƈ������N�p۪M	%��AS>�1�@�a4�w�`Y��w��v^i�̭� ?�ˣ��b<Jy��v��aSA�5J�S#P�tcu�|�dJ�	�{����p�s��?�˺Պ<S�~oWA	]�Š�ʴ}����+/iDI,���2R���r����˛�&��x[m��D���L�������D��������N�ߔ?���F�}X�y�e��b����@A9�|\�M�ӧ0�
��U;�g-���\��M�L��iO���>�1�
���nP�Ϙ琅i�2��O��,�m��4k3�Yq)�[��>xd��B�Uy�I�y��]��]�I`�@��4l��(ڞv�f��7K�id�V@+������>Q;ͻx��'X7��;"ť]́�_e��G\:���q	UF������Z�V;}�g� �N������lvv�cJ������sb�Z|�y�'�q�tV�]E���]:��+�㕕l?��p�Vе��}e_��i׆hMJ�s#a����~EbH�8c�Z��9�e@�}���S���R�o�|�"
�Q��:"e8�Z�Q���?�d�7Z�����^��=��_��f�/���     