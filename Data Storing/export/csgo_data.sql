--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Ubuntu 14.4-1.pgdg20.04+1)
-- Dumped by pg_dump version 14.1

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
-- Name: player; Type: TABLE; Schema: public; Owner: zehmrznixzdmyj
--

CREATE TABLE public.player (
    player_id integer NOT NULL,
    nickname character varying NOT NULL,
    realname character varying NOT NULL,
    country character varying NOT NULL,
    age integer NOT NULL,
    team_id integer NOT NULL,
    CONSTRAINT player_age_check CHECK ((age > 0))
);


ALTER TABLE public.player OWNER TO zehmrznixzdmyj;

--
-- Name: player_player_id_seq; Type: SEQUENCE; Schema: public; Owner: zehmrznixzdmyj
--

CREATE SEQUENCE public.player_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.player_player_id_seq OWNER TO zehmrznixzdmyj;

--
-- Name: player_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zehmrznixzdmyj
--

ALTER SEQUENCE public.player_player_id_seq OWNED BY public.player.player_id;


--
-- Name: playerstats; Type: TABLE; Schema: public; Owner: zehmrznixzdmyj
--

CREATE TABLE public.playerstats (
    playerstats_id integer NOT NULL,
    rating numeric(3,2) NOT NULL,
    dpr numeric(3,2) NOT NULL,
    kast numeric(4,3) NOT NULL,
    impact numeric(3,2) NOT NULL,
    adr numeric(3,1) NOT NULL,
    kpr numeric(3,2) NOT NULL,
    kill_count integer NOT NULL,
    hs_percentage numeric(4,3) NOT NULL,
    death_count integer NOT NULL,
    kd_ratio numeric(3,2) NOT NULL,
    map_count integer NOT NULL,
    player_id integer NOT NULL,
    CONSTRAINT playerstats_adr_check CHECK ((adr >= (0)::numeric)),
    CONSTRAINT playerstats_death_count_check CHECK ((death_count >= 0)),
    CONSTRAINT playerstats_dpr_check CHECK (((dpr >= (0)::numeric) AND (dpr <= (1)::numeric))),
    CONSTRAINT playerstats_hs_percentage_check CHECK (((hs_percentage >= (0)::numeric) AND (hs_percentage <= (1)::numeric))),
    CONSTRAINT playerstats_impact_check CHECK ((impact >= (0)::numeric)),
    CONSTRAINT playerstats_kast_check CHECK (((kast >= (0)::numeric) AND (kast <= (1)::numeric))),
    CONSTRAINT playerstats_kd_ratio_check CHECK ((kd_ratio >= (0)::numeric)),
    CONSTRAINT playerstats_kill_count_check CHECK ((kill_count >= 0)),
    CONSTRAINT playerstats_kpr_check CHECK ((kpr >= (0)::numeric)),
    CONSTRAINT playerstats_map_count_check CHECK ((map_count >= 0)),
    CONSTRAINT playerstats_rating_check CHECK ((rating >= (0)::numeric))
);


ALTER TABLE public.playerstats OWNER TO zehmrznixzdmyj;

--
-- Name: playerstats_playerstats_id_seq; Type: SEQUENCE; Schema: public; Owner: zehmrznixzdmyj
--

CREATE SEQUENCE public.playerstats_playerstats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.playerstats_playerstats_id_seq OWNER TO zehmrznixzdmyj;

--
-- Name: playerstats_playerstats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zehmrznixzdmyj
--

ALTER SEQUENCE public.playerstats_playerstats_id_seq OWNED BY public.playerstats.playerstats_id;


--
-- Name: team; Type: TABLE; Schema: public; Owner: zehmrznixzdmyj
--

CREATE TABLE public.team (
    team_id integer NOT NULL,
    name character varying NOT NULL,
    country character varying NOT NULL,
    rank integer,
    coach character varying,
    CONSTRAINT team_rank_check CHECK ((rank > 0))
);


ALTER TABLE public.team OWNER TO zehmrznixzdmyj;

--
-- Name: team_team_id_seq; Type: SEQUENCE; Schema: public; Owner: zehmrznixzdmyj
--

CREATE SEQUENCE public.team_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.team_team_id_seq OWNER TO zehmrznixzdmyj;

--
-- Name: team_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zehmrznixzdmyj
--

ALTER SEQUENCE public.team_team_id_seq OWNED BY public.team.team_id;


--
-- Name: teamstats; Type: TABLE; Schema: public; Owner: zehmrznixzdmyj
--

CREATE TABLE public.teamstats (
    teamstats_id integer NOT NULL,
    win_count integer NOT NULL,
    draw_count integer NOT NULL,
    lose_count integer NOT NULL,
    kill_count integer NOT NULL,
    death_count integer NOT NULL,
    kd_ratio numeric(3,2) NOT NULL,
    team_id integer NOT NULL,
    CONSTRAINT teamstats_death_count_check CHECK ((death_count >= 0)),
    CONSTRAINT teamstats_draw_count_check CHECK ((draw_count >= 0)),
    CONSTRAINT teamstats_kd_ratio_check CHECK ((kd_ratio >= (0)::numeric)),
    CONSTRAINT teamstats_kill_count_check CHECK ((kill_count >= 0)),
    CONSTRAINT teamstats_lose_count_check CHECK ((lose_count >= 0)),
    CONSTRAINT teamstats_win_count_check CHECK ((win_count >= 0))
);


ALTER TABLE public.teamstats OWNER TO zehmrznixzdmyj;

--
-- Name: teamstats_teamstats_id_seq; Type: SEQUENCE; Schema: public; Owner: zehmrznixzdmyj
--

CREATE SEQUENCE public.teamstats_teamstats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teamstats_teamstats_id_seq OWNER TO zehmrznixzdmyj;

--
-- Name: teamstats_teamstats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zehmrznixzdmyj
--

ALTER SEQUENCE public.teamstats_teamstats_id_seq OWNED BY public.teamstats.teamstats_id;


--
-- Name: player player_id; Type: DEFAULT; Schema: public; Owner: zehmrznixzdmyj
--

ALTER TABLE ONLY public.player ALTER COLUMN player_id SET DEFAULT nextval('public.player_player_id_seq'::regclass);


--
-- Name: playerstats playerstats_id; Type: DEFAULT; Schema: public; Owner: zehmrznixzdmyj
--

ALTER TABLE ONLY public.playerstats ALTER COLUMN playerstats_id SET DEFAULT nextval('public.playerstats_playerstats_id_seq'::regclass);


--
-- Name: team team_id; Type: DEFAULT; Schema: public; Owner: zehmrznixzdmyj
--

ALTER TABLE ONLY public.team ALTER COLUMN team_id SET DEFAULT nextval('public.team_team_id_seq'::regclass);


--
-- Name: teamstats teamstats_id; Type: DEFAULT; Schema: public; Owner: zehmrznixzdmyj
--

ALTER TABLE ONLY public.teamstats ALTER COLUMN teamstats_id SET DEFAULT nextval('public.teamstats_teamstats_id_seq'::regclass);


--
-- Data for Name: player; Type: TABLE DATA; Schema: public; Owner: zehmrznixzdmyj
--

COPY public.player (player_id, nickname, realname, country, age, team_id) FROM stdin;
1	Summer	YuLun Cai	China	25	1
2	BnTeT	Hansel Ferdinand	Indonesia	26	1
3	Attacker	YuanZhang Sheng	China	25	1
4	SLOWLY	Kelun Sun	China	20	1
5	DANK1NG	Zhenghao Lv	China	22	1
6	Sico	Simon Williams	New Zealand	27	3
7	Liazz	Jay Tregillgas	Australia	24	3
8	aliStair	Alistair Johnston	Australia	24	3
9	INS	Joshua Potter	Australia	23	3
10	Hatz	Jordan Bajic	Australia	23	3
11	apEX	Dan Madesclaire	France	29	5
12	dupreeh	Peter Rasmussen	Denmark	29	5
13	Magisk	Emil Reif	Denmark	24	5
14	ZywOo	Mathieu Herbaut	France	21	5
15	misutaaa	Kévin Rabier	France	19	5
16	arT	Andrei Piovezan	Brazil	26	7
17	yuurih	Yuri Santos	Brazil	22	7
18	KSCERATO	Kaike Cerato	Brazil	22	7
19	saffee	Rafael Costa	Brazil	27	7
20	drop	André Abreu	Brazil	18	7
21	chelo	Marcelo Cespedes	Brazil	24	8
22	exit	Raphael Lacerda	Brazil	25	8
23	Tuurtle	Matheus Anhaia	Brazil	23	8
24	JOTA	Jhonatan Willian	Brazil	24	8
25	brnz4n	Breno Poletto	Brazil	18	8
26	Xyp9x	Andreas Højsleth	Denmark	26	9
27	gla1ve	Lukas Rossander	Denmark	27	9
28	k0nfig	Kristian Wienecke	Denmark	25	9
29	Farlig	Asger Jensen	Denmark	23	9
30	blameF	Benjamin Bremer	Denmark	25	9
31	shox	Richard Papillon	France	30	10
32	nitr0	Nick Cannella	United States	26	10
33	NAF	Keith Markovic	Canada	24	10
34	EliGE	Jonathan Jablonowski	United States	24	10
35	oSee	Josh Ohm	United States	23	10
36	karrigan	Finn Andersen	Denmark	32	11
37	rain	Håvard Nygaard	Norway	27	11
38	Twistzz	Russel Van Dulken	Canada	22	11
39	ropz	Robin Kool	Estonia	22	11
40	broky	Helvijs Saukants	Latvia	21	11
41	es3tag	Patrick Hansen	Denmark	26	13
42	REZ	Fredrik Sterner	Sweden	24	13
43	hampus	Hampus Poser	Sweden	23	13
44	Brollan	Ludvig Brolin	Sweden	20	13
45	Plopski	Nicolas Gonzalez Zamora	Sweden	20	13
46	tabseN	Johannes Wodarz	Germany	27	15
47	tiziaN	Tizian Feldbusch	Germany	26	15
48	syrsoN	Florian Rische	Germany	26	15
49	faveN	Josef Baumann	Germany	22	15
50	Krimbo	Karim Moussa	Germany	19	15
51	KRIMZ	Freddy Johansson	Sweden	28	16
52	nicoodoz	Nico Tamjidi	Denmark	21	16
53	roeJ	Fredrik Jørgensen	Denmark	28	16
54	mezii	William Merriman	United Kingdom	23	16
55	JACKZ	Audric Jug	France	29	17
56	NiKo	Nikola Kovač	Bosnia and Herzegovina	25	17
57	huNter-	Nemanja Kovač	Bosnia and Herzegovina	26	17
58	Aleksib	Aleksi Virolainen	Finland	25	17
59	m0NESY	Ilya Osipov	Russia	17	17
60	dexter	Christopher Nong	Australia	27	18
61	frozen	David Čerňanský	Slovakia	19	18
62	JDC	Jon de Castro	Germany	22	18
63	torzsi	Ádám Torzsás	Hungary	20	18
64	Bymas	Aurimas Pipiras	Lithuania	18	18
65	JT	Johnny Theodosiou	South Africa	23	19
66	floppy	Ricky Kemery	United States	22	19
67	Grim	Michael Wince	United States	21	19
68	junior	Paytyn Johnson	United States	21	19
69	FaNg	Justin Coakley	Canada	20	19
70	Jerry	Andrey Mekhryakov	Russia	24	21
71	zorte	Aleksandr Zagodyrenko	Russia	24	21
72	shalfey	Alexandr Marenov	Russia	20	21
73	KENSI	Aleksandr Gurkin	Russia	20	21
74	Norwi	Evgeny Ermolin	Russia	21	21
75	HObbit	Abay Khasenov	Kazakhstan	28	24
76	interz	Timofey Yakushin	Russia	21	24
77	Ax1Le	Sergey Rykhtorov	Russia	20	24
78	sh1ro	Dmitry Sokolov	Russia	20	24
79	nafany	Vladislav Gorshkov	Russia	21	24
80	HEN1	Henrique Teles	Brazil	26	27
81	TACO	Epitacio de Melo	Brazil	27	27
82	dumau	Eduardo Wolkmer	Brazil	18	27
83	b4rtiN	Bruno Câmara	Brazil	20	27
84	latto	Bruno Rebelatto	Brazil	19	27
85	Maluk3	Pedro Campos	Brazil	32	29
86	iDk	Victor Torraca	Brazil	24	29
87	trk	Alencar Rossato	Brazil	26	29
88	pesadelo	Matheus Panisset	Brazil	22	29
89	s1mple	Aleksandr Kostyliev	Ukraine	24	30
90	electroNic	Denis Sharipov	Russia	23	30
91	Perfecto	Ilya Zalutskiy	Russia	22	30
92	b1t	Valeriy Vakhovskiy	Ukraine	19	30
93	raalz	Rasmus Steensborg	Denmark	26	31
94	Spiidi	Timo Richter	Germany	26	31
95	slaxz-	Fritz Dietrich	Germany	23	31
96	Staehr	Victor Staehr	Denmark	17	31
97	lauNX	Laurențiu Țârlea	Romania	17	31
98	Zero	Patrik Žúdel	Slovakia	23	32
99	RuStY	Alfred Karlsson	Sweden	24	32
100	iM	Ivan Mihai	Romania	22	32
101	isak	Isak Fahlén	Sweden	20	32
102	Aerial	Jani Jussila	Finland	29	34
103	xseveN	Sami Laasanen	Finland	27	34
104	sLowi	Olli Pitkänen	Finland	26	34
105	ottoNd	Otto Sihvo	Finland	24	34
106	Sm1llee	Joona Holmström	Finland	19	34
107	Snappi	Marco Pfeiffer	Denmark	32	37
108	Maden	Pavle Bošković	Montenegro	23	37
109	dycha	Paweł Dycha	Poland	24	37
110	hades	Olek Miskiewicz	Poland	22	37
111	Spinx	Lotan Giladi	Israel	21	37
112	cadiaN	Casper Møller	Denmark	26	39
113	stavn	Martin Lund	Denmark	20	39
114	TeSeS	René Madsen	Denmark	21	39
115	sjuush	Rasmus Beck	Denmark	23	39
116	bubble	Kamen Kostadinov	Bulgaria	30	40
117	dream3r	Simeon Ganev	Bulgaria	25	40
118	SHiPZ	Georgi Grigorov	Bulgaria	21	40
119	dennyslaw	Denislav Dimitrov	Bulgaria	22	40
120	Rainwaker	Aleks Petrov	Bulgaria	21	40
121	alex	Alejandro Masanet	Spain	26	42
122	mopoz	Alejandro Fernández-Quejo Cano	Spain	25	42
123	DeathZz	Raúl Jordán Nieto	Spain	26	42
124	SunPayus	Alvaro Garcia	Spain	23	42
125	dav1g	David Granado Bermudo	Spain	21	42
126	CRUC1AL	Joey Steusel	Netherlands	25	43
127	Kjaerbye	Markus Kjærbye	Denmark	24	43
128	MiGHTYMAX	Max Heath	United Kingdom	24	43
129	Surreal	Kia Man	United Kingdom	26	43
130	Nertz	Guy Iluz	Israel	22	43
131	enzero	Ermek Kartanbaev	Kyrgyzstan	23	45
132	FinigaN	Vladislav Usov	Russia	23	45
133	kade0	Aidos Khairzhan	Kazakhstan	22	45
134	fozil	Timofey Komkov	Russia	19	45
135	ICY	Kaisar Faiznurov	Kazakhstan	17	45
136	Noktse	Nicolás Dávila	Argentina	29	46
137	DeStiNy	Lucas Bullo	Brazil	24	46
138	ALLE	Alexandre Santos	Brazil	24	46
139	deco	Marcos Amato	Argentina	24	46
140	Gafolo	Victor Andrade	Brazil	20	46
141	Furlan	Damian Kislowski	Poland	27	47
142	leman	Eryk Kocęba	Poland	25	47
143	AxEcHo	Filip Czajka	Poland	16	47
144	ultimate	Roland Tomkowiak	Poland	18	47
145	chopper	Leonid Vishnyakov	Russia	25	48
146	magixx	Boris Vorobiev	Russia	19	48
147	s1ren	Pavel Ogloblin	Russia	19	48
148	Patsi	Robert Isyanov	Russia	18	48
149	BTN	Cătălin-Ionuț Stănescu	Romania	33	50
150	SEMINTE	Valentin Bodea	Romania	25	50
151	ragga	Cosmin Teodorescu	Romania	22	50
152	Diviiii	Remi Alexandre	France	19	51
153	Graviti	Filip Brankovic	France	18	51
154	ElectuS	Florian Delearde	France	19	51
155	Brooxsy	Hugo Di Bono	France	20	51
156	Neityu	Ryan Aubry	France	16	51
157	Jyo	Rassim Valijev	Estonia	27	52
158	boX	Anton Burko	Belarus	27	52
159	iDISBALANCE	Artem Egorov	Russia	25	52
160	BELCHONOKK	Andrey Yasinskiy	Russia	18	52
161	Chill	Artem Mankevich	Belarus	22	52
162	kiR	Andreas Kirstein	Denmark	21	56
163	kwezz	Oliver Rasmussen	Denmark	21	56
164	Lucky	Philip Ewald	Denmark	19	56
165	IceBerg	Oliver Berg	Denmark	21	56
166	PR1mE	Mathias Carlsen	Denmark	21	56
167	reatz	Paweł Jańczak	Poland	27	57
168	lunAtic	Dawid Cieślak	Poland	29	57
169	TOAO	Mateusz Zawistowski	Poland	25	57
170	SAYN	Adrian Łączyński	Poland	22	57
171	bnox	Bartosz Niebisz	Poland	22	57
172	xenn	Sebastian Hoch	Germany	26	59
173	awzek	Michalis Napoloni	Greece	23	59
174	FreeZe	Lukas Hegmann	Germany	23	59
175	skyye	Tom Hagedorn	Germany	19	59
176	mave	Arthur Derksen	Germany	23	59
\.


--
-- Data for Name: playerstats; Type: TABLE DATA; Schema: public; Owner: zehmrznixzdmyj
--

COPY public.playerstats (playerstats_id, rating, dpr, kast, impact, adr, kpr, kill_count, hs_percentage, death_count, kd_ratio, map_count, player_id) FROM stdin;
1	1.08	0.64	0.728	1.10	79.8	0.73	23727	0.488	20929	1.13	1262	1
2	1.15	0.62	0.745	1.15	83.0	0.77	20502	0.398	16695	1.23	1027	2
3	1.08	0.66	0.731	1.12	79.4	0.75	24108	0.464	21426	1.13	1255	3
4	1.11	0.68	0.717	1.14	79.1	0.73	10287	0.593	9647	1.07	534	4
5	1.20	0.63	0.736	1.24	79.8	0.79	8045	0.397	6463	1.24	385	5
6	1.15	0.59	0.741	1.18	79.2	0.75	17100	0.353	13341	1.28	896	6
7	1.07	0.62	0.737	1.07	78.3	0.70	17579	0.459	15494	1.13	972	7
8	1.14	0.62	0.713	1.21	76.1	0.73	19468	0.351	16646	1.17	1051	8
9	1.19	0.65	0.722	1.25	85.6	0.76	18096	0.424	15462	1.17	940	9
10	1.14	0.63	0.731	1.15	77.7	0.72	17222	0.509	15195	1.13	941	10
11	1.02	0.70	0.685	1.09	79.0	0.71	37114	0.517	36451	1.02	1985	11
12	1.08	0.65	0.716	1.14	77.3	0.73	36988	0.505	32612	1.13	1936	12
13	1.08	0.63	0.727	1.12	79.7	0.72	26430	0.476	23195	1.14	1394	13
14	1.33	0.61	0.749	1.45	88.1	0.85	22298	0.412	16191	1.38	1003	14
15	1.00	0.67	0.705	0.95	68.2	0.63	7396	0.544	7769	0.95	441	15
16	1.09	0.70	0.684	1.28	78.3	0.71	18201	0.346	18092	1.01	989	16
17	1.18	0.64	0.733	1.16	84.3	0.76	19792	0.443	16634	1.19	1003	17
18	1.18	0.58	0.750	1.09	79.3	0.74	17486	0.496	13734	1.27	911	18
19	1.23	0.61	0.736	1.26	80.8	0.80	8118	0.310	6183	1.31	385	19
20	1.01	0.62	0.713	0.91	67.6	0.62	2542	0.539	2560	0.99	159	20
21	1.06	0.65	0.720	1.15	78.0	0.72	16820	0.608	15375	1.09	907	21
22	1.12	0.60	0.740	1.00	76.8	0.70	13267	0.452	11383	1.17	731	22
23	1.08	0.68	0.712	1.10	77.1	0.70	13655	0.551	13215	1.03	742	23
24	1.16	0.64	0.731	1.14	82.4	0.73	8044	0.416	7040	1.14	422	24
25	1.08	0.68	0.699	1.14	75.3	0.70	1545	0.540	1493	1.03	84	25
26	1.02	0.61	0.722	0.97	74.9	0.66	33583	0.416	31252	1.07	1955	26
27	0.98	0.66	0.702	1.05	74.9	0.66	28889	0.465	28749	1.00	1662	27
28	1.08	0.69	0.697	1.20	81.2	0.75	30556	0.558	28061	1.09	1533	28
29	1.11	0.63	0.702	1.13	72.2	0.72	13573	0.335	11780	1.15	702	29
30	1.22	0.61	0.740	1.22	85.5	0.76	17429	0.394	13858	1.26	855	30
31	1.07	0.66	0.695	1.09	75.4	0.73	38675	0.488	34914	1.11	2018	31
32	1.00	0.66	0.714	1.01	71.6	0.67	24342	0.444	23815	1.02	1388	32
33	1.09	0.63	0.733	1.10	81.4	0.73	29808	0.418	25804	1.16	1562	33
34	1.09	0.68	0.712	1.25	83.6	0.76	31669	0.489	28668	1.10	1601	34
35	1.15	0.62	0.731	1.14	76.6	0.74	21020	0.318	17672	1.19	1090	35
36	0.91	0.69	0.669	0.91	68.8	0.62	32711	0.429	36266	0.90	2001	36
37	1.03	0.69	0.699	1.16	79.9	0.71	30038	0.561	29171	1.03	1598	37
38	1.11	0.62	0.738	1.08	76.9	0.73	26218	0.622	22294	1.18	1365	38
39	1.15	0.62	0.724	1.10	78.7	0.74	21918	0.516	18201	1.20	1119	39
40	1.10	0.61	0.725	1.00	72.8	0.70	12713	0.384	11142	1.14	685	40
41	1.01	0.66	0.711	1.07	76.5	0.69	23614	0.355	22796	1.04	1315	41
42	1.03	0.67	0.707	1.11	78.4	0.70	24917	0.496	23574	1.06	1345	42
43	1.01	0.70	0.678	1.15	79.9	0.70	25346	0.405	25103	1.01	1357	43
44	1.12	0.67	0.706	1.18	79.0	0.73	19148	0.525	17613	1.09	990	44
45	1.08	0.66	0.718	1.05	76.6	0.69	18676	0.416	17812	1.05	1017	45
46	1.05	0.70	0.695	1.23	84.8	0.73	37383	0.489	35819	1.04	1933	46
47	0.96	0.66	0.699	0.96	71.2	0.64	29560	0.561	30439	0.97	1750	47
48	1.09	0.63	0.700	1.20	74.3	0.73	33271	0.295	28719	1.16	1715	48
49	1.13	0.65	0.722	1.13	78.6	0.74	26457	0.542	23372	1.13	1342	49
50	1.11	0.65	0.709	1.09	78.3	0.72	6426	0.515	5773	1.11	335	50
51	1.05	0.64	0.713	1.01	76.4	0.70	32847	0.408	29794	1.10	1778	51
52	1.09	0.62	0.708	1.06	71.5	0.71	13582	0.314	11814	1.15	714	52
53	1.15	0.69	0.716	1.21	83.4	0.74	17372	0.553	15990	1.09	883	53
54	1.14	0.63	0.733	1.08	80.3	0.72	9909	0.497	8694	1.14	506	54
55	0.99	0.68	0.705	1.05	73.8	0.67	19379	0.583	19528	0.99	1088	55
56	1.16	0.67	0.711	1.31	86.0	0.80	34507	0.504	28960	1.19	1630	56
57	1.12	0.67	0.721	1.23	84.8	0.77	30002	0.494	25798	1.16	1467	57
58	0.96	0.65	0.712	1.02	74.4	0.64	17495	0.391	17852	0.98	1030	58
59	1.23	0.60	0.736	1.26	80.7	0.78	5241	0.388	4051	1.29	255	59
60	1.09	0.66	0.713	1.19	81.2	0.74	18678	0.487	16683	1.12	978	60
61	1.12	0.65	0.729	1.18	83.1	0.76	23646	0.547	20142	1.17	1190	61
62	1.06	0.67	0.698	1.06	76.3	0.69	8985	0.514	8701	1.03	493	62
63	1.18	0.62	0.712	1.22	78.3	0.78	9392	0.291	7461	1.26	450	63
64	1.03	0.63	0.719	0.91	70.6	0.63	6087	0.486	6021	1.01	357	64
65	1.02	0.67	0.706	1.00	72.2	0.64	17431	0.484	18310	0.95	1050	65
66	1.15	0.66	0.733	1.14	81.5	0.74	15639	0.494	13932	1.12	802	66
67	1.10	0.69	0.716	1.11	78.1	0.72	16612	0.480	15883	1.05	881	67
68	1.10	0.60	0.713	1.07	70.9	0.70	8730	0.293	7450	1.17	474	68
69	1.08	0.68	0.713	1.09	76.5	0.71	11819	0.560	11294	1.05	640	69
70	1.07	0.67	0.709	1.05	76.7	0.68	28441	0.458	28103	1.01	1550	70
71	1.15	0.61	0.723	1.16	74.4	0.73	13709	0.368	11452	1.20	706	71
72	1.10	0.64	0.708	1.08	76.5	0.70	6533	0.469	5916	1.10	348	72
73	1.07	0.63	0.712	1.02	73.4	0.68	9121	0.549	8442	1.08	498	73
74	1.02	0.65	0.705	0.95	71.0	0.65	6264	0.496	6317	0.99	363	74
75	1.07	0.65	0.714	1.13	80.1	0.73	22354	0.465	20114	1.11	1169	75
76	0.99	0.58	0.733	0.80	63.1	0.58	13061	0.499	13200	0.99	852	76
77	1.16	0.63	0.725	1.15	80.4	0.73	18211	0.486	15656	1.16	942	77
78	1.26	0.53	0.763	1.21	78.6	0.77	17761	0.279	12264	1.45	869	78
79	1.04	0.69	0.690	1.10	74.5	0.67	15363	0.511	16019	0.96	870	79
80	1.10	0.58	0.730	1.09	74.8	0.71	20188	0.288	16640	1.21	1101	80
81	0.92	0.65	0.695	0.90	67.4	0.61	22139	0.502	23503	0.94	1402	81
82	1.16	0.62	0.728	1.14	80.2	0.74	8966	0.414	7552	1.19	457	82
83	1.10	0.64	0.729	1.06	74.7	0.71	9990	0.550	9042	1.10	537	83
84	1.11	0.64	0.730	1.07	77.7	0.70	6689	0.462	6077	1.10	361	84
85	1.07	0.65	0.697	1.08	72.4	0.69	18750	0.291	17649	1.06	1050	85
86	1.08	0.67	0.702	1.09	78.2	0.69	15531	0.471	15044	1.03	858	86
87	1.14	0.66	0.737	1.11	79.5	0.73	15529	0.481	14031	1.11	816	87
88	1.03	0.70	0.682	1.05	76.7	0.69	10823	0.446	11084	0.98	602	88
89	1.25	0.64	0.742	1.36	86.5	0.86	35129	0.413	26142	1.34	1554	89
90	1.09	0.66	0.718	1.19	83.0	0.75	25593	0.504	22529	1.14	1301	90
91	1.04	0.60	0.731	0.88	69.8	0.62	11620	0.465	11199	1.04	705	91
92	1.12	0.63	0.722	1.12	76.3	0.71	8269	0.681	7401	1.12	442	92
93	0.97	0.67	0.701	1.00	71.7	0.66	16465	0.580	16804	0.98	923	93
94	0.98	0.65	0.703	0.93	73.7	0.65	35802	0.404	35620	1.01	2069	94
95	1.11	0.62	0.709	1.14	72.8	0.71	17250	0.295	15132	1.14	901	95
96	1.07	0.67	0.694	1.09	77.7	0.69	4151	0.514	4010	1.04	220	96
97	1.09	0.70	0.697	1.12	78.1	0.74	4388	0.576	4164	1.05	224	97
98	1.00	0.64	0.715	0.96	72.0	0.67	19118	0.491	18363	1.04	1072	98
99	1.03	0.67	0.705	0.99	73.4	0.66	23021	0.530	23407	0.98	1289	99
100	1.11	0.70	0.698	1.17	82.2	0.74	15214	0.487	14387	1.06	768	100
101	1.03	0.66	0.700	0.98	73.3	0.66	10437	0.501	10462	1.00	587	101
102	1.11	0.67	0.725	1.13	78.5	0.72	17911	0.416	16694	1.07	943	102
103	1.00	0.67	0.708	1.06	78.7	0.68	22799	0.462	22439	1.02	1275	103
104	1.02	0.67	0.690	1.11	76.4	0.69	20929	0.516	20095	1.04	1121	104
105	1.15	0.62	0.715	1.17	76.2	0.74	16712	0.269	14070	1.19	855	105
106	1.00	0.66	0.684	0.94	71.0	0.65	2975	0.514	2994	0.99	170	106
107	0.96	0.67	0.695	0.96	72.8	0.65	27163	0.456	28065	0.97	1578	107
108	1.08	0.70	0.685	1.17	79.7	0.72	13238	0.510	12847	1.03	686	108
109	1.12	0.67	0.705	1.16	81.3	0.73	15628	0.537	14364	1.09	800	109
110	1.12	0.62	0.708	1.11	74.0	0.73	11571	0.298	9851	1.17	589	110
111	1.13	0.65	0.711	1.13	78.8	0.74	8412	0.563	7393	1.14	429	111
112	1.04	0.63	0.705	1.12	73.3	0.69	26944	0.276	24402	1.10	1467	112
113	1.12	0.68	0.706	1.14	81.1	0.73	21593	0.430	20120	1.07	1112	113
114	1.11	0.67	0.713	1.12	78.5	0.72	15807	0.553	14771	1.07	824	114
115	1.09	0.64	0.723	1.04	75.8	0.69	14835	0.525	13877	1.07	817	115
116	0.99	0.66	0.708	1.02	74.1	0.67	38394	0.416	37790	1.02	2198	116
117	1.12	0.62	0.732	1.06	77.1	0.74	24550	0.497	20317	1.21	1262	117
118	1.10	0.69	0.704	1.14	79.4	0.74	32954	0.500	30799	1.07	1674	118
119	1.12	0.64	0.709	1.14	74.9	0.73	22648	0.314	19788	1.14	1152	119
120	1.10	0.63	0.724	1.05	77.2	0.70	20805	0.425	18898	1.10	1106	120
121	1.03	0.65	0.713	1.07	76.5	0.70	23532	0.458	22111	1.06	1278	121
122	1.00	0.68	0.690	1.10	75.7	0.68	20236	0.515	20273	1.00	1121	122
123	1.03	0.66	0.702	0.94	74.3	0.66	8789	0.496	8693	1.01	496	123
124	1.16	0.60	0.718	1.18	75.0	0.73	5734	0.296	4720	1.21	294	124
125	0.92	0.67	0.676	0.87	65.4	0.56	3860	0.463	4643	0.83	259	125
126	1.07	0.65	0.701	1.15	73.7	0.72	27689	0.290	24873	1.11	1465	126
127	1.04	0.66	0.701	1.10	78.6	0.71	28484	0.529	26369	1.08	1523	127
128	0.90	0.65	0.696	0.87	66.4	0.59	18238	0.492	20245	0.90	1167	128
129	0.96	0.67	0.697	1.01	72.3	0.66	25947	0.436	26675	0.97	1511	129
130	1.09	0.71	0.682	1.27	85.4	0.77	4287	0.512	3944	1.09	209	130
131	0.99	0.69	0.711	0.92	72.2	0.62	1004	0.469	1123	0.89	59	131
132	1.03	0.63	0.714	0.94	70.0	0.64	8586	0.505	8494	1.01	499	132
133	0.95	0.66	0.676	0.85	66.7	0.61	5209	0.545	5697	0.91	317	133
134	1.11	0.68	0.701	1.16	79.5	0.73	1112	0.549	1037	1.07	55	134
135	1.05	0.62	0.717	0.98	68.1	0.67	829	0.314	773	1.07	45	135
136	1.06	0.66	0.687	1.09	74.2	0.67	13710	0.395	13486	1.02	779	136
137	1.02	0.70	0.705	1.18	78.5	0.72	19663	0.508	19201	1.02	1055	137
138	1.07	0.67	0.707	1.06	77.2	0.68	7481	0.495	7379	1.01	413	138
139	1.07	0.67	0.711	1.05	77.3	0.68	6577	0.491	6489	1.01	361	139
140	1.06	0.63	0.687	1.03	70.4	0.70	3180	0.286	2864	1.11	167	140
141	0.98	0.69	0.694	1.09	76.2	0.68	37680	0.530	38319	0.98	2090	141
142	0.98	0.67	0.703	0.97	72.4	0.66	8864	0.515	8992	0.99	498	142
143	1.00	0.63	0.702	0.87	68.5	0.64	902	0.463	882	1.02	51	143
144	0.98	0.66	0.686	0.93	64.6	0.65	1089	0.339	1106	0.98	60	144
145	0.96	0.67	0.699	1.00	72.1	0.65	18854	0.574	19265	0.98	1091	145
146	1.05	0.63	0.716	0.98	70.4	0.65	10773	0.574	10467	1.03	626	146
147	1.04	0.66	0.712	0.98	72.4	0.66	3209	0.502	3216	1.00	181	147
148	1.09	0.69	0.696	1.14	78.9	0.71	9612	0.450	9317	1.03	504	148
149	0.91	0.71	0.679	0.95	73.2	0.64	17680	0.539	19706	0.90	1055	149
150	0.96	0.68	0.679	0.97	72.1	0.66	11464	0.493	11911	0.96	665	150
151	1.04	0.69	0.677	1.07	74.4	0.69	6146	0.410	6125	1.00	332	151
152	0.99	0.71	0.661	1.09	69.3	0.66	606	0.279	651	0.93	35	152
153	1.14	0.72	0.671	1.35	82.2	0.78	274	0.438	255	1.07	12	153
154	0.91	0.69	0.720	0.70	64.5	0.58	203	0.606	242	0.84	12	154
155	0.95	0.68	0.660	0.91	71.5	0.62	165	0.564	183	0.90	9	155
156	0.79	0.70	0.659	0.59	58.0	0.48	156	0.538	230	0.68	11	156
157	1.07	0.65	0.716	1.04	74.8	0.68	21348	0.407	20348	1.05	1170	157
158	1.04	0.69	0.691	1.10	75.2	0.65	21604	0.437	22900	0.94	1253	158
159	1.13	0.62	0.718	1.13	74.1	0.72	16389	0.270	14306	1.15	863	159
160	0.96	0.71	0.667	0.98	72.2	0.62	1776	0.471	2015	0.88	111	160
161	0.96	0.67	0.665	0.91	69.7	0.63	1093	0.518	1161	0.94	65	161
162	0.98	0.71	0.667	0.99	71.4	0.65	9924	0.615	10887	0.91	569	162
163	1.01	0.66	0.684	0.93	72.4	0.65	10692	0.553	10827	0.99	610	163
164	1.07	0.63	0.698	1.05	70.8	0.69	8220	0.405	7542	1.09	441	164
165	0.95	0.75	0.657	1.00	71.5	0.64	6196	0.546	7270	0.85	365	165
166	0.98	0.69	0.668	0.99	71.5	0.66	7249	0.549	7649	0.95	407	166
167	1.01	0.67	0.706	0.99	74.0	0.69	27945	0.516	27212	1.03	1510	167
168	0.90	0.68	0.681	0.89	67.9	0.61	14642	0.388	16371	0.89	884	168
169	0.99	0.67	0.682	0.96	69.7	0.63	18722	0.480	19783	0.95	1106	169
170	0.94	0.69	0.649	0.93	66.7	0.65	1215	0.333	1302	0.93	71	170
171	1.00	0.69	0.676	1.00	73.9	0.65	3878	0.531	4091	0.95	218	171
172	0.91	0.67	0.687	0.76	63.3	0.62	2971	0.479	3246	0.92	180	172
173	1.11	0.71	0.707	1.17	82.9	0.73	2040	0.542	1969	1.04	105	173
174	0.91	0.70	0.674	0.83	68.2	0.57	1602	0.446	1956	0.82	104	174
175	1.04	0.69	0.690	1.06	73.9	0.69	2199	0.559	2211	0.99	120	175
176	1.03	0.65	0.670	1.06	69.2	0.68	1736	0.342	1673	1.04	95	176
\.


--
-- Data for Name: team; Type: TABLE DATA; Schema: public; Owner: zehmrznixzdmyj
--

COPY public.team (team_id, name, country, rank, coach) FROM stdin;
1	TYLOO	China	68	LETN1
2	Renegades	Australia	\N	\N
3	ORDER	Australia	40	Kingfisher
4	ViCi	China	\N	\N
5	Vitality	France	10	zonic
6	Space Soldiers	Turkey	\N	\N
7	FURIA	Brazil	6	guerri
8	MIBR	Brazil	23	BIT
9	Astralis	Denmark	12	trace
10	Liquid	United States	13	adreN
11	FaZe	Europe	1	RobbaN
12	North	Denmark	\N	\N
13	NIP	Sweden	5	djL
14	HellRaisers	Europe	\N	liTTle
15	BIG	Germany	11	gob b
16	fnatic	Europe	34	keita
17	G2	Europe	8	XTQZZZ
18	MOUZ	Europe	16	sycrone
19	Complexity	United States	29	T.c
20	Dignitas	Sweden	28	\N
21	forZe	Russia	20	Fierce
22	Kinguin	Poland	\N	\N
23	Luminosity	Brazil	\N	\N
24	Cloud9	Russia	4	groove
25	Chiefs	Australia	\N	\N
26	FlipSid3	Ukraine	\N	\N
27	GODSENT	Brazil	26	chucky
28	SK	Brazil	\N	\N
29	TeamOne	Brazil	65	jun
30	Natus Vincere	Ukraine	3	B1ad3
31	Sprout	Europe	30	BERRY
32	GamerLegion	Europe	54	ash
33	Singularity	Denmark	\N	\N
34	HAVU	Finland	121	\N
35	Virtus.pro	Kazakhstan	\N	\N
36	OpTic	Denmark	\N	\N
37	ENCE	Europe	2	sAw
38	Envy	United States	\N	\N
39	Heroic	Denmark	7	Xizt
40	SKADE	Bulgaria	32	\N
41	Epsilon	Europe	\N	\N
42	Movistar Riders	Spain	17	bladE
43	Endpoint	Europe	39	Rejin
44	NRG	United States	\N	\N
45	AVANGAR	CIS	91	malinger
46	Isurus	Brazil	52	pino
47	AGO	Poland	53	miNirox
48	Spirit	Russia	9	hally
49	PENTA	Germany	\N	\N
50	Nexus	Romania	100	\N
51	LDLC	France	143	Lambert
52	Nemiga	CIS	84	keep3r
53	Gambit	Russia	\N	\N
54	SJ	Finland	\N	\N
55	Copenhagen Flames	Denmark	\N	\N
56	Tricked	Denmark	75	Winspai
57	PACT	Poland	79	vinS
58	Izako Boars	Poland	\N	\N
59	ALTERNATE aTTaX	Germany	133	\N
\.


--
-- Data for Name: teamstats; Type: TABLE DATA; Schema: public; Owner: zehmrznixzdmyj
--

COPY public.teamstats (teamstats_id, win_count, draw_count, lose_count, kill_count, death_count, kd_ratio, team_id) FROM stdin;
1	851	1	423	119278	107551	1.11	1
2	630	0	436	95413	90771	1.05	2
3	587	0	280	79645	69927	1.14	3
4	478	0	253	67063	61302	1.09	4
5	488	2	294	70359	66844	1.05	5
6	498	1	305	74000	67992	1.09	6
7	592	3	352	85513	78531	1.09	7
8	408	8	351	68566	65519	1.05	8
9	845	2	452	118575	108166	1.10	9
10	955	1	646	144955	136453	1.06	10
11	728	5	558	116789	111766	1.04	11
12	453	2	367	73594	72366	1.02	12
13	1228	13	827	185714	173915	1.07	13
14	938	6	857	162120	158721	1.02	14
15	669	2	538	108817	106622	1.02	15
16	1109	8	759	171230	163460	1.05	16
17	862	1	709	143098	139145	1.03	17
18	1089	5	825	173224	166017	1.04	18
19	683	2	678	121851	120670	1.01	19
20	810	0	674	133830	131403	1.02	20
21	875	1	604	137868	128889	1.07	21
22	491	0	368	79310	74085	1.07	22
23	492	0	396	79540	76189	1.04	23
24	790	3	573	122735	117213	1.05	24
25	637	2	380	92460	85455	1.08	25
26	369	0	422	69204	70861	0.98	26
27	529	0	467	89269	87629	1.02	27
28	529	0	370	81808	76327	1.07	28
29	575	0	475	94154	91254	1.03	29
30	1128	16	741	173769	161887	1.07	30
31	769	0	583	123166	118421	1.04	31
32	401	0	371	70695	69747	1.01	32
33	493	0	493	87725	87406	1.00	33
34	745	0	517	114930	109764	1.05	34
35	1087	12	936	182659	178907	1.02	35
36	469	0	374	74893	72369	1.03	36
37	606	6	454	96148	93985	1.02	37
38	627	1	553	106192	104250	1.02	38
39	739	0	567	118184	113698	1.04	39
40	620	0	448	97424	95241	1.02	40
41	518	0	419	84041	81250	1.03	41
42	565	0	484	93785	91988	1.02	42
43	555	0	507	94335	93977	1.00	43
44	447	1	325	69290	66173	1.05	44
45	488	0	289	70792	64504	1.10	45
46	439	0	296	66039	64495	1.02	46
47	832	0	694	138977	136063	1.02	47
48	789	0	579	123060	117445	1.05	48
49	356	0	376	65141	65874	0.99	49
50	508	0	467	88257	87587	1.01	50
51	798	4	696	134775	132276	1.02	51
52	659	2	609	114707	111977	1.02	52
53	609	0	415	93182	88200	1.06	53
54	340	0	408	66262	67736	0.98	54
55	603	0	486	98185	95780	1.03	55
56	846	0	725	139649	138201	1.01	56
57	397	0	457	77090	79280	0.97	57
58	349	0	383	65203	67604	0.96	58
59	838	4	824	148057	147590	1.00	59
\.


--
-- Name: player_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zehmrznixzdmyj
--

SELECT pg_catalog.setval('public.player_player_id_seq', 176, true);


--
-- Name: playerstats_playerstats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zehmrznixzdmyj
--

SELECT pg_catalog.setval('public.playerstats_playerstats_id_seq', 176, true);


--
-- Name: team_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zehmrznixzdmyj
--

SELECT pg_catalog.setval('public.team_team_id_seq', 59, true);


--
-- Name: teamstats_teamstats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zehmrznixzdmyj
--

SELECT pg_catalog.setval('public.teamstats_teamstats_id_seq', 59, true);


--
-- Name: player player_pkey; Type: CONSTRAINT; Schema: public; Owner: zehmrznixzdmyj
--

ALTER TABLE ONLY public.player
    ADD CONSTRAINT player_pkey PRIMARY KEY (player_id);


--
-- Name: playerstats playerstats_pkey; Type: CONSTRAINT; Schema: public; Owner: zehmrznixzdmyj
--

ALTER TABLE ONLY public.playerstats
    ADD CONSTRAINT playerstats_pkey PRIMARY KEY (playerstats_id);


--
-- Name: team team_pkey; Type: CONSTRAINT; Schema: public; Owner: zehmrznixzdmyj
--

ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_pkey PRIMARY KEY (team_id);


--
-- Name: teamstats teamstats_pkey; Type: CONSTRAINT; Schema: public; Owner: zehmrznixzdmyj
--

ALTER TABLE ONLY public.teamstats
    ADD CONSTRAINT teamstats_pkey PRIMARY KEY (teamstats_id);


--
-- Name: player fk_player_team; Type: FK CONSTRAINT; Schema: public; Owner: zehmrznixzdmyj
--

ALTER TABLE ONLY public.player
    ADD CONSTRAINT fk_player_team FOREIGN KEY (team_id) REFERENCES public.team(team_id);


--
-- Name: playerstats fk_playerstats_player; Type: FK CONSTRAINT; Schema: public; Owner: zehmrznixzdmyj
--

ALTER TABLE ONLY public.playerstats
    ADD CONSTRAINT fk_playerstats_player FOREIGN KEY (player_id) REFERENCES public.player(player_id);


--
-- Name: teamstats fk_teamstats_team; Type: FK CONSTRAINT; Schema: public; Owner: zehmrznixzdmyj
--

ALTER TABLE ONLY public.teamstats
    ADD CONSTRAINT fk_teamstats_team FOREIGN KEY (team_id) REFERENCES public.team(team_id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: zehmrznixzdmyj
--

REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO zehmrznixzdmyj;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO zehmrznixzdmyj;


--
-- PostgreSQL database dump complete
--

