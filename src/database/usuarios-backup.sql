--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-04-22 11:10:21

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 16522)
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    user_id integer NOT NULL,
    image text NOT NULL,
    description text NOT NULL,
    add_person character varying(255),
    localization character varying(255)
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16521)
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.posts_id_seq OWNER TO postgres;

--
-- TOC entry 4863 (class 0 OID 0)
-- Dependencies: 219
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- TOC entry 218 (class 1259 OID 16513)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    age integer NOT NULL,
    photo text
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16512)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 4864 (class 0 OID 0)
-- Dependencies: 217
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4701 (class 2604 OID 16525)
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- TOC entry 4700 (class 2604 OID 16516)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4857 (class 0 OID 16522)
-- Dependencies: 220
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts (id, user_id, image, description, add_person, localization) FROM stdin;
1	1	https://i.pinimg.com/736x/a3/10/d2/a310d240041f7576a80490ac7f69ad38.jpg	Just a little bit makeup	@rarebeauty	Valinhos-SP
2	2	https://i.pinimg.com/736x/7f/37/80/7f37806e7d67deca73fb2056b3969a4d.jpg	You are my Soulmate	@mateussilva	Valinhos-SP
3	3	https://i.pinimg.com/736x/23/2e/9a/232e9a1d65d6afa6e3fb6dbb203680bd.jpg	Formula 1, Go Ferrari	@ferrari	Monaco-IT
\.


--
-- TOC entry 4855 (class 0 OID 16513)
-- Dependencies: 218
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, age, photo) FROM stdin;
1	Laura Violla	laura.violla@gmail.com	17	\N
2	Evelyn Oliveira	evelyn.oliveira@gmail.com	17	\N
3	Ana Carolina Freitas	anacarolina.freitas@gmail.com	16	\N
4	Sabrina Carpenter	sabrina.carpenter@gmail.com	25	1745330884264-sabrina_carpenter.jpg
5	JoÆo Silva	joao.silva@gmail.com	25	https://example.com/photos/joao_silva.jpg
6	Maria Oliveira	maria.oliveira@gmail.com	30	https://example.com/photos/maria_oliveira.jpg
7	Carlos Souza	carlos.souza@gmail.com	28	https://example.com/photos/carlos_souza.jpg
8	Ana Paula	ana.paula@gmail.com	22	https://example.com/photos/ana_paula.jpg
9	Pedro Santos	pedro.santos@gmail.com	35	https://example.com/photos/pedro_santos.jpg
10	Juliana Costa	juliana.costa@gmail.com	27	https://example.com/photos/juliana_costa.jpg
11	Rafael Almeida	rafael.almeida@gmail.com	32	https://example.com/photos/rafael_almeida.jpg
12	Fernanda Lima	fernanda.lima@gmail.com	29	https://example.com/photos/fernanda_lima.jpg
13	Lucas Pereira	lucas.pereira@gmail.com	24	https://example.com/photos/lucas_pereira.jpg
14	Camila Rocha	camila.rocha@gmail.com	26	https://example.com/photos/camila_rocha.jpg
15	Gabriel Martins	gabriel.martins@gmail.com	31	https://example.com/photos/gabriel_martins.jpg
16	Isabela Ferreira	isabela.ferreira@gmail.com	23	https://example.com/photos/isabela_ferreira.jpg
17	Ricardo Mendes	ricardo.mendes@gmail.com	34	https://example.com/photos/ricardo_mendes.jpg
18	Patr¡cia Nunes	patricia.nunes@gmail.com	28	https://example.com/photos/patricia_nunes.jpg
19	Andr‚ Barbosa	andre.barbosa@gmail.com	33	https://example.com/photos/andre_barbosa.jpg
20	Larissa Ribeiro	larissa.ribeiro@gmail.com	21	https://example.com/photos/larissa_ribeiro.jpg
21	Thiago Monteiro	thiago.monteiro@gmail.com	29	https://example.com/photos/thiago_monteiro.jpg
22	Vanessa Cardoso	vanessa.cardoso@gmail.com	25	https://example.com/photos/vanessa_cardoso.jpg
23	Felipe Azevedo	felipe.azevedo@gmail.com	30	https://example.com/photos/felipe_azevedo.jpg
24	Renata Teixeira	renata.teixeira@gmail.com	27	https://example.com/photos/renata_teixeira.jpg
25	Bruno Carvalho	bruno.carvalho@gmail.com	26	https://example.com/photos/bruno_carvalho.jpg
26	Carolina Batista	carolina.batista@gmail.com	24	https://example.com/photos/carolina_batista.jpg
27	Eduardo Gomes	eduardo.gomes@gmail.com	32	https://example.com/photos/eduardo_gomes.jpg
28	Mariana Duarte	mariana.duarte@gmail.com	28	https://example.com/photos/mariana_duarte.jpg
29	Alexandre Farias	alexandre.farias@gmail.com	31	https://example.com/photos/alexandre_farias.jpg
30	Beatriz Silva	beatriz.silva@gmail.com	22	https://example.com/photos/beatriz_silva.jpg
31	Rodrigo Correia	rodrigo.correia@gmail.com	35	https://example.com/photos/rodrigo_correia.jpg
32	Tatiana Moraes	tatiana.moraes@gmail.com	29	https://example.com/photos/tatiana_moraes.jpg
33	Diego Cunha	diego.cunha@gmail.com	33	https://example.com/photos/diego_cunha.jpg
34	Paula Antunes	paula.antunes@gmail.com	23	https://example.com/photos/paula_antunes.jpg
35	Marcelo Vieira	marcelo.vieira@gmail.com	34	https://example.com/photos/marcelo_vieira.jpg
36	Aline Castro	aline.castro@gmail.com	25	https://example.com/photos/aline_castro.jpg
37	Gustavo Freitas	gustavo.freitas@gmail.com	30	https://example.com/photos/gustavo_freitas.jpg
38	Nat lia Mendes	natalia.mendes@gmail.com	27	https://example.com/photos/natalia_mendes.jpg
39	Leandro Silva	leandro.silva@gmail.com	28	https://example.com/photos/leandro_silva.jpg
40	Sabrina Almeida	sabrina.almeida@gmail.com	24	https://example.com/photos/sabrina_almeida.jpg
41	Fernando Rocha	fernando.rocha@gmail.com	31	https://example.com/photos/fernando_rocha.jpg
42	Cl udia Martins	claudia.martins@gmail.com	26	https://example.com/photos/claudia_martins.jpg
43	Vin¡cius Ribeiro	vinicius.ribeiro@gmail.com	32	https://example.com/photos/vinicius_ribeiro.jpg
44	D‚bora Nunes	debora.nunes@gmail.com	29	https://example.com/photos/debora_nunes.jpg
45	Rog‚rio Costa	rogerio.costa@gmail.com	33	https://example.com/photos/rogerio_costa.jpg
46	Elaine Santos	elaine.santos@gmail.com	22	https://example.com/photos/elaine_santos.jpg
47	F bio Oliveira	fabio.oliveira@gmail.com	35	https://example.com/photos/fabio_oliveira.jpg
48	Priscila Souza	priscila.souza@gmail.com	28	https://example.com/photos/priscila_souza.jpg
49	Ot vio Lima	otavio.lima@gmail.com	30	https://example.com/photos/otavio_lima.jpg
50	Michele Pereira	michele.pereira@gmail.com	27	https://example.com/photos/michele_pereira.jpg
51	C‚sar Monteiro	cesar.monteiro@gmail.com	34	https://example.com/photos/cesar_monteiro.jpg
52	Viviane Cardoso	viviane.cardoso@gmail.com	25	https://example.com/photos/viviane_cardoso.jpg
53	Henrique Azevedo	henrique.azevedo@gmail.com	31	https://example.com/photos/henrique_azevedo.jpg
54	Let¡cia Teixeira	leticia.teixeira@gmail.com	23	https://example.com/photos/leticia_teixeira.jpg
\.


--
-- TOC entry 4865 (class 0 OID 0)
-- Dependencies: 219
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 3, true);


--
-- TOC entry 4866 (class 0 OID 0)
-- Dependencies: 217
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 54, true);


--
-- TOC entry 4707 (class 2606 OID 16529)
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- TOC entry 4703 (class 2606 OID 16520)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 4705 (class 2606 OID 16518)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4708 (class 2606 OID 16530)
-- Name: posts posts_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


-- Completed on 2025-04-22 11:10:22

--
-- PostgreSQL database dump complete
--

