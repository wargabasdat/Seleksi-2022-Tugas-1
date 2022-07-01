--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

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

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.games (
    id integer NOT NULL,
    white_id integer NOT NULL,
    black_id integer NOT NULL,
    notation character varying(100),
    opening character varying(255),
    winner character varying(5) NOT NULL,
    moves integer,
    year integer
);


ALTER TABLE public.games OWNER TO postgres;

--
-- Name: games_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_id_seq OWNER TO postgres;

--
-- Name: games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.games_id_seq OWNED BY public.games.id;


--
-- Name: players; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.players (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    title character varying(3),
    nationality character varying(20),
    rank integer
);


ALTER TABLE public.players OWNER TO postgres;

--
-- Name: players_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.players_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_id_seq OWNER TO postgres;

--
-- Name: players_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.players_id_seq OWNED BY public.players.id;


--
-- Name: ratings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ratings (
    rank integer NOT NULL,
    classic integer,
    rapid integer,
    blitz integer
);


ALTER TABLE public.ratings OWNER TO postgres;

--
-- Name: games id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games ALTER COLUMN id SET DEFAULT nextval('public.games_id_seq'::regclass);


--
-- Name: players id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.players ALTER COLUMN id SET DEFAULT nextval('public.players_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.games (id, white_id, black_id, notation, opening, winner, moves, year) FROM stdin;
1	1	11	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: 3.Nf3 Nf6	White	34	2022
2	1	10	1. d4 Nf6 2. c4 g6 3. Nc3 d5	Grünfeld Defense: Exchange Variation, 5.e4 Nxc3 6.bxc3 Bg7 7.Bb5+ c6 8.Ba4	White	54	2022
3	1	12	1. Nf3 d5 2. g3 g6 3. Bg2 Bg7	King's Indian Attack: Double Fianchetto Variation, 3.Bg2 Bg7	White	56	2022
4	1	19	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: 3.Nf3 Nf6	White	42	2022
5	1	18	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: 3.Nf3 Nf6	White	36	2022
6	1	10	1. d4 Nf6 2. c4 g6 3. Nc3 d5	Grünfeld Defense: Exchange Variation, 5.e4 Nxc3 6.bxc3 Bg7 7.Bb5+ c6 8.Ba4	-	79	2022
7	1	19	1. Nf3 d5 2. g3 Nd7 3. d4 Nb6	King's Indian Attack	-	47	2022
8	98	1	1. e4 b6 2. d4 Bb7 3. Nc3 d6	King's Pawn Opening: Owen's Defense, 2.d4 Bb7	White	37	2022
9	13	1	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6	Giuoco Piano Game: Giuoco Pianissimo Variation, 4...Nf6	White	50	2022
10	7	1	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6	Giuoco Piano Game: Giuoco Pianissimo Variation, 4...Nf6	White	50	2022
11	98	1	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6	Four Knights Game: Scotch Variation Accepted, 5.Nxd4 Bb4 6.Nxc6 bxc6 7.Bd3 d5	-	33	2022
12	13	1	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6	Italian Game: Two Knights, Modern Bishop's Opening	-	40	2022
13	7	1	1. d4 d5 2. c4 c6 3. Nf3 Nf6	Semi-Slav Defense	-	38	2022
14	1	10	1. d4 Nf6 2. c4 g6 3. Nc3 d5	Grünfeld Defense: Exchange Variation, 5.e4 Nxc3 6.bxc3 Bg7	White	40	2021
15	1	132	1. e4 c5 2. Nf3 d6 3. d4 cxd4	Sicilian Defense: Open, Najdorf Variation	White	65	2021
16	1	5	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Modern, Knight Defense, 5.Nf3 h6 6.Bh4	White	40	2021
17	1	6	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Ragozin Defense, 5.cxd5 exd5 6.Bg5 h6 7.Bh4	White	47	2021
18	1	26	1. c4 c6 2. Qa4 Nf6 3. Nf3 g6	English Opening: Caro-Kann Defensive System	White	33	2021
19	1	8	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Three Knights, Harrwitz Attack, 5...O-O	White	33	2021
20	1	37	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6	Italian Game: Two Knights, Modern Bishop's Opening	White	34	2021
21	1	37	1. e4 d5 2. exd5 Qxd5 3. Nc3 Qd6	Scandinavian Defense: Mieses-Kotrč, Gubinsky-Melts Defense, 4.d4 Nf6 5.Nf3	White	42	2021
22	1	37	1. e4 c5 2. Nf3 Nc6 3. Bb5 g6	Sicilian Defense: Nyezhmetdinov-Rossolimo, Fianchetto Variation, 4.O-O Bg7	White	64	2021
23	1	37	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6	Italian Game: Two Knights, Modern Bishop's Opening	White	28	2021
24	1	10	1. d4 Nf6 2. c4 g6 3. Nc3 d5	Grünfeld Defense: Exchange Variation, 5.e4 Nxc3 6.bxc3 Bg7	White	50	2021
25	1	10	1. d4 Nf6 2. c4 g6 3. Nc3 d5	Grünfeld Defense: Exchange Variation, 5.Bd2 Bg7 6.e4 Nb6 7.Be3	White	36	2021
26	1	10	1. Nf3 Nf6 2. c4 g6 3. Nc3 d5	English Opening: Anglo-Indian, Anglo-Grünfeld Defense, 3.cxd5 Nxd5 4.Nf3 g6	White	39	2021
27	1	10	1. d4 Nf6 2. c4 g6 3. Nc3 d5	Grünfeld Defense: Exchange Variation, 5.Bd2 Bg7 6.e4 Nb6 7.Be3	White	40	2021
28	1	10	1. c3 b6 2. e4 Bb7 3. d3 e6	Saragossa Opening	White	34	2021
29	1	46	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Anderssen Variation	White	85	2021
30	1	12	1. e4 c5 2. Nf3 e6 3. d4 cxd4	Sicilian Defense: Taimanov Variation, 5.Nc3 Nf6 6.a3	White	27	2021
31	1	15	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Orthodox, Rubinstein Variation	White	40	2021
32	1	103	1. e4 c5 2. Nf3 e6 3. d4 cxd4	Sicilian Defense: Taimanov, Bastrikov Variation, 6.g3 a6 7.Bg2 Nf6 8.O-O	White	42	2021
33	1	6	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4	Nimzo-Indian Defense: Classical, Noa Variation, 5.a3 Bxc3+ 6.Qxc3 O-O	White	75	2021
34	1	4	1. e4 c5 2. Nf3 d6 3. d4 cxd4	Sicilian Defense: Open, Najdorf Variation, 6.a4 e5	White	33	2021
35	1	4	1. e4 c5 2. Nf3 d6 3. d4 cxd4	Sicilian Defense: Open, Najdorf Variation, 6.a4 e5	White	33	2021
36	1	7	1. e4 e5 2. Nf3 Nf6 3. Nc3 Nc6	Four Knights Game	White	23	2021
37	1	7	1. e4 e5 2. Nf3 Nf6 3. Nc3 Nc6	Four Knights Game	White	23	2021
38	1	14	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: Main Line, Giuoco Pianissimo Variation	White	60	2021
39	1	18	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4	Nimzo-Indian Defense: Classical, Noa Variation, 5.a3 Bxc3+ 6.Qxc3	White	41	2021
40	1	75	1. e4 c5 2. Nf3 d6 3. d4 cxd4	Sicilian Defense: Open, Dragon Variation, 6.Be3 Bg7 7.Qd2	White	42	2021
41	1	17	1. e4 c5 2. Nf3 d6 3. d4 cxd4	Sicilian Defense: Open, Najdorf, English Attack, 6...e5 7.Nb3 Be6 8.f3	White	60	2021
42	1	6	1. d4 Nf6 2. c4 e6 3. Bf4 d5	Indian Game: East Indian Defense	White	46	2021
43	1	6	1. e4 c5 2. Nf3 d6 3. Bb5+ Nc6	Sicilian Defense: Canal Attack, 3...Nc6 4.O-O Bd7 5.Re1	White	37	2021
44	1	8	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: Main Line, Giuoco Pianissimo Variation	White	90	2021
45	1	16	1. b3 e5 2. Bb2 Nc6 3. c4 Nf6	Nimzowitsch-Larsen Attack: Modern Variation, 2.Bb2 Nc6	White	25	2021
46	1	8	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Harrwitz, Two Knights Defense	White	23	2021
47	1	8	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: 4.O-O Nf6	White	31	2021
48	1	8	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: 4.O-O Nf6	White	37	2021
49	1	18	1. e4 c5 2. Nf3 Nc6 3. Nc3 e5	Sicilian Defense: Closed, Traditional Line, 3.Nf3 e5 4.Bc4	White	52	2021
50	1	18	1. d4 Nf6 2. Nf3 g6 3. c4 Bg7	King's Indian Defense: Pterodactyl Defense, 5.Bg2	White	46	2021
51	1	18	1. e4 b6 2. d4 Bb7 3. Bd3 e6	King's Pawn Opening: Owen's Defense, 2.d4 Bb7 3.Bd3	White	39	2021
52	1	7	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6	Giuoco Piano Game: Giuoco Pianissimo Variation, 4...Nf6	White	44	2021
53	1	7	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Three Knights, Semi-Tarrasch Defense, 5.e3	White	39	2021
54	1	107	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Three Knights, Semi-Tarrasch Defense, 5.e3	White	37	2021
55	1	56	1. e4 c5 2. Nf3 d6 3. d4 cxd4	Sicilian Defense: Open, Najdorf Variation	White	40	2021
56	1	37	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6	Ruy López Opening: Berlin Defense, 4.d3 Bc5	White	56	2021
57	1	7	1. c4 e5 2. Nc3 Nf6 3. Nf3 Nc6	English Opening: Four Knights, Korchnoi Line	White	33	2021
58	1	7	1. c4 e5 2. Nc3 Nf6 3. Nf3 Nc6	English Opening: Four Knights, Flexible Line	White	47	2021
59	1	7	1. c4 Nf6 2. Nc3 e5 3. Nf3 Nc6	English Opening: Four Knights, Kingside Fianchetto Line, 4...d5 5.cxd5 Nxd5 6.Bg2	White	49	2021
60	1	2	1. c4 Nf6 2. Nc3 e5 3. e3 Nc6	English Opening: Reversed Sicilian, Closed, 3.e3 Nf6	White	32	2021
61	1	6	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4	Nimzo-Indian Defense: Ragozin, Gligorić System, 7.O-O dxc4 8.Bxc4 cxd4 9.exd4 b6	White	64	2021
62	1	6	1. d4 Nf6 2. Bf4 d5 3. e3 Bg4	Indian Game	White	66	2021
63	1	2	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Closed, Martinez Variation, 6...b5 7.Bb3	White	38	2021
64	1	98	1. c4 e6 2. g3 d5 3. Bg2 dxc4	English Opening: Agincourt Defense, 2.g3 d5 3.Bg2	White	40	2021
65	1	30	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4	Nimzo-Indian Defense: Bishop Attack, Classical Defense, 6.Ne2 c5 7.cxd5 cxd4 8.exd4 Nxd5 9.O-O	White	48	2021
66	1	32	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Catalan Opening	White	31	2021
67	1	32	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6	Ruy López Opening: Berlin Defense, 4.d3 d6	White	62	2021
68	1	122	1. e4 c5 2. Nf3 d6 3. Bb5+ Bd7	Sicilian Defense: Canal, Main Line, Sokolsky Variation	White	39	2021
69	1	42	1. e4 c6 2. d4 d5 3. e5 Bf5	Caro-Kann Defense: Advance Variation, 3...Bf5	White	50	2021
70	1	7	1. d4 Nf6 2. c4 e6 3. Bf4 d5	Indian Game: East Indian Defense	White	55	2021
71	1	24	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Closed, Suetin Variation	White	43	2021
72	1	163	1. e4 c6 2. d4 d5 3. e5 c5	Caro-Kann Defense: Advance, Botvinnik-Carls Defense, 4.dxc5	White	26	2021
73	1	10	1. d4 Nf6 2. c4 g6 3. Nc3 d5	Grünfeld Defense: Zaitsev Gambit	White	37	2021
74	1	17	1. Nf3 d5 2. g3 g6 3. Bg2 Bg7	King's Indian Attack: Double Fianchetto Variation, 3.Bg2 Bg7 4.O-O	White	36	2021
75	1	17	1. e4 c5 2. Nf3 e6 3. b3 Nc6	Sicilian Defense: Westerinen Attack	White	38	2021
76	1	6	1. e4 c5 2. Nf3 d6 3. d4 cxd4	Sicilian Defense: Open, Najdorf, Opočenský Variation, 6...e5 7.Nf3	White	51	2021
77	1	43	1. d4 d5 2. c4 e6 3. Nf3 Nf6	Queen's Gambit Declined: Exchange Variation, 4...exd5 5.Nf3 Nbd7	White	50	2021
78	1	43	1. d4 d5 2. c4 e6 3. Nc3 c5	Tarrasch Defense: Tarrasch Gambit	White	29	2021
79	1	43	1. e4 c5 2. Nf3 d6 3. d4 cxd4	Sicilian Defense: Open, Dragon, Classical Variation, 6...a6	White	49	2021
80	1	98	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6	Giuoco Piano Game: Main Line, Giuoco Pianissimo Variation	White	47	2021
81	1	4	1. Nf3 Nf6 2. g3 d5 3. Bg2 g6	King's Indian Attack: Yugoslav Variation, 3.Bg2 g6	White	41	2021
82	1	5	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Columbus Variation, 4...Nf6 5.O-O b5 6.Bb3 Bc5 7.a4 Rb8	White	52	2021
83	1	9	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6	Ruy López Opening: Berlin, Mortimer Variation	White	77	2021
84	1	15	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6	Ruy López Opening: Berlin Defense, 4.d3 Bc5	White	53	2021
85	1	4	1. e4 e5 2. Nf3 Nf6 3. d4 Nxe4	Petrov's Defense: Steinitz Attack, Symmetrical, Center Variation, 4...d5 5.Nxe5 Nd7 6.Nxd7 Bxd7	White	46	2021
86	1	4	1. d4 Nf6 2. Nf3 d5 3. g3 e6	Queen's Pawn Opening: Pseudo-Catalan Variation	White	136	2021
87	1	37	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6	Italian Game: Two Knights, Modern Bishop's Opening	Black	25	2021
88	1	10	1. d4 Nf6 2. c4 g6 3. Nc3 d5	Grünfeld Defense: Exchange Variation, 5.Bd2 Bg7 6.e4 Nb6 7.Be3	Black	24	2021
89	1	4	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Three Knights, Vienna Variation	Black	45	2021
90	1	4	1. d4 Nf6 2. c4 e6 3. Nc3 d5	Queen's Gambit Declined: Exchange, Positional Line	Black	65	2021
91	1	10	1. e4 c5 2. Nc3 d6 3. f3 Nc6	Sicilian Defense: Closed, 2...d6	Black	53	2021
92	1	8	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: 4.O-O Nf6	Black	57	2021
93	1	7	1. b4 d5 2. Bb2 Nf6 3. e3 Bg4	Polish Opening: 1...Nf6 2.Bb2 d5 3.e3	Black	39	2021
94	1	7	1. d4 Nf6 2. Nf3 d5 3. c4 e6	Queen's Gambit Declined: Three Knights, Vienna, Quiet Variation	Black	71	2021
95	1	6	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Columbus Variation, 4...Nf6 5.O-O b5 6.Bb3 Bc5 7.c3 d6	Black	92	2021
96	1	6	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: Main Line, Giuoco Pianissimo Variation	Black	39	2021
97	1	2	1. b3 d5 2. Bb2 Bf5 3. Nf3 e6	Nimzowitsch-Larsen Attack: Classical Variation, 2.Bb2	Black	48	2021
98	1	17	1. e4 c5 2. Nf3 d6 3. Bb5+ Bd7	Sicilian Defense: Canal, Main Line, 4.Bxd7+ Qxd7 5.O-O	Black	74	2021
99	1	11	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: Main Line, Giuoco Pianissimo Variation	-	42	2021
100	1	189	1. e4 c5 2. Nf3 d6 3. d4 cxd4	Sicilian Defense: Open, Najdorf, English Attack, 6...e5 7.Nb3 Be6	-	69	2021
101	1	27	1. e4 c5 2. Nf3 e6 3. d4 cxd4	Sicilian Defense: Taimanov, Bastrikov Variation, 6.f4 a6 7.Nxc6	-	30	2021
102	1	98	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Semi-Tarrasch, Main Line, 5...cxd4	-	56	2021
103	1	11	1. e3 d5 2. c4 e6 3. Nf3 Nf6	Van't Kruijs Opening: 1...d5	-	20	2021
104	1	17	1. c4 e6 2. Nc3 Nf6 3. e4 d5	English Opening: Mikėnas-Carls Variation, 3...d5 4.cxd5	-	37	2021
105	1	18	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4	Nimzo-Indian Defense: Ragozin, Gligorić, Bernstein, Exchange Variation	-	56	2021
106	1	10	1. d4 Nf6 2. c4 g6 3. g3 c6	King's Indian Defense: 3.g3	-	32	2021
107	1	10	1. e4 c5 2. Nf3 d6 3. d4 cxd4	Sicilian Defense: Open, Najdorf Variation	-	60	2021
108	1	7	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4	Nimzo-Indian Defense: Three Knights Variation, 4...O-O	-	53	2021
109	1	7	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6	Ruy López Opening: Berlin, Rio Gambit Accepted, 5.Re1 Nd6 6.Nxe5	-	29	2021
110	1	7	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: 4.O-O Nf6	-	55	2021
111	1	7	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6	Giuoco Piano Game: Main Line, Giuoco Pianissimo Variation	-	55	2021
112	1	8	1. e4 e5 2. Ke2 Ke7 3. Ke1 Ke8	King's Pawn Opening: The Bongcloud	-	6	2021
113	1	6	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Ragozin Defense, 5.cxd5 exd5	-	65	2021
114	1	6	1. e4 c5 2. Nf3 d6 3. Bb5+ Nd7	Sicilian Defense: Canal Attack, 3...Nd7 4.d4 cxd4	-	47	2021
115	1	6	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6	Four Knights Game: Scotch Variation Accepted, 5.Nxd4 Bb4 6.Nxc6 bxc6 7.Bd3 d5 8.exd5 cxd5 9.O-O O-O 10.Bg5	-	41	2021
116	1	4	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Three Knights, Vienna Variation	-	100	2021
117	1	15	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6	Ruy López Opening: Berlin Defense, 4.d3 Bc5	-	66	2021
118	1	18	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6	Ruy López Opening: Berlin Defense, 4.d3 Bc5	-	45	2021
119	1	18	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Modern Variation, 4...Be7 5.Nf3 h6 6.Bxf6 Bxf6 7.e3	-	36	2021
120	1	7	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6	Ruy López Opening: Berlin, Rio Gambit Accepted, 5.Re1 Nd6 6.Nxe5	-	31	2021
121	1	18	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6	Ruy López Opening: Berlin Defense, 4.d3 Bc5	-	29	2021
122	1	18	1. e4 c5 2. Nf3 Nc6 3. Nc3 Nf6	Sicilian Defense: Closed, Traditional Line, 3.Nf3	-	36	2021
123	1	6	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Columbus Variation, 4...Nf6 5.O-O b5 6.Bb3 Bc5	-	50	2021
124	1	8	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: Main Line, Giuoco Pianissimo Variation	-	57	2021
125	1	6	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: Giuoco Pianissimo Variation	-	43	2021
126	1	6	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: Main Line, Giuoco Pianissimo Variation	-	36	2021
127	1	8	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: Main Line, Giuoco Pianissimo Variation	-	24	2021
128	1	8	1. e4 c5 2. c3 g6 3. d4 cxd4	Sicilian Defense: Alapin Variation, 2...g6 3.d4 cxd4	-	43	2021
129	1	8	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4	Nimzo-Indian Defense: Classical, Noa Variation, 5.a3 Bxc3+ 6.Qxc3 O-O	-	65	2021
130	1	4	1. e4 c5 2. Nc3 e6 3. Nf3 Nc6	Sicilian Defense: Pin Variation	-	47	2021
131	1	56	1. e4 c5 2. Nf3 d6 3. Bb5+ Nd7	Sicilian Defense: Canal Attack, 3...Nd7 4.d4 cxd4	-	55	2021
132	1	8	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: Main Line, Giuoco Pianissimo Variation	-	51	2021
133	1	11	1. b4 e5 2. Bb2 Bxb4 3. Bxe5 Nf6	Polish Opening: Kucharkowski-Meybohm Gambit	-	53	2021
134	1	8	1. b4 e5 2. Bb2 Bxb4 3. Bxe5 Nf6	Polish Opening: Kucharkowski-Meybohm Gambit	-	47	2021
135	1	18	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: 4.O-O Nf6	-	43	2021
136	1	7	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6	Ruy López Opening: Berlin, Rio Gambit Accepted, 5.Re1 Nd6 6.Nxe5	-	29	2021
137	1	18	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6	Ruy López Opening: Berlin, Rio Gambit Accepted, 5.Re1 Nd6 6.Nxe5	-	43	2021
138	1	7	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Semi-Tarrasch, Main Line, 5...cxd4	-	34	2021
139	1	11	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6	Giuoco Piano Game: Giuoco Pianissimo Variation, 4...Nf6	-	37	2021
140	1	88	1. d4 d5 2. Bf4 Nf6 3. e3 Bg4	Queen's Pawn Opening: Accelerated London System	-	87	2021
141	1	161	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7	King's Indian Defense: Bayonet Attack, 9...a5	-	48	2021
142	1	7	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6	Ruy López Opening: Berlin, Rio Gambit Accepted, 5.Re1 Nd6 6.Nxe5	-	29	2021
143	1	2	1. e4 c6 2. d4 d5 3. exd5 cxd5	Caro-Kann Defense: Exchange Variation, 3...cxd5 4.Bd3	-	39	2021
144	1	6	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Columbus Variation, 4...Nf6 5.O-O b5 6.Bb3 Bc5 7.c3 d6	-	127	2021
145	1	32	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Catalan Opening	-	24	2021
146	1	30	1. e4 c5 2. Nf3 d6 3. Bb5+ Nd7	Sicilian Defense: Canal Attack, 3...Nd7 4.d4 cxd4	-	34	2021
147	1	32	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Catalan Opening	-	48	2021
148	1	17	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Three Knights, Vienna Variation	-	32	2021
149	1	11	1. e4 c5 2. Nc3 Nc6 3. Nf3 g6	Sicilian Defense: Closed, Traditional Line, 3.Nf3	-	62	2021
150	1	6	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Ragozin, Vienna Variation	-	56	2021
151	1	17	1. e4 c5 2. Nf3 e6 3. c3 Nf6	Sicilian Defense: Alapin Variation, 2...e6 3.Nf3	-	124	2021
152	1	12	1. d4 d5 2. Nf3 Nf6 3. Bf4 Bf5	London System	-	71	2021
153	1	17	1. e4 c5 2. Nf3 e6 3. c3 Nf6	Sicilian Defense: Alapin Variation, 2...e6 3.Nf3	-	64	2021
154	1	6	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Ragozin Defense	-	44	2021
155	1	6	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: Main Line, Giuoco Pianissimo Variation	-	54	2021
156	1	6	1. e4 c5 2. Nc3 a6 3. Nge2 d6	Sicilian Defense: Closed	-	60	2021
157	1	43	1. e4 c5 2. Nf3 d6 3. Bb5+ Nd7	Sicilian Defense: Canal Attack, 3...Nd7	-	51	2021
158	1	98	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6	Giuoco Piano Game: Main Line, Giuoco Pianissimo Variation	-	46	2021
159	1	4	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6	Ruy López Opening: Berlin, l'Hermet, Berlin Wall Defense	-	39	2021
160	1	4	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Catalan Opening: Open Defense, Classical Line, 6.O-O O-O	-	58	2021
161	1	3	1. d4 Nf6 2. Nf3 d5 3. c4 e6	Queen's Gambit Declined: Harrwitz, Main Line, 8.Qc2 Nc6 9.a3 Qa5	-	40	2021
162	1	4	1. e4 e5 2. Nf3 Nf6 3. Nxe5 d6	Petrov's Defense: Classical Attack, Marshall Variation, Staunton Variation, 9.Re1	-	33	2021
163	1	4	1. e4 e5 2. Nf3 Nf6 3. Nxe5 d6	Petrov's Defense: Classical, Karklins-Martinovsky Variation	-	41	2021
164	32	1	1. e4 c5 2. Nf3 d6 3. d4 cxd4	Sicilian Defense: Open, Scheveningen, Classical Variation, 6...a6 7.Be3	White	38	2021
165	7	1	1. e4 c5 2. Nf3 d6 3. Bb5+ Bd7	Sicilian Defense: Canal, Main Line, Sokolsky Variation	White	53	2021
166	2	1	1. d4 Nf6 2. c4 e6 3. Nf3 a6	Indian Game: East Indian, Anti-Nimzo-Indian, Dzindzi-Indian Defense	White	36	2021
167	37	1	1. d4 Nf6 2. c4 e6 3. Nf3 b6	Queen's Indian Defense: Fianchetto, Capablanca Variation, 6.Bd2 c5	White	25	2021
168	37	1	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Catalan Opening	White	101	2021
169	10	1	1. e4 c5 2. Nf3 Nc6 3. Bb5 e6	Sicilian Defense: Nyezhmetdinov-Rossolimo Attack, 3...e6 4.O-O Nge7 5.b3	White	31	2021
170	10	1	1. e4 c5 2. Nf3 Nc6 3. Bb5 e6	Sicilian Defense: Nyezhmetdinov-Rossolimo Attack, 3...e6 4.O-O Nge7 5.Re1	White	51	2021
171	7	1	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: Center Attack, 5...exd4 6.e5 d5 7.Bb5 Ne4 8.cxd4	White	37	2021
172	7	1	1. e4 c5 2. Nf3 Nc6 3. Bb5 e6	Sicilian Defense: Nyezhmetdinov-Rossolimo Attack, 3...e6 4.O-O Nge7 5.c3 a6	White	28	2021
173	11	1	1. e4 c5 2. Nf3 g6 3. d4 cxd4	Sicilian Defense: Open, Accelerated Dragon, Maróczy Bind Formation, 5...Nf6 6.Nc3 d6 7.Be2 Nxd4 8.Qxd4 Bg7 9.O-O	White	58	2021
174	6	1	1. d4 Nf6 2. Nf3 e6 3. Bf4 b6	Indian Game: London System	White	68	2021
175	8	1	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4	Nimzo-Indian Defense: Classical, Noa Variation, 5.cxd5 exd5 6.Bg5 h6 7.Bh4 c5	White	49	2021
176	6	1	1. d4 d5 2. Nf3 Nf6 3. Bf4 c5	London System: 3...c5 4.e3	White	51	2021
177	8	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Open, Classical Defense, 10.Nbd2 Nc5	White	36	2021
178	8	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6	Ruy López Opening: Berlin Defense, 4.d3 Bc5	White	58	2021
179	18	1	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Ragozin Defense, 5.Bg5 h6 6.Bxf6 Qxf6	White	54	2021
180	7	1	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: Center Attack, 5...exd4 6.e5 d5 7.Bb5 Ne4 8.cxd4	White	33	2021
181	7	1	1. e4 c5 2. Nf3 Nc6 3. Bb5 e5	Sicilian Defense: Nyezhmetdinov-Rossolimo Attack	White	40	2021
182	5	1	1. e4 e5 2. Nc3 Nf6 3. Bc4 Bc5	King's Gambit Declined: Classical Variation, 3.Nf3 d6 4.Nc3 Nf6 5.Bc4 Nc6 6.d3	White	45	2021
183	6	1	1. e4 c5 2. Nf3 Nc6 3. Bb5 g6	Sicilian Defense: Nyezhmetdinov-Rossolimo, Fianchetto Variation, 4.Nc3	White	66	2021
184	7	1	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: Main Line, Giuoco Pianissimo Variation	White	46	2021
185	7	1	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: Center Attack, 5...exd4 6.e5 d5 7.Bb5 Ne4 8.cxd4	White	57	2021
186	6	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Deferred Steinitz Defense, 6.c3	White	63	2021
187	6	1	1. e4 e6 2. d4 d5 3. exd5 exd5	French Defense: Exchange Variation, 3...exd5 4.Nf3 Bd6 5.c4	White	34	2021
188	6	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Closed, Yates, Bogoljubov Variation, 10.Be3 exd4	White	48	2021
189	2	1	1. d4 Nf6 2. c4 e6 3. g3 d5	Catalan Opening: Open Defense, Classical Line, 6.O-O O-O	White	66	2021
190	2	1	1. d4 Nf6 2. c4 g6 3. g3 c5	King's Indian Defense: 3.g3	White	34	2021
191	32	1	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: Main Line, Giuoco Pianissimo Variation	White	64	2021
192	5	1	1. e4 d5 2. exd5 Qxd5 3. Nc3 Qa5	Scandinavian Defense: Mieses-Kotrč, Main Line, 4.d4 Nf6 5.Nf3 Bf5 6.Ne5 c6	White	35	2021
193	43	1	1. Nf3 c5 2. c4 Nf6 3. g3 Nc6	English Opening: Symmetrical Variation, 2.Nf3 Nf6 3.g3	White	38	2021
194	15	1	1. e4 c5 2. Nf3 Nc6 3. d4 cxd4	Sicilian Defense: Open, Pelikán and Sveshnikov Variations, 6.Ndb5 d6 7.Nd5	White	54	2021
195	83	1	1. d4 d5 2. Nf3 e6 3. e3 Nf6	Colle System: Rubinstein Opening, 5...Nc6	Black	57	2021
196	14	1	1. e4 c5 2. Nf3 d6 3. d4 cxd4	Sicilian Defense: Open, Dragon, Yugoslav Attack, 7...a6	Black	72	2021
197	7	1	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6	Italian Game: Knight Attack, Polerio, Bishop Check Line, 6...c6 7.dxc6 bxc6	Black	55	2021
198	40	1	1. e4 c5 2. Nf3 g6 3. Bc4 Bg7	Sicilian Defense: Hyperaccelerated Dragon Variation	Black	50	2021
199	4	1	1. e4 c5 2. Nf3 Nc6 3. d4 cxd4	Sicilian Defense: Open, Pelikán and Sveshnikov, Chelyabinsk Variation, 9...Be7 10.Bxf6 Bxf6 11.c3	Black	54	2021
200	6	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Anderssen Variation	Black	33	2021
201	6	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Neo-Arkhangelsk Variation, 6.c3	Black	42	2021
202	24	1	1. d4 Nf6 2. Nf3 d5 3. c4 e6	Queen's Gambit Declined: Three Knights Variation	Black	52	2021
203	98	1	1. e4 g6 2. d4 d6 3. Nc3 c6	Modern Defense: Rat Defense, Accelerated Gurgenidze Variation	Black	66	2021
204	5	1	1. d4 d5 2. Nf3 Nf6 3. e3 Bf5	Slav Defense: Modern, Quiet, Schallopp Defense, 5.Nc3	Black	49	2021
205	6	1	1. d4 Nf6 2. Nf3 d5 3. Bf4 e6	London System	Black	52	2021
206	8	1	1. d4 d5 2. c4 c6 3. Nf3 Nf6	Slav Defense: Modern, Quiet, Pin Defense	Black	37	2021
207	8	1	1. d4 d5 2. c4 e6 3. Nc3 a6	Queen's Gambit Declined: Janowski Variation	Black	39	2021
208	12	1	1. Nf3 d5 2. g3 c6 3. Bg2 Bg4	King's Indian Attack: 2...c6 3.Bg2 Bg4	Black	53	2021
209	37	1	1. d4 d5 2. c4 c5 3. Nf3 cxd4	Queen's Gambit Declined: Austrian Variation	Black	41	2021
210	8	1	1. e4 c5 2. Nf3 d6 3. Bb5+ Nd7	Sicilian Defense: Canal Attack, 3...Nd7	Black	49	2021
211	8	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6	Ruy López Opening: Berlin Defense, 4.d3 Bc5	Black	37	2021
212	7	1	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: Center Attack, 5...exd4 6.e5 d5 7.Bb5 Ne4 8.cxd4	Black	33	2021
213	18	1	1. d4 d5 2. c4 e6 3. Nc3 h6	Queen's Gambit Declined: Queen's Knight Variation	Black	44	2021
214	7	1	1. e4 c5 2. Nf3 d6 3. Bb5+ Nd7	Sicilian Defense: Canal Attack, 3...Nd7 4.O-O Nf6 5.Re1 a6 6.Bf1	Black	36	2021
215	61	1	1. d4 d5 2. c4 c6 3. Nc3 Nf6	Slav Defense: 3.Nc3	Black	31	2021
216	7	1	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: Main Line, Giuoco Pianissimo Variation	Black	85	2021
217	98	1	1. e4 c5 2. Nf3 e6 3. d4 cxd4	Sicilian Defense: Taimanov Variation, 5.Nc3 a6	Black	75	2021
218	32	1	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: Main Line, Giuoco Pianissimo Variation	Black	43	2021
219	122	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Anti-Marshall Variation, 8...Bb7 9.d3 d6	Black	44	2021
220	42	1	1. d4 Nf6 2. c4 g6 3. h4 Bg7	King's Indian Defense	Black	41	2021
221	169	1	1. e4 c5 2. Nf3 e6 3. d4 cxd4	Sicilian Defense: Taimanov Variation, 5.Nc3 a6 6.Nxc6 bxc6 7.Bd3 d5	Black	39	2021
222	182	1	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: Closed, Center Holding Variation, 6.O-O Nf6	Black	35	2021
223	17	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6	Ruy López Opening: Berlin Defense, 4.d3 Bc5	Black	42	2021
224	17	1	1. c4 Nf6 2. Nc3 e5 3. g3 Bb4	English Opening: Carls-Bremen, Smyslov System	Black	76	2021
225	43	1	1. c4 Nf6 2. Nf3 c5 3. Nc3 e6	Queen's Gambit Declined: Three Knights, Semi-Tarrasch Defense, 5.e3 a6 6.cxd5 exd5	Black	35	2021
226	6	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Anti-Marshall Variation, 8...Bb7 9.d3	Black	44	2021
227	98	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Closed, 6.Re1 b5 7.Bb3 O-O 8.c3 Na5 9.Bc2	Black	51	2021
228	4	1	1. e4 e5 2. Nc3 Nc6 3. Bc4 Nf6	Bishop's Opening: Berlin, Vienna Hybrid Variation	Black	56	2021
229	4	1	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6	Giuoco Piano Game: Main Line, Giuoco Pianissimo Variation	Black	49	2021
230	30	1	1. d4 d5 2. c4 e6 3. Nf3 c6	Semi-Slav Defense: Main Line, Stoltz Variation, 6...Bd6	-	35	2021
231	17	1	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6	Giuoco Piano Game: Giuoco Pianissimo Variation, 4...Nf6	-	50	2021
232	3	1	1. d4 Nf6 2. c4 e6 3. g3 d5	Queen's Gambit Declined: Catalan Opening	-	42	2021
233	46	1	1. e4 c5 2. Nf3 Nc6 3. Nc3 g6	Sicilian Defense: Closed, Traditional Line, 3.Nf3	-	69	2021
234	40	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Arkhangelsk Variation, 7.d3 Be7	-	59	2021
235	4	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Arkhangelsk Variation, 7.d3 Be7	-	35	2021
236	16	1	1. e4 c5 2. Nf3 Nc6 3. Nc3 e5	Sicilian Defense: Closed, Traditional Line, 3.Nf3 e5 4.Bc4	-	65	2021
237	37	1	1. d4 d5 2. c4 c6 3. Nf3 Nf6	Semi-Slav Defense	-	122	2021
238	37	1	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Catalan Opening	-	43	2021
239	37	1	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Catalan Opening	-	53	2021
240	10	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Breyer, Zaitsev Hybrid Variation, 11.Nbd2 Bb7 12.Bc2 Re8 13.Nf1 Bf8 14.Ng3 g6 15.a4	-	72	2021
241	10	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Closed, 6.Re1 b5 7.Bb3 O-O 8.c3 Na5 9.Bc2	-	67	2021
242	7	1	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: 4.O-O Nf6	-	54	2021
243	5	1	1. d4 Nf6 2. Nf3 e6 3. e3 c5	Colle System: Rubinstein Opening, 5...Nc6 6.Bb2	-	40	2021
244	132	1	1. e4 c5 2. Nf3 Nc6 3. Bb5 Nf6	Sicilian Defense: Nyezhmetdinov-Rossolimo Attack, 3...Nf6	-	60	2021
245	18	1	1. d4 d5 2. c4 e6 3. Nf3 Nf6	Semi-Slav Defense: Anti-Meran, Anti-Moscow Gambit	-	35	2021
246	7	1	1. d4 d5 2. c4 c6 3. cxd5 cxd5	Slav Defense: Exchange Variation, 3...cxd5 4.Bf4	-	43	2021
247	37	1	1. d4 d5 2. c4 c6 3. Nf3 Nf6	Semi-Slav Defense	-	77	2021
248	6	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6	Ruy López Opening: Berlin, l'Hermet, Berlin Wall Defense	-	71	2021
249	4	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Open, Classical Defense, 10.Nbd2 Nc5	-	20	2021
250	4	1	1. e4 c5 2. Nf3 d6 3. Bb5+ Nd7	Sicilian Defense: Canal Attack, 3...Nd7 4.O-O Nf6 5.Re1 a6 6.Bf1	-	66	2021
251	4	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Closed, Martinez Variation, 6...b5 7.Bb3	-	62	2021
252	4	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Closed, Martinez Variation, 6...b5 7.Bb3	-	62	2021
253	7	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Anti-Marshall Variation, 8...Bb7 9.d3	-	57	2021
254	7	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Anti-Marshall Variation, 8...Bb7 9.d3	-	57	2021
255	7	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Anti-Marshall Variation, 8...Bb7 9.d3	-	57	2021
256	12	1	1. d4 d5 2. c4 c6 3. Nc3 Nf6	Slav Defense: 3.Nc3	-	39	2021
257	116	1	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Three Knights Variation	-	80	2021
258	18	1	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Semi-Tarrasch, Main Line, 5...cxd4	-	56	2021
259	18	1	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Three Knights, Barmen Variation, 5.Bf4	-	31	2021
260	18	1	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Three Knights Variation	-	40	2021
261	18	1	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Ragozin, Vienna Variation	-	40	2021
262	6	1	1. d4 Nf6 2. Nf3 e6 3. Bf4 b6	Indian Game: London System	-	41	2021
263	6	1	1. d4 Nf6 2. Nf3 d5 3. Bf4 Bf5	London System	-	39	2021
264	8	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6	Ruy López Opening: Berlin Defense, 4.d3 Bc5	-	38	2021
265	103	1	1. e4 c6 2. Nf3 d5 3. d3 Qc7	Caro-Kann Defense: 2.Nf3 d5	-	61	2021
266	5	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6	Ruy López Opening: Berlin Defense, 4.d3 Bc5	-	44	2021
267	2	1	1. d4 d5 2. c4 e6 3. Nc3 a6	Queen's Gambit Declined: Janowski Variation	-	55	2021
268	8	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6	Ruy López Opening: Berlin Defense, 4.d3 Bc5	-	36	2021
269	3	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6	Ruy López Opening: Berlin, Rio Gambit Accepted, 5.Re1 Nd6 6.Nxe5	-	52	2021
270	18	1	1. d4 d5 2. c4 e6 3. Nc3 a6	Queen's Gambit Declined: Janowski Variation	-	48	2021
271	18	1	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Semi-Tarrasch, Main Line, 5...cxd4	-	57	2021
272	17	1	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Three Knights Variation	-	38	2021
273	43	1	1. c4 Nf6 2. Nc3 e5 3. Nf3 Nc6	English Opening: Four Knights, Kingside Fianchetto Line, 4...d5 5.cxd5 Nxd5 6.Bg2	-	37	2021
274	2	1	1. d4 Nf6 2. c4 e6 3. g3 d5	Catalan Opening: Closed, 4...Bb4+ 5.Bd2	-	15	2021
275	68	1	1. d4 d5 2. c4 c6 3. Nf3 Nf6	Grünfeld Defense: Burille Variation, 5...c6 6.Be2 O-O 7.O-O	-	64	2021
276	7	1	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: Main Line, Giuoco Pianissimo Variation	-	68	2021
277	7	1	1. d4 d5 2. c4 e6 3. Nc3 a6	Queen's Gambit Declined: Janowski Variation	-	68	2021
278	2	1	1. d4 Nf6 2. c4 e6 3. g3 d5	Catalan Opening: Open Defense, Classical Line, 6.O-O O-O	-	62	2021
279	6	1	1. e4 c5 2. Nf3 Nc6 3. Bb5 g6	Sicilian Defense: Nyezhmetdinov-Rossolimo, Fianchetto Variation, 4.O-O Bg7	-	68	2021
280	6	1	1. e4 c5 2. Nf3 Nc6 3. Bb5 g6	Sicilian Defense: Nyezhmetdinov-Rossolimo, Fianchetto Variation	-	28	2021
281	2	1	1. d4 Nf6 2. c4 e6 3. g3 d5	Catalan Opening: Open Defense, Classical Line, 6.O-O O-O	-	69	2021
282	2	1	1. d4 Nf6 2. c4 e6 3. g3 d5	Catalan Opening: Closed, 4...Bb4+ 5.Bd2	-	39	2021
283	30	1	1. d4 Nf6 2. c4 e6 3. g3 d5	Catalan Opening: Closed, 4...Be7 5.Nf3 O-O 6.O-O	-	35	2021
284	30	1	1. d4 Nf6 2. c4 e6 3. g3 d5	Catalan Opening: Closed, 4...Bb4+ 5.Bd2	-	36	2021
285	32	1	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: Main Line, Giuoco Pianissimo Variation	-	36	2021
286	32	1	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: Main Line, Giuoco Pianissimo Variation	-	85	2021
287	17	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6	Ruy López Opening: Morphy Defense, Anderssen Variation, 5...d6 6.c3 g6	-	33	2021
288	17	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Anti-Marshall Variation	-	65	2021
289	28	1	1. d4 f5 2. g3 Nf6 3. Bg2 g6	Dutch Defense: Leningrad, Main Line, 5...O-O 6.O-O d6 7.Nc3	-	58	2021
290	43	1	1. c4 g6 2. d4 Nf6 3. Nf3 Bg7	King's Indian Defense: 3.Nf3 Bg7 4.g3	-	39	2021
291	40	1	1. d4 d6 2. e4 g6 3. Nc3 c6	Modern Defense: Rat Defense, Accelerated Gurgenidze Variation	-	57	2021
292	14	1	1. e4 d5 2. exd5 Qxd5 3. Nc3 Qa5	Scandinavian Defense: Mieses-Kotrč, Main Line, 4.d4 Nf6 5.Nf3 Bf5	-	54	2021
293	17	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6	Ruy López Opening: Berlin Defense, 4.d3 d6	-	85	2021
294	6	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Arkhangelsk Variation, 7.d3 Be7	-	43	2021
295	6	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6	Ruy López Opening: Berlin, l'Hermet, Berlin Wall Defense	-	41	2021
296	6	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Anti-Marshall Variation, 8...Bb7 9.d3 d6 10.c3	-	60	2021
297	43	1	1. e4 c5 2. g3 d5 3. exd5 Qxd5	Sicilian Defense: Lasker-Dunne Attack	-	49	2021
298	9	1	1. g3 d5 2. Nf3 c5 3. Bg2 Nc6	King's Indian Attack: French Variation, 4.O-O	-	42	2021
299	9	1	1. Nf3 Nf6 2. c4 g6 3. Nc3 Bg7	King's Indian Defense: Orthodox Variation, 6...e5 7.O-O exd4 8.Nxd4 Re8 9.f3 Nc6	-	18	2021
300	5	1	1. e4 c5 2. Nf3 Nc6 3. Bb5 e6	Sicilian Defense: Nyezhmetdinov-Rossolimo Attack, 3...e6 4.O-O Nge7 5.Re1	-	39	2021
301	5	1	1. e4 c5 2. Nf3 Nc6 3. Bb5 e6	Sicilian Defense: Nyezhmetdinov-Rossolimo Attack, 3...e6 4.O-O Nge7 5.Re1	-	57	2021
302	4	1	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: Center Attack, 5...exd4 6.e5 d5 7.Bb5 Ne4 8.cxd4	-	33	2021
303	12	1	1. d4 g6 2. c4 Bg7 3. Nf3 Nf6	King's Indian Defense: Fianchetto, Karlsbad, Uhlmann-Szabó System	-	69	2021
304	4	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Closed, 6.Re1 b5 7.Bb3 O-O 8.h3	-	45	2021
305	4	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Anti-Marshall Variation, 8...Bb7 9.d3 d6	-	41	2021
306	4	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Anti-Marshall Variation	-	41	2021
307	4	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Anti-Marshall Variation	-	43	2021
308	1	23	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Closed, Martinez Variation, 6...b5 7.Bb3	White	30	2020
309	1	145	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Neo-Orthodox Variation	White	37	2020
310	1	37	1. e4 e5 2. Nf3 Nc6 3. Bb5 a6	Ruy López Opening: Morphy Defense, Anderssen Variation, 5...b5	White	72	2020
311	1	8	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6	Ruy López Opening: Berlin, Rio Gambit Accepted, 5.Re1 Nd6 6.Nxe5	White	54	2020
312	1	37	1. e4 c5 2. Nf3 Nc6 3. Bb5 g6	Sicilian Defense: Nyezhmetdinov-Rossolimo, Fianchetto Variation, 4.O-O Bg7	White	58	2020
313	1	37	1. Nf3 Nf6 2. c4 e6 3. Nc3 c5	Queen's Gambit Declined: Three Knights, Semi-Tarrasch Defense, 5.e3 a6 6.cxd5 exd5	Black	38	2020
314	1	11	1. c4 Nf6 2. Nc3 e5 3. e3 Nc6	English Opening: Reversed Sicilian, Closed, 3.e3 Nf6	-	25	2020
315	1	50	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Semi-Tarrasch, Main Line, Exchange Variation, 6...Nxc3 7.bxc3 cxd4 8.cxd4 Bb4+ 9.Bd2 Bxd2+ 10.Qxd2 O-O	-	56	2020
316	1	37	1. e4 c5 2. Nf3 Nc6 3. Bb5 g6	Sicilian Defense: Nyezhmetdinov-Rossolimo, Fianchetto Variation, 4.O-O Bg7 5.Re1 e5	-	47	2020
317	1	3	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Modern Variation, 4...Be7 5.Nf3 h6 6.Bh4	-	28	2020
318	1	43	1. d4 Nf6 2. c4 g6 3. Nc3 d5	Grünfeld Defense: Exchange, Modern Exchange Variation, 7...c5 8.Be3 O-O 9.Rc1 Qa5 10.Qd2	-	37	2020
319	1	37	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6	Four Knights Game: Spanish Variation, Rubinstein, Henneberger Variation	-	76	2020
320	1	11	1. d4 Nf6 2. c4 g6 3. Nc3 d5	Grünfeld Defense: Burille Variation, 5...O-O 6.cxd5 Nxd5 7.Bc4	-	42	2020
321	1	6	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Ragozin Defense, 5.cxd5 exd5	-	61	2020
322	1	18	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Harrwitz, Two Knights, Blockade Line	-	47	2020
323	1	10	1. Nf3 Nf6 2. c4 g6 3. Nc3 d5	English Opening: Anglo-Indian, Anglo-Grünfeld Defense, 3.cxd5 Nxd5 4.Nf3 g6	-	41	2020
324	37	1	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Catalan Opening	White	42	2020
325	37	1	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Catalan Opening	White	39	2020
326	5	1	1. e4 e5 2. Nf3 Nc6 3. Bb5 Nf6	Ruy López Opening: Berlin Defense, 4.d3 d6 5.c3	Black	39	2020
327	25	1	1. e4 c5 2. Nf3 d6 3. d4 cxd4	Sicilian Defense: Open, Najdorf, English Attack, 6...e5	-	31	2020
328	40	1	1. e4 e5 2. Nf3 Nc6 3. Bc4 Nf6	Italian Game: Knight Attack, Polerio, Bishop Check Line, 6...c6 7.dxc6 bxc6	-	45	2020
329	13	1	1. e4 c5 2. Nf3 Nc6 3. Bb5 g6	Sicilian Defense: Nyezhmetdinov-Rossolimo, Fianchetto Variation, 4.O-O Bg7 5.Re1 Nf6 6.c3 O-O 7.d4	-	54	2020
330	17	1	1. e4 e5 2. Nf3 Nc6 3. Bc4 Bc5	Giuoco Piano Game: Main Line, Giuoco Pianissimo Variation	-	43	2020
331	7	1	1. e4 e5 2. Nf3 Nc6 3. Nc3 Nf6	Four Knights Game: Scotch Variation Accepted, 5.Nxd4 Bb4 6.Nxc6 bxc6 7.Bd3 d5	-	52	2020
332	7	1	1. d4 Nf6 2. c4 g6 3. Nc3 Bg7	King's Indian Defense: Orthodox, Exchange Variation, 8.Qxd8 Rxd8 9.Bg5 Re8 10.Nd5	-	32	2020
333	37	1	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Catalan Opening	-	41	2020
334	37	1	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Catalan Opening	-	62	2020
335	16	1	1. d4 Nf6 2. c4 e6 3. Nf3 d5	Queen's Gambit Declined: Ragozin Defense, 5.cxd5 exd5 6.Bg5 h6 7.Bh4	-	114	2020
336	4	1	1. e4 c5 2. Nf3 Nc6 3. d4 cxd4	Sicilian Defense: Open, Pelikán and Sveshnikov, Chelyabinsk Variation, 9...Be7 10.Bxf6 Bxf6	-	24	2020
337	27	1	1. e4 c5 2. Nf3 Nc6 3. d4 cxd4	Sicilian Defense: Open, Pelikán and Sveshnikov, Chelyabinsk Variation, 9...Be7 10.Bxf6 Bxf6	-	24	2020
338	46	1	1. d4 Nf6 2. c4 e6 3. Nc3 Bb4	Nimzo-Indian Defense: Normal Line, 4...O-O	-	51	2020
\.


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.players (id, name, title, nationality, rank) FROM stdin;
1	Magnus Carlsen	GM	Norway	1
2	Ding Liren	GM	China	2
3	Fabiano Caruana	GM	United States	3
4	Ian Nepomniachtchi	GM	Rusia	4
5	Alireza Firouzja	GM	France	5
6	Levon Aronian	GM	United States	6
7	Wesley So	GM	United States	7
8	Hikaru Nakamura	GM	United States	8
9	Richard Rapport	GM	Hungary	9
10	Maxime Vachier-Lagrave	GM	France	10
11	Anish Giri	GM	Netherlands	11
12	Shakhriyar Mamedyarov	GM	Azerbaijan	12
13	Viswanathan Anand	GM	India	13
14	Leinier Dominguez Perez	GM	United States	14
15	Sergey Karjakin	GM	Rusia	15
16	Alexander Grischuk	GM	International	16
17	Jan-Krzysztof Duda	GM	Poland	17
18	Teimour Radjabov	GM	Azerbaijan	18
19	Wang Hao	GM	China	19
20	Dmitry Andreikin	GM	International	20
21	Veselin Topalov	GM	Bulgaria	21
22	Wei Yi	GM	China	22
23	Nikita Vitiugov	GM	International	23
24	Le Quang Liem	GM	Vietnam	24
25	Yu Yangyi	GM	China	25
26	Samuel Shankland	GM	United States	26
27	Pentala Harikrishna	GM	India	27
28	Vidit Santosh Gujrathi	GM	India	28
29	Bu Xiangzhi	GM	China	29
30	Radoslaw Wojtaszek	GM	Poland	30
31	Kirill Alekseenko	GM	Rusia	31
32	Andrey Esipenko	GM	Rusia	32
33	Alexei Shirov	GM	Spain	33
34	Sam Sevian	GM	United States	34
35	Sanan Sjugirov	GM	Rusia	35
36	Francisco Vallejo Pons	GM	Spain	36
37	Daniil Dubov	GM	Rusia	37
38	Luke McShane	GM	England	38
39	Evgeny Tomashevsky	GM	Rusia	39
40	Jorden van Foreest	GM	Netherlands	40
41	Parham Maghsoodloo	GM	Iran	41
42	Vladimir Fedoseev	GM	International	42
43	Vladislav Artemiev	GM	Rusia	43
44	Gabriel Sargissian	GM	Armenia	44
45	Matthew D Sadler	GM	England	45
46	David Anton Guijarro	GM	Spain	46
47	Illya Nyzhnyk	GM	Ukraine	47
48	Michael Adams	GM	England	48
49	Alexandr Predke	GM	International	49
50	Jeffery Xiong	GM	United States	50
51	Ivan Saric	GM	Croatia	51
52	Bassem Amin	GM	Egypt	52
53	Grigoriy Oparin	GM	Rusia	53
54	Ray Robson	GM	United States	54
55	Andrei Volokitin	GM	Ukraine	55
56	Peter Svidler	GM	Rusia	56
57	Ivan Cheparinov	GM	Bulgaria	57
58	David Navara	GM	Czech Republic	58
59	Dmitry Jakovenko	GM	Rusia	59
60	Pavel Eljanov	GM	Ukraine	60
61	Saleh Salem	GM	United Arab Emirates	61
62	Li Chao	GM	China	62
63	Vasyl Ivanchuk	GM	Ukraine	63
64	Zoltan Almasi	GM	Hungary	65
65	Anton Korobov	GM	Ukraine	66
66	Alexey Sarana	GM	Rusia	67
67	Arjun Erigaisi	GM	India	68
68	Igor Kovalenko	GM	Ukraine	69
69	Yuriy Kryvoruchko	GM	Ukraine	70
70	Maxim Matlakov	GM	Rusia	71
71	Jaime Santos Latasa	GM	Spain	72
72	Bogdan-Daniel Deac	GM	Romania	73
73	Wang Yue	GM	China	74
74	Gawain Jones	GM	England	75
75	Gadir Guseinov	GM	Azerbaijan	76
76	Boris Gelfand	GM	Israel	77
77	Ni Hua	GM	China	78
78	Vincent Keymer	GM	Germany	79
79	Alexander Areshchenko	GM	Ukraine	80
80	Dariusz Swiercz	GM	United States	81
81	Peter Leko	GM	Hungary	82
82	Matthias Bluebaum	GM	Germany	83
83	Narayanan Sunilduth Lyna	GM	India	84
84	Gata Kamsky	GM	United States	85
85	Nodirbek Abdusattorov	GM	Uzbekistan	86
86	Evgeniy Najer	GM	Rusia	87
87	Gukesh D	GM	India	88
88	Alexander Morozevich	GM	Rusia	89
89	Rustam Kasimdzhanov	GM	Uzbekistan	90
90	Ernesto Inarkiev	GM	Rusia	91
91	Hans Moke Niemann	GM	United States	92
92	Rauf Mamedov	GM	Azerbaijan	93
93	Haik M Martirosyan	GM	Armenia	94
94	Hrant Melkumyan	GM	Armenia	95
95	Arkadij Naiditsch	GM	Azerbaijan	96
96	Anton Demchenko	GM	Rusia	97
97	Aryan Tari	GM	Norway	98
98	Ferenc Berkes	GM	Hungary	99
99	Sandro Mareco	GM	Argentina	100
100	David Howell	GM	England	101
101	Vladimir Malakhov	GM	Rusia	102
102	Alan Pichot	GM	Argentina	103
103	Jules Moussard	GM	France	104
104	Rasmus Svane	GM	Germany	105
105	Krishnan Sasikiran	GM	India	106
106	Hou Yifan	GM	China	107
107	Mohammad Amin Tabatabaei	GM	Iran	108
108	Jorge Cori	GM	Peru	109
109	Nihal Sarin	GM	India	110
110	Valery Salov	GM	Rusia	111
111	Benjamin Gledura	GM	Hungary	112
112	Alexander Ipatov	GM	Turkey	113
113	Kirill Shevchenko	GM	Ukraine	114
114	Yuriy Kuzubov	GM	Ukraine	115
115	Praggnanandhaa R	GM	India	116
116	Ruslan Ponomariov	GM	Ukraine	117
117	Shant Sargsyan	GM	Armenia	118
118	Alexander Onischuk	GM	United States	119
119	Aleksandr Rakhmanov	GM	Rusia	120
120	Samvel Ter-Sahakyan	GM	Armenia	121
121	Etienne Bacrot	GM	France	122
122	Vasif Durarbayli	GM	Azerbaijan	123
123	Liviu-Dieter Nisipeanu	GM	Romania	124
124	Manuel Petrosyan	GM	Armenia	125
125	Sergei Rublevsky	GM	Rusia	126
126	Zurab Azmaiparashvili	GM	Georgia	127
127	Markus Ragger	GM	Austria	128
128	Kacper Piorun	GM	Poland	129
129	Dmitrij Kollars	GM	Germany	130
130	Nijat Abasov	GM	Azerbaijan	131
131	Nils Grandelius	GM	Sweden	132
132	Pouya Idani	GM	Iran	133
133	Alexander Riazantsev	GM	Rusia	134
134	Mustafa Yilmaz	GM	Turkey	135
135	Maksim Chigaev	GM	Rusia	136
136	Evgeny Bareev	GM	Canada	137
137	Anton Kovalyov	GM	Canada	138
138	Nodirbek Yakubboev	GM	Uzbekistan	139
139	Rinat Jumabayev	GM	Kazakhstan	140
140	Maxime Lagarde	GM	France	141
141	Jon Ludvig Hammer	GM	Norway	142
142	Erwin l'Ami	GM	Netherlands	143
143	Pavel Ponkratov	GM	Rusia	144
144	Vladislav Kovalev	GM	International	145
145	Constantin Lupulescu	GM	Romania	146
146	Velimir Ivic	GM	Serbia	147
147	Lazaro Bruzon Batista	GM	United States	148
148	Yaroslav Zherebukh	GM	United States	149
149	Aleksey Dreev	GM	Rusia	150
150	Vladimir Akopian	GM	Armenia	151
151	Aleksandar Indjic	GM	Serbia	152
152	Yasser Seirawan	GM	United States	153
153	Cristobal Henriquez Villagra	GM	Chile	154
154	Alexander Motylev	GM	Rusia	155
155	Raunak Sadhwani	GM	India	156
156	Mateusz Bartel	GM	Poland	157
157	Peter Heine Nielsen	GM	Denmark	158
158	Loek van Wely	GM	Netherlands	159
159	David Paravyan	GM	Rusia	160
160	Baskaran Adhiban	GM	India	161
161	Emil Sutovsky	GM	Israel	162
162	Daniel Naroditsky	GM	United States	163
163	Benjamin Bok	GM	Netherlands	164
164	Surya Shekhar Ganguly	GM	India	165
165	Aram Hakobyan	GM	Armenia	166
166	Max Warmerdam	GM	Netherlands	167
167	Niclas Huschenbeth	GM	Germany	168
168	Awonder Liang	GM	United States	169
169	S P Sethuraman	GM	India	170
170	Thai Dai Van Nguyen	GM	Czech Republic	171
171	Ante Brkic	GM	Croatia	172
172	Vladimir Onischuk	GM	Ukraine	173
173	Aleksandra Goryachkina	GM	Rusia	174
174	Javokhir Sindarov	GM	Uzbekistan	175
175	Daniele Vocaturo	GM	Italy	176
176	Alexander Khalifman	GM	Rusia	177
177	Abhimanyu Puranik	GM	India	178
178	Robert Hovhannisyan	GM	Armenia	179
179	Abhijeet Gupta	GM	India	180
180	Aravindh Chithambaram	GM	India	181
181	Eric Hansen	GM	Canada	182
182	Oleksandr Bortnyk	GM	Ukraine	183
183	Neuris Delgado Ramirez	GM	Paraguay	184
184	Anton Smirnov	GM	Australia	185
185	Varuzhan Akobian	GM	United States	186
186	Sergei Movsesian	GM	Armenia	187
187	Baadur Jobava	GM	Georgia	188
188	Alexander Donchenko	GM	Germany	189
189	Vadim Zvjaginsev	GM	Rusia	190
190	Martyn Kravtsiv	GM	Ukraine	191
191	Ahmed Adly	GM	Egypt	192
192	Arman Pashikian	GM	Armenia	193
193	Mikhail Al Antipov	GM	Rusia	194
194	Arik Braun	GM	Germany	195
195	Aleksandr Lenderman	GM	United States	196
196	Jose Eduardo Martinez Alcantara	GM	Peru	197
197	Evgeny Alekseev	GM	Rusia	198
198	Robert Hess	GM	United States	199
199	Luis Paulo Supi	GM	Brazil	200
200	Zhou Jianchao	GM	China	201
201	Axel Bachmann	GM	Paraguay	202
202	Viktor Erdos	GM	Hungary	203
203	Humpy Koneru	GM	India	204
204	Viorel Iordachescu	GM	Moldova	205
205	Alexander Moiseenko	GM	Ukraine	206
206	Aleksandr Shimanov	GM	Rusia	207
207	John M Burke	GM	United States	208
208	Arturs Neiksans	GM	Latvia	209
209	Anton Shomoev	GM	Rusia	210
210	Romain Edouard	GM	France	211
211	Vahap Sanal	GM	Turkey	212
212	Andreas Heimann	GM	Germany	213
213	Robert Huebner	GM	Germany	214
214	Sergei Zhigalko	GM	Belarus	215
215	Krikor Sevag Mekhitarian	GM	Brazil	216
216	Andrey Baryshpolets	GM	Ukraine	217
217	John Nunn	GM	United Kingdom	218
218	Alexandr Fier	GM	Brazil	219
219	Alexander Graf	GM	Germany	220
220	Daniel Dardha	GM	Belgium	221
221	Aleksey Goganov	GM	Rusia	222
222	Alejandro Ramirez	GM	United States	223
223	Ju Wenjun	GM	China	224
224	Simen Agdestein	GM	Norway	225
225	Artur Yusupov	GM	Germany	226
226	Alvar Alonso Rosell	GM	Spain	227
227	Gregory Kaidanov	GM	United States	228
228	Federico Perez Ponsa	GM	Argentina	229
229	Henrique Mecking	GM	Brazil	230
230	Allan Stig Rasmussen	GM	Denmark	231
231	Kateryna Lagno	GM	Rusia	232
232	Ivan Ivanisevic	GM	Serbia	233
233	Aleksei Pridorozhni	GM	Rusia	234
234	Andrey Rychagov	GM	Rusia	235
235	Alojzije Jankovic	GM	Croatia	236
236	Antonios Pavlidis	GM	Greece	237
237	Andrey Stukopin	GM	Rusia	238
238	Alexander Goldin	GM	United States	239
239	Aleksandr Kharitonov	GM	Rusia	240
240	Andrey Sumets	GM	Ukraine	241
241	Andrey Shariyazdanov	GM	Rusia	242
242	Alexander Huzman	GM	Israel	243
243	Mariya Muzychuk	GM	Ukraine	244
244	Andre Diamant	GM	Brazil	245
245	Viktorija Cmilyte	GM	Lithuania	246
246	Kiril Georgiev	GM	North Macedonia	247
247	Aydin Suleymanli	GM	Azerbaijan	248
248	Jan H Timman	GM	Netherlands	249
249	Paulius Pultinevicius	GM	Lithuania	250
250	Shamsiddin Vokhidov	GM	Uzbekistan	251
251	Abhimanyu Mishra	GM	United States	252
252	Christopher Woojin Yoo	GM	United States	253
253	Aleksey Sorokin	GM	Rusia	254
254	Lei Tingjie	GM	China	255
255	Aleksander Mista	GM	Poland	256
256	Adam Tukhaev	GM	Ukraine	257
257	Nicolas D Checa	GM	United States	258
258	Adam Kozak	GM	Hungary	259
259	Nana Dzagnidze	GM	Georgia	260
260	Arnaud Hauchard	GM	France	261
261	Anna Muzychuk	GM	Ukraine	262
262	Alexei Fedorov	GM	Belarus	263
263	Andreas Kelires	GM	Greece	264
264	Alexander Kovchan	GM	Ukraine	265
265	Alexandre Danin	GM	Rusia	266
266	Tan Zhongyi	GM	China	267
267	Gregory Serper	GM	United States	268
268	Anthony Wirig	GM	France	269
269	Alberto David	GM	Italy	270
270	Ariel Erenberg	IM	Israel	271
271	Anouar Ismagambetov	GM	Kazakhstan	272
272	Harika Dronavalli	GM	India	273
273	Alexander Naumann	GM	Germany	274
274	Ulf Andersson	GM	Sweden	275
275	Tuan Minh Le	IM	Vietnam	276
276	Alexandra Kosteniuk	GM	Rusia	277
277	Adam Horvath	GM	Hungary	278
278	Alexandre Lesiege	GM	Canada	279
279	Alder Escobar Forero	GM	Colombia	280
280	Andrey Zhigalko	GM	Belarus	281
281	Andrei Shchekachev	GM	France	282
282	Alexander Moskalenko	GM	Rusia	283
283	Andrew Tang	GM	United States	284
284	Alexander Berelovich	GM	Germany	285
285	Luka Budisavljevic	GM	Serbia	286
286	Alexandr Triapishko	IM	Rusia	287
287	Alexandre Qashashvili	GM	Georgia	288
288	Alexander G Beliavsky	GM	Slovenia	289
289	Andrew Z Hong	GM	United States	290
290	Denis Lazavik	IM	Belarus	291
291	Alessio Valsecchi	GM	Italy	292
292	Alexander Shabalov	GM	United States	293
293	Christopher Noe	IM	Germany	294
294	Aleksandar Kovacevic	GM	Serbia	295
295	Alon Greenfeld	GM	Israel	296
296	Arman Mikaelyan	GM	Armenia	297
297	Aleksa Strikovic	GM	Serbia	298
298	Aliaksei Charnushevich	GM	France	299
299	Maia Chiburdanidze	GM	Georgia	300
300	Alexei Kornev	GM	Rusia	301
301	Anurag Mhamal	GM	India	302
302	Alina Kashlinskaya	IM	Poland	303
303	A Koushik Girish	GM	India	304
304	Andrey Orlov	GM	Rusia	305
305	Akash G	GM	India	306
306	Amirreza Pourramezanali	GM	Iran	307
307	Ivan Morovic Fernandez	GM	Chile	308
308	Alejandro Moreno Trujillo	IM	Spain	309
309	Eugene Perelshteyn	GM	United States	310
310	Aronyak Ghosh	IM	India	311
311	Andrey Gorovets	GM	Belarus	312
312	Alexander Stripunsky	GM	United States	313
313	Adrien Demuth	GM	France	314
314	Polina Shuvalova	IM	Rusia	315
315	Andrei Murariu	GM	Romania	316
316	Aleksander Delchev	GM	Bulgaria	317
317	Aleksej Aleksandrov	GM	Belarus	318
318	Abdulla Gadimbayli	IM	Azerbaijan	319
319	Aditya Mittal	IM	India	320
320	Zhansaya Abdumalik	GM	Kazakhstan	321
321	Aljoscha Feuerstack	IM	Germany	322
322	Anatoly Vaisser	GM	France	323
323	Sarasadat Khademalsharieh	IM	Iran	324
324	Zhao Xue	GM	China	325
325	Ahmad Ahmadzada	IM	Azerbaijan	326
326	Bela Khotenashvili	GM	Georgia	327
327	Akshat Chandra	GM	United States	328
328	Marc Andria Maurizzi	GM	France	329
329	Alexander Markgraf	IM	Germany	330
330	Lela Javakhishvili	IM	Georgia	331
331	Alberto Andres Gonzalez	IM	Spain	332
332	Alan-Safar Ramoutar	IM	Trinidad & Tobago	333
333	Adlane Arab	IM	Algeria	334
334	Alexander Zabotin	IM	Rusia	335
335	Arjun Kalyan	GM	India	336
336	Greg Shahade	IM	United States	337
337	Alexis Cabrera	GM	Spain	338
338	Arkadiusz Leniart	GM	Poland	339
339	Natalia Pogonina	WGM	Rusia	340
340	Marie Sebag	GM	France	341
341	Arghyadip Das	IM	India	342
342	Andrey Zontakh	GM	Ukraine	343
343	Valentina Gunina	GM	Rusia	344
344	Adham Fawzy	GM	Egypt	345
345	Alexandre Dgebuadze	GM	Belgium	346
346	Alexander Bagrationi	GM	Israel	347
347	Lajos Portisch	GM	Hungary	348
348	Simon Williams	GM	England	349
349	Igor Glek	GM	Rusia	350
350	Aleksandr Volodin	GM	Estonia	351
351	Alexander A Evdokimov	GM	Rusia	352
352	Joshua Waitzkin	IM	United States	353
353	Alexey Kim	GM	South Korea	354
354	Zhu Jin'er	WGM	China	355
355	Jacob Aagaard	GM	Scotland	356
356	Nino Batsiashvili	GM	Georgia	357
357	Andrei Sokolov	GM	France	358
358	Alexander Ivanov	GM	United States	359
359	Andrei Kovalev	GM	Belarus	360
360	Andrei Belozerov	GM	Rusia	361
361	Andreas Diermair	GM	Austria	362
362	Antoni Kozak	-	Poland	363
363	Pia Cramling	GM	Sweden	364
364	Abhijit Kunte	GM	India	365
365	Alexey Yatsenko	IM	Rusia	366
366	Antoaneta Stefanova	GM	Bulgaria	367
367	Pontus Carlsson	GM	Sweden	368
368	Arkadi Rotstein	GM	Germany	369
369	Albert Bokros	IM	Hungary	370
370	Alexander Gutenev	IM	Rusia	371
371	Adrian Mikhalchishin	GM	Slovenia	372
372	Aman Hambleton	GM	Canada	373
373	Aimen Rizouk	GM	Algeria	374
374	Gunay Mammadzada	IM	Azerbaijan	375
375	Olga Badelka	IM	Rusia	376
376	Aleksey Grebnev	IM	Rusia	377
377	Andrei Macovei	IM	Moldova	378
378	Ankit Rajpara	GM	India	379
379	Ahmad Asgarizadeh	IM	Iran	380
380	Andrei Istratescu	GM	Romania	381
381	Arash Tahbaz	IM	Iran	382
382	Advait Patel	IM	United States	383
383	Angel Espinosa Aranda	IM	Spain	384
384	Alfonso Llorente Zaro	IM	Spain	385
385	Andrea Stella	GM	Italy	386
386	Alexander Khlebovich	IM	Rusia	387
387	Dinara Saduakassova	IM	Kazakhstan	388
388	Alberto Suarez Real	IM	Spain	389
389	Alin-Mile Berescu	GM	Romania	390
390	Alisher Suleymenov	IM	Kazakhstan	391
391	Alex Yermolinsky	GM	United States	392
392	Batkhuyag Munguntuul	IM	Mongolia	393
393	Alexei Iljushin	GM	Rusia	394
394	Elina Danielian	GM	Armenia	395
395	Arash Daghli	FM	Iran	396
396	Aleksandar Colovic	GM	North Macedonia	397
397	Adrian Gschnitzer	IM	Germany	398
398	Roven Vogel	IM	Germany	399
399	Maurice Ashley	GM	United States	400
400	Aramis Alvarez Pedraza	GM	Cuba	401
401	Alexandru-Vasile David	IM	Romania	402
402	Bibisara Assaubayeva	IM	Kazakhstan	403
403	Anatoliy Polivanov	IM	Ukraine	404
404	Anthony He	IM	United States	405
405	Ajay Karthikeyan	IM	India	406
406	Meri Arabidze	IM	Georgia	407
407	Abdimalik Abdisalimov	IM	Uzbekistan	408
408	Anthony Petkidis	-	Germany	409
409	Alex Garrido Outon	IM	Spain	410
410	Andrei Maksimenko	GM	Ukraine	411
411	Huang Qian	WGM	China	412
412	Alik Gershon	GM	Israel	413
413	Alexander Seyb	IM	Germany	414
414	Alexei Bezgodov	GM	Rusia	415
415	Amirreza Pour Agha Bala	-	Iran	416
416	Irina Krush	GM	United States	417
417	Alex Astaneh Lopez	IM	Ireland	418
418	Alejandro Alvarado Diaz	IM	Spain	419
419	Alexander Mikhalevski	IM	Israel	420
420	Iulija Osmak	IM	Ukraine	421
421	Alan B Merry	IM	England	422
422	Alfonso Romero Holmes	GM	Spain	423
423	Wang Jue	WGM	China	424
424	Alon Mindlin	IM	Israel	425
425	Angel Arribas Lopez	GM	Spain	426
426	Aleksandr Potarov	GM	Rusia	427
427	Benjamin Finegold	GM	United States	428
428	Alejandro Franco Alonso	IM	Spain	429
429	Anna Ushenina	GM	Ukraine	430
430	Ding Yixin	WGM	China	431
431	Alexander Utnasunov	-	Rusia	432
432	Alisa Galliamova	IM	Rusia	433
433	Olga Alexandrova	IM	Spain	434
434	Andre Ventura Sousa	IM	Portugal	435
435	Alexey Polschikov	IM	Rusia	436
436	Alibek Igambergenov	IM	Kazakhstan	437
437	Anton Brovko	IM	Ukraine	438
438	Andreas Tzermiadianos	IM	Greece	439
439	Carissa Yip	IM	United States	440
440	Alexey Mokshanov	IM	Rusia	441
441	Andrey Ostrovskiy	IM	Ukraine	442
442	Yuri S Balashov	GM	Rusia	443
443	Akmal Fayzullaev	IM	Uzbekistan	444
444	Alessandro Manzone	FM	Argentina	445
445	Alexey Fernandez Cardoso	IM	Cuba	446
446	Arian Gonzalez Perez	GM	Spain	447
447	Alexander Kaspi	IM	Israel	448
448	Alexander Baburin	GM	Ireland	449
449	Ekaterina Atalik	IM	Turkey	450
450	Aleksandar Danilovic	IM	Serbia	451
451	Alex Krstulovic	IM	Hungary	452
452	Niaz Murshed	GM	Bangladesh	453
453	Alexander Fishbein	GM	United States	454
454	Alexander Gasthofer	IM	Germany	455
455	Alexander Krastev	FM	Germany	456
456	Anar Allahverdiyev	IM	Azerbaijan	457
457	Abdelrahman Hesham	GM	Egypt	458
458	Agil Pirverdiyev	FM	Azerbaijan	459
459	Arnd Lauber	IM	Germany	460
460	Alexey Vlasenko	IM	Rusia	461
461	Anatole Vlachos	IM	Greece	462
462	Alvaro Dias Huizar	FM	Venezuela	463
463	Jolanta Zawadzka	WGM	Poland	464
464	Vaishali R	IM	India	465
465	Aditya Bikram Paul	FM	India	466
466	Angelos Sandalakis	IM	Greece	467
467	Alexander R Katz	IM	United States	468
468	Olga Girya	GM	Rusia	469
469	Abdullah Al-Rakib	GM	Bangladesh	470
470	Alberto Quintin Navarro	FM	Spain	471
471	Konstantin Kavutskiy	IM	United States	472
472	Andrei-Nestor Cioara	IM	Romania	473
473	Alexander Finkel	GM	Israel	474
474	Nataliya Buksa	IM	Ukraine	475
475	Alexey Smirnov	-	Rusia	476
476	Ana Matnadze	IM	Spain	477
477	Andriy Shankovsky	IM	Ukraine	478
478	Guo Qi	IM	China	479
479	Alexander Hoffmann	-	Germany	480
480	Adrian-Marian Petrisor	IM	Romania	481
481	Alexander Gelman	IM	Rusia	482
482	Danny Rensch	IM	United States	483
483	Alexis Tahay	IM	France	484
484	Aaron Grabinsky	IM	United States	485
485	Roberto Molina	IM	Brazil	486
486	Alberto Martin Fuentes	FM	Spain	487
487	Oleg M Romanishin	GM	Ukraine	488
488	Almira Skripchenko	IM	France	489
489	Alex Vidal Zamora	FM	Spain	490
490	Adelard Bai	FM	China	491
491	Tania Sachdev	IM	India	492
492	Alexander A Kopylov	IM	Rusia	493
493	Lawrence Trent	IM	England	494
494	Andrey Tsvetkov	FM	Rusia	495
495	Adam C Hunt	IM	England	496
496	Antonio Pazos Porta	FM	Spain	497
497	Irina Bulmaga	IM	Romania	498
498	Aleksandr A Ostrovskiy	IM	United States	499
499	Alexander Fauland	IM	Austria	500
500	Anastasia Bodnaruk	IM	Rusia	501
501	Aleksandra Maltsevskaya	IM	Rusia	502
502	A Ra Harikrishnan	IM	India	503
503	Armen Petrossian	FM	France	504
504	Alexander Zajogin	-	Belarus	505
505	Alexandru-Bogdan Banzea	IM	Romania	506
506	Aleksander Hnydiuk	IM	Poland	507
507	Alain Genzling	IM	France	508
508	Anvar Turdyev	FM	Rusia	509
509	Aleksandr Karpatchev	GM	Rusia	510
510	Adam Feher	-	Hungary	511
511	Irine Kharisma Sukandar	IM	Indonesia	512
512	Alexander Timerkhanov	FM	Rusia	513
513	Andrew N Greet	IM	Scotland	514
514	Alejandro Hoffman	GM	Uruguay	515
515	Alexander F Dokutchaev	-	Rusia	516
516	Araz Basim Mohammed S Al-Saffar	IM	Iraq	517
517	Andreas Penzold	FM	Germany	518
518	Amadeus Eisenbeiser	IM	Germany	519
519	Ariel Sorin	GM	Argentina	520
520	Gulnar Mammadova	IM	Azerbaijan	521
521	Anna Zatonskih	IM	United States	522
522	Aleksandar Jovic	IM	Serbia	523
523	Amir Zaibi	GM	Tunisia	524
524	Anjas Novita	IM	Indonesia	525
525	Andrean Susilodinata	FM	Indonesia	526
526	Alexei Saveliev	IM	Rusia	527
527	Alik Vydeslaver	IM	Israel	528
528	Aldo Haik	IM	France	529
529	Monika Socko	GM	Poland	530
530	Alberto Barp	IM	Italy	531
531	Alexander Raetsky	GM	Rusia	532
532	Andreas Rupprecht	IM	Germany	533
533	Ali Farahat	IM	United States	534
534	Alexander Cherniaev	GM	Rusia	535
535	Anders Livner	FM	Sweden	536
536	Alfredo R Aguilera Rodriguez	FM	Cuba	537
537	Afrim Ismaili	FM	Belgium	538
538	Anatoliy Nesteretz	IM	Ukraine	539
539	Adrian Musat	FM	Romania	540
540	Armen Ar Barseghyan	IM	Armenia	541
541	Andrew Kayonde	IM	Zambia	542
542	Arman Geivondian	FM	Rusia	543
543	Alexander Raykhman	IM	Germany	544
544	Adam Popovics	IM	Hungary	545
545	Anders Hobber	FM	Norway	546
546	Hoang Thanh Trang	GM	Hungary	547
547	Alexey Kovalchuk	FM	Rusia	548
548	Aaron Alonso Garcia	FM	Spain	549
549	Aref Vasli	FM	Iran	550
550	Alexander Sokolov	FM	Czech Republic	551
551	Andres Ingunza Curro	FM	Spain	552
552	Alexander Zubarev	GM	Ukraine	553
553	Annie Wang	IM	United States	554
554	Alexander Kaliksteyn	IM	United States	555
555	Anthony C Kosten	GM	France	556
556	Vantika Agrawal	WGM	India	557
557	Arnd Janoszka	FM	Germany	558
558	Andranik Matikozian	IM	Armenia	559
559	Alexey Maly	IM	Ukraine	560
560	Aleksandr Trouskavetski	IM	Rusia	561
561	Alina Bivol	IM	Rusia	562
562	Amir Bagheri	GM	Monaco	563
563	Kulkarni Bhakti	IM	India	564
564	Anton Yatzenko	-	Rusia	565
565	Adrian Suarez Uriel	IM	Spain	566
566	Andreas Breier	FM	Germany	567
567	Alexei Barsov	GM	Uzbekistan	568
568	Betul Cemre Yildiz Kadioglu	WGM	Turkey	569
569	Alexander Lagunow	IM	Germany	570
570	Alonso Zapata	GM	Colombia	571
571	Deysi Cori T	WGM	Peru	572
572	Andrei Shishkov	IM	Estonia	573
573	Adrian Martinez Fernandez	FM	Spain	574
574	Adam G Ashton	FM	England	575
575	Aleksandar Savanovic	IM	Bosnia & Herzegovina	576
576	Alexandre Vuilleumier	IM	Switzerland	577
577	Andrew P Horton	IM	England	578
578	Alexander Suvorov	FM	Germany	579
579	Agoston Juhasz	FM	Hungary	580
580	Alexey Potapov	IM	Rusia	581
581	Anton Sitnikov	IM	Ukraine	582
582	Alexander Kuindzhy	-	Rusia	583
583	Alfredo Giaccio	GM	Argentina	584
584	Ali Rastbod	FM	Iran	585
585	Adham Kandil	IM	Egypt	586
586	Alexey Grachev	FM	Rusia	587
587	Anita Gara	IM	Hungary	588
588	Adrian-Simion Secheres	FM	Romania	589
589	Arkadiusz Skawinski	FM	Poland	590
590	Alexandru Manea	IM	Romania	591
591	Eric Rosen	IM	United States	592
592	Antonio Vitor	FM	Portugal	593
593	Andrei Borisenko	IM	Rusia	594
594	Alexey Kislinsky	GM	Czech Republic	595
595	Abtin Atakhan	FM	Iran	596
596	Jovanka Houska	IM	England	597
597	Alexander Kabatianski	IM	Germany	598
598	Abel Fabian Lopez Gonzalez	IM	Cuba	599
599	Aleksander Kaczmarek	FM	Poland	600
600	Alexej Gorbatov	IM	Rusia	601
601	Adrian Galiana Fernandez	FM	Spain	602
602	Anuj Shrivatri	IM	India	603
603	Andrej Sukovic	FM	Montenegro	604
604	Alexander Belezky	IM	Germany	605
605	Ahuja Rohan	IM	India	606
606	Andy Woodward	FM	United States	607
607	Nazi Paikidze	IM	United States	608
608	Antonio Almiron	FM	Paraguay	609
609	Alexej Khamatgaleev	IM	Rusia	610
610	Alberto Chueca Forcen	IM	Spain	611
611	Andrius Brazdzionis	FM	Lithuania	612
612	Alberto Portela Peleteiro	FM	Spain	613
613	Vlastimil Hort	GM	Germany	614
614	Aljosa Tomazini	FM	Slovenia	615
615	Annamaria Marjanovic	WGM	Hungary	616
616	Aleksandar Simonovic	IM	Serbia	617
617	Anish Vivekananthan	FM	United States	618
618	Alexander Krapivin	GM	Rusia	619
619	Andrie Zaremba	FM	United States	620
620	Peng Zhaoqin	GM	Netherlands	621
621	Marina Brunello	IM	Italy	622
622	Antonio Loiacono	FM	Italy	623
623	Padmini Rout	IM	India	624
624	Abel Lazaro Pujol	FM	Spain	625
625	Anastasiya Savina	IM	Rusia	626
626	Anatoly Ozgibcev	-	Rusia	627
627	Aleksander Alienkin	IM	Rusia	628
628	G Khavsky	-	Rusia	629
629	Aleksandar Trisic	-	Germany	630
630	Ari Dale	IM	Australia	631
631	Antoine Bournel	FM	France	632
632	Alvaro Valdes Escobar	IM	Chile	633
633	Alice Lee	FM	United States	634
634	Andrew J Ledger	IM	England	635
635	Andrej Dubkov	FM	Germany	636
636	Alexander Krayz	IM	Israel	637
637	Andrei-Mihai Bonte	-	Romania	638
638	Antoni Gual Pascual	IM	Spain	639
639	Alexey Khruschiov	GM	Moldova	640
640	Adam C Taylor	IM	England	641
641	Anton Frisk Kockum	FM	Sweden	642
642	Alexandre Bacrot	-	France	643
643	Aleksandar Tomic	FM	Montenegro	644
644	Alexander Bertagnolli	IM	Italy	645
645	Andrei Purygin	FM	Rusia	646
646	Alejandro Perez Garcia	IM	Spain	647
647	Arkadi Syrov	FM	Germany	648
648	Alexandr Ogleznev	FM	Moldova	649
649	Alexey Mazurok	IM	Ukraine	650
650	Antonio Granero Roca	IM	Spain	651
651	Alejandro Yanes Canizares	FM	Cuba	652
652	Antonio Ruperez Benito	FM	Spain	653
653	Alexander Matros	IM	Kazakhstan	654
654	Anton Samojlov	FM	Rusia	655
655	Alfonso Jerez Perez	IM	Spain	656
656	Laura Unuk	IM	Slovenia	657
657	Alejandro Pablo Mari	FM	Spain	658
658	Alexander Velikanov	FM	United States	659
659	Gulrukhbegim Tokhirjonova	WGM	United States	660
660	Alexander Yakunov	FM	Rusia	661
661	Arman Hakemi	FM	Iran	662
662	Aleksejs Zuckovs	FM	Latvia	663
663	Aleksandar Simic	-	Bosnia & Herzegovina	664
664	Aleksandar Toth	-	Serbia	665
665	Natalia Zhukova	GM	Ukraine	666
666	Akaki Sharashenidze	FM	Czech Republic	667
667	Alfred Felsberger	FM	Austria	668
668	Levy Rozman	IM	United States	669
669	Alexander Sotsky	IM	Rusia	670
670	Aco Alvir	IM	Austria	671
671	Ari Guz	FM	Israel	672
672	Alejandro Domingo Nunez	FM	Spain	673
673	Aleksandar H Wohl	IM	Australia	674
674	Keti Tsatsalashvili	WGM	Georgia	675
675	Alexander von Gleich	FM	Germany	676
676	Alexei Gubajdullin	FM	Rusia	677
677	Adrian Zetocha	FM	Slovakia	678
678	Adam Szeberenyi	IM	Hungary	679
679	Armin Farmani Anosheh	FM	Germany	680
680	Alejandro Needleman	IM	Argentina	681
681	Alexander Sergeyev	FM	Rusia	682
682	Andrei Nechaev	-	Ukraine	683
683	Alexander Chernyavsky	FM	Rusia	684
684	Ari Ziegler	IM	Sweden	685
685	Mike Klein	FM	United States	686
686	Alexandru-Ovidiu Stanciu	FM	Romania	687
687	Arda Camlar	FM	Turkey	688
688	Alejandro Barbero Sendic	FM	Spain	689
689	Andrei Purtov	IM	Rusia	690
690	Alexander Devaev	FM	Rusia	691
691	Anna Rudolf	IM	Hungary	692
692	Alexandre Pigeat	FM	France	693
693	Akin Kizilkus	FM	Turkey	694
694	Alexander Zlatin	FM	Israel	695
695	Akira Nakada	FM	United States	696
696	Andrey Rogoznikov	-	Rusia	697
697	Aleksander Czerwonski	IM	Poland	698
698	Jennifer Shahade	WGM	United States	699
699	Adam Deszczynski	-	Poland	700
700	Alvaro Buendia Pinar	FM	Spain	701
701	Carolina Lujan	IM	Argentina	702
702	Andrey Levitskiy	FM	Ukraine	703
703	Anton Aaberg	IM	Sweden	704
704	Adolf Herzog	FM	Austria	705
705	Aleksij Savchenko	FM	Germany	706
706	Andreas Strunski	IM	Germany	707
707	Andres Gallardo Garcia	IM	Spain	708
708	Anne Haast	WGM	Netherlands	709
709	Antoine Manoeuvre	FM	France	710
710	Albert Blees	IM	Netherlands	711
711	Allan Holst	FM	Denmark	712
712	Aditya Bagus Arfan	FM	Indonesia	713
713	Andreea-Cristiana Navrotescu	WIM	France	714
714	Alejandro Mateus	FM	Colombia	715
715	Alberto Rivera	IM	International	716
716	Airat Sadubayev	FM	Kazakhstan	717
717	Antonio Naranjo Moreno	FM	Spain	718
718	Alparslan Isik	FM	Turkey	719
719	Alejo De Dovitiis	IM	Argentina	720
720	Aleksey Ivlev	FM	Rusia	721
721	Amro El Jawich	FM	Lebanon	722
722	Aldiyar Ansat	IM	Kazakhstan	723
723	Arne Matthiesen	FM	Denmark	724
724	Andrey Alekseev	IM	Rusia	725
725	Anatoly Tarnopolsky	FM	Israel	726
726	Andy Marechal	FM	Belgium	727
727	Antonio Fernandes	GM	Portugal	728
728	Alexander Smirnov	IM	Rusia	729
729	Alan Tate	FM	Scotland	730
730	Alexander Zhurikhin	FM	Rusia	731
731	Amir Kowsarinia	FM	Iran	732
732	Anatoly Sidorov	IM	Rusia	733
733	Andrea Amato	FM	Italy	734
734	Andreas G R Moen	IM	Norway	735
735	Alex Dac-Vuong Nguyen	FM	Germany	736
736	Aleksander Kundin	IM	Israel	737
737	Alexander Demianjuk	FM	Rusia	738
738	Andrej Komora	-	Slovakia	739
739	Alexander J Chua	FM	United States	740
740	Andre Schmitt	FM	France	741
741	Aaryan Varshney	FM	India	742
742	Aleksandar Vuckovic	FM	Germany	743
743	Alexander V Lisenko	IM	Rusia	744
744	Alberto Marquez Ortiz de Zarate	FM	Spain	745
745	Alfred Weindl	IM	Germany	746
746	Adel Choukri	FM	Morocco	747
747	Antonios Kalogridis	FM	Greece	748
748	Alex Golding	FM	England	749
749	Alexey Pakhomov	IM	Rusia	750
750	Alexandra Obolentseva	WGM	Rusia	751
751	Klaudia Kulon	IM	Poland	752
752	Andras Orosz	FM	Hungary	753
753	Alexander Krivtsov	FM	Rusia	754
754	Tanitoluwa Adewumi	FM	United States	755
755	Alexander Van Beek	IM	Netherlands	756
756	Alejandro Tello Nunez	FM	Spain	757
757	Andrey A Gonus	FM	Rusia	758
758	Alik Tikranian	FM	Netherlands	759
759	Alfredo Rosich Valles	FM	Spain	760
760	Alexey Solovchuk	-	Ukraine	761
761	Andrei Gurbanov	IM	Israel	762
762	Alexander Fominyh	GM	Rusia	763
763	Albert Castillo Dalmau	FM	Spain	764
764	Alexander Riess	FM	Germany	765
765	Arnaud Payen	IM	France	766
766	Albert Baigildin	-	Rusia	767
767	Arash Roghani	IM	Iran	768
768	Angelo Young	IM	Philippines	769
769	Anthony Saidy	IM	United States	770
770	Alessandro Santagati	FM	Italy	771
771	Alexander Shirokovsky	FM	Rusia	772
772	Alex Browning	FM	Germany	773
773	Andras Dankhazi	FM	Hungary	774
774	Alexander Longson	FM	England	775
775	Albert Tomasi	FM	France	776
776	Alexander Hilverda	-	Germany	777
777	Anthony J Stebbings	FM	England	778
778	Andrea La Manna	FM	Italy	779
779	Agnieszka Matras-Clement	WIM	Canada	780
780	Tatev Abrahamyan	WGM	United States	781
781	Alvaro Perez De Miguel	-	Spain	782
782	Andrew Peredun	FM	Canada	783
783	Anwuli Daniel	IM	Nigeria	784
784	Anastasios Pavlidis	IM	Greece	785
785	Aksel Bu Kvaloy	FM	Norway	786
786	Aleksandar Rusev	FM	Bulgaria	787
787	Andrei Obodchuk	IM	Rusia	788
788	Adriano Rodrigues	FM	Brazil	789
789	Alban Delorme	FM	France	790
790	Alexander Kitze	-	Germany	791
791	Adrian Gonzalez Laso	FM	Spain	792
792	Aleksej Litwak	FM	Germany	793
793	Amir Mohammadi	-	Sweden	794
794	Andreu Blasco Coll	CM	Spain	795
795	Alexander Dehlinger	FM	Germany	796
796	Amirmasoud Moradi	-	Iran	797
797	Alois Lanc	IM	Slovakia	798
798	Abdullah Hassan	IM	United Arab Emirates	799
799	Alan A Smith	-	England	800
800	Aleksey Shemetov	FM	Rusia	801
801	Arjun Vishnuvardhan	IM	India	802
802	Adithya B	-	India	803
803	Andres F Escobar Medina	FM	Colombia	804
804	Alin Ardeleanu	IM	Romania	805
805	Alexandr Piskunov	FM	Rusia	806
806	Adrian Randazzo	FM	Italy	807
807	Andrii Punin	FM	Ukraine	808
808	Alman Durakovic	FM	Bosnia & Herzegovina	809
809	Andrei Chigvintsev	IM	Rusia	810
810	Alexandre Iwanesko	-	France	811
811	Andrej Ljepic	FM	Serbia	812
812	Alex Steinacker	-	Germany	813
813	Abdelaziz Onkoud	IM	Morocco	814
814	Ales Pachmann	FM	Czech Republic	815
815	Kevin Bordi	-	France	816
816	Alexandr Ledakov	FM	Rusia	817
817	Alexandr P. Provotorov	IM	Rusia	818
818	Alina l'Ami	IM	Romania	819
819	Ante Jurkovic	-	Croatia	820
820	Arad Nazari	FM	Iran	821
821	Alessio Boraso	FM	Italy	822
822	Andjelija Stojanovic	WGM	Serbia	823
823	Ahmad Siar Wahedi	FM	Germany	824
824	Anastasios Tzoumbas	FM	Greece	825
825	Alexei Romanov	IM	Rusia	826
826	Aayush Bhattacherjee	CM	India	827
827	Adan Manuel Mazara Ruiz	FM	Dominican Republic	828
828	Alberto Landi	FM	Italy	829
829	Alexei Terzi	FM	Belarus	830
830	Aitor Alonso Alvarez	FM	Spain	831
831	Andrey Moiseev	-	Rusia	832
832	Armin Musovic	FM	Montenegro	833
833	Adrian Gomez Dieguez	FM	Spain	834
834	Alphaeus Wei Ern Ang	FM	New Zealand	835
835	Alvaro Bayo Milagro	FM	Spain	836
836	Andrey Khromkin	FM	Rusia	837
837	Alexander Eybl	FM	Austria	838
838	Andrei Olhovik	FM	Belarus	839
839	Andreas Umbach	FM	Switzerland	840
840	Adam Frank	FM	Czech Republic	841
841	Arjun C Krishnamachari	-	India	842
842	Anton Konaplev	FM	Rusia	843
843	Andrius Macionis	-	Lithuania	844
844	Alexander Bulavin	FM	Rusia	845
845	Arlan Cabe	FM	Philippines	846
846	Adam Radnai	FM	Hungary	847
847	Andrejs Strebkovs	IM	Latvia	848
848	Abobker Mohamed Elarabi	FM	Libya	849
849	Adela Velikic	WIM	Serbia	850
850	Alexander King	FM	United States	851
851	Andre Oberhofer	-	Germany	852
852	Alexis M Harakis	FM	England	853
853	Alexander Rinberg	FM	Israel	854
854	Anatolyi Zajarnyi	IM	Moldova	855
855	Andreas Schweitzer	-	Germany	856
856	Andras Veszpremi	-	Hungary	857
857	Alexander Bragin	-	Rusia	858
858	Ambjorn Alle Wahlin	-	Sweden	859
859	Arnaud Jossien	FM	France	860
860	Ahmad Azeez Jawad Obada	IM	Iraq	861
861	Aras Vardanyan	CM	Lithuania	862
862	Andreas Kofidis	IM	Greece	863
863	Ari Kiremitciyan	FM	Turkey	864
864	Alexandr Doncev	-	Moldova	865
865	Andreas Garberg Tryggestad	FM	Norway	866
866	Arkady Shevelev	IM	Israel	867
867	Alexey Tyutyunnikov	-	Rusia	868
868	Anthony F Ker	IM	New Zealand	869
869	Aleksandar Vrbljanac	FM	Serbia	870
870	Anders Backlund	FM	Sweden	871
871	Alejandro Castellanos Gomez	FM	Spain	872
872	Anatoly Donskov	FM	Rusia	873
873	Ales Pekarek	IM	Czech Republic	874
874	Andreas Bauer	-	Germany	875
875	Adrian Roos	FM	Belgium	876
876	Rusudan Goletiani	IM	United States	877
877	Ahmed Mokhtar	-	Egypt	878
878	Albert Winkelman	FM	Australia	879
879	Adalbert Villavicencio Martinez	IM	Spain	880
880	Ahmed Anibar	-	Morocco	881
881	Alihan Guseynov	IM	Turkey	882
882	A Izrailev	-	Rusia	883
883	Abdulraheem Abdulrahman Akintoye	FM	Nigeria	884
884	Adnan Kobas	FM	Bosnia & Herzegovina	885
885	Alexey Ustinov	FM	Rusia	886
886	Alex Yam	FM	Canada	887
887	Arne Bracker	-	Germany	888
888	Adam Mekhane	FM	France	889
889	Annmarie Muetsch	WIM	Germany	890
890	Aaron Jacobson	FM	United States	891
891	Alfredo Brito Garcia	IM	Spain	892
892	Adrien Nottola	FM	France	893
893	Anders Grandell	FM	Sweden	894
894	Akkhavanh Vilaisarn	FM	France	895
895	Andrii Vachylia	FM	Ukraine	896
896	Alejandro Bofill Mas	IM	Spain	897
897	Andreas Ciolek	FM	Germany	898
898	Angel Jesus Marquez Ruiz	CM	Venezuela	899
899	Andres Luque Saiz	FM	Spain	900
900	Alexander Tsiss	-	Rusia	901
901	Ariel Marichal Gonzalez	IM	Venezuela	902
902	Alexey Kamrukov	FM	Rusia	903
903	Alicja Sliwicka	WIM	Poland	904
904	Alen Rakhimzhan	FM	Kazakhstan	905
905	Andro Wagdy	IM	Egypt	906
906	Andreas Druckenthaner	FM	Austria	907
907	Alexandr Kostiukov	-	Ukraine	908
908	Alexander Kondrin	-	Rusia	909
909	Amer Aminikiasari	FM	Iran	910
910	Amir Hadzovic	FM	Bosnia & Herzegovina	911
911	Alan Van der Heijden	FM	Netherlands	912
912	Antti Virtanen	FM	Finland	913
913	Nona Gaprindashvili	GM	Georgia	914
914	Ahmet Efekan Alaz	FM	Turkey	915
915	Alexander Shabrin	FM	Rusia	916
916	Aleksej Lugovskoj	FM	Ukraine	917
917	Adam Cap	FM	Czech Republic	918
918	Alexej Wagner	-	Rusia	919
919	Armen Hachijan	FM	Netherlands	920
920	Andre Fischer	-	Germany	921
921	Adam Ciesla	-	Poland	922
922	Alexander Oye-Stromberg	CM	Norway	923
923	Adnan Karahmetovic	FM	Bosnia & Herzegovina	924
924	Anastasya Paramzina	WGM	Rusia	925
925	Andri A Gretarsson	FM	Iceland	926
926	Ahmet Olcum	FM	Turkey	927
927	Amrou Sobh	IM	Egypt	928
928	Antanas Zapolskis	IM	Lithuania	929
929	Andres Cabrera Huaman	FM	Peru	930
930	Aleksa Petrovic	FM	Serbia	931
931	Antonio Nunez	FM	International	932
932	Adam Rubal	-	Czech Republic	933
933	Akar Ali Salih Salih	FM	Iraq	934
934	Alexis Murillo Tsijli	IM	Costa Rica	935
935	Alejandro Garcia Garcia	FM	Cuba	936
936	Alfonso Prieto Martin	-	Spain	937
937	Andres Aguilar	FM	Argentina	938
938	Alejandro Arias Igual	FM	Spain	939
939	Turkan Mamedjarova	WGM	Azerbaijan	940
940	Amir Hossein Jamshidi	FM	Iran	941
941	Alimert Ozsoy	FM	Turkey	942
942	Ali Nassr	IM	Algeria	943
943	Andre Lupor	FM	Germany	944
944	Ajgaonkar Mithil	FM	India	945
945	Adrian Jimenez Ruano	FM	Spain	946
946	Alan Cisic	-	Bosnia & Herzegovina	947
947	Aleksandar Tashev	-	Bulgaria	948
948	Anton Postl	FM	Austria	949
949	Adam Szieberth	IM	Hungary	950
950	Andre Neves Fidalgo	-	Portugal	951
951	Addy Lont	FM	Netherlands	952
952	Alexander Langers	-	Germany	953
953	Anna Burtasova	WGM	Canada	954
954	Amir Mohammad Hamidi	FM	Iran	955
955	Ahmad Najjar	FM	Lebanon	956
956	Alfonso Lopez Gonzalez	-	Spain	957
957	Anatoli I Shvedchikov	IM	Rusia	958
958	Ahmed Alaa Ahmed	-	Egypt	959
959	Andy Huang	FM	United States	960
960	Ales ml Lazar	FM	Slovenia	961
961	Alen Yeremyan	FM	Armenia	962
962	Alexey Kukelko	FM	Ukraine	963
963	Antonia Ziegenfuss	WFM	Germany	964
964	Alain Prieto Aranguren	FM	Spain	965
965	Adrian Villuendas Valero	FM	Spain	966
966	A M Soozankar	IM	Iran	967
967	Alexandru Pop	FM	Romania	968
968	Alejandro Escudero Manzano	-	Spain	969
969	Andre Nilsson	-	Sweden	970
970	Alexandros Papasimakopoulos	CM	Greece	971
971	Andriy Zazuliak	FM	Ukraine	972
972	Achim Wild	-	Germany	973
973	Alex Cuevas	FM	Argentina	974
974	Antoni Marcet Bisbal	FM	Spain	975
975	Alexey Guberniev	FM	Rusia	976
976	Annemarie Meier	-	Germany	977
977	Arndt Miltner	FM	Germany	978
978	Andreas Hein	FM	Germany	979
979	Adrian Soderstrom	CM	Sweden	980
980	Antonios Xylogiannopoulos	-	Greece	981
981	Alexandros Dounis	FM	Greece	982
982	Anna Sharevich	WGM	United States	983
983	Jennifer Yu	FM	United States	984
984	Alexey Beletsky	-	Rusia	985
985	Andrei Savitski	-	Belarus	986
986	Alexey Diulger	IM	Moldova	987
987	Alok Sinha	-	India	988
988	Aleksandar Kurcubic	FM	Serbia	989
989	Alexander Korneevets	IM	Belarus	990
990	Aleksandr E Usov	FM	Rusia	991
991	Andrey Shkurkin	FM	Rusia	992
992	Andrey Shirokov	-	Rusia	993
993	Abel Carrascoso Morales	FM	Spain	994
994	Alexander Krivonogov	-	Rusia	995
995	Anatol Vitouch	FM	Austria	996
996	Alexey Evdokimov	FM	Rusia	997
997	Andrei Ioan Trifan	-	Germany	998
998	Alexis Vargas Arteaga	FM	Colombia	999
999	Dina Belenkaya	WGM	Israel	1000
\.


--
-- Data for Name: ratings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ratings (rank, classic, rapid, blitz) FROM stdin;
1	2864	2847	2828
2	2801	2836	2788
3	2791	2766	2847
4	2788	2821	2740
5	2785	2670	2791
6	2775	2728	2850
7	2773	2779	2763
8	2762	2837	2850
9	2760	2802	2613
10	2760	2764	2784
11	2760	2727	2770
12	2759	2699	2778
13	2756	2731	2734
14	2754	2726	2729
15	2747	2736	2611
16	2745	2759	2762
17	2738	2808	2779
18	2736	2747	2705
19	2735	2750	2712
20	2729	2675	2736
21	2728	2627	2667
22	2727	2752	2686
23	2722	2580	2673
24	2722	2626	2657
25	2720	2738	2808
26	2720	2616	2645
27	2720	2624	2574
28	2714	2617	2654
29	2709	2642	2760
30	2708	2636	2606
31	2708	2639	2682
32	2705	2679	2617
33	2704	2627	2678
34	2703	2569	2692
35	2702	2553	2602
36	2702	2682	2644
37	2702	2712	2791
38	2702	2702	2591
39	2702	2631	2695
40	2702	2645	2609
41	2701	2629	2607
42	2701	2739	2726
43	2697	2710	2832
44	2696	2639	2561
45	2694	2673	2646
46	2692	2633	2584
47	2692	2658	2643
48	2690	2651	2742
49	2688	2573	2614
50	2688	2725	2714
51	2687	2645	2550
52	2681	2538	2699
53	2685	2650	2639
54	2684	2596	2670
55	2674	2659	2505
56	2683	2752	2725
57	2685	2652	2622
58	2681	2701	2686
59	2682	2684	2625
60	2681	2653	2601
61	2679	2655	2679
62	2679	2645	2693
63	2678	2686	2710
65	2677	2599	2585
66	2675	2642	2635
67	2670	2654	2666
68	2681	2450	2745
69	2674	2620	2560
70	2672	2697	2594
71	2671	2671	2669
72	2674	2593	2617
73	2683	2577	2648
74	2669	2710	2666
75	2665	2630	2657
76	2668	2692	2581
77	2668	2635	2619
78	2668	2647	2579
79	2675	2552	2548
80	2671	2588	2627
81	2652	2649	2627
82	2663	2710	2738
83	2673	2587	2556
84	2662	2546	2494
85	2655	2717	2645
86	2661	2670	2663
87	2676	2590	2562
88	2675	2223	2598
89	2659	2651	2636
90	2672	2698	2681
91	2661	2678	2639
92	2678	2529	2632
93	2656	2584	2666
94	2656	2478	2706
95	2655	2686	2604
96	2653	2600	2577
97	2654	2547	2539
98	2663	2531	2567
99	2654	2638	2676
100	2657	2547	2546
101	2650	2604	2559
102	2652	2670	2654
103	2641	2525	2579
104	2668	2626	2589
105	2649	2651	2674
106	2635	2577	2572
107	2650	2621	2601
108	2650	2420	2544
109	2645	2604	2577
110	2654	2604	2705
111	2644	0	0
112	2644	2619	2332
113	2644	2584	2534
114	2654	2584	2562
115	2642	2649	2548
116	2642	1927	2599
117	2642	2673	2605
118	2648	2477	2611
119	2640	2693	2650
120	2635	2633	2500
121	2640	2530	2592
122	2641	2720	2673
123	2638	2458	2528
124	2645	2636	2625
125	2638	2547	2592
126	2637	2630	2591
127	2637	2619	2608
128	2643	2630	2524
129	2627	2520	2591
130	2643	2451	2584
131	2635	2567	2528
132	2645	2652	2617
133	2635	2509	2610
134	2635	2573	2595
135	2631	2502	2568
136	2631	2531	2457
137	2631	2659	2678
138	2631	2585	2583
139	2630	2495	2517
140	2628	2534	2561
141	2628	2652	2625
142	2638	2647	2607
143	2634	2647	2676
144	2631	2493	2487
145	2623	2505	2530
146	2627	2630	2575
147	2628	2437	2610
148	2623	2619	2709
149	2623	2620	2520
150	2610	2596	2625
151	2622	2668	2641
152	2620	2502	2616
153	2620	2647	2523
154	2620	2605	2556
155	2619	2712	2470
156	2620	2533	2616
157	2597	2503	2526
158	2618	2669	2546
159	2629	2552	2569
160	2620	2636	2569
161	2616	2548	2648
162	2615	2598	2516
163	2616	2639	2608
164	2616	2608	2658
165	2616	2646	2531
166	2615	2476	2557
167	2613	2412	2537
168	2610	2572	2605
169	2613	2397	2379
170	2613	2556	2473
171	2610	2462	2483
172	2618	2597	2602
173	2612	2661	2642
174	2599	2473	2426
175	2616	2467	2670
176	2608	2584	2565
177	2608	2522	0
178	2608	2550	2520
179	2607	2630	2570
180	2606	2551	2549
181	2606	2576	2577
182	2606	2579	2568
183	2604	2643	2723
184	2603	2658	2627
185	2600	2367	2647
186	2600	2639	2593
187	2607	2616	2584
188	2595	2688	2617
189	2602	2571	2572
190	2603	2488	2601
191	2598	2675	2694
192	2596	2587	2588
193	2595	2585	2536
194	2592	2593	2524
195	2594	2611	2535
196	2591	2646	2651
197	2591	2645	2703
198	2601	2600	2606
199	2591	2621	2557
200	2590	2516	2378
201	2583	2570	2478
202	2588	2618	2587
203	2586	2511	2555
204	2586	2467	2472
205	2585	2552	2563
206	2579	2575	2577
207	2581	2616	2605
208	2579	0	2575
209	2590	2555	2447
210	2567	2555	2499
211	2575	2623	2521
212	2576	2547	2574
213	2580	2538	2502
214	2574	2575	0
215	2572	2660	2662
216	2542	2589	2611
217	2569	2479	2532
218	2568	2536	2490
219	2567	2453	2571
220	2562	0	0
221	2555	2504	2482
222	2549	2542	2552
223	2561	2579	2694
224	2560	2610	2536
225	2559	2522	2475
226	2559	2520	2500
227	2562	2526	2474
228	2557	0	0
229	2553	2604	2672
230	2553	2593	2587
231	2550	2503	2490
232	2547	2531	2522
233	2557	2567	2535
234	2549	2547	2581
235	2549	2450	2460
236	2548	2501	2484
237	2546	2614	2613
238	2546	2561	2450
239	2542	0	0
240	2542	2573	2465
241	2542	2487	2506
242	2541	2360	2407
243	2539	2496	2480
244	2540	2477	2328
245	2539	2439	2468
246	2538	2394	2435
247	2534	2643	2539
248	2537	2297	2481
249	2535	2472	2501
250	2524	2524	2385
251	2534	2483	2611
252	2535	0	1682
253	2548	1861	2105
254	2535	2561	2476
255	2535	2527	2530
256	2534	2514	2481
257	2534	2510	2507
258	2533	2272	2526
259	2523	2508	2459
260	2531	2463	2374
261	2530	2533	0
262	2529	2458	2460
263	2523	2571	2521
264	2528	2062	2110
265	2491	2469	2451
266	2525	2455	2573
267	2525	2513	2510
268	2522	0	0
269	2520	2488	2474
270	2520	2615	2526
271	2516	2403	2277
272	2520	2484	2487
273	2517	2475	2382
274	2512	2549	2538
275	2516	2493	2467
276	2514	2307	2530
277	2510	2542	2469
278	2518	2492	2522
279	2510	0	0
280	2510	2355	2530
281	2509	2449	2452
282	2507	2487	2503
283	2508	2511	2434
284	2508	2383	2584
285	2499	2503	2474
286	2516	2195	2365
287	2506	2529	2479
288	2505	0	2316
289	2505	2631	0
290	2504	0	2460
291	2504	2393	2437
292	2504	2453	2383
293	2495	2526	2477
294	2513	2427	2533
295	2500	2530	2464
296	2501	2344	2389
297	2502	2435	2461
298	2499	2503	2589
299	2501	2500	0
300	2500	2432	2437
301	2500	2523	2492
302	2499	2382	2317
303	2505	2288	2330
304	2498	2410	2387
305	2504	2585	2541
306	2495	2393	2359
307	2495	2338	2370
308	2489	2578	2498
309	2495	2511	2471
310	2494	0	0
311	2494	2074	2093
312	2493	2575	2462
313	2493	2581	2544
314	2492	2454	2480
315	2498	2351	2330
316	2493	2523	2469
317	2490	2493	2502
318	2504	2486	2426
319	2491	2254	2311
320	2485	1695	2303
321	2495	2448	2413
322	2484	2423	2418
323	2477	2401	2540
324	2488	2411	2431
325	2486	2442	2407
326	2486	2251	2228
327	2485	2405	2320
328	2485	2409	2541
329	2490	2279	2186
330	2477	0	0
331	2477	2346	2324
332	2479	2469	2473
333	2480	1707	1911
334	2477	2436	2414
335	2477	2476	2445
336	2477	2268	2340
337	2476	2476	0
338	2473	0	2468
339	2476	2257	2327
340	2457	2466	2313
341	2472	2387	2440
342	2472	2281	2307
343	2471	0	0
344	2475	2421	2386
345	2474	2502	2546
346	2463	2446	2460
347	2468	2347	2398
348	2467	2426	0
349	2467	2497	2468
350	2467	2415	2228
351	2459	2426	2401
352	2465	2447	2444
353	2464	0	0
354	2465	2422	2517
355	2464	2326	2281
356	2474	2502	2509
357	2453	2345	2149
358	2461	2565	0
359	2467	0	2497
360	2462	2329	2289
361	2462	2437	2320
362	2451	2337	2322
363	2459	2334	2320
364	2459	2396	2320
365	2458	2427	2420
366	2458	2401	2408
367	2467	2399	2426
368	2458	2382	2392
369	2461	0	2455
370	2458	2457	2528
371	2448	2433	2406
372	2455	2483	2405
373	2454	2450	2552
374	2454	2471	2462
375	2454	2277	2242
376	2448	2217	2165
377	2439	2343	2327
378	2470	2267	2472
379	2452	0	2447
380	2452	2419	2375
381	2452	2475	2529
382	2436	2230	2389
383	2451	2001	1990
384	2449	2399	2496
385	2448	0	2480
386	2438	2453	2450
387	2446	2459	2366
388	2435	2434	2404
389	2431	2379	2449
390	2445	2366	2380
391	2467	2444	2318
392	2444	2520	2508
393	2408	2364	2391
394	2442	2477	2462
395	2441	2330	2218
396	2432	2194	2199
397	2441	2395	2316
398	2439	2333	2294
399	2465	2506	2516
400	2440	0	0
401	2440	2518	2488
402	2427	2402	2398
403	2427	2396	2404
404	2439	2437	2472
405	2437	0	2415
406	2436	1765	2183
407	2448	2356	2335
408	2437	2294	2401
409	2443	2350	2422
410	2434	1999	2131
411	2434	2478	2449
412	2433	2464	2311
413	2429	2381	0
414	2441	0	2345
415	2431	2387	2383
416	2430	2252	2290
417	2430	2392	2360
418	2436	2377	2488
419	2430	2429	2438
420	2428	2417	0
421	2420	2250	2302
422	2427	2333	2340
423	2427	2469	2378
424	2426	2421	2378
425	2426	2293	2390
426	2425	2474	2553
427	2425	2315	2255
428	2422	0	2501
429	2424	2476	2447
430	2423	2371	2395
431	2422	2349	2313
432	2421	2389	2355
433	2421	2370	2390
434	2420	2406	2408
435	2420	2381	2304
436	2420	2392	2223
437	2420	2254	2332
438	2418	0	2362
439	2418	2381	0
440	2418	2393	1708
441	2417	2273	2141
442	2412	0	2469
443	2416	2345	2283
444	2398	2187	2228
445	2416	2387	2327
446	2416	2457	2488
447	2418	2393	2410
448	2414	2307	2214
449	2404	0	2485
450	2422	2385	2180
451	2413	2351	2387
452	2413	2248	2193
453	2413	2496	2442
454	2413	0	2442
455	2413	0	2508
456	2432	0	0
457	2412	0	0
458	2385	2406	2506
459	2411	2508	2343
460	2413	2421	2351
461	2410	2251	2345
462	2431	2367	2343
463	2409	0	2220
464	2400	2166	2140
465	2442	2273	2343
466	2409	1550	1829
467	2409	2456	2363
468	2408	2388	2371
469	2407	2297	2275
470	2408	2464	2417
471	2408	2310	2289
472	2406	2409	2327
473	2407	2321	2282
474	2408	2289	2356
475	2406	2221	2306
476	2406	2352	2284
477	2406	2355	2434
478	2406	2210	2269
479	2406	2446	2338
480	2408	0	0
481	2404	2395	2347
482	2403	0	2375
483	2402	2399	0
484	2393	2310	2161
485	2408	2260	2358
486	2400	2433	2432
487	2400	2365	2331
488	2405	2414	2387
489	2399	2214	2298
490	2399	2212	0
491	2399	1720	2120
492	2399	2318	2280
493	2398	2380	2436
494	2408	2428	2474
495	2398	2351	2280
496	2398	2469	2355
497	2399	2159	2298
498	2396	2243	2189
499	2392	2376	2340
500	2397	2415	2402
501	2390	2239	2332
502	2378	2158	2243
503	2396	2122	2250
504	2395	2181	2322
505	2409	0	0
506	2394	2237	2057
507	2394	2349	2374
508	2394	2324	2343
509	2393	2335	2337
510	2393	2458	2338
511	2392	0	0
512	2395	2383	2293
513	2390	2342	2226
514	2392	2434	2431
515	2398	2509	2404
516	2390	2403	2410
517	2390	2371	2304
518	2370	0	2373
519	2389	0	2346
520	2388	2398	2340
521	2380	2383	2255
522	2387	2267	2362
523	2386	2401	2391
524	2398	2373	2201
525	2386	2261	2304
526	2386	2299	2245
527	2390	2268	2281
528	2385	2394	2321
529	2385	0	0
530	2413	2239	2286
531	2396	2243	2229
532	2384	2344	2201
533	2380	0	0
534	2380	2272	2290
535	2387	2299	2574
536	2365	2312	2325
537	2380	0	0
538	2380	0	0
539	2379	2287	2293
540	2378	2362	2407
541	2383	2304	2337
542	2378	2369	2314
543	2378	2249	2252
544	2378	2393	2397
545	2376	2394	0
546	2367	2316	2389
547	2376	2336	2364
548	2375	2311	2296
549	2374	2019	2037
550	2374	2206	2257
551	2374	2366	2356
552	2374	2041	2176
553	2372	2318	2390
554	2372	0	2037
555	2380	2421	2460
556	2375	2401	0
557	2371	1841	2075
558	2371	2305	2211
559	2370	0	0
560	2370	2343	2304
561	2370	2268	2319
562	2364	2235	2235
563	2375	2434	2386
564	2370	2282	2224
565	2370	2323	2156
566	2370	2181	2299
567	2357	0	0
568	2368	2340	2416
569	2368	2365	2253
570	2372	2389	2343
571	2352	2412	2376
572	2371	2300	2341
573	2366	2258	2309
574	2366	2026	2014
575	2350	2378	0
576	2376	2365	2392
577	2366	2229	2210
578	2366	2308	2401
579	2348	2237	2239
580	2364	2014	2211
581	2364	2364	2360
582	2363	2476	2496
583	2363	2161	2267
584	2362	2416	2326
585	2337	2243	2135
586	2347	2145	2174
587	2361	2433	2426
588	2360	2279	2244
589	2360	2278	2277
590	2359	2262	2220
591	2360	2235	2243
592	2360	2365	2362
593	2359	2247	2375
594	2359	2250	2283
595	2359	2322	2311
596	2385	2154	2087
597	2365	2317	2345
598	2360	0	0
599	2361	2121	2247
600	2357	2139	2143
601	2356	1974	2082
602	2354	1989	2103
603	2356	2129	2113
604	2318	2383	2370
605	2346	2463	2392
606	2355	2149	2267
607	2389	0	2137
608	2354	2402	2314
609	2351	2329	2204
610	2354	2306	0
611	2354	0	0
612	2354	2207	2327
613	2354	2141	2257
614	2354	2457	2364
615	2356	2291	2205
616	2353	2256	2156
617	2353	0	0
618	2350	0	0
619	2350	2307	2131
620	2350	0	0
621	2349	0	2133
622	2355	2316	2295
623	2349	2153	2073
624	2357	2277	2181
625	2348	2116	1918
626	2358	2156	2228
627	2347	2285	2239
628	2340	2449	2302
629	2345	0	0
630	2333	2314	2281
631	2345	2294	2282
632	2352	2202	2155
633	2341	2370	2207
634	2293	2350	2318
635	2316	2375	0
636	2346	0	2346
637	2342	2182	2347
638	2343	2238	2233
639	2343	2346	2372
640	2343	2447	2357
641	2342	2135	2116
642	2328	2367	2286
643	2340	2323	2306
644	2344	2383	2420
645	2341	2375	2331
646	2341	2270	2328
647	2341	2146	2164
648	2318	0	0
649	2326	2135	2241
650	2340	0	0
651	2358	2298	2264
652	2340	0	2348
653	2340	2116	2249
654	2335	0	2444
655	2339	2277	2281
656	2339	2421	2388
657	2340	2166	2235
658	2338	0	2351
659	2337	0	2259
660	2332	2326	2227
661	2336	2285	0
662	2336	2165	2156
663	2335	2236	2286
664	2335	2279	2256
665	2335	2391	2323
666	2335	2250	2296
667	2334	2285	2211
668	2334	0	2341
669	2333	2284	2376
670	2333	1988	2045
671	2330	2390	2376
672	2331	1998	1913
673	2335	2141	2215
674	2332	2297	0
675	2319	2147	2220
676	2316	2274	2249
677	2331	2384	2280
678	2290	1921	1978
679	2326	2298	2279
680	2330	0	2289
681	2325	2310	0
682	2324	2233	2137
683	2327	2247	2197
684	2327	2295	2292
685	2311	2261	2288
686	2326	0	0
687	2326	2337	2268
688	2326	0	2007
689	2326	2357	2314
690	2326	2260	2225
691	2325	2141	2185
692	2325	0	0
693	2328	2032	2171
694	2358	1663	1698
695	2324	2175	2228
696	2314	2143	1930
697	2324	2293	2316
698	2323	2338	2325
699	2322	0	2294
700	2321	2184	2179
701	2321	2173	2276
702	2321	2349	2275
703	2320	2156	2301
704	2325	2346	0
705	2320	0	0
706	2320	0	0
707	2331	2258	0
708	2320	0	2271
709	2320	0	2320
710	2320	2356	2294
711	2319	0	2151
712	2319	0	2284
713	2341	1770	1723
714	2350	2178	2166
715	2326	2197	2295
716	2297	2331	2182
717	2262	2221	2230
718	2296	2270	0
719	2316	1625	1849
720	2315	2317	2311
721	2315	2399	2224
722	2314	2315	2296
723	2277	2107	2258
724	2314	2311	0
725	2314	0	0
726	2315	2341	0
727	2311	2338	2286
728	2327	2238	2320
729	2313	2166	2203
730	2313	2266	2197
731	2313	2230	2204
732	2312	2290	2249
733	2312	2341	2309
734	2312	2371	2316
735	2311	2273	2186
736	2314	2331	1981
737	2305	2104	2236
738	2309	2321	2118
739	2309	0	2226
740	2308	0	0
741	2308	0	2228
742	2295	1835	2189
743	2308	2326	2306
744	2307	2300	2130
745	2302	2119	2304
746	2307	2299	0
747	2306	2298	2276
748	2272	1694	1596
749	2309	2046	2029
750	2305	2267	2278
751	2310	2213	2113
752	2293	2204	2281
753	2305	2169	2116
754	2305	2018	1961
755	2305	0	0
756	2304	2362	0
757	2303	0	2295
758	2303	0	0
759	2303	2266	2246
760	2303	0	0
761	2303	2382	2305
762	2308	2274	2318
763	2302	2400	2382
764	2302	2242	2258
765	2302	2144	2199
766	2303	2274	2320
767	2315	2176	2216
768	2301	2283	2276
769	2300	2181	2234
770	2300	2326	2283
771	2299	2223	2096
772	2299	2268	2225
773	2299	2211	2269
774	2298	2328	2325
775	2298	2288	2233
776	2298	2293	2260
777	2300	2299	2282
778	2297	0	0
779	2297	2198	0
780	2297	2238	2224
781	2297	2373	2347
782	2297	0	2204
783	2296	0	0
784	2296	2288	2278
785	2296	2278	2139
786	2270	1968	2006
787	2302	0	0
788	2321	2370	2393
789	2295	2313	0
790	2318	2258	2197
791	2295	0	0
792	2294	2098	2157
793	2296	2341	2242
794	2294	2288	0
795	2294	2164	2222
796	2294	0	0
797	2293	2110	2094
798	2285	2285	2298
799	2293	2359	0
800	2292	0	0
801	2292	2250	2204
802	2292	0	2227
803	2292	0	2347
804	2291	2141	2261
805	2290	2337	2248
806	2290	2302	2360
807	2290	2199	2132
808	2289	2235	2357
809	2289	2287	2274
810	2289	2188	2097
811	2289	2285	2324
812	2226	1927	2054
813	2300	0	0
814	2289	2361	2281
815	2288	2223	0
816	2288	0	0
817	2288	2241	2330
818	2288	2212	2329
819	2285	2345	2249
820	2287	2232	2249
821	2400	2086	2129
822	2286	2145	2286
823	2287	2263	2293
824	2280	0	0
825	2287	2204	2246
826	2287	2224	2156
827	2286	1502	1924
828	2286	0	2239
829	2286	2110	2099
830	2286	2174	2031
831	2279	2163	2160
832	2285	2315	2161
833	2296	2350	2255
834	2285	2106	2127
835	2287	2210	2088
836	2285	1948	2270
837	2285	2359	0
838	2290	0	0
839	2284	2306	2146
840	2284	0	0
841	2304	1743	2131
842	2241	1614	1973
843	2301	2187	2208
844	2284	1950	2292
845	2284	2226	2126
846	2284	2147	2128
847	2284	2146	2200
848	2283	2272	2246
849	2283	2211	2117
850	2273	2240	2132
851	2302	2213	2306
852	2283	0	0
853	2298	2182	0
854	2267	2381	0
855	2282	2351	2330
856	2282	0	0
857	2282	2278	2238
858	2282	2091	2004
859	2281	0	2205
860	2271	2227	2328
861	2281	0	0
862	2282	2199	2222
863	2281	2230	2274
864	2281	1956	1959
865	2280	2273	2247
866	2280	2210	2301
867	2280	2273	2263
868	2280	2164	2247
869	2280	2258	2209
870	2280	0	2309
871	2280	2275	2295
872	2266	2167	2112
873	2279	2326	2219
874	2279	0	0
875	2281	0	0
876	2277	2208	2247
877	2278	0	0
878	2278	2202	2276
879	2278	0	2024
880	2278	0	0
881	2278	0	0
882	2213	2145	2291
883	2277	0	2286
884	2277	2193	2151
885	2277	0	0
886	2277	2198	2071
887	2277	0	0
888	2273	2169	2194
889	2271	1989	2002
890	2272	2219	2249
891	2275	2361	2265
892	2285	2154	2275
893	2275	1813	2058
894	2272	2292	2245
895	2274	0	0
896	2274	2202	2318
897	2274	2199	2210
898	2303	2141	2215
899	2273	2225	2277
900	2291	1897	2007
901	2273	2228	2224
902	2267	2283	2250
903	2273	2117	2046
904	2257	2190	2120
905	2273	2223	2179
906	2272	2130	2227
907	2272	2277	2208
908	2271	2240	2202
909	2271	2011	1944
910	2271	1982	2073
911	2270	2275	2236
912	2270	0	0
913	2270	0	0
914	2270	2199	2105
915	2278	1877	1941
916	2270	2211	2116
917	2269	2167	2210
918	2269	2250	2050
919	2269	0	2287
920	2269	0	0
921	2268	0	2238
922	2268	0	2209
923	2288	1922	1958
924	2268	2278	2285
925	2256	2192	2129
926	2267	2186	2091
927	2267	2040	2131
928	2255	2090	2165
929	2266	2224	2172
930	2266	2237	2290
931	2230	2170	2117
932	2265	2318	2271
933	2265	0	2222
934	2265	2253	2187
935	2265	2252	2203
936	2299	0	2142
937	2264	0	0
938	2260	2205	2264
939	2277	2244	2162
940	2244	2224	2226
941	2264	2127	2304
942	2263	1655	1801
943	2263	2193	2217
944	2263	0	2220
945	2263	2165	2087
946	2275	2217	2051
947	2262	0	2198
948	2262	2055	1895
949	2262	0	2269
950	2262	2310	0
951	2261	2171	2023
952	2264	0	0
953	2261	0	0
954	2241	2265	2215
955	2217	2122	2283
956	2261	2096	2137
957	2261	2170	2047
958	2261	2217	2130
959	2260	2167	2056
960	2260	2195	2143
961	2260	0	0
962	2260	0	2158
963	2260	2194	2230
964	2170	0	1914
965	2272	2163	2224
966	2259	2286	2328
967	2259	2227	2150
968	2259	2111	2117
969	2263	2219	2257
970	2247	0	0
971	2259	2304	2340
972	2258	2236	2277
973	2258	2253	2258
974	2258	2296	2289
975	2258	2264	2256
976	2258	2210	2177
977	2258	0	0
978	2265	0	0
979	2258	0	0
980	2278	2025	2107
981	2258	2058	2058
982	2257	2133	2204
983	2257	2245	2261
984	2290	1898	1936
985	2257	2263	2253
986	2257	2191	2121
987	2256	0	0
988	2256	1533	2039
989	2256	0	0
990	2256	0	0
991	2256	2214	2227
992	2256	2094	2274
993	2255	2166	2256
994	2255	2234	2321
995	2255	2113	2036
996	2253	2291	2119
997	2254	2289	2146
998	2291	2148	2081
999	2254	2305	2290
1000	2256	2151	2196
\.


--
-- Name: games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.games_id_seq', 338, true);


--
-- Name: players_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.players_id_seq', 999, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (id);


--
-- Name: ratings ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (rank);


--
-- Name: games games_black_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_black_id_fkey FOREIGN KEY (black_id) REFERENCES public.players(id);


--
-- Name: games games_white_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_white_id_fkey FOREIGN KEY (white_id) REFERENCES public.players(id);


--
-- Name: players players_rank_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_rank_fkey FOREIGN KEY (rank) REFERENCES public.ratings(rank);


--
-- PostgreSQL database dump complete
--

