PGDMP                      }            pazdb    17.5    17.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    16389    pazdb    DATABASE     y   CREATE DATABASE pazdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE pazdb;
                     paz    false            �            1259    16390    precios    TABLE     u   CREATE TABLE public.precios (
    id_producto integer NOT NULL,
    fecha date NOT NULL,
    precio numeric(10,2)
);
    DROP TABLE public.precios;
       public         heap r       postgres    false                      0    16390    precios 
   TABLE DATA           =   COPY public.precios (id_producto, fecha, precio) FROM stdin;
    public               postgres    false    217   n       �           2606    16394    precios precios_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.precios
    ADD CONSTRAINT precios_pkey PRIMARY KEY (id_producto, fecha);
 >   ALTER TABLE ONLY public.precios DROP CONSTRAINT precios_pkey;
       public                 postgres    false    217    217               D   x�]��	�0Cѳ�����M�K��#%����N���U��ޮD��8_��A��v\���V�kf6 �	�     