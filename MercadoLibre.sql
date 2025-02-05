PGDMP     	    )                z            MercadoLibre    14.2    14.2 "    *           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            +           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ,           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            -           1262    19783    MercadoLibre    DATABASE     m   CREATE DATABASE "MercadoLibre" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "MercadoLibre";
                postgres    false                        2615    19784    Administrador    SCHEMA        CREATE SCHEMA "Administrador";
    DROP SCHEMA "Administrador";
                postgres    false                        2615    19785 	   Comprador    SCHEMA        CREATE SCHEMA "Comprador";
    DROP SCHEMA "Comprador";
                postgres    false            
            2615    19786    Producto    SCHEMA        CREATE SCHEMA "Producto";
    DROP SCHEMA "Producto";
                postgres    false                        2615    19787 	   Proveedor    SCHEMA        CREATE SCHEMA "Proveedor";
    DROP SCHEMA "Proveedor";
                postgres    false                        2615    19788    Tarjeta_Credito    SCHEMA     !   CREATE SCHEMA "Tarjeta_Credito";
    DROP SCHEMA "Tarjeta_Credito";
                postgres    false                        2615    19789    Transaccion    SCHEMA        CREATE SCHEMA "Transaccion";
    DROP SCHEMA "Transaccion";
                postgres    false            �            1259    19790    Administrador    TABLE     �   CREATE TABLE "Administrador"."Administrador" (
    id_administrador character varying NOT NULL,
    nombre character varying
);
 ,   DROP TABLE "Administrador"."Administrador";
       Administrador         heap    postgres    false    5            �            1259    19795 	   Comprador    TABLE     �  CREATE TABLE "Comprador"."Comprador" (
    id_comprador integer[] NOT NULL,
    num_documento integer[] NOT NULL,
    "nombre_Completo" "char"[] NOT NULL,
    "razon_Social" "char"[] NOT NULL,
    "Telefono" integer[] NOT NULL,
    correo "char"[] NOT NULL,
    "contraseña" "char"[] NOT NULL,
    direccion "char"[] NOT NULL,
    ciudad "char"[] NOT NULL,
    "Num_tarjeta" integer[] NOT NULL
);
 $   DROP TABLE "Comprador"."Comprador";
    	   Comprador         heap    postgres    false    4            �            1259    19800    Producto    TABLE     *  CREATE TABLE "Producto"."Producto" (
    "Id_producto" integer[] NOT NULL,
    "Titulo" "char"[] NOT NULL,
    "Categoria" "char"[] NOT NULL,
    "Marca" "char"[] NOT NULL,
    precio integer[] NOT NULL,
    "Stock" integer[] NOT NULL,
    "Caracteristicas" "char"[] NOT NULL,
    foto "char"[]
);
 "   DROP TABLE "Producto"."Producto";
       Producto         heap    postgres    false    10            �            1259    19848    vistaComprador    VIEW     �   CREATE VIEW "Producto"."vistaComprador" AS
 SELECT "Producto".*::"Producto"."Producto" AS "Producto"
   FROM "Producto"."Producto";
 '   DROP VIEW "Producto"."vistaComprador";
       Producto          postgres    false    217    217    10            �            1259    19805 	   Proveedor    TABLE     b  CREATE TABLE "Proveedor"."Proveedor" (
    id_proveedor integer[] NOT NULL,
    num_documento integer[] NOT NULL,
    nombre_completo "char"[] NOT NULL,
    razon_social "char"[] NOT NULL,
    telefono integer[] NOT NULL,
    correo "char"[] NOT NULL,
    direccion "char"[] NOT NULL,
    ciudad "char"[] NOT NULL,
    "contraseña" "char"[] NOT NULL
);
 $   DROP TABLE "Proveedor"."Proveedor";
    	   Proveedor         heap    postgres    false    8            �            1259    19810    Tarjeta_Credito    TABLE     �   CREATE TABLE "Tarjeta_Credito"."Tarjeta_Credito" (
    num_tarjetra integer[] NOT NULL,
    fecha_expiracion date NOT NULL,
    codigo_seguridad integer[] NOT NULL
);
 0   DROP TABLE "Tarjeta_Credito"."Tarjeta_Credito";
       Tarjeta_Credito         heap    postgres    false    11            �            1259    19815    Transaccion    TABLE     �   CREATE TABLE "Transaccion"."Transaccion" (
    num_transaccion integer[] NOT NULL,
    tipo_transaccion "char"[] NOT NULL,
    id_producto integer[] NOT NULL,
    id_persona integer[] NOT NULL
);
 (   DROP TABLE "Transaccion"."Transaccion";
       Transaccion         heap    postgres    false    6            �            1259    19852    vistaAdministrador    VIEW     �   CREATE VIEW "Transaccion"."vistaAdministrador" AS
 SELECT "Transaccion".*::"Transaccion"."Transaccion" AS "Transaccion"
   FROM "Transaccion"."Transaccion";
 .   DROP VIEW "Transaccion"."vistaAdministrador";
       Transaccion          postgres    false    220    220    6            �            1259    19844    casa    VIEW     t   CREATE VIEW public.casa AS
 SELECT "Producto".*::"Producto"."Producto" AS "Producto"
   FROM "Producto"."Producto";
    DROP VIEW public.casa;
       public          postgres    false    217    217            �            1259    19874    pruebaadmin    VIEW     �   CREATE VIEW public.pruebaadmin AS
 SELECT "Administrador".id_administrador,
    "Administrador".nombre
   FROM "Administrador"."Administrador";
    DROP VIEW public.pruebaadmin;
       public          postgres    false    215    215            "          0    19790    Administrador 
   TABLE DATA           L   COPY "Administrador"."Administrador" (id_administrador, nombre) FROM stdin;
    Administrador          postgres    false    215   Z(       #          0    19795 	   Comprador 
   TABLE DATA           �   COPY "Comprador"."Comprador" (id_comprador, num_documento, "nombre_Completo", "razon_Social", "Telefono", correo, "contraseña", direccion, ciudad, "Num_tarjeta") FROM stdin;
 	   Comprador          postgres    false    216   �(       $          0    19800    Producto 
   TABLE DATA           �   COPY "Producto"."Producto" ("Id_producto", "Titulo", "Categoria", "Marca", precio, "Stock", "Caracteristicas", foto) FROM stdin;
    Producto          postgres    false    217   �(       %          0    19805 	   Proveedor 
   TABLE DATA           �   COPY "Proveedor"."Proveedor" (id_proveedor, num_documento, nombre_completo, razon_social, telefono, correo, direccion, ciudad, "contraseña") FROM stdin;
 	   Proveedor          postgres    false    218   �(       &          0    19810    Tarjeta_Credito 
   TABLE DATA           h   COPY "Tarjeta_Credito"."Tarjeta_Credito" (num_tarjetra, fecha_expiracion, codigo_seguridad) FROM stdin;
    Tarjeta_Credito          postgres    false    219   �(       '          0    19815    Transaccion 
   TABLE DATA           j   COPY "Transaccion"."Transaccion" (num_transaccion, tipo_transaccion, id_producto, id_persona) FROM stdin;
    Transaccion          postgres    false    220   )       �           2606    19866     Administrador Administrador_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY "Administrador"."Administrador"
    ADD CONSTRAINT "Administrador_pkey" PRIMARY KEY (id_administrador);
 W   ALTER TABLE ONLY "Administrador"."Administrador" DROP CONSTRAINT "Administrador_pkey";
       Administrador            postgres    false    215            �           2606    19823    Comprador Comprador_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY "Comprador"."Comprador"
    ADD CONSTRAINT "Comprador_pkey" PRIMARY KEY (id_comprador, "Num_tarjeta");
 K   ALTER TABLE ONLY "Comprador"."Comprador" DROP CONSTRAINT "Comprador_pkey";
    	   Comprador            postgres    false    216    216            �           2606    19825    Producto Producto_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY "Producto"."Producto"
    ADD CONSTRAINT "Producto_pkey" PRIMARY KEY ("Id_producto");
 H   ALTER TABLE ONLY "Producto"."Producto" DROP CONSTRAINT "Producto_pkey";
       Producto            postgres    false    217            �           2606    19827    Proveedor Proveedor_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY "Proveedor"."Proveedor"
    ADD CONSTRAINT "Proveedor_pkey" PRIMARY KEY (id_proveedor);
 K   ALTER TABLE ONLY "Proveedor"."Proveedor" DROP CONSTRAINT "Proveedor_pkey";
    	   Proveedor            postgres    false    218            �           2606    19829 $   Tarjeta_Credito Tarjeta_Credito_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY "Tarjeta_Credito"."Tarjeta_Credito"
    ADD CONSTRAINT "Tarjeta_Credito_pkey" PRIMARY KEY (num_tarjetra);
 ]   ALTER TABLE ONLY "Tarjeta_Credito"."Tarjeta_Credito" DROP CONSTRAINT "Tarjeta_Credito_pkey";
       Tarjeta_Credito            postgres    false    219            �           2606    19831    Transaccion Transaccion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY "Transaccion"."Transaccion"
    ADD CONSTRAINT "Transaccion_pkey" PRIMARY KEY (num_transaccion);
 Q   ALTER TABLE ONLY "Transaccion"."Transaccion" DROP CONSTRAINT "Transaccion_pkey";
       Transaccion            postgres    false    220            �           1259    19857    IndiceNombre    INDEX     U   CREATE INDEX "IndiceNombre" ON "Administrador"."Administrador" USING btree (nombre);
 +   DROP INDEX "Administrador"."IndiceNombre";
       Administrador            postgres    false    215            �           1259    19878    indexNombre    INDEX     �   CREATE INDEX "indexNombre" ON "Administrador"."Administrador" USING btree (nombre varchar_pattern_ops, id_administrador varchar_pattern_ops);
 *   DROP INDEX "Administrador"."indexNombre";
       Administrador            postgres    false    215    215            "   8   x�34��*��L��24�����&�Y� �)gbNjVb^JQ>�)��c��W� }��      #      x������ � �      $      x������ � �      %      x������ � �      &      x������ � �      '      x������ � �     