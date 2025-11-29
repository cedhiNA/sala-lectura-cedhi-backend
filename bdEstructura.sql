--
-- PostgreSQL database dump
--

-- Dumped from database version 10.23
-- Dumped by pg_dump version 10.23

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Prestamos; Type: TABLE; Schema: public; Owner: cedhinue_salalectura
--

CREATE TABLE public."Prestamos" (
    id_prestamo integer NOT NULL,
    registro integer,
    codigo integer,
    fecha_prestamo timestamp with time zone,
    fecha_devolucion_estimada timestamp with time zone,
    fecha_devolucion_real timestamp with time zone,
    estado character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Prestamos" OWNER TO cedhinue_salalectura;

--
-- Name: Prestamos_id_prestamo_seq; Type: SEQUENCE; Schema: public; Owner: cedhinue_salalectura
--

CREATE SEQUENCE public."Prestamos_id_prestamo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Prestamos_id_prestamo_seq" OWNER TO cedhinue_salalectura;

--
-- Name: Prestamos_id_prestamo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cedhinue_salalectura
--

ALTER SEQUENCE public."Prestamos_id_prestamo_seq" OWNED BY public."Prestamos".id_prestamo;


--
-- Name: Sancions; Type: TABLE; Schema: public; Owner: cedhinue_salalectura
--

CREATE TABLE public."Sancions" (
    id_sancion integer NOT NULL,
    id_usuario integer NOT NULL,
    tipo_sancion integer NOT NULL,
    estado boolean NOT NULL,
    fecha_inicio timestamp with time zone NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Sancions" OWNER TO cedhinue_salalectura;

--
-- Name: Sancions_id_sancion_seq; Type: SEQUENCE; Schema: public; Owner: cedhinue_salalectura
--

CREATE SEQUENCE public."Sancions_id_sancion_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Sancions_id_sancion_seq" OWNER TO cedhinue_salalectura;

--
-- Name: Sancions_id_sancion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cedhinue_salalectura
--

ALTER SEQUENCE public."Sancions_id_sancion_seq" OWNED BY public."Sancions".id_sancion;


--
-- Name: Users; Type: TABLE; Schema: public; Owner: cedhinue_salalectura_user
--

CREATE TABLE public."Users" (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    apellidos character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    categoria integer NOT NULL,
    sexo character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Users" OWNER TO cedhinue_salalectura_user;

--
-- Name: Users_id_seq; Type: SEQUENCE; Schema: public; Owner: cedhinue_salalectura_user
--

CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Users_id_seq" OWNER TO cedhinue_salalectura_user;

--
-- Name: Users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cedhinue_salalectura_user
--

ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;


--
-- Name: Usuario_cedhis; Type: TABLE; Schema: public; Owner: cedhinue_salalectura
--

CREATE TABLE public."Usuario_cedhis" (
    codigo integer NOT NULL,
    nombres character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    categoria character varying(255) NOT NULL,
    existe_sancion boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Usuario_cedhis" OWNER TO cedhinue_salalectura;

--
-- Name: libros; Type: TABLE; Schema: public; Owner: cedhinue_salalectura
--

CREATE TABLE public.libros (
    registro integer NOT NULL,
    ubicacion_estanteria character varying(255),
    titulo text,
    autor text,
    codigo_dewey character varying(255),
    notacion_interna character varying(255),
    codigo character varying(255),
    isbn character varying(255),
    editorial text,
    tema text,
    idioma text,
    tipo_material text,
    num_paginas text,
    num_edicion character varying(255),
    ciudad character varying(255),
    ano character varying(255),
    tabla_contenido text,
    disponibilidad boolean,
    url_cover character varying(255)
);


ALTER TABLE public.libros OWNER TO cedhinue_salalectura;

--
-- Name: libros_favoritos; Type: TABLE; Schema: public; Owner: cedhinue_salalectura
--

CREATE TABLE public.libros_favoritos (
    id_favorito integer NOT NULL,
    codigo integer NOT NULL,
    registro integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.libros_favoritos OWNER TO cedhinue_salalectura;

--
-- Name: libros_favoritos_id_favorito_seq; Type: SEQUENCE; Schema: public; Owner: cedhinue_salalectura
--

CREATE SEQUENCE public.libros_favoritos_id_favorito_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libros_favoritos_id_favorito_seq OWNER TO cedhinue_salalectura;

--
-- Name: libros_favoritos_id_favorito_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cedhinue_salalectura
--

ALTER SEQUENCE public.libros_favoritos_id_favorito_seq OWNED BY public.libros_favoritos.id_favorito;


--
-- Name: libros_registro_seq; Type: SEQUENCE; Schema: public; Owner: cedhinue_salalectura
--

CREATE SEQUENCE public.libros_registro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libros_registro_seq OWNER TO cedhinue_salalectura;

--
-- Name: libros_registro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cedhinue_salalectura
--

ALTER SEQUENCE public.libros_registro_seq OWNED BY public.libros.registro;


--
-- Name: Prestamos id_prestamo; Type: DEFAULT; Schema: public; Owner: cedhinue_salalectura
--

ALTER TABLE ONLY public."Prestamos" ALTER COLUMN id_prestamo SET DEFAULT nextval('public."Prestamos_id_prestamo_seq"'::regclass);


--
-- Name: Sancions id_sancion; Type: DEFAULT; Schema: public; Owner: cedhinue_salalectura
--

ALTER TABLE ONLY public."Sancions" ALTER COLUMN id_sancion SET DEFAULT nextval('public."Sancions_id_sancion_seq"'::regclass);


--
-- Name: Users id; Type: DEFAULT; Schema: public; Owner: cedhinue_salalectura_user
--

ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);


--
-- Name: libros registro; Type: DEFAULT; Schema: public; Owner: cedhinue_salalectura
--

ALTER TABLE ONLY public.libros ALTER COLUMN registro SET DEFAULT nextval('public.libros_registro_seq'::regclass);


--
-- Name: libros_favoritos id_favorito; Type: DEFAULT; Schema: public; Owner: cedhinue_salalectura
--

ALTER TABLE ONLY public.libros_favoritos ALTER COLUMN id_favorito SET DEFAULT nextval('public.libros_favoritos_id_favorito_seq'::regclass);


--
-- Name: Prestamos Prestamos_pkey; Type: CONSTRAINT; Schema: public; Owner: cedhinue_salalectura
--

ALTER TABLE ONLY public."Prestamos"
    ADD CONSTRAINT "Prestamos_pkey" PRIMARY KEY (id_prestamo);


--
-- Name: Sancions Sancions_pkey; Type: CONSTRAINT; Schema: public; Owner: cedhinue_salalectura
--

ALTER TABLE ONLY public."Sancions"
    ADD CONSTRAINT "Sancions_pkey" PRIMARY KEY (id_sancion);


--
-- Name: Users Users_apellidos_key; Type: CONSTRAINT; Schema: public; Owner: cedhinue_salalectura_user
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_apellidos_key" UNIQUE (apellidos);


--
-- Name: Users Users_email_key; Type: CONSTRAINT; Schema: public; Owner: cedhinue_salalectura_user
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key" UNIQUE (email);


--
-- Name: Users Users_nombre_key; Type: CONSTRAINT; Schema: public; Owner: cedhinue_salalectura_user
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_nombre_key" UNIQUE (nombre);


--
-- Name: Users Users_pkey; Type: CONSTRAINT; Schema: public; Owner: cedhinue_salalectura_user
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);


--
-- Name: Usuario_cedhis Usuario_cedhis_email_key; Type: CONSTRAINT; Schema: public; Owner: cedhinue_salalectura
--

ALTER TABLE ONLY public."Usuario_cedhis"
    ADD CONSTRAINT "Usuario_cedhis_email_key" UNIQUE (email);


--
-- Name: Usuario_cedhis Usuario_cedhis_pkey; Type: CONSTRAINT; Schema: public; Owner: cedhinue_salalectura
--

ALTER TABLE ONLY public."Usuario_cedhis"
    ADD CONSTRAINT "Usuario_cedhis_pkey" PRIMARY KEY (codigo);


--
-- Name: libros_favoritos libros_favoritos_pkey; Type: CONSTRAINT; Schema: public; Owner: cedhinue_salalectura
--

ALTER TABLE ONLY public.libros_favoritos
    ADD CONSTRAINT libros_favoritos_pkey PRIMARY KEY (id_favorito);


--
-- Name: libros libros_pkey; Type: CONSTRAINT; Schema: public; Owner: cedhinue_salalectura
--

ALTER TABLE ONLY public.libros
    ADD CONSTRAINT libros_pkey PRIMARY KEY (registro);


--
-- Name: libros_favoritos unique_favorito; Type: CONSTRAINT; Schema: public; Owner: cedhinue_salalectura
--

ALTER TABLE ONLY public.libros_favoritos
    ADD CONSTRAINT unique_favorito UNIQUE (codigo, registro);


--
-- Name: Prestamos Prestamos_codigo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cedhinue_salalectura
--

ALTER TABLE ONLY public."Prestamos"
    ADD CONSTRAINT "Prestamos_codigo_fkey" FOREIGN KEY (codigo) REFERENCES public."Usuario_cedhis"(codigo) ON UPDATE CASCADE;


--
-- Name: Prestamos Prestamos_registro_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cedhinue_salalectura
--

ALTER TABLE ONLY public."Prestamos"
    ADD CONSTRAINT "Prestamos_registro_fkey" FOREIGN KEY (registro) REFERENCES public.libros(registro) ON UPDATE CASCADE;


--
-- Name: libros_favoritos fk_libro; Type: FK CONSTRAINT; Schema: public; Owner: cedhinue_salalectura
--

ALTER TABLE ONLY public.libros_favoritos
    ADD CONSTRAINT fk_libro FOREIGN KEY (registro) REFERENCES public.libros(registro) ON DELETE CASCADE;


--
-- Name: libros_favoritos fk_usuario; Type: FK CONSTRAINT; Schema: public; Owner: cedhinue_salalectura
--

ALTER TABLE ONLY public.libros_favoritos
    ADD CONSTRAINT fk_usuario FOREIGN KEY (codigo) REFERENCES public."Usuario_cedhis"(codigo) ON DELETE CASCADE;


--
-- Name: TABLE "Users"; Type: ACL; Schema: public; Owner: cedhinue_salalectura_user
--

GRANT ALL ON TABLE public."Users" TO cedhinue_salalectura;


--
-- PostgreSQL database dump complete
--

