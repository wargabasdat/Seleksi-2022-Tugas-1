--
-- PostgreSQL database dump
--

-- Dumped from database version 13.7
-- Dumped by pg_dump version 13.7

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
-- Name: build_up_play; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.build_up_play (
    build_up_play_id integer NOT NULL,
    build_up_play_name character varying(100)
);


ALTER TABLE public.build_up_play OWNER TO postgres;

--
-- Name: captain; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.captain (
    captain_id integer NOT NULL,
    captain_name character varying(100)
);


ALTER TABLE public.captain OWNER TO postgres;

--
-- Name: chance_creation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.chance_creation (
    chance_creation_id integer NOT NULL,
    chance_creation_name character varying(100)
);


ALTER TABLE public.chance_creation OWNER TO postgres;

--
-- Name: club; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.club (
    club_id integer NOT NULL,
    club_name character varying(100),
    overall integer,
    attack integer,
    midfield integer,
    defense integer,
    transfer_budget character varying(10),
    number_of_players integer,
    defense_width integer,
    defense_depth integer,
    offense_width integer,
    offense_player_in_box integer,
    corner_player_in_box integer,
    free_kick_player_in_box integer,
    club_worth character varying(10),
    average_age numeric,
    league_id integer,
    home_stadium_id integer,
    captain_id integer,
    defensive_style_id integer,
    build_up_play_id integer,
    chance_creation_id integer,
    rival_club_id integer
);


ALTER TABLE public.club OWNER TO postgres;

--
-- Name: coach; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.coach (
    coach_id integer NOT NULL,
    coach_name character varying(100),
    birth_date date,
    club_id integer
);


ALTER TABLE public.coach OWNER TO postgres;

--
-- Name: defensive_style; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.defensive_style (
    defensive_style_id integer NOT NULL,
    defensive_style_name character varying(100)
);


ALTER TABLE public.defensive_style OWNER TO postgres;

--
-- Name: league; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.league (
    league_id integer NOT NULL,
    league_name character varying(100)
);


ALTER TABLE public.league OWNER TO postgres;

--
-- Name: stadium; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stadium (
    stadium_id integer NOT NULL,
    stadium_name character varying(100)
);


ALTER TABLE public.stadium OWNER TO postgres;

--
-- Data for Name: build_up_play; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.build_up_play (build_up_play_id, build_up_play_name) FROM stdin;
1	Slow Build Up
2	Fast Build Up
3	Long Ball
4	Balanced
5	Possession
\.


--
-- Data for Name: captain; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.captain (captain_id, captain_name) FROM stdin;
1	J. Henderson
2	Rúben Dias
3	Marquinhos
4	Azpilicueta
5	M. Neuer
6	K. Benzema
7	Bruno Fernandes
8	Koke
9	Sergio Busquets
10	S. Handanovič
11	G. Chiellini
12	H. Lloris
13	M. Reus
14	D. Calabria
15	Jesús Navas
16	M. Ødegaard
17	Rafael Tolói
18	P. Gulácsi
19	L. Insigne
20	K. Schmeichel
21	Oyarzabal
22	Raúl Albiol
23	D. Rice
24	L. Hrádecký
25	C. Immobile
26	L. Pellegrini
27	Muniain
28	A. Guardado
29	S. Coates
30	D. Tadić
31	T. Mings
32	S. Coleman
33	Y. Sommer
34	A. Lopes
35	C. Coady
36	D. Payet
37	N. Otamendi
38	Pepe
39	J. Shelvey
40	S. Rode
41	O. Baumann
42	W. Ben Yedder
43	H. Traoré
44	K. Casteels
45	Diego López
46	Gayà
47	Víctor Díaz
48	C. Gakpo
49	J. Tarkowski
50	M. Guéhi
51	L. Cooper
52	L. Dunk
53	J. Ward-Prowse
54	A. Bouchalakis
55	C. Biraghi
56	Morales
57	José Fonte
58	D. Djené
59	Dante
60	Iago Aspas
61	David García
62	O. Kúdela
63	C. Günter
64	J. Hector
65	F. Quagliarella
66	Bremer
67	S. Fofana
68	T. Savanier
69	A. Bayındır
70	D. Liénard
71	D. Berardi
72	Salvi Sánchez
73	U. Çakır
74	L. De Silvestri
75	Miguel Veloso
76	Laguardia
77	S. Mignolet
78	M. Senesi
79	M. Sissoko
80	A. Hložek
81	W. Endo
82	R. Pereyra
83	N. Dorsch
84	F. Muslera
85	A. Lafont
86	N. Uysal
87	J. Tavernier
88	Ricardo Horta
89	P. Jansson
90	T. Cairney
91	D. Boyata
92	M. Niakhaté
93	A. Pyatov
94	Dani Rodríguez
95	Edgar Badia
96	Ó. Trejo
97	G. Hanley
98	B. Sharp
99	P. Mantalos
100	W. Khazri
101	C. Trimmel
102	João Pedro
103	J. Guilavogui
104	De La Hoz
105	C. McGregor
106	O. Wijndal
107	B. Chardonnet
108	Y. Abdelhamid
109	L. Hejda
110	A. Paschalakis
111	M. Tekdemir
112	L. Kelly
113	S. Sydorchuk
114	A. Ulmer
115	Jordi Masip
116	A. Ademi
117	Arbilla
118	D. Criscito
119	I. Traoré
120	L. Biglia
121	Ö. Toprak
122	A. Rami
123	N. Boilesen
124	D. Bronn
125	B. Schenkeveld
126	M. Prietl
127	A. Losilla
128	B. Heynen
129	S. Kums
130	P. Ceccaroni
131	S. Romagnoli
132	H. Van Crombrugge
133	R. De Laet
134	C. Stuani
135	D. Lenihan
136	J. Worrall
137	S. Johansen
138	F. Ogier
139	S. Schonlau
140	D. Latza
141	F. Ribéry
142	D. Dibusz
143	Rochinha
144	J. Livermore
145	V. Stocker
146	F. Lustenberger
147	G. Maggiore
148	G. İnler
149	B. Hrgota
150	L. Abergel
151	T. Teuma
152	V. Sarı
153	E. Sviatchenko
154	E. Karaca
155	M. Morrison
156	Aitor Sanz
157	L. Kalinić
158	K. McFadzean
159	A. Browne
160	J. Howson
161	J. Allen
162	Recio
163	Joãozinho
164	A. Hoffmann
165	Pedro Sá
166	G. Buffon
167	A. Christiansen
168	Rúben Fernandes
169	J. Cooper
170	Marco Baixinho
171	Zainadine
172	M. Ishak
173	Bracali
174	W. Janssen
175	D. Doekhi
176	L. O`Brien
177	G. Letizia
178	S. Lung
179	H. Akbunar
180	M. Diouf
181	M. Grimes
182	Riccieli
183	C. Mathenia
184	G. Akkan
185	H. Arslan
186	G. Güvenç
187	M. Sampirisi
188	J. Babin
189	Jonathan Viera
190	R. Donk
191	Marc Martínez
192	Zapater
193	Andrés Fernández
194	J. Gondorf
195	R. Schallenberg
196	B. Touré
197	Lombán
198	Germán Parreño
199	M. Roberts
200	F. Lucioni
201	L. Rosić
202	R. Pröpper
203	B. Rienstra
204	D. Bentley
205	K. Naismith
206	P. Mainka
207	R. Schoofs
208	Pedro Augusto
209	F. Tănase
210	L. De Bock
211	M. Ilaimaharitra
212	Lincoln
213	F. Holland
214	J. Ralls
215	I. Šehić
216	K. Scherpen
217	Samu
218	S. Hierländer
219	A. Briançon
220	Camora
221	D. Kaiser
222	Ríos Reina
223	N. Dussenne
224	Lucas Ahijado
225	X. Mercier
226	P. Ziereis
227	A. Schlager
228	B. Dejaegere
229	M. Pavlović
230	M. Kolke
231	B. Gimber
232	G. Kvilitaia
233	N. Bancu
234	R. Thelander
235	A. Mühling
236	J. Frick
237	A. Jędrzejczyk
238	C. Gordon
239	T. Lawrence
240	Yohan Tavares
241	D. Diekmeier
242	L. Schøne
243	Y. Brecher
244	C. Gentner
245	Thales
246	C. Woodrow
247	C. Pinares
248	U. Saltnes
249	R. Smallwood
250	T. Leistner
251	S. Larsson
252	O. Kanté
253	J. Deminguet
254	T. Didillon
255	Jordi Amat
256	D. Congré
257	Xavi Torres
258	K. D`Haene
259	M. Diarra
260	F. Stojković
261	M. Suttner
262	M. Ihiekwe
263	A. Maxsø
264	P. Mortensen
265	B. Bannan
266	B. Kuipers
267	J. Blaswich
268	A. Auassar
269	M. Henriksen
270	J. Sabbatini
271	D. Schmid
272	Saúl Berjón
273	G. Courtet
274	Pol Llonch
275	J. Cuffaut
276	E. Mulder
277	M. de Leeuw
278	T. Darikwa
279	C. Maxwell
280	S. Kutschke
281	O. Norburn
282	A. Niewulis
283	D. Dąbrowski
284	M. Eikrem
285	M. Vanhamel
286	K. Fickentscher
287	D. Bojanić
288	M. Eriksson
289	A. Bonnet
290	M. Liendl
291	Cristóbal
292	Raúl Lizoain
293	T. Knipping
294	D. Nazarov
295	B. Maubleu
296	H. Zuck
297	V. Berisha
298	G. Kilota
299	Y. M`Changama
300	S. Kukuruzović
301	J. Lewis
302	P. Hanlon
303	S. Morsy
304	C. Evans
305	E. Özbir
306	M. Meulensteen
307	Roberto López
308	B. van Polen
309	L. Görtler
310	E. Schouten
311	J. Edwards
312	J. Jacobson
313	M. Festa
314	I. Näsberg
315	T. Romanczuk
316	J. Fejzić
317	J. Larsson
318	C. Nyman
319	Iker Seguín
320	G. Weissbeck
321	J. Czerwiński
322	Flávio Paixão
323	V. Hammershøy-Mistrati
324	I. Larie
325	S. Raggett
326	Ricardo Santos
327	D. Lewington
328	N. Helenius
329	J. Thomasen
330	D. Louiserre
331	G. Tamaș
332	G. Lefebvre
333	S. Lex
334	G. Åsen
335	R. Boissier
336	C. Săpunaru
337	D. Kolinger
338	C. Vincent
339	M. Berg
340	M. Frydrych
341	L. Kelly
342	J. Pearce
343	S. Hanca
344	S. Balić
345	F. Iacob
346	C. Brannagan
347	P. Wiśniewski
348	M. Tchokounté
349	R. Edwards
350	F. Oswald
351	M. Seegert
352	S. Gustafson
353	Laure
354	R. Swete
355	B. Mitrea
356	M. Heider
357	S. Mockenhaupt
358	Leândro
359	A. Batisse
360	K. Mączyński
361	K. Gkezos
362	K. Hansen
363	T. Müller
364	J. Brinkies
365	B. Diallo
366	L. Tankulić
367	M. Zeitz
368	M. Ziegl
369	J. Rzeźniczak
370	T. Björkström
371	A. Coly
372	M. Risse
373	B. Utvik
374	K. Getinger
375	N. Devlin
376	H. Bonmann
377	J. Baldwin
378	P. Wlazło
379	E. Ebanks-Landell
380	J. Kiełb
381	A. Cairns
382	J. Nietfeld
383	C. McGrandles
384	I. Șerban
385	P. Digby
386	G. Valsvik
387	O. Berg
388	E. Papa
389	E. Schreiner
390	J. Grønning
391	M. Dal Hende
392	J. Brayford
393	R. Padovani
394	S. Hagen
395	C. Adam
396	L. Gordon
397	J. Shaughnessy
398	A. Leitner
399	M. Tenho
400	S. McConville
401	D. Florea
402	J. Lowe
403	S. O`Keefe
404	P. O`Connor
405	M. Stoppelkamp
406	J. Matt
407	R. Finn
408	F. Pfanne
409	A. Wildig
410	C. Menz
411	M. Demetriou
412	W. Nightingale
413	T. Pett
414	F. Horsfall
415	T. Rowe
416	D. Conroy
417	W. Boyle
418	S. McLaughlin
419	S. Wangberg
420	A. Răuță
421	S. Nilsen
422	L. Young
423	R. Jenssen
424	M. Corboz
425	P. Coutts
426	K. Krygård
427	M. Gostomski
428	H. White
429	T. Nichols
430	O. Stanisic
431	T. Fölster
432	W. Burrell
433	S. Braun-Schumacher
434	L. Offord
435	M. Jay
436	T. Smith
437	E. O`Connell
438	D. Pratley
439	K. Walker
440	P. Clarke
441	D. Löfquist
442	H. Singh
443	S. von Kogelsberg
444	B. Rusu
445	J. Bertilsson
446	A. Keita
447	A. Johansson
448	S. Cuthbert
449	J. Rooney
450	C. Piergianni
451	N. Featherstone
452	C. Forrester
453	C. Guy
454	C. Eastmond
455	M. Nakkim
456	J. Talbot
457	G. Buckley
458	A. Boyle
459	L. Feeney
460	E. Toal
461	M. Holzmann
462	B. McNamee
463	G. Deegan
464	N. O`Keeffe
465	P. Matricardi
466	D. Zambra
\.


--
-- Data for Name: chance_creation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.chance_creation (chance_creation_id, chance_creation_name) FROM stdin;
1	Possession
2	Forward Runs
3	Direct Passing
4	Balanced
\.


--
-- Data for Name: club; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.club (club_id, club_name, overall, attack, midfield, defense, transfer_budget, number_of_players, defense_width, defense_depth, offense_width, offense_player_in_box, corner_player_in_box, free_kick_player_in_box, club_worth, average_age, league_id, home_stadium_id, captain_id, defensive_style_id, build_up_play_id, chance_creation_id, rival_club_id) FROM stdin;
1	Liverpool	85	86	84	85	€95M	33	60	70	70	6	3	3	€3.5B	24.82	1	2	1	4	1	1	7
2	Manchester City	85	84	87	86	€176M	32	70	80	70	7	3	3	€3.4B	23.81	1	42	2	3	1	1	7
3	Paris Saint-Germain	85	89	82	84	€160M	32	60	70	50	8	3	3	€2.2B	25.47	2	69	3	4	1	1	36
4	Chelsea	84	84	85	83	€85M	33	60	70	60	6	3	3	€2.7B	24.39	1	93	4	2	1	1	16
5	FC Bayern München	84	92	85	82	€100M	31	40	80	80	8	3	3	€2.6B	24.84	3	78	5	3	1	1	13
6	Real Madrid CF	84	84	86	83	€150M	33	50	70	50	6	3	3	€3.1B	24.97	5	33	6	2	4	4	9
7	Manchester United	83	82	83	81	€175M	33	40	60	70	4	3	3	€3.5B	24.82	1	65	7	3	1	1	1
8	Atlético de Madrid	83	84	82	82	€68.6M	33	60	60	50	3	3	3	€1.2B	25.06	5	110	8	3	4	4	6
9	FC Barcelona	83	83	85	81	€130M	33	60	80	30	7	3	3	€3.2B	24.33	5	21	9	2	1	1	6
10	Inter	82	82	82	83	€99.5M	25	50	60	50	4	3	3	€983M	29.16	4	77	10	2	2	2	14
11	Juventus	82	81	82	83	€105M	27	50	40	60	3	3	3	€1.7B	25.48	4	109	11	2	3	3	10
12	Tottenham Hotspur	81	83	81	78	€72.5M	33	60	40	50	4	3	3	€2.3B	22.88	1	98	12	1	4	4	16
13	Borussia Dortmund	81	83	81	81	€60M	33	50	80	40	5	3	3	€1.2B	23.58	3	81	13	3	2	2	5
14	AC Milan	81	81	80	80	€37M	28	50	60	50	8	3	3	€526M	25.64	4	77	14	2	2	2	10
15	Sevilla FC	81	81	81	83	€34.5M	33	70	70	80	8	3	3	€540M	25.61	5	72	15	3	1	1	28
16	Arsenal	80	77	80	77	€77.5M	33	50	40	60	5	3	3	€2.4B	21.76	1	23	16	2	4	4	12
17	Atalanta	80	82	79	78	€20M	28	50	80	60	5	3	3	€200M	25.46	4	85	17	2	2	2	14
18	RB Leipzig	80	82	81	79	€50M	33	50	80	30	6	3	3	€481.2M	22.39	3	74	18	4	4	4	13
19	Napoli	80	82	80	77	€56M	24	60	60	70	8	3	3	€590M	26.79	4	91	19	2	1	1	11
20	Leicester City	80	80	80	78	€50M	31	50	50	60	4	3	3	€562.5M	25.39	1	52	20	2	1	1	136
21	Real Sociedad	80	81	81	78	€15.8M	25	40	50	60	6	3	3	€150M	25.92	5	73	21	2	1	1	27
22	Villarreal CF	80	81	79	79	€32.9M	33	60	50	60	5	3	3	€370M	26.06	5	38	22	2	4	4	46
23	West Ham United	79	80	78	78	€35M	33	50	50	70	4	3	3	€565M	25.48	1	55	23	1	2	2	169
24	Bayer 04 Leverkusen	79	83	79	78	€39M	29	50	70	70	6	3	3	€425.8M	23.48	3	7	24	4	2	2	64
25	Lazio	79	79	80	79	€39.6M	25	60	60	70	3	3	3	€328M	27.0	4	91	25	4	1	1	26
26	Roma	79	79	79	78	€46M	32	40	40	60	4	3	3	€602M	23.56	4	91	26	2	4	4	25
27	Athletic Club de Bilbao	79	78	77	79	€18.5M	31	50	50	70	4	3	3	€250M	24.81	5	32	27	2	2	2	21
28	Real Betis Balompié	79	80	79	78	€16.1M	33	60	70	60	7	3	3	€175M	26.91	5	25	28	4	1	1	15
29	Sporting CP	79	79	80	78	€21.6M	27	50	50	60	5	3	3	€220M	24.44	40	109	29	3	3	3	37
30	Ajax	79	82	77	80	€34.4M	30	60	80	80	8	3	3	€532M	24.0	28	51	30	3	1	1	78
31	Aston Villa	78	79	78	79	€37.5M	33	50	60	50	5	3	3	€420.5M	22.82	1	103	31	2	4	4	144
32	Everton	78	78	78	77	€49M	33	50	50	60	3	3	3	€572.5M	25.55	1	47	32	2	4	4	1
33	Borussia Mönchengladbach	78	78	77	79	€25M	32	60	60	60	7	3	3	€357.9M	23.88	3	6	33	3	4	4	64
34	Olympique Lyonnais	78	77	78	76	€50M	31	50	50	50	5	3	3	€500M	23.19	2	48	34	3	1	1	100
35	Wolverhampton Wanderers	78	78	80	78	€45M	33	60	50	60	3	3	3	€416.5M	23.58	1	59	35	2	4	4	144
36	Olympique de Marseille	78	79	77	77	€14M	33	50	70	60	8	3	3	€250M	22.76	2	68	36	2	1	1	3
37	SL Benfica	78	76	78	80	€29.3M	30	40	50	50	6	3	3	€320M	25.3	40	40	37	3	1	1	38
38	FC Porto	78	78	77	77	€20M	30	50	60	50	6	3	3	€240M	24.8	40	41	38	4	4	4	37
39	Newcastle United	77	78	77	77	€30M	33	50	50	60	4	3	3	€505M	26.3	1	82	39	2	4	4	304
40	Eintracht Frankfurt	77	77	77	76	€25M	32	60	50	60	5	3	3	€256.8M	24.16	3	16	40	2	2	2	92
41	TSG Hoffenheim	77	78	76	76	€28M	33	50	50	60	8	3	3	€331.1M	24.15	3	70	41	2	1	1	81
42	AS Monaco	77	83	78	77	€26.1M	29	50	50	50	4	3	3	€230M	23.55	2	43	42	3	1	1	59
43	Stade Rennais FC	77	78	77	76	€14M	27	50	50	50	3	3	3	€100M	22.89	2	84	43	2	4	4	85
44	VfL Wolfsburg	77	77	78	76	€40M	29	70	50	60	6	3	3	€349.1M	23.93	3	107	44	4	1	1	221
45	RCD Espanyol de Barcelona	77	82	77	75	€6M	33	60	50	60	4	3	3	€60M	25.12	5	71	45	2	2	2	9
46	Valencia CF	77	78	76	79	€60M	33	50	50	50	4	3	3	€530M	22.45	5	29	46	2	4	4	56
47	Granada CF	77	77	78	77	€7.6M	33	40	50	70	3	3	3	€55M	26.09	5	30	47	1	2	2	197
48	PSV	77	77	78	75	€23.9M	30	50	70	50	8	3	3	€252M	23.3	28	109	48	3	4	4	30
49	Burnley	76	77	75	76	€22M	33	40	50	60	3	3	3	€378.5M	26.33	1	100	49	2	3	3	135
50	Crystal Palace	76	77	76	75	€30M	33	50	60	50	4	3	3	€410.5M	25.09	1	80	50	2	4	4	52
51	Leeds United	76	77	77	75	€32.5M	32	60	60	50	4	3	3	€411.5M	22.47	1	22	51	4	2	2	176
52	Brighton & Hove Albion	76	75	73	77	€28M	33	60	50	70	4	3	3	€383.3M	22.76	1	96	52	2	4	4	50
53	Southampton	76	75	76	76	€32.5M	32	50	50	50	4	3	3	€455.5M	24.16	1	83	53	2	4	4	325
54	Olympiacos CFP	76	76	74	75	€19M	28	40	40	60	4	3	3	€100M	27.11	27	109	54	2	4	4	125
55	Fiorentina	76	76	77	77	€25M	26	40	50	60	8	3	3	€222M	25.92	4	85	55	2	4	4	11
56	Levante Unión Deportiva	76	78	77	72	€9.3M	33	50	60	70	4	3	3	€49M	26.45	5	26	56	2	4	4	46
57	LOSC Lille	76	78	76	77	€15.8M	24	50	50	70	6	3	3	€150M	25.25	2	78	57	3	1	1	67
58	Getafe CF	76	75	76	75	€8.3M	31	40	70	70	3	3	3	€45M	24.32	5	12	58	3	2	2	162
59	OGC Nice	76	78	75	76	€14.7M	27	60	60	70	7	3	3	€130M	23.26	2	109	59	4	1	1	42
60	RC Celta de Vigo	76	79	77	75	€11.8M	33	70	60	50	3	3	3	€110M	24.33	5	24	60	3	4	4	257
61	CA Osasuna	76	77	76	75	€4.8M	32	70	70	60	3	3	3	€15M	25.41	5	50	61	1	2	2	27
62	SK Slavia Praha	75	72	75	74	€9.6M	28	60	60	70	5	3	3	€90M	25.46	16	84	62	3	2	2	80
63	Sport-Club Freiburg	75	73	74	76	€10.5M	26	40	50	60	3	3	3	€195.7M	24.35	3	84	63	2	4	4	81
64	1. FC Köln	75	76	75	74	€12.5M	29	50	60	70	6	3	3	€168.5M	24.14	3	75	64	4	3	3	33
65	U.C. Sampdoria	75	77	75	73	€12M	27	50	60	50	6	3	3	€127M	26.93	4	88	65	2	1	1	118
66	Torino F.C.	75	76	75	76	€15.5M	31	30	40	60	3	3	3	€147M	24.23	4	64	66	2	2	2	11
67	Racing Club de Lens	75	74	75	75	€8.6M	28	50	60	50	6	3	3	€50M	24.36	2	50	67	3	1	1	57
68	Montpellier Hérault SC	75	73	76	73	€7.6M	28	50	50	50	4	3	3	€55M	23.89	2	45	68	3	2	2	219
69	Fenerbahçe SK	75	75	74	74	€14M	27	60	60	50	5	3	3	€100M	25.44	49	109	69	3	4	4	84
70	RC Strasbourg Alsace	75	77	75	75	€7.3M	23	40	70	70	4	3	3	€50M	25.65	2	84	70	2	4	4	124
71	U.S. Sassuolo Calcio	75	77	76	71	€13.5M	28	50	60	60	5	3	3	€94M	25.79	4	45	71	3	2	2	74
72	Cádiz CF	75	77	75	73	€2M	32	40	40	80	5	3	3	€3.5M	26.72	5	63	72	1	3	3	197
73	Trabzonspor	75	76	76	73	€12.7M	30	60	70	60	6	3	3	€85M	25.7	49	78	73	3	1	1	69
74	Bologna	75	78	75	73	€15M	30	60	60	60	7	3	3	€85M	24.83	4	43	74	2	2	2	55
75	Hellas Verona	75	76	75	74	€8M	24	50	60	60	5	3	3	€75M	25.21	4	64	75	3	1	1	19
76	Deportivo Alavés	75	76	74	76	€4.4M	32	50	40	60	3	3	3	€13M	24.81	5	35	76	1	3	3	27
77	Club Brugge KV	75	76	74	75	€25.9M	28	40	60	60	5	3	3	€180M	24.5	9	109	77	3	4	4	132
78	Feyenoord	75	75	75	77	€14.3M	30	60	60	60	6	3	3	€180M	22.43	28	19	78	4	4	4	30
79	Watford	74	74	75	74	€30M	33	50	50	60	4	3	3	€380.5M	26.12	1	102	79	2	2	2	205
80	AC Sparta Praha	74	71	74	73	€7.2M	26	60	50	60	5	3	3	€60M	23.73	16	109	80	2	4	4	62
81	VfB Stuttgart	74	74	74	74	€20M	33	50	50	70	6	3	3	€275.1M	21.7	3	58	81	2	4	4	63
82	Udinese Calcio	74	75	73	74	€8M	23	60	50	70	3	3	3	€102M	26.26	4	90	82	2	1	1	65
83	FC Augsburg	74	73	74	74	€9.5M	32	50	50	60	3	3	3	€129.3M	24.34	3	108	83	2	2	2	5
84	Galatasaray SK	74	75	73	75	€16.2M	28	50	60	60	4	3	3	€97M	26.25	49	78	84	2	2	2	69
85	FC Nantes	74	77	73	73	€7.4M	29	50	60	70	3	3	3	€75M	24.45	2	39	85	3	4	4	43
86	Beşiktaş JK	74	76	73	72	€15.5M	27	40	70	70	6	3	3	€90M	26.11	49	109	86	3	1	1	69
87	Rangers FC	74	73	74	74	€8.3M	28	50	60	70	8	3	3	€55M	26.11	44	19	87	4	1	1	105
88	SC Braga	74	76	71	75	€14M	29	40	50	60	4	3	3	€100M	23.03	40	85	88	3	3	3	143
89	Brentford	74	74	75	74	€18M	33	60	60	60	7	3	3	€185.5M	23.45	1	60	89	4	4	4	137
90	Fulham	74	78	74	72	€15.8M	30	60	70	60	7	3	3	€120M	25.03	19	14	90	3	4	4	137
91	Hertha BSC	74	74	75	74	€60M	33	50	40	50	4	3	3	€520M	24.79	3	66	91	2	4	4	101
92	1. FSV Mainz 05	74	74	74	75	€9.2M	33	50	60	60	3	3	3	€135M	23.48	3	67	92	3	3	3	40
93	Shakhtar Donetsk	74	74	75	73	€16.8M	21	40	60	50	7	3	3	€250M	23.76	52	17	93	3	1	1	113
94	RCD Mallorca	74	75	74	75	€2.8M	33	50	50	60	3	3	3	€6.8M	25.61	5	104	94	1	4	4	22
95	Elche CF	74	75	74	73	€1.7M	29	50	50	50	3	3	3	€4.8M	26.97	5	21	95	1	3	3	56
96	Rayo Vallecano	74	75	74	73	€3.3M	31	60	70	60	7	3	3	€10M	25.35	5	37	96	2	1	1	162
97	Norwich City	73	75	73	73	€20M	33	60	50	50	3	3	3	€326M	23.58	1	11	97	1	4	4	303
98	Sheffield United	73	73	73	73	€13.3M	30	60	60	50	3	3	3	€160M	25.23	19	9	98	2	4	4	265
99	AEK Athens	73	74	74	69	€12.4M	28	50	50	60	3	3	3	€65M	26.93	27	91	99	1	4	4	125
100	AS Saint-Étienne	73	75	73	72	€12.1M	33	40	40	60	4	3	3	€95M	23.79	2	50	100	1	2	2	34
101	1. FC Union Berlin	73	74	73	74	€6.5M	28	40	40	70	4	3	3	€85.5M	26.29	3	87	101	2	3	3	91
102	Cagliari	73	75	72	69	€10M	30	60	50	60	5	3	3	€62M	24.67	4	31	102	1	3	3	19
103	FC Girondins de Bordeaux	73	73	74	72	€9.2M	31	50	50	50	3	3	3	€75M	23.9	2	109	103	2	4	4	36
104	Unión Deportiva Almería	73	76	72	72	€10.8M	30	40	50	70	4	3	3	€47M	24.93	46	3	104	2	1	1	197
105	Celtic	73	73	74	73	€14.6M	28	60	80	70	8	3	3	€65M	24.68	44	19	105	4	1	1	87
106	AZ Alkmaar	73	73	73	73	€9.9M	30	60	60	50	6	3	3	€105M	21.8	28	90	106	4	1	1	30
107	Stade Brestois 29	73	74	73	73	€6.3M	27	60	50	70	7	3	3	€45M	24.44	2	15	107	3	1	1	299
108	Stade de Reims	73	72	72	75	€8.8M	29	60	40	70	3	3	3	€70M	23.1	2	84	108	1	2	2	122
109	FC Viktoria Plzeň	73	74	73	72	€7.8M	23	50	50	70	5	3	3	€40M	26.74	16	13	109	2	4	4	62
110	PAOK	73	73	73	72	€16.8M	28	50	50	60	3	3	3	€80M	26.46	27	85	110	2	1	1	54
111	İstanbul Başakşehir FK	73	76	73	72	€9.9M	26	60	50	60	5	3	3	€60M	28.08	49	90	111	2	1	1	190
112	AFC Bournemouth	73	73	74	72	€11.8M	30	70	50	80	5	3	3	€110M	24.17	19	105	112	4	1	1	53
113	Dynamo Kyiv	73	72	73	72	€12.8M	23	60	50	70	6	3	3	€150M	25.17	52	91	113	3	4	4	93
114	FC Red Bull Salzburg	73	73	73	73	€20.7M	28	50	70	60	5	3	3	€175M	22.32	8	109	114	4	2	2	260
115	Real Valladolid CF	73	74	74	73	€3.1M	30	50	60	60	3	3	3	€8.9M	26.07	46	27	115	3	1	1	188
116	Dinamo Zagreb	73	73	73	72	€11.6M	27	50	50	60	5	3	3	€150M	24.74	14	43	116	2	4	4	157
117	SD Eibar	73	72	73	73	€6.5M	30	50	70	60	7	3	3	€29M	27.03	46	62	117	4	1	1	21
118	Genoa	73	72	72	72	€8.5M	32	50	50	60	3	3	3	€101M	24.75	4	88	118	2	2	2	65
119	Angers SCO	73	71	73	72	€6.3M	27	40	50	60	4	3	3	€45M	25.0	2	45	119	2	4	4	299
120	Fatih Karagümrük S.K.	72	73	72	70	€5.2M	28	50	50	80	4	3	3	€25.4M	26.46	49	5	120	2	1	1	190
121	SV Werder Bremen	72	73	70	72	€10M	29	50	50	60	6	3	3	€121.7M	23.48	25	111	121	3	1	1	139
122	ESTAC Troyes	72	71	73	71	€5.9M	33	40	50	60	5	3	3	€40M	25.06	2	45	122	2	4	4	108
123	F.C. København	72	71	70	72	€10.3M	28	50	60	60	6	3	3	€62.3M	23.89	17	109	123	2	2	2	263
124	FC Metz	72	72	71	72	€7.2M	31	50	60	50	5	3	3	€60M	24.42	2	45	124	2	2	2	332
125	Panathinaikos FC	72	73	72	70	€5.3M	28	50	60	60	5	3	3	€45M	26.32	27	91	125	1	1	1	54
126	DSC Arminia Bielefeld	72	71	72	73	€2.3M	28	60	30	60	3	3	3	€49M	23.29	3	79	126	1	3	3	127
127	VfL Bochum 1848	72	72	71	73	€3.3M	29	40	60	70	5	3	3	€32.3M	26.48	3	90	127	2	4	4	140
128	KRC Genk	72	75	73	72	€17.4M	25	60	60	60	5	3	3	€140M	22.04	9	109	128	3	4	4	223
129	KAA Gent	72	72	72	72	€15.8M	28	50	70	60	6	3	3	€150M	25.36	9	90	129	3	1	1	77
130	Venezia FC	72	72	72	72	€4M	31	60	50	70	5	3	3	€14M	25.58	4	99	130	2	1	1	75
131	Empoli	72	73	71	71	€4.5M	28	40	70	50	7	3	3	€20M	24.46	4	43	131	4	1	1	55
132	RSC Anderlecht	72	72	73	72	€14.3M	27	60	70	60	8	3	3	€130M	22.3	9	84	132	3	1	1	223
133	Royal Antwerp FC	72	73	73	72	€20.8M	28	40	40	60	3	3	3	€80M	25.07	9	45	133	1	4	4	285
134	Girona FC	72	74	72	71	€4.3M	30	40	50	50	6	3	3	€9.8M	23.3	46	36	134	2	1	1	45
135	Blackburn Rovers	71	72	72	71	€9.2M	30	50	60	60	3	3	3	€35M	23.0	19	50	135	4	3	3	49
136	Nottingham Forest	71	71	72	71	€14.6M	30	60	50	70	4	3	3	€65M	24.13	19	50	136	3	4	4	239
137	Queens Park Rangers	71	71	71	70	€5.1M	30	60	60	60	3	3	3	€24M	26.1	19	54	137	2	4	4	90
138	Clermont Foot 63	71	75	71	72	€4.5M	27	60	60	60	4	3	3	€35M	25.48	2	44	138	3	1	1	100
139	Hamburger SV	71	72	70	71	€18M	29	60	70	70	6	3	3	€126.4M	22.72	25	106	139	3	1	1	226
140	FC Schalke 04	71	73	71	72	€20M	30	50	50	50	5	3	3	€502.1M	25.37	25	101	140	3	4	4	13
141	US Salernitana 1919	71	71	71	68	€4M	33	50	50	70	5	3	3	€13M	26.39	4	4	141	2	2	2	177
142	Ferencvárosi TC	71	69	71	71	€6.8M	28	50	50	50	5	3	3	€43M	26.61	29	90	142	4	2	2	260
143	Vitória de Guimarães	71	74	70	69	€5.9M	30	50	50	70	3	3	3	€40.5M	23.17	40	84	143	2	4	4	88
144	West Bromwich Albion	71	71	72	71	€13.7M	30	50	60	60	3	3	3	€140M	24.1	19	97	144	4	2	2	35
145	FC Basel 1893	71	72	71	71	€8.4M	28	60	70	60	7	3	3	€73.3M	22.61	48	109	145	3	1	1	146
146	BSC Young Boys	71	73	71	71	€8.6M	28	50	60	70	4	3	3	€75.8M	23.93	48	109	146	4	2	2	145
147	Spezia	71	71	70	71	€2.8M	28	50	60	60	5	3	3	€21M	23.21	4	99	147	2	1	1	118
148	Adana Demirspor	71	73	71	72	€4.5M	27	50	50	50	5	3	3	€15.6M	26.89	49	88	148	2	2	2	152
149	SpVgg Greuther Fürth	71	70	70	70	€1.9M	30	60	60	50	6	3	3	€25.6M	23.57	3	13	149	2	1	1	183
150	FC Lorient	71	71	73	70	€7M	30	60	50	60	5	3	3	€45M	24.33	2	60	150	3	2	2	43
151	Royale Union Saint-Gilloise	71	74	71	70	€2M	26	50	50	60	4	3	3	€3M	23.92	9	99	151	4	3	3	132
152	Antalyaspor	71	72	72	69	€5.3M	26	60	50	60	4	3	3	€34M	26.46	49	91	152	2	3	3	154
153	FC Midtjylland	71	70	72	72	€9.6M	28	70	70	60	7	3	3	€31.5M	23.96	17	90	153	3	1	1	390
154	Aytemiz Alanyaspor	71	71	72	71	€5.7M	25	50	50	60	6	3	3	€38M	26.52	49	90	154	2	1	1	152
155	Reading	70	72	70	70	€5.9M	30	40	40	50	3	3	3	€40M	24.1	19	60	155	1	4	4	346
156	CD Tenerife	70	72	70	70	€2M	30	70	60	50	3	3	3	€5M	25.53	46	31	156	3	4	4	189
157	Hajduk Split	70	73	69	70	€8.3M	25	50	60	50	3	3	3	€45M	25.68	14	89	157	2	4	4	116
158	Coventry City	70	70	72	69	€4.6M	30	50	60	70	4	3	3	€14M	23.67	19	60	158	3	4	4	20
159	Preston North End	70	68	71	69	€4.7M	30	40	30	50	6	3	3	€20M	24.8	19	60	159	2	2	2	279
160	Middlesbrough	70	71	70	70	€7.7M	30	60	40	60	5	3	3	€65M	25.07	19	76	160	2	4	4	39
161	Stoke City	70	70	71	70	€5.8M	30	60	40	60	3	3	3	€55M	25.27	19	94	161	2	4	4	413
162	CD Leganés	70	69	69	70	€4.2M	30	50	60	50	3	3	3	€10.8M	26.53	46	61	162	2	4	4	58
163	Estoril Praia	70	69	70	69	€2M	29	50	60	60	3	3	3	€5.8M	23.48	40	4	163	2	2	2	240
164	Fortuna Düsseldorf	70	71	70	71	€7.5M	30	40	30	50	3	3	3	€54.3M	25.37	25	18	164	1	2	2	64
165	Portimonense SC	70	70	69	70	€3.3M	30	50	40	60	3	3	3	€17.6M	23.9	40	4	165	2	3	3	208
166	Parma	70	70	68	71	€8M	28	40	40	60	5	3	3	€56M	25.5	31	3	166	1	3	3	74
167	Malmö FF	70	70	71	68	€8.1M	28	60	60	60	4	3	3	€59.5M	26.21	47	84	167	4	1	1	339
168	Gil Vicente FC	70	71	71	70	€2.9M	26	40	50	70	4	3	3	€7M	24.5	40	13	168	2	2	2	201
169	Millwall	70	70	69	70	€4.3M	28	50	40	50	4	3	3	€22M	25.36	19	50	169	2	3	3	23
170	FC Paços de Ferreira	70	67	70	71	€3.3M	30	50	40	70	4	3	3	€9M	24.37	40	15	170	2	2	2	143
171	Clube Sport Marítimo	70	70	69	70	€3.9M	28	70	40	50	3	3	3	€14.5M	25.11	40	90	171	2	3	3	212
172	Lech Poznań	70	70	69	70	€3.9M	28	60	60	70	6	3	3	€12M	25.29	39	78	172	2	1	1	237
173	Boavista FC	70	69	69	70	€4.2M	25	40	50	50	3	3	3	€9.5M	24.44	40	84	173	2	3	3	143
174	FC Utrecht	70	70	70	70	€13.8M	30	50	50	50	3	3	3	€75M	24.1	28	50	174	2	4	4	30
175	Vitesse	70	69	68	74	€16.4M	30	60	50	60	8	3	3	€77M	21.77	28	84	175	2	4	4	242
176	Huddersfield Town	70	69	69	70	€5.1M	30	60	60	60	4	3	3	€45M	24.6	19	53	176	3	2	2	51
177	Benevento	70	71	69	69	€5.6M	25	40	50	60	4	3	3	€22M	26.16	31	31	177	2	1	1	313
178	Yukatel Kayserispor	70	72	69	69	€1.8M	27	70	50	60	5	3	3	€6.1M	27.22	49	78	178	1	3	3	185
179	Göztepe SK	70	71	70	68	€4.5M	24	60	40	60	4	3	3	€35M	25.83	49	45	179	2	2	2	247
180	Atakaş Hatayspor	70	71	70	68	€3.3M	25	50	50	50	3	3	3	€14M	25.84	49	60	180	2	3	3	186
181	Swansea City	70	71	70	71	€10.2M	30	50	60	70	5	3	3	€100M	22.67	19	95	181	2	1	1	214
182	Futebol Clube de Famalicão	70	70	71	70	€4.4M	30	40	60	70	6	3	3	€15M	22.87	40	1	182	2	1	1	170
183	1. FC Nürnberg	70	67	70	70	€5.4M	29	50	40	50	4	3	3	€58.4M	24.59	25	57	183	2	4	4	149
184	Çaykur Rizespor	70	71	70	68	€4M	23	60	40	50	3	3	3	€26.2M	26.61	49	90	184	2	4	4	73
185	Demir Grup Sivasspor	70	70	72	68	€5.8M	24	60	50	70	3	3	3	€33M	29.08	49	86	185	2	3	3	178
186	Gazişehir Gaziantep F.K.	70	69	69	71	€3.5M	25	50	40	60	3	3	3	€18.9M	26.52	49	84	186	1	2	2	305
187	AC Monza	70	69	70	70	€6.7M	28	60	50	60	3	3	3	€20M	25.86	31	15	187	2	2	2	14
188	Real Sporting de Gijón	70	72	70	68	€4.8M	30	40	40	60	3	3	3	€17M	24.5	46	84	188	2	2	2	224
189	Unión Deportiva Las Palmas	70	68	71	70	€6.6M	30	40	70	60	6	3	3	€50M	24.93	46	34	189	4	1	1	156
190	Kasimpaşa SK	70	70	70	70	€4M	25	50	60	60	4	3	3	€28M	26.4	49	85	190	2	4	4	111
191	FC Cartagena	70	70	70	69	€1.8M	30	50	50	50	3	3	3	€2.5M	26.9	46	85	191	2	1	1	95
192	Real Zaragoza	70	69	69	70	€2.7M	30	60	50	60	5	3	3	€7M	24.37	46	21	192	2	1	1	193
193	SD Huesca	70	67	70	68	€2.1M	30	50	40	60	4	3	3	€4.5M	25.77	46	20	193	2	2	2	192
194	Karlsruher SC	69	69	70	68	€800K	30	40	50	50	4	3	3	€9.4M	25.13	25	43	194	2	4	4	81
195	SC Paderborn 07	69	70	69	68	€5M	30	50	60	60	5	3	3	€29.3M	24.23	25	8	195	3	2	2	126
196	AJ Auxerre	69	73	69	69	€4.2M	28	40	60	60	5	3	3	€21M	24.46	24	45	196	2	1	1	122
197	Málaga CF	69	70	69	68	€9.9M	30	40	50	50	6	3	3	€105M	24.63	46	28	197	2	4	4	15
198	UD Ibiza	69	69	68	69	€1.5M	30	50	40	60	3	3	3	€2.6M	26.5	46	99	198	2	4	4	94
199	Birmingham City	69	70	69	69	€7.1M	30	50	40	80	4	3	3	€22M	24.3	19	50	199	1	2	2	31
200	Lecce	69	70	67	67	€6M	26	50	60	70	3	3	3	€23M	25.35	31	31	200	2	4	4	65
201	Moreirense FC	69	70	68	69	€3.3M	26	50	40	60	3	3	3	€7.3M	25.96	40	13	201	2	3	3	143
202	FC Twente	69	69	70	67	€8.8M	26	50	60	60	4	3	3	€70M	23.04	28	109	202	4	4	4	267
203	Fortuna Sittard	69	63	68	69	€6.2M	29	50	50	50	3	3	3	€18M	24.69	28	60	203	2	2	2	274
204	Bristol City	69	68	69	70	€7.8M	29	70	40	70	3	3	3	€60M	23.97	19	84	204	2	4	4	425
205	Luton Town	69	69	69	69	€3M	30	50	50	40	5	3	3	€8M	25.5	19	13	205	3	3	3	79
206	1. FC Heidenheim 1846	69	69	68	71	€2M	28	60	40	60	3	3	3	€14.4M	24.11	25	60	206	2	3	3	241
207	KV Mechelen	69	69	70	69	€4.8M	28	60	50	60	3	3	3	€30M	23.75	9	88	207	2	4	4	225
208	CD Tondela	69	69	68	69	€2.1M	27	60	50	70	3	3	3	€6.4M	23.78	40	13	208	1	3	3	245
209	FCSB (Steaua)	69	69	68	69	€5.4M	28	50	50	50	5	3	3	€13M	24.57	42	109	209	2	2	2	420
210	SV Zulte Waregem	69	70	69	68	€6M	28	50	50	60	6	3	3	€35M	24.61	9	50	210	2	4	4	258
211	Royal Charleroi S.C.	69	67	71	68	€6.5M	28	40	40	50	4	3	3	€40M	21.86	9	50	211	2	1	1	223
212	Santa Clara	69	69	69	69	€2.3M	25	50	50	60	4	3	3	€8.5M	25.36	40	44	212	2	3	3	171
213	SV Darmstadt 98	69	70	69	69	€3.3M	30	50	50	60	3	3	3	€20M	23.43	25	45	213	2	4	4	40
214	Cardiff City	69	67	69	68	€8.8M	30	40	50	60	5	3	3	€70M	23.87	19	10	214	2	3	3	181
215	İttifak Holding Konyaspor	69	71	68	69	€4.8M	23	60	50	60	5	3	3	€30M	26.57	49	43	215	2	4	4	178
216	KV Oostende	69	69	69	68	€3.9M	27	50	60	50	4	3	3	€25M	22.56	9	13	216	4	3	3	77
217	FC Vizela	69	70	70	68	€1.6M	28	60	50	60	3	3	3	€5.4M	25.18	40	1	217	4	1	1	201
218	SK Sturm Graz	69	67	70	68	€5.2M	28	70	50	60	3	3	3	€19M	22.57	8	90	218	4	2	2	260
219	Nîmes Olympique	69	69	71	68	€5.2M	25	50	50	60	6	3	3	€26M	23.28	24	15	219	3	1	1	68
220	CFR Cluj	69	68	69	70	€3.3M	28	50	60	60	6	3	3	€7.2M	26.39	42	45	220	4	4	4	209
221	Hannover 96	69	68	69	69	€10M	30	40	50	80	6	3	3	€96.3M	24.93	25	49	221	2	2	2	316
222	SD Ponferradina	69	71	69	69	€2M	26	50	50	60	3	3	3	€4.4M	25.65	46	13	222	1	2	2	115
223	Standard de Liège	69	68	71	69	€12.7M	28	60	50	40	5	3	3	€85M	22.68	9	109	223	3	4	4	132
224	Real Oviedo	69	70	69	69	€2M	30	40	40	60	3	3	3	€3.9M	24.7	46	88	224	2	2	2	188
225	Oud-Heverlee Leuven	69	70	70	68	€6.1M	27	50	40	40	3	3	3	€25M	23.7	9	13	225	1	3	3	207
226	FC St. Pauli	69	71	69	69	€2.9M	30	60	40	60	3	3	3	€32.2M	24.43	25	50	226	2	2	2	139
227	LASK Linz	69	68	70	68	€6.9M	28	40	60	60	6	3	3	€30M	24.96	8	13	227	4	2	2	260
228	Toulouse Football Club	68	68	70	67	€6.7M	26	60	50	60	4	3	3	€27M	22.69	24	88	228	2	1	1	103
229	Amiens SC	68	65	68	66	€3.9M	30	70	30	60	3	3	3	€15M	23.63	24	90	229	1	2	2	57
230	F.C. Hansa Rostock	68	68	68	67	€650K	30	50	50	60	4	3	3	€11.9M	25.97	25	84	230	2	2	2	293
231	SSV Jahn Regensburg	68	67	68	68	€1M	27	60	60	50	5	3	3	€8.4M	25.15	25	60	231	4	2	2	280
232	APOEL Nicosia FC	68	71	67	67	€7.7M	28	50	50	50	4	3	3	€35M	26.21	15	15	232	3	1	1	54
233	Universitatea Craiova	68	68	68	68	€2.9M	27	50	50	60	4	3	3	€7M	26.07	42	78	233	3	4	4	365
234	Aalborg BK	68	69	68	68	€2.7M	24	50	50	70	4	3	3	€7.4M	24.46	17	13	234	2	4	4	264
235	Holstein Kiel	68	69	69	68	€1.7M	30	60	50	60	5	3	3	€16.9M	25.6	25	15	235	2	1	1	226
236	Servette FC	68	68	69	67	€3.8M	27	50	40	80	3	3	3	€10.3M	24.15	48	90	236	2	4	4	286
237	Legia Warszawa	68	68	68	67	€5.2M	28	50	70	80	5	3	3	€19M	24.46	39	109	237	4	2	2	172
238	Heart of Midlothian	68	68	67	68	€2.3M	21	40	50	80	4	3	3	€7.7M	25.67	44	50	238	2	1	1	302
239	Derby County	68	66	69	67	€5.6M	30	50	50	60	4	3	3	€50M	22.6	19	84	239	3	4	4	136
240	Belenenses SAD	68	69	68	68	€2.2M	30	40	60	70	4	3	3	€8M	24.17	40	43	240	2	1	1	163
241	SV Sandhausen	68	69	68	68	€1.5M	30	50	40	50	3	3	3	€12.2M	26.23	25	13	241	1	3	3	194
242	N.E.C. Nijmegen	68	68	68	66	€4.8M	28	60	50	60	3	3	3	€15M	23.64	28	60	242	2	4	4	175
243	FC Zürich	68	66	69	66	€4M	27	60	50	80	5	3	3	€11M	24.78	48	43	243	2	2	2	271
244	FC Luzern	68	66	68	67	€3.6M	28	50	50	60	5	3	3	€12M	24.25	48	60	244	3	4	4	309
245	FC Arouca	68	69	69	68	€1.8M	28	40	50	50	3	3	3	€5.6M	26.25	40	1	245	1	3	3	208
246	Barnsley	68	68	68	68	€5.8M	30	50	50	40	3	3	3	€20M	21.9	19	45	246	3	2	2	98
247	Altay SK	68	68	69	66	€3.4M	24	50	60	50	4	3	3	€10.6M	28.29	49	45	247	2	2	2	179
248	FK Bodø/Glimt	68	69	68	69	€2.8M	28	60	80	70	5	3	3	€8.8M	23.18	36	99	248	4	2	2	269
249	Hull City	68	69	66	66	€3.9M	30	40	50	60	4	3	3	€12M	23.27	19	56	249	3	4	4	51
250	Sint-Truidense VV	68	67	68	67	€4.8M	27	50	40	50	4	3	3	€30M	24.33	9	45	250	2	2	2	128
251	AIK	68	71	66	69	€4.4M	23	50	50	60	4	3	3	€16.3M	24.61	47	109	251	2	4	4	288
252	Paris FC	68	67	68	67	€5.6M	30	60	50	60	5	3	3	€19M	23.9	24	43	252	2	1	1	3
253	Stade Malherbe Caen	68	69	69	66	€3.3M	28	40	50	60	3	3	3	€17M	24.57	24	84	253	2	2	2	289
254	KSV Cercle Brugge	68	68	70	67	€5.4M	28	30	50	40	6	3	3	€30M	22.25	9	109	254	4	2	2	77
255	KAS Eupen	68	71	68	66	€3.6M	28	40	40	70	3	3	3	€20M	24.5	9	13	255	2	4	4	223
256	Dijon FCO	68	68	66	68	€3.9M	30	40	40	40	4	3	3	€28M	24.57	24	13	256	2	3	3	196
257	CD Lugo	68	68	67	66	€1.6M	30	50	50	70	4	3	3	€2.6M	26.03	46	13	257	3	3	3	60
258	KV Kortrijk	68	67	68	69	€4.5M	28	50	50	50	4	3	3	€25M	24.11	9	13	258	2	4	4	210
259	GZT Giresunspor	68	67	68	68	€2.4M	23	50	50	60	4	3	3	€9.6M	24.43	49	90	259	2	2	2	73
260	SK Rapid Wien	68	66	68	70	€5.2M	28	70	60	70	4	3	3	€50M	22.71	8	88	260	2	1	1	261
261	FK Austria Wien	67	65	65	67	€7.7M	28	50	60	60	4	3	3	€39M	22.54	8	84	261	3	4	4	260
262	Rotherham United	67	68	68	66	€1.8M	24	40	60	60	3	3	3	€4M	25.17	20	60	262	4	3	3	265
263	Brøndby IF	67	65	67	68	€5.6M	26	50	60	60	6	3	3	€20.5M	23.08	17	109	263	4	4	4	123
264	Aarhus GF	67	66	68	66	€3M	27	50	60	60	3	3	3	€9.5M	23.26	17	43	264	3	2	2	263
265	Sheffield Wednesday	67	66	68	67	€5M	28	60	50	80	3	3	3	€43.6M	25.68	20	50	265	2	2	2	98
266	Go Ahead Eagles	67	69	66	67	€3.8M	30	40	40	50	4	3	3	€14M	23.37	28	60	266	1	2	2	308
267	Heracles Almelo	67	67	67	67	€4.4M	30	50	60	60	4	3	3	€36M	22.87	28	90	267	3	4	4	202
268	Sparta Rotterdam	67	68	68	67	€6M	30	40	50	50	5	3	3	€24M	25.03	28	90	268	2	2	2	78
269	Rosenborg BK	67	68	67	66	€8.3M	24	60	60	70	5	3	3	€27.5M	22.63	36	45	269	2	1	1	284
270	FC Lugano	67	66	68	68	€2.6M	28	60	40	70	4	3	3	€6.6M	24.0	48	44	270	2	2	2	286
271	Grasshopper Club Zürich	67	63	66	66	€5.2M	26	70	50	60	3	3	3	€14.2M	24.5	48	43	271	2	4	4	243
272	Burgos CF	67	68	68	66	€1.5M	26	40	30	60	4	3	3	€2.5M	27.12	46	13	272	1	3	3	292
273	AC Ajaccio	67	68	68	66	€2.6M	25	60	50	60	4	3	3	€10M	25.92	24	15	273	2	2	2	338
274	Willem II	67	66	67	66	€5M	30	60	60	60	3	3	3	€32M	23.43	28	90	274	2	1	1	306
275	Valenciennes FC	67	70	66	67	€2.7M	30	50	50	60	5	3	3	€10.5M	24.53	24	109	275	3	4	4	57
276	SC Heerenveen	67	65	67	67	€6.4M	30	40	60	60	4	3	3	€64M	22.77	28	109	276	2	4	4	310
277	FC Groningen	67	67	67	67	€7.9M	29	60	50	50	3	3	3	€68M	21.62	28	109	277	2	2	2	276
278	Wigan Athletic	67	67	68	67	€2.4M	28	60	50	50	6	3	3	€9M	25.64	20	50	278	3	1	1	326
279	Blackpool	67	67	69	67	€2.1M	30	60	70	60	5	3	3	€5M	24.47	19	60	279	3	2	2	159
280	FC Ingolstadt 04	67	67	66	66	€4M	30	50	50	50	5	3	3	€17.6M	25.47	25	90	280	2	2	2	231
281	Peterborough United	67	69	67	67	€2.7M	30	60	40	60	6	3	3	€7M	22.8	19	13	281	1	1	1	385
282	Raków Częstochowa	67	67	67	67	€2.2M	28	50	60	60	4	3	3	€5.4M	24.18	39	99	282	3	4	4	237
283	Pogoń Szczecin	67	66	67	68	€2.8M	28	50	70	70	5	3	3	€7.9M	25.0	39	90	283	2	1	1	343
284	Molde FK	67	68	65	67	€5.4M	28	40	40	60	4	3	3	€16M	23.96	36	90	284	2	4	4	269
285	K Beerschot VA	67	67	68	67	€5.3M	26	50	50	60	3	3	3	€20M	24.92	9	13	285	2	4	4	133
286	FC Sion	67	63	66	67	€5.9M	28	60	50	50	3	3	3	€14.5M	25.93	48	13	286	2	4	4	236
287	Hammarby IF	67	66	68	66	€4.3M	24	60	50	60	4	3	3	€14.9M	25.04	47	78	287	3	2	2	288
288	Djurgårdens IF	67	67	69	65	€4.4M	26	50	60	60	5	3	3	€16.3M	24.08	47	78	288	4	4	4	251
289	Le Havre AC	67	67	66	65	€5.2M	29	60	40	60	3	3	3	€17M	22.76	24	109	289	2	4	4	253
290	RZ Pellets Wolfsberger AC	67	67	68	66	€4.4M	25	40	50	40	3	3	3	€15M	23.56	8	44	290	3	2	2	218
291	CF Fuenlabrada	67	68	69	65	€1.5M	30	40	60	60	6	3	3	€2.5M	25.6	46	99	291	3	2	2	353
292	CD Mirandés	67	67	68	65	€1.5M	30	50	40	50	4	3	3	€2.5M	22.57	46	99	292	1	1	1	76
293	SG Dynamo Dresden	67	67	67	67	€2M	30	50	60	70	4	3	3	€14.3M	24.17	25	90	293	3	3	3	294
294	FC Erzgebirge Aue	67	64	67	66	€1.6M	30	30	70	70	6	3	3	€12.3M	25.3	25	90	294	4	2	2	293
295	Grenoble Foot 38	66	67	66	65	€3.3M	29	50	50	60	3	3	3	€10M	25.48	24	90	295	2	2	2	34
296	1. FC Kaiserslautern	66	67	66	66	€750K	28	50	50	60	5	3	3	€11.2M	24.32	26	88	296	2	4	4	351
297	Viking FK	66	68	64	65	€2.2M	27	50	50	60	4	3	3	€6.2M	23.37	36	60	297	4	2	2	421
298	Seraing	66	68	65	65	€1.9M	28	50	40	50	3	3	3	€2.5M	23.54	9	99	298	1	4	4	223
299	En Avant de Guingamp	66	67	66	63	€4.7M	27	50	60	60	3	3	3	€20M	23.41	24	13	299	2	2	2	107
300	FC Lausanne-Sport	66	64	64	63	€4.2M	28	60	40	60	3	3	3	€14.5M	24.21	48	90	300	2	4	4	236
301	Aberdeen	66	68	66	65	€2.3M	24	60	50	70	4	3	3	€7.5M	24.54	44	50	301	3	4	4	87
302	Hibernian	66	61	65	66	€3M	26	50	60	60	4	3	3	€8M	24.5	44	50	302	2	1	1	238
303	Ipswich Town	66	66	66	66	€2.8M	28	60	60	60	5	3	3	€6.5M	24.32	20	50	303	2	1	1	97
304	Sunderland	66	67	66	66	€5.4M	28	40	40	60	3	3	3	€13M	23.36	20	92	304	2	1	1	39
305	Yeni Malatyaspor	66	72	65	66	€4M	23	50	40	50	4	3	3	€27M	23.74	49	60	305	2	3	3	185
306	RKC Waalwijk	66	67	64	66	€2.7M	28	50	40	50	4	3	3	€12M	24.57	28	60	306	2	4	4	274
307	Real Sociedad B	66	67	66	66	€1.5M	30	50	50	60	3	3	3	€3.8M	20.73	46	99	307	2	4	4	319
308	PEC Zwolle	66	64	66	66	€5.3M	30	50	50	70	5	3	3	€27M	23.67	28	60	308	2	1	1	266
309	FC St. Gallen 1879	66	64	69	62	€3.2M	28	50	50	40	4	3	3	€18M	22.64	48	90	309	4	4	4	244
310	SC Cambuur	66	65	67	67	€3.3M	28	50	50	60	5	3	3	€17M	23.29	28	15	310	2	4	4	276
311	Plymouth Argyle	66	64	66	66	€1.3M	28	60	60	60	4	3	3	€3.1M	23.57	20	60	311	2	1	1	435
312	Wycombe Wanderers	66	67	66	66	€750K	26	70	40	70	6	3	3	€3.5M	26.54	20	13	312	2	3	3	436
313	Crotone	66	64	68	65	€4.5M	28	60	30	60	3	3	3	€27M	24.0	31	13	313	2	2	2	177
314	Vålerenga Fotball	66	66	66	66	€2.7M	24	50	60	70	5	3	3	€9.1M	22.88	36	50	314	3	1	1	421
315	Jagiellonia Białystok	66	66	65	66	€2.6M	28	50	50	60	4	3	3	€6.6M	25.71	39	109	315	2	4	4	237
316	Eintracht Braunschweig	66	66	65	66	€900K	28	40	50	60	4	3	3	€8.3M	24.04	26	43	316	2	4	4	221
317	IF Elfsborg	66	65	64	67	€2.9M	24	50	50	50	5	3	3	€8.6M	22.42	47	84	317	2	3	3	339
318	IFK Norrköping	66	66	65	65	€4.7M	24	50	70	60	5	3	3	€14.7M	24.83	47	84	318	4	1	1	439
319	SD Amorebieta	66	67	67	65	€1.5M	27	50	30	50	3	3	3	€2.5M	27.81	46	99	319	1	3	3	307
320	FC Sochaux-Montbéliard	66	66	66	67	€3.3M	25	50	50	60	4	3	3	€17M	23.64	24	90	320	2	4	4	332
321	Piast Gliwice	66	67	66	66	€2.3M	25	50	50	50	4	3	3	€6M	25.84	39	60	321	2	4	4	347
322	Lechia Gdańsk	66	68	65	66	€2.9M	27	50	60	60	4	3	3	€8M	24.89	39	78	322	2	4	4	237
323	Randers FC	66	67	67	66	€2M	26	60	50	60	3	3	3	€4.5M	24.31	17	86	323	2	4	4	264
324	FC Farul Constanța	66	67	64	66	€2.7M	26	50	60	50	5	3	3	€7.2M	22.81	42	99	324	2	4	4	220
325	Portsmouth	66	66	65	66	€2M	25	50	60	60	4	3	3	€4.5M	23.76	20	46	325	4	4	4	53
326	Bolton Wanderers	65	66	65	64	€500K	28	50	50	70	5	3	3	€5M	25.29	20	78	326	4	1	1	278
327	Milton Keynes Dons	65	67	64	65	€1.5M	25	50	60	70	4	3	3	€3.8M	22.36	20	60	327	2	1	1	281
328	Silkeborg IF	65	68	64	65	€1.7M	28	50	60	40	4	3	3	€3M	22.86	17	13	328	2	2	2	153
329	Odense Boldklub	65	66	64	65	€2.6M	28	70	50	70	3	3	3	€6.9M	23.0	17	13	329	2	2	2	264
330	Chamois Niortais Football Club	65	66	65	65	€3.1M	29	50	50	50	5	3	3	€9M	22.14	24	44	330	1	4	4	119
331	FC Voluntari	65	64	66	65	€1.3M	27	60	40	50	4	3	3	€2.9M	25.81	42	99	331	2	3	3	461
332	AS Nancy Lorraine	65	66	65	64	€3.8M	30	50	50	50	3	3	3	€14M	23.7	24	84	332	4	4	4	124
333	TSV 1860 München	65	67	65	65	€1M	28	50	60	50	4	3	3	€5.3M	23.21	26	99	333	2	4	4	443
334	Lillestrøm SK	65	64	65	66	€1.5M	25	60	50	60	4	3	3	€5.5M	22.52	36	15	334	2	4	4	314
335	Rodez Aveyron Football	65	63	65	64	€2M	28	40	50	70	3	3	3	€7.2M	24.25	24	44	335	1	3	3	228
336	Rapid București	65	64	64	66	€1.8M	27	50	40	60	3	3	3	€3.5M	26.11	42	60	336	2	2	2	209
337	Vejle Boldklub	65	65	65	65	€1.5M	26	50	40	50	3	3	3	€3.3M	22.81	17	60	337	2	4	4	264
338	SC Bastia	65	64	65	64	€2.1M	28	50	50	60	3	3	3	€7.5M	26.96	24	99	338	2	4	4	273
339	IFK Göteborg	65	63	66	67	€2.4M	25	50	50	60	7	3	3	€12.1M	24.28	47	90	339	4	2	2	251
340	Wisła Kraków	65	67	65	64	€1.9M	28	50	60	60	5	3	3	€6M	25.21	39	88	340	2	3	3	343
341	Motherwell	65	64	64	64	€900K	26	40	40	40	5	3	3	€3.8M	25.38	44	50	341	2	1	1	87
342	Charlton Athletic	65	66	66	64	€2.8M	28	60	50	60	4	3	3	€8M	25.54	20	45	342	3	4	4	169
343	Cracovia	65	68	65	65	€2.7M	27	60	40	70	4	3	3	€6.4M	24.74	39	60	343	2	1	1	340
344	Zagłębie Lubin	65	67	65	65	€2.9M	28	60	60	70	3	3	3	€6.9M	24.79	39	90	344	2	3	3	360
345	AFC UTA Arad	65	65	64	65	€1.6M	24	50	60	50	6	3	3	€3.8M	24.96	42	90	345	2	1	1	355
346	Oxford United	65	65	66	65	€1M	28	60	60	70	5	3	3	€3.6M	25.29	20	13	346	3	1	1	416
347	Górnik Zabrze	65	66	65	66	€2.1M	24	40	50	50	4	3	3	€6.4M	24.17	39	109	347	2	2	2	237
348	USL Dunkerque	65	65	64	64	€2.7M	28	40	40	60	3	3	3	€7M	25.5	24	86	348	1	4	4	67
349	Dundee United	65	65	64	62	€800K	26	50	40	50	4	3	3	€4M	24.46	44	13	349	2	1	1	395
350	WSG Tirol	65	65	63	65	€2.9M	28	50	50	60	3	3	3	€10M	22.75	8	90	350	2	2	2	389
351	SV Waldhof Mannheim 07	65	66	65	65	€500K	28	50	50	60	5	3	3	€3.8M	24.25	26	90	351	3	2	2	296
352	BK Häcken	65	64	66	63	€3.7M	27	60	50	60	6	3	3	€11.6M	24.04	47	90	352	4	2	2	339
353	AD Alcorcón	65	65	67	65	€1.6M	30	60	40	50	4	3	3	€2.5M	26.53	46	99	353	2	4	4	96
354	TSV Egger Glas Hartberg	65	65	66	65	€2.5M	27	60	50	50	5	3	3	€10M	25.59	8	44	354	1	4	4	218
355	Sepsi OSK Sf. Gheorghe	65	65	64	66	€2.4M	26	50	50	50	4	3	3	€5.6M	26.42	42	90	355	2	4	4	345
356	VfL Osnabrück	65	65	65	65	€520K	28	40	80	70	4	3	3	€6.4M	23.75	26	13	356	4	2	2	366
357	SV Wehen Wiesbaden	65	66	64	64	€1.7M	28	50	50	60	4	3	3	€7M	24.93	26	90	357	2	4	4	92
358	Radomiak Radom	65	65	65	66	€1.5M	28	50	50	60	3	3	3	€3.8M	26.04	39	44	358	2	4	4	172
359	Pau FC	65	64	64	66	€1.9M	28	60	50	60	6	3	3	€6.5M	24.61	24	44	359	2	2	2	228
360	Śląsk Wrocław	65	65	66	65	€2.5M	28	50	50	50	4	3	3	€6.2M	25.11	39	109	360	2	4	4	344
361	SK Austria Klagenfurt	65	67	66	65	€2.6M	28	50	40	50	3	3	3	€8.5M	24.71	8	109	361	2	2	2	290
362	FC Nordsjælland	65	63	66	66	€2.8M	28	50	60	60	6	3	3	€12.6M	20.11	17	90	362	2	1	1	123
363	1. FC Magdeburg	65	66	66	66	€800K	28	60	70	60	7	3	3	€8.5M	23.61	26	90	363	3	1	1	382
364	FSV Zwickau	64	64	63	63	€500K	26	50	50	60	4	3	3	€3.5M	25.46	26	13	364	1	3	3	382
365	FC U Craiova 1948	64	64	65	64	€1.9M	24	50	60	50	6	3	3	€3.5M	25.79	42	78	365	2	1	1	233
366	SV Meppen	64	62	64	65	€520K	28	50	40	50	4	3	3	€3M	26.11	26	99	366	1	2	2	356
367	1. FC Saarbrücken	64	65	64	64	€1.2M	26	40	50	70	3	3	3	€4.5M	24.69	26	90	367	2	3	3	296
368	SV Ried	64	63	65	64	€3.3M	25	50	40	60	3	3	3	€10M	24.2	8	90	368	1	2	2	260
369	Wisła Płock	64	64	66	64	€1.7M	28	60	50	70	4	3	3	€4.3M	24.71	39	86	369	2	4	4	237
370	IK Sirius	64	64	63	64	€600K	28	50	60	50	4	3	3	€2.9M	23.5	47	99	370	3	1	1	251
371	Kristiansund BK	64	62	64	64	€750K	25	40	50	40	4	3	3	€4.8M	24.6	36	99	371	2	2	2	284
372	Viktoria Köln	64	62	66	63	€500K	28	50	60	60	5	3	3	€4.4M	23.18	26	99	372	3	1	1	64
373	Sarpsborg 08 FF	64	64	65	63	€2.2M	24	40	40	50	4	3	3	€5.3M	26.25	36	13	373	2	2	2	314
374	PGE FKS Stal Mielec	64	63	64	63	€1.5M	26	50	40	70	5	3	3	€4.2M	24.92	39	44	374	2	4	4	378
375	Livingston FC	64	65	64	64	€650K	26	50	40	60	3	3	3	€3.4M	24.85	44	60	375	2	3	3	302
376	FC Würzburger Kickers	64	64	63	64	€725K	28	70	50	70	4	3	3	€5.8M	23.96	26	86	376	2	2	2	183
377	Ross County FC	64	63	65	63	€600K	25	40	30	50	4	3	3	€3.9M	23.76	44	99	377	1	3	3	301
378	Bruk-Bet Termalica Nieciecza	64	64	63	64	€2M	28	60	40	60	5	3	3	€3.1M	25.93	39	99	378	2	1	1	358
379	Shrewsbury Town	64	64	65	64	€750K	24	60	60	70	8	3	3	€3.7M	24.17	20	13	379	2	3	3	428
380	Warta Poznań	64	65	64	65	€1.5M	27	60	40	60	4	3	3	€5M	24.15	39	99	380	2	2	2	172
381	Fleetwood Town	64	63	61	61	€750K	28	60	40	60	3	3	3	€3.4M	24.0	20	15	381	1	4	4	279
382	Hallescher FC	64	65	64	64	€640K	28	50	50	60	4	3	3	€4.9M	24.86	26	90	382	2	1	1	363
383	Lincoln City	64	64	64	63	€1.3M	28	40	40	50	4	3	3	€3.4M	22.89	20	15	383	1	1	1	459
384	Campionii FC Arges	64	64	63	64	€1.5M	26	60	40	60	5	3	3	€4M	27.15	42	44	384	2	3	3	420
385	Cambridge United	64	66	64	64	€500K	28	40	40	40	4	3	3	€1.7M	23.36	20	99	385	1	4	4	281
386	Strømsgodset IF	64	63	67	64	€2.5M	23	50	60	60	4	3	3	€6.4M	22.74	36	15	386	3	3	3	455
387	Kalmar FF	64	63	65	64	€1.6M	21	50	60	60	4	3	3	€5M	24.76	47	60	387	3	1	1	441
388	FC Botoşani	64	63	63	65	€2M	27	60	40	60	4	3	3	€4.6M	24.89	42	86	388	2	4	4	233
389	SC Rheindorf Altach	64	64	66	63	€2.9M	28	50	50	50	3	3	3	€10M	24.11	8	60	389	1	3	3	114
390	Viborg FF	64	64	65	65	€1.3M	27	50	50	70	3	3	3	€3.1M	22.56	17	15	390	1	4	4	153
391	SønderjyskE	64	61	63	65	€2M	28	30	40	30	5	3	3	€4.4M	23.61	17	99	391	2	3	3	329
392	Burton Albion	64	65	64	63	€750K	25	40	50	60	4	3	3	€5M	24.08	20	99	392	3	3	3	239
393	US Quevilly Rouen Métropole	64	65	65	63	€1.9M	29	50	50	60	3	3	3	€6M	24.55	24	44	393	2	3	3	289
394	Odds BK	64	62	63	65	€2.4M	23	60	60	50	5	3	3	€6.2M	23.7	36	50	394	3	4	4	442
395	Dundee FC	64	65	64	64	€750K	27	50	50	50	4	3	3	€3.8M	25.63	44	13	395	2	3	3	349
396	St. Johnstone FC	64	63	64	65	€700K	28	50	50	60	3	3	3	€4.4M	25.79	44	13	396	3	2	2	349
397	St. Mirren	64	64	65	64	€750K	20	50	50	60	3	3	3	€3.6M	26.2	44	99	397	2	3	3	238
398	FC Flyeralarm Admira	64	64	64	64	€2.9M	26	40	40	50	3	3	3	€12.5M	23.15	8	86	398	1	3	3	260
399	HJK Helsinki	64	61	64	65	€2M	28	60	50	60	3	3	3	€4.1M	24.61	23	13	399	4	1	1	125
400	Accrington Stanley	64	66	64	63	€500K	28	60	50	60	3	3	3	€4.2M	22.75	20	99	400	2	3	3	409
401	AFC Chindia Târgoviște	64	65	63	64	€1.3M	28	50	40	60	3	3	3	€2.9M	25.46	42	86	401	1	3	3	384
402	Salford City	63	64	62	63	€1.5M	27	60	50	70	4	3	3	€2.4M	24.56	21	99	402	2	4	4	450
403	Gillingham	63	62	64	63	€1M	25	40	40	50	3	3	3	€3.4M	24.04	20	13	403	1	3	3	416
404	Bradford City	63	62	63	62	€1.3M	28	50	40	60	3	3	3	€3.2M	25.57	21	50	404	2	3	3	51
405	MSV Duisburg	63	65	63	62	€800K	28	50	50	60	4	3	3	€10.1M	24.29	26	109	405	2	4	4	164
406	Forest Green Rovers	63	62	63	64	€1M	23	50	60	60	3	3	3	€2.3M	23.09	21	99	406	3	4	4	417
407	Shamrock Rovers	63	65	62	63	€750K	22	60	70	70	5	3	3	€1.3M	26.5	41	99	407	2	1	1	456
408	Borussia Dortmund II	63	62	64	63	€2.1M	26	30	60	50	5	3	3	€5.5M	21.12	26	86	408	3	3	3	405
409	Morecambe	63	64	64	63	€500K	25	40	30	50	3	3	3	€2.3M	25.12	20	99	409	1	3	3	400
410	FC Viktoria 1889 Berlin	63	62	62	63	€874K	28	50	50	60	4	3	3	€2.3M	23.61	26	43	410	2	2	2	91
411	Newport County	63	62	62	63	€750K	28	40	40	60	4	3	3	€3.3M	24.36	21	99	411	1	1	1	214
412	AFC Wimbledon	63	63	64	62	€500K	28	40	50	40	3	3	3	€4M	21.82	20	60	412	2	4	4	327
413	Port Vale	63	62	63	63	€750K	26	40	60	60	4	3	3	€3.4M	25.27	21	13	413	2	4	4	161
414	Northampton Town	63	61	63	63	€1M	26	40	60	60	4	3	3	€3M	23.73	21	13	414	3	3	3	281
415	Doncaster Rovers	63	62	64	63	€1.3M	28	50	50	60	3	3	3	€4M	23.82	20	60	415	2	4	4	262
416	Swindon Town	63	63	64	61	€750K	28	60	50	70	3	3	3	€3.3M	22.25	21	13	416	3	1	1	346
417	Cheltenham Town	63	64	63	64	€500K	24	70	40	60	4	3	3	€2.3M	24.13	20	13	417	1	4	4	406
418	Mansfield Town	63	64	64	62	€1.5M	28	40	70	40	5	3	3	€2.8M	25.54	21	13	418	4	2	2	383
419	Stabæk Fotball	63	63	64	62	€1.7M	20	60	40	50	4	3	3	€5M	23.9	36	44	419	1	2	2	314
420	FC Dinamo 1948 Bucureşti	63	62	64	62	€1M	28	60	50	60	4	3	3	€2.2M	25.89	42	44	420	2	4	4	209
421	SK Brann	63	62	65	63	€3.7M	21	40	40	60	3	3	3	€10.3M	24.29	36	60	421	2	4	4	314
422	Wrexham AFC	63	65	63	61	€500K	28	50	60	70	6	3	3	€2.2M	25.71	22	15	422	2	3	3	379
423	Tromsø IL	63	63	65	63	€1.8M	25	60	60	60	6	3	3	€3.4M	22.8	36	99	423	3	1	1	248
424	Sportclub Verl	63	64	63	63	€1M	28	60	50	60	3	3	3	€2.1M	24.86	26	99	424	3	1	1	356
425	Bristol Rovers	63	64	63	62	€750K	28	50	60	70	3	3	3	€3.2M	25.29	21	13	425	2	1	1	204
426	FK Haugesund	63	64	62	63	€1.4M	24	50	50	60	6	3	3	€3.6M	21.92	36	99	426	2	4	4	297
427	Górnik Łęczna	63	64	62	62	€1.5M	27	40	50	50	3	3	3	€3.8M	25.81	39	99	427	2	2	2	378
428	Walsall	62	62	63	62	€750K	26	50	60	60	3	3	3	€2.6M	23.69	21	13	428	3	4	4	379
429	Crawley Town	62	63	63	62	€500K	28	60	40	40	3	3	3	€1.6M	25.18	21	99	429	2	3	3	412
430	Varbergs BoIS FC	62	62	62	62	€650K	28	70	40	70	3	3	3	€2.6M	23.11	47	13	430	1	3	3	447
431	TSV Havelse	62	62	62	62	€1.9M	27	60	50	50	3	3	3	€1.7M	24.85	26	49	431	1	3	3	221
432	Harrogate Town	62	61	63	61	€500K	26	50	40	50	4	3	3	€1.5M	24.38	21	99	432	2	4	4	404
433	SC Freiburg II	62	64	61	62	€2.6M	28	50	30	60	4	3	3	€4.8M	20.79	26	99	433	2	2	2	194
434	Crewe Alexandra	62	63	63	59	€500K	28	60	40	60	5	3	3	€2.5M	22.11	20	13	434	2	1	1	413
435	Exeter City	62	62	63	62	€750K	28	50	50	70	3	3	3	€2.9M	23.46	21	99	435	2	3	3	311
436	Colchester United	62	62	62	61	€500K	28	50	40	50	4	3	3	€2.3M	24.68	21	13	436	2	4	4	303
437	Rochdale	62	61	63	62	€500K	28	50	40	60	7	3	3	€5M	23.57	21	15	437	2	1	1	450
438	Leyton Orient	62	63	62	62	€750K	28	40	50	40	3	3	3	€2.3M	23.14	21	13	438	2	1	1	23
439	Örebro SK	62	58	64	61	€2M	21	40	30	50	3	3	3	€4.3M	25.71	47	15	439	1	3	3	318
440	Tranmere Rovers	62	63	62	63	€750K	25	60	60	60	6	3	3	€2.8M	25.68	21	50	440	3	4	4	450
441	Mjällby AIF	62	63	63	61	€850K	26	40	50	60	3	3	3	€2.6M	23.0	47	13	441	2	4	4	387
442	Sandefjord Fotball	62	62	62	62	€1.1M	26	50	40	50	3	3	3	€2.6M	22.88	36	99	442	2	4	4	394
443	Türkgücü München	62	63	63	61	€1M	18	60	60	60	3	3	3	€3.9M	24.56	26	99	443	2	2	2	333
444	CS Mioveni	62	63	61	62	€1.3M	28	50	40	50	3	3	3	€3M	26.07	42	86	444	1	3	3	384
445	Degerfors IF	62	63	63	60	€1.2M	22	60	50	50	4	3	3	€2.7M	25.0	47	99	445	2	1	1	439
446	Östersunds FK	61	58	60	63	€1.7M	21	50	40	50	6	3	3	€5.3M	24.29	47	99	446	1	3	3	167
447	Halmstads BK	61	61	61	62	€1.6M	21	40	40	40	3	3	3	€2.9M	27.0	47	99	447	1	3	3	430
448	Stevenage	61	61	61	61	€750K	28	50	50	60	3	3	3	€3M	25.71	21	99	448	2	1	1	205
449	Barrow	61	58	62	61	€500K	27	50	50	70	3	3	3	€1.8M	25.63	21	99	449	2	1	1	409
450	Oldham Athletic	61	59	61	61	€750K	28	50	40	50	3	3	3	€4.5M	24.25	21	13	450	1	4	4	437
451	Hartlepool United	61	60	60	61	€650K	24	50	40	60	4	3	3	€2M	24.08	21	99	451	1	3	3	453
452	St. Patrick`s Athletic	61	62	62	60	€525K	25	50	50	60	5	3	3	€977K	22.0	41	13	452	2	2	2	407
453	Carlisle United	61	61	62	61	€500K	28	50	40	60	5	3	3	€2.1M	24.04	21	15	453	1	3	3	449
454	Sutton United	61	61	62	62	€1.3M	25	50	40	50	6	3	3	€1.6M	26.96	21	99	454	2	2	2	412
455	Mjøndalen IF	60	60	60	59	€1.5M	22	60	40	60	3	3	3	€2.8M	24.86	36	99	455	1	2	2	386
456	Bohemian FC	60	58	61	59	€530K	21	40	50	60	3	3	3	€980K	21.71	41	99	456	2	4	4	407
457	Sligo Rovers	60	62	59	60	€515K	24	40	50	40	5	3	3	€952K	23.25	41	99	457	4	1	1	462
458	Dundalk FC	60	62	59	60	€700K	22	50	70	70	5	3	3	€1.2M	25.0	41	99	458	3	4	4	463
459	Scunthorpe United	60	60	57	60	€1M	28	60	60	40	3	3	3	€2.8M	21.86	21	13	459	3	2	2	249
460	Derry City	60	60	62	60	€510K	23	50	50	60	3	3	3	€985K	23.3	41	99	460	2	4	4	462
461	FC Academica Clinceni	60	62	61	61	€1M	27	50	40	60	3	3	3	€2.2M	22.78	42	99	461	1	2	2	331
462	Finn Harps	57	56	58	57	€500K	24	40	40	60	4	3	3	€940K	25.5	41	99	462	2	4	4	460
463	Drogheda United	57	58	57	56	€505K	22	60	50	60	4	3	3	€945K	23.77	41	99	463	1	4	4	458
464	Waterford FC	57	56	57	57	€508K	28	50	50	60	4	3	3	€950K	22.96	41	43	464	2	2	2	452
465	Gaz Metan Mediaş	55	57	55	57	€1.7M	20	50	50	60	4	3	3	€3.9M	19.45	42	44	465	1	4	4	355
466	Longford Town	54	55	54	53	€500K	19	60	50	50	3	3	3	€935K	23.37	41	99	466	2	3	3	463
\.


--
-- Data for Name: coach; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.coach (coach_id, coach_name, birth_date, club_id) FROM stdin;
1	Jürgen Klopp	1967-06-16	1
2	Josep Guardiola i Sala	1971-01-18	2
3	Mauricio Roberto Pochettino Trossero	1972-03-02	3
4	Thomas Tuchel	1973-08-29	4
5	Julian Nagelsmann	1987-07-23	5
6	Carlo Ancelotti	1959-06-10	6
7	Ralf Rangnick	1958-06-29	7
8	Diego Pablo Simeone	1970-04-28	8
9	Xavier Hernández Creus	1980-01-25	9
10	Simone Inzaghi	1976-04-05	10
11	Massimiliano Allegri	1967-08-11	11
12	Antonio Conte	1969-07-31	12
13	Marco Rose	1976-09-11	13
14	Stefano Pioli	1965-10-20	14
15	Julen Lopetegui Argote	1966-08-28	15
16	Mikel Arteta Amatriain	1982-03-26	16
17	Gian Piero Gasperini	1958-01-26	17
18	Domenico Tedesco	1985-09-12	18
19	Luciano Spalletti	1959-03-07	19
20	Brendan Rodgers	1973-01-26	20
21	Imanol Alguacil Barrenetxea	1971-07-04	21
22	Unai Emery Etxegoien	1971-11-03	22
23	David Moyes	1963-04-25	23
24	Gerardo Seoane	1978-10-30	24
25	Maurizio Sarri	1959-01-10	25
26	José Mario Felix dos Santos Mourinho	1963-01-26	26
27	Marcelino García Toral	1965-08-14	27
28	Manuel Luis Pellegrini Ripamonti	1953-09-16	28
29	Ruben Filipe Marques Amorim	1985-01-27	29
30	Erik ten Hag	1970-02-02	30
31	Steven Gerrard	1980-05-30	31
32	Frank Lampard	1978-06-20	32
33	Adolf Hütter	1970-02-11	33
34	Peter Bosz	1963-11-21	34
35	Bruno Miguel Silva do Nascimento	1976-05-12	35
36	Jorge Luis Sampaoli Moya	1960-03-13	36
37	Nelson Alexandre da Silva Veríssimo	1977-04-17	37
38	Sérgio Paulo Marceneiro Conceição	1974-11-15	38
39	Eddie Howe	1977-11-29	39
40	Oliver Glasner	1974-08-28	40
41	Sebastian Hoeneß	1982-05-12	41
42	Philippe Clement	1974-03-22	42
43	Bruno Génésio	1966-09-01	43
44	Florian Kohfeldt	1982-10-05	44
45	Diego Martínez Penas	1980-12-16	45
46	Ivan Gennaro Gattuso	1978-01-09	46
47	Ruben Torrecilla Gonzalez	1979-05-24	47
48	Roger Schmidt	1967-03-13	48
49	Sean Dyche	1971-06-28	49
50	Patrick Vieira	1976-06-23	50
51	Jesse Marsch	1973-11-08	51
52	Graham Potter	1975-05-20	52
53	Ralph Hasenhüttl	1967-08-09	53
54	Pedro Rui da Mota Vieira Martins	1970-07-17	54
55	Vincenzo Italiano	1977-12-10	55
56	Mehdi Nafti	1978-11-28	56
57	Jocelyn Gourvennec	1972-03-22	57
58	Enrique Sánchez Flores	1965-02-05	58
59	Christophe Galtier	1966-08-28	59
60	Eduardo Germán Coudet	1974-09-12	60
61	Jagoba Arrasate Elustondo	1978-04-22	61
62	Jindřich Trpišovský	1976-02-27	62
63	Christian Streich	1965-06-11	63
64	Steffen Baumgart	1972-01-05	64
65	Marco Giampaolo	1967-08-02	65
66	Ivan Juric	1975-08-25	66
67	Franck Haise	1971-04-15	67
68	Olivier Dall’Oglio	1964-05-16	68
69	Jorge Fernando Pinheiro de Jesus	1954-07-24	69
70	Julien Stéphan	1980-09-18	70
71	Alessio Dionisi	1980-04-01	71
72	Sergio González Soriano	1976-11-10	72
73	Abdullah Mucip Avcı	1963-07-31	73
74	Siniša Mihajlović	1969-02-20	74
75	Gabriele Cioffi	1975-09-30	75
76	Luis García Plaza	1972-12-01	76
77	Alfred Schreuder	1972-02-11	77
78	Arne Slot	1978-09-17	78
79	Roy Hodgson	1947-08-09	79
80	Michal Horňák	1970-04-28	80
81	Pellegrino Matarazzo	1977-11-28	81
82	Andrea Sottil	1974-01-04	82
83	Markus Weinzierl	1974-12-28	83
84	Domènec Torrent Font	1962-07-14	84
85	Antoine Kombouare	1963-11-16	85
86	Valérien Ismaël	1975-09-28	86
87	Giovanni van Bronckhorst	1975-02-05	87
88	Jefferson Carlos Carvalhal da Silva	1975-06-04	88
89	Thomas Frank	1973-10-09	89
90	Marco Alexandre Saraiva da Silva	1977-07-12	90
91	Felix Magath	1953-07-26	91
92	Bo Svensson	1979-08-04	92
93	Roberto De Zerbi	1979-06-06	93
94	Javier Aguirre Onaindía	1958-12-01	94
95	Francisco Javier Rodríguez Vílchez	1978-06-17	95
96	Andoni Iraola Sagarna	1982-06-22	96
97	Dean Smith	1971-03-19	97
98	Paul Heckingbottom	1977-07-17	98
99	Sokratis Ofridopoulos	1973-10-26	99
100	Laurent Batlles	1975-09-23	100
101	Urs Fischer	1966-02-20	101
102	Alessandro Agostini	1979-07-23	102
103	David Guion	1967-09-30	103
104	Joan Francesc Ferrer Sicilia	1970-02-05	104
105	Angelos Postecoglou	1965-07-27	105
106	Pascal Jansen	1973-01-27	106
107	Michel Der Zakarian	1963-02-18	107
108	Óscar García Junyent	1973-04-26	108
109	Michal Bílek	1965-04-13	109
110	Răzvan Lucescu	1969-02-17	110
111	Emre Belözoğlu	1980-09-07	111
112	Scott Parker	1980-10-13	112
113	Mircea Lucescu	1945-07-29	113
114	Matthias Jaissle	1988-04-05	114
115	Juan José Rojo Martín	1968-03-23	115
116	Ante Čačić	1953-09-29	116
117	Gaizka Garitano Aguirre	1975-07-09	117
118	Alexander Blessin	1973-05-28	118
119	Gérald Baticle	1969-09-10	119
120	Volkan Demirel	1981-10-27	120
121	Ole Werner	\N	121
122	Bruno Irles	1975-08-16	122
123	Jess Thorup	1970-02-21	123
124	Frédéric Antonetti	1961-08-19	124
125	Ivan Jovanović	1962-07-08	125
126	Marco Kostmann	1966-04-12	126
127	Thomas Reis	1973-10-04	127
128	Bernd Storck	1963-01-25	128
129	Hein Vanhaezebrouck	1964-02-16	129
130	Ivan Javorcic	1979-01-24	130
131	Paolo Zanetti	1982-12-16	131
132	Vincent Kompany	1986-04-10	132
133	Brian Priske Pedersen	1977-05-14	133
134	Miguel Ángel Sánchez Muñoz	1975-10-30	134
135	Tony Mowbray	1963-11-22	135
136	Steve Cooper	1979-12-10	136
137	Mark Warburton	1962-09-06	137
138	Pascal Gastien	1963-12-02	138
139	Tim Walter	1975-11-08	139
140	Michael Büskens	1968-03-19	140
141	Davide Nicola	1973-03-05	141
142	Stanislav Cherchesov	1963-09-02	142
143	Pedro Miguel Marques da Costa Filipe	1980-12-14	143
144	Steve Bruce	1960-12-31	144
145	Guillermo Abascal Perez	1989-04-13	145
146	Matteo Vanetta	1978-08-06	146
147	Thiago Motta	1982-08-28	147
148	Vincenzo Montella	1974-06-18	148
149	Stefan Leitl	1977-08-29	149
150	Christophe Pélissier	1965-10-05	150
151	Felice Mazzù	1966-03-12	151
152	Alfons Groenendijk	1964-05-17	152
153	Bo Henriksen	1975-02-07	153
154	Francesco Farioli	1989-04-10	154
155	Paul Ince	1967-10-21	155
156	Luis Miguel Ramis Monfort	1970-07-25	156
157	Valdas Dambrauskas	1977-01-07	157
158	Mark Robins	1969-12-22	158
159	Ryan Lowe	1978-09-18	159
160	Chris Wilder	1967-09-23	160
161	Michael O`Neill	1969-07-05	161
162	Mehdi Nafti	1978-11-28	162
163	Bruno Miguel Nogueira Pinheiro	1976-10-30	163
164	Daniel Thioune	1974-07-21	164
165	Paulo Sérgio Bento Brito	1968-02-19	165
166	Fabio Pecchia	1973-08-24	166
167	Milos Milojevic	1982-09-29	167
168	José Ricardo Soares Ribeiro	1974-11-11	168
169	Gary Rowett	1974-03-06	169
170	Paulo César da Silva Peixoto	1980-05-12	170
171	Vasco César Freire De Seabra	1983-09-15	171
172	John van den Brom	1966-10-04	172
173	Armando Gonçalves Teixeira	1976-09-25	173
174	Rick Kruijs	1985-05-09	174
175	Thomas Letsch	1968-08-26	175
176	Carlos Corberán Vallet	1983-04-07	176
177	Fabio Caserta	1978-09-24	177
178	Ömer Erdogan	1977-05-03	178
179	Stjepan Tomas	1976-06-03	179
180	Ömer Erdogan	1977-05-03	180
181	Russell Martin	1986-01-04	181
182	Rui Pedro Teixeira de Jesus da Silva	1977-03-14	182
183	Robert Klauß	1984-12-01	183
184	Bülent Korkmaz	1968-11-24	184
185	Rıza Çalımbay	1963-02-02	185
186	Erol Bulut	1975-01-30	186
187	Giovanni Stroppa	1968-01-24	187
188	Jose Luis Martí Soler	1975-04-28	188
189	Francisco Javier García Pimienta	1974-08-03	189
190	Ümit Şengül	1968-09-06	190
191	Luis Miguel Carrión Delgado	1979-02-07	191
192	Juan Carlos Carcedo Mardones	1973-08-19	192
193	José Ángel Ziganda Lacunza	1966-10-01	193
194	Christian Eichner	1982-11-24	194
195	Lukas Kwasniok	1981-06-12	195
196	Jean-Marc Furlan	1957-11-20	196
197	José Ignacio González Sáenz	1966-07-29	197
198	Francisco Jémez Martín	1970-04-18	198
199	Lee Bowyer	1977-01-03	199
200	Marco Baroni	1963-09-11	200
201	Ricardo Manuel Andrade Silva Sá Pinto	1972-10-10	201
202	Ron Jans	1958-09-29	202
203	Sjors Ultee	1987-05-23	203
204	Nigel Pearson	1963-08-21	204
205	Nathan Jones	1973-05-28	205
206	Frank Schmidt	1974-01-03	206
207	Wouter Vrancken	1979-02-03	207
208	Nuno Alexandre Carvalho Campos	1975-04-20	208
209	Anton Petrea	1975-03-09	209
210	Timmy Simons	1976-12-11	210
211	Edward Still	1990-12-30	211
212	Mário Fernando Magalhães da Silva	1977-04-24	212
213	Torsten Lieberknecht	1973-08-01	213
214	Steve Morison	1983-08-29	214
215	İlhan Palut	1976-11-12	215
216	Yves Vanderhaeghe	1970-01-30	216
217	Álvaro Adriano Teixeira Pacheco	1971-06-25	217
218	Christian Ilzer	1977-10-21	218
219	Nicolas Usaï	1974-05-01	219
220	Dan Vasile Petrescu	1967-12-22	220
221	Christoph Dabrowski	1978-07-01	221
222	Jon Andoni Pérez Alonso	1974-03-05	222
223	Luka Elsner	1982-08-02	223
224	Jon Andoni Pérez Alonso	1974-03-05	224
225	Marc Brys	1962-05-10	225
226	Timo Schultz	1977-08-26	226
227	Dietmar Didi Kühbauer	1971-04-04	227
228	Philippe Montanier	1964-11-15	228
229	Philippe Hinschberger	1959-11-19	229
230	Jens Härtel	1969-06-07	230
231	Mersad Selimbegovic	1982-04-29	231
232	Sofronis Avgousti	1977-03-09	232
233	László György Balint	1979-03-29	233
234	Lars Friis	1976-05-07	234
235	Marcel Rapp	1979-04-16	235
236	Alain Geiger	1960-11-05	236
237	Aleksandar Vukovic	1979-08-25	237
238	Robbie Neilson	1980-06-19	238
239	Wayne Mark Rooney	1985-10-24	239
240	Franclim Pereira da Silva Maia Carvalho	1987-03-30	240
241	Alois Schwartz	1967-03-28	241
242	Rogier Meijer	1981-09-05	242
243	André Breitenreiter	1973-10-02	243
244	Mario Frick	1974-09-07	244
245	Armando Evangelista Macedo Freitas	1973-11-03	245
246	Martin Devaney	1980-06-01	246
247	Sinan Kaloglu	1981-06-10	247
248	Kjetil Knutsen	1968-10-02	248
249	Shota Arveladze	1973-02-22	249
250	Bernd Hollerbach	1969-12-08	250
251	Bartosz Grzelak	1978-11-02	251
252	Thierry Laurey	1964-02-17	252
253	Stéphane Moulin	1967-08-04	253
254	Dominik Thalhammer	1970-10-02	254
255	Michael Valkanis	1974-08-23	255
256	Omar Daf	1977-02-12	256
257	Rubén Albés Yáñez	1985-02-24	257
258	Karim Belhocine	1978-04-02	258
259	Hakan Keleş	1972-01-08	259
260	Ferdinand Feldhofer	1979-10-23	260
261	Manfred Schmid	1971-02-20	261
262	Paul Warne	1973-05-08	262
263	Niels Frederiksen	1968-09-11	263
264	David Jean Nielsen	1976-12-01	264
265	Darren Moore	1974-04-22	265
266	Kees van Wonderen	1969-01-04	266
267	Frank Wormuth	1960-09-13	267
268	Maurice Steijn	1973-11-20	268
269	Kjetil André Rekdal	1968-11-06	269
270	Mattia Croci-Torti	1982-04-10	270
271	Giorgio Contini	1974-01-04	271
272	Julián Calero Fernández	1970-10-26	272
273	Olivier Pantaloni	1966-12-13	273
274	Kevin Hofland	1979-07-06	274
275	Christophe Delmotte	\N	275
276	Ole Tobiasen	1975-07-08	276
277	Danny Buijs	1982-06-21	277
278	Leam Richardson	1979-11-19	278
279	Michael Appleton	1975-12-04	279
280	Rüdiger Rehm	1978-11-22	280
281	Grant McCann	1980-04-14	281
282	Marek Papszun	1974-08-08	282
283	Jens Gustafsson	1978-10-15	283
284	Erling Moe	\N	284
285	Paolo Tramezzani	1970-07-30	286
286	Martí Cifuentes Corvillo	\N	287
287	Thomas Lagerlöf	1971-11-15	288
288	Luka Elsner	1982-08-02	289
289	Robin Dutt	1965-01-24	290
290	José Ramón Sandoval Huertas	1968-05-02	291
291	Joseba Andoni Etxeberria Lizardi	1977-09-05	292
292	Guerino Capretti	1982-02-05	293
293	Pavel Dochev	1965-09-28	294
294	Vincent Hognon	1974-08-16	295
295	Marco Antwerpen	1971-10-05	296
296	Morten Jensen	1981-03-09	297
297	Jean Louis Garcia	1962-09-20	298
298	Stéphane Dumont	1982-06-09	299
299	Ludovic Magnin	1979-04-20	300
300	Jim Goodwin	1981-11-20	301
301	David Gray	1988-05-04	302
302	Kieran McKenna	\N	303
303	Alex Neil	1981-06-09	304
304	Cihat Arslan	1970-02-09	305
305	Joseph Oosting	1973-01-29	306
306	Xabier Alonso Olano	1981-11-25	307
307	Dick Schreuder	1971-08-12	308
308	Peter Zeidler	1962-08-08	309
309	Henk de Jong	1964-08-27	310
310	Steven Schumacher	1984-04-30	311
311	Gareth Ainsworth	1973-05-10	312
312	Francesco Modesto	1982-02-16	313
313	Dag-Eilev Akkerhaugen Fagermo	1967-01-18	314
314	Piotr Nowak	1964-07-05	315
315	Michael Schiele	1978-03-03	316
316	Jimmy Thelin	1978-03-14	317
317	Rikard Norling	1971-06-04	318
318	Aritz Mújika López	1981-11-13	319
319	Omar Daf	1977-02-12	320
320	Waldemar Fornalik	1963-04-11	321
321	Tomasz Kaczmarek	1984-09-20	322
322	Thomas Thomasberg	1974-10-15	323
323	Gheorghe Hagi	1965-02-05	324
324	Danny Cowley	\N	325
325	Ian Ross Evatt	1981-11-19	326
326	Liam Manning	1985-08-20	327
327	Kent Nielsen	1961-12-28	328
328	Andreas Alm	1973-06-19	329
329	Sébastien Desabre	1976-08-02	330
330	Liviu Ciobotariu	1971-03-26	331
331	Albert Cartier	1960-11-22	332
332	Michael Köllner	1969-12-29	333
333	Geir Bakke	1969-10-23	334
334	Laurent Peyrelade	1970-07-07	335
335	Adrian Mutu	1979-01-08	336
336	Ivan Prelec	\N	337
337	Régis Brouard	1967-01-17	338
338	Mikael Stahre	1975-07-05	339
339	Jerzy Brzęczek	1971-03-18	340
340	Graham Alexander	1971-10-10	341
341	Ben Garner	1980-05-19	342
342	Jacek Zielinski	1961-03-22	343
343	Piotr Stokowiec	1972-05-25	344
344	Ionuţ Badea	1975-10-14	345
345	Karl Robinson	1980-09-13	346
346	Jan Urban	1962-05-14	347
347	Romain Revelli	1977-08-22	348
348	Jack Ross	1976-06-05	349
349	Thomas Silberberger	1973-06-03	350
350	Patrick Glöckner	1976-11-18	351
351	Per-Mathias Høgmo	1959-12-01	352
352	Francisco Javier Fernández Díaz	1980-03-20	353
353	Klaus Schmidt	1967-10-21	354
354	Cristiano Bergodi	1964-10-14	355
355	Daniel Scherning	1983-10-29	356
356	Markus Kauczinski	1970-02-20	357
357	Mariusz Lewandowski	1979-05-18	358
358	Didier Tholot	1964-04-02	359
359	Piotr Tworek	1975-03-10	360
360	Peter Pacult	1959-10-28	361
361	Flemming Pedersen	1947-09-02	362
362	Christian Titz	1971-04-01	363
363	Joe Enochs	1971-09-01	364
364	Nicolò Napoli	1962-02-07	365
365	Rico Schmitt	1968-09-27	366
366	Uwe Koschinat	1971-09-01	367
367	Christian Heinle	1985-03-30	368
368	Pavol Stano	1977-09-29	369
369	Daniel Bäckström	\N	370
370	Christian Michelsen	1973-03-14	371
371	Olaf Janßen	1966-10-08	372
372	Stefan Billborn	1972-11-15	373
373	Adam Majewski	1973-12-24	374
374	David Martindale	1974-07-13	375
375	Ralf Santelli	1968-05-26	376
376	Malky Mackay	1972-02-19	377
377	Radoslav Látal	1970-01-06	378
378	Steve Cotterill	1964-07-20	379
379	Dawid Szulczek	1990-01-26	380
380	Scott Brown	1985-06-25	381
381	André Meyer	1984-06-05	382
382	Mark Kennedy	1976-05-15	383
383	Constantin Schumacher	1976-05-08	384
384	Mark Bonner	\N	385
385	Bjørn Petter Ingebretsen	1967-05-26	386
386	Henrik Rydström	1976-02-16	387
387	Marius Marian Croitoru	1980-10-02	388
388	Ludovic Magnin	1979-04-20	389
389	Jacob Friis	1976-12-11	390
390	Henrik Hansen	1979-07-28	391
391	Jerrel Hasselbaink	1972-03-27	392
392	Fabien Mercadal	1972-02-29	393
393	Pal Arne Johansen	1977-02-16	394
394	Gary Bowyer	1971-06-26	395
395	Callum Davidson	1976-06-25	396
396	Stephen Robinson	1974-12-10	397
397	Roberto Pätzold	1980-07-17	398
398	Toni Koskela	1983-02-16	399
399	John Coleman	1962-10-12	400
400	Emil Săndoi	1965-03-01	401
401	Neil Wood	1983-01-04	402
402	Neil Harris	1977-07-12	403
403	Mark Hughes	1963-11-01	404
404	Hagen Schmidt	1970-02-11	405
405	Ian Burchnall	1983-02-11	406
406	Stephen Bradley	1984-11-19	407
407	Enrico Maaßen	1984-03-10	408
408	Derek Adams	1975-06-25	409
409	Farat Toku	1980-04-20	410
410	James Rowberry	1985-04-26	411
411	Johnnie Jackson	1982-08-15	412
412	Darrell Clarke	1977-12-16	413
413	Jon Brady	1975-01-14	414
414	Gary McSheffrey	1982-08-13	415
415	Ben Garner	1980-05-19	416
416	Michael Duff	1978-01-11	417
417	Nigel Clough	1966-03-19	418
418	Eirik Kjönö	1991-02-27	419
419	Dušan Uhrin Jr.	1967-10-11	420
420	Eirik Horneland	1975-03-14	421
421	Phil Parkinson	1967-12-01	422
422	Gaute Ugelstad Helstrup	1976-05-15	423
423	Michél Kniat	1985-11-18	424
424	Joey Barton	1982-09-02	425
425	Jostein Grindhaug	1973-02-20	426
426	Kamil Kieres	1974-07-16	427
427	Michael John Flynn	1980-10-17	428
428	John Yems	\N	429
429	Joakim Persson	1975-04-03	430
430	Rüdiger Ziehl	1977-10-26	431
431	Simon Weaver	1977-12-20	432
432	Thomas Stamm	1983-02-19	433
433	Alex Morris	1983-10-05	434
434	Matthew Taylor	1982-01-30	435
435	Wayne Brown	1977-08-20	436
436	Robbie Stockdale	1979-11-30	437
437	Richard Wellens	1980-03-26	438
438	Axel Kjäll	1981-06-01	439
439	Micky Mellon	1972-03-18	440
440	Andreas Brännström	\N	441
441	Hans Erik Ødegaard	1974-01-20	442
442	Andreas Heraf	1967-09-10	443
443	Alexandru Pelici-Drăghicescu	1974-01-10	444
444	Andreas Holmberg	1984-08-17	445
445	Magnus Powell	1974-10-28	446
446	Magnus Haglund	1973-04-15	447
447	Steve Evans	1962-10-30	448
448	Peter Wild	\N	449
449	John Sheridan	1964-10-01	450
450	Graeme Lee	1978-05-31	451
451	Tim Clancy	1984-06-08	452
452	Paul Simpson	1966-07-26	453
453	Matt Gray	1981-11-02	454
454	Vegard Hansen	1969-08-08	455
455	Keith Long	1973-11-14	456
456	Liam Buckley	1960-04-14	457
457	Stephen McDonnell	1992-03-28	458
458	Keith Hill	1969-05-17	459
459	Ruaidhri Higgins	1984-10-23	460
460	Constantin Giurescu	\N	461
461	Ollie Horgan	\N	462
462	Kevin Doherty	1980-04-18	463
463	Ian Morris	1987-02-27	464
464	Marin Dună	1967-08-02	465
465	Gary Cronin	1979-03-16	466
\.


--
-- Data for Name: defensive_style; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.defensive_style (defensive_style_id, defensive_style_name) FROM stdin;
1	Drop Back
2	Balanced
3	Pressure On Heavy Touch
4	Press After Possession Loss
5	Constant Pressure
\.


--
-- Data for Name: league; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.league (league_id, league_name) FROM stdin;
1	English Premier League (1)
2	French Ligue 1 (1)
3	German 1. Bundesliga (1)
4	Italian Serie A (1)
5	Spain Primera Division (1)
6	Argentina Primera División (1)
7	Australian Hyundai A-League (1)
8	Austrian Football Bundesliga (1)
9	Belgian Jupiler Pro League (1)
10	Campeonato Brasileiro Série A (1)
11	Chilean Campeonato Nacional (1)
12	Chinese Super League (1)
13	Colombian Liga Postobón (1)
14	Croatian Prva HNL (1)
15	Cypriot First Division (1)
16	Czech Republic Gambrinus Liga (1)
17	Danish Superliga (1)
18	Ecuadorian Serie A (1)
19	English League Championship (2)
20	English League One (3)
21	English League Two (4)
22	English National League (5)
23	Finnish Veikkausliiga (1)
24	French Ligue 2 (2)
25	German 2. Bundesliga (2)
26	German 3. Bundesliga (3)
27	Greek Super League (1)
28	Holland Eredivisie (1)
29	Hungarian Nemzeti Bajnokság I (1)
30	Indian Super League (1)
31	Italian Serie B (2)
32	Japanese J. League Division 1 (1)
33	Korean K League 1 (1)
34	Liga de Fútbol Profesional Boliviano (1)
35	Mexican Liga MX (1)
36	Norwegian Eliteserien (1)
37	Paraguayan Primera División (1)
38	Peruvian Primera División (1)
39	Polish T-Mobile Ekstraklasa (1)
40	Portuguese Liga ZON SAGRES (1)
41	Rep. Ireland Airtricity League (1)
42	Romanian Liga I (1)
43	Saudi Abdul L. Jameel League (1)
44	Scottish Premiership (1)
45	South African Premier Division (1)
46	Spanish Segunda División (2)
47	Swedish Allsvenskan (1)
48	Swiss Super League (1)
49	Turkish Süper Lig (1)
50	UAE Arabian Gulf League (1)
51	USA Major League Soccer (1)
52	Ukrainian Premier League (1)
53	Uruguayan Primera División (1)
54	Venezuelan Primera División (1)
\.


--
-- Data for Name: stadium; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stadium (stadium_id, stadium_name) FROM stdin;
1	Aloha Park
2	Anfield
3	Arena d`Oro
4	Arena del Centenario
5	Atatürk Olimpiyat Stadı
6	BORUSSIA-PARK
7	BayArena
8	Benteler-Arena
9	Bramall Lane
10	Cardiff City Stadium
11	Carrow Road
12	Coliseum Alfonso Pérez
13	Court Lane
14	Craven Cottage
15	Crown Lane
16	Deutsche Bank Park
17	Donbass Arena
18	Düsseldorf-Arena
19	Eastpoint Arena
20	El Alcoraz
21	El Libertador
22	Elland Road
23	Emirates Stadium
24	Estadio Abanca-Balaídos
25	Estadio Benito Villamarín
26	Estadio Ciutat de València
27	Estadio José Zorrilla
28	Estadio La Rosaleda
29	Estadio Mestalla
30	Estadio Nuevo Los Cármenes
31	Estadio Presidente G.Lopes
32	Estadio San Mamés
33	Estadio Santiago Bernabéu
34	Estadio de Gran Canaria
35	Estadio de Mendizorroza
36	Estadio de Montilivi
37	Estadio de Vallecas
38	Estadio de la Cerámica
39	Estadio de las Artes
40	Estádio da Luz
41	Estádio do Dragão
42	Etihad Stadium
43	Euro Arena
44	Euro Park
45	Forest Park Stadium
46	Fratton Park
47	Goodison Park
48	Groupama Stadium
49	HDI-Arena
50	Ivy Lane
51	Johan Cruijff ArenA
52	King Power Stadium
53	Kirklees Stadium
54	Kiyan Prince Foundation
55	London Stadium
56	MKM Stadium
57	Max-Morlock-Stadion
58	Mercedes-Benz Arena
59	Molineux Stadium
60	Molton Road
61	Municipal de Butarque
62	Municipal de Ipurua
63	Nuevo Mirandilla
64	O Dromo
65	Old Trafford
66	Olympiastadion
67	Opel Arena
68	Orange Vélodrome
69	Parc des Princes
70	PreZero Arena
71	RCDE Stadium
72	Ramón Sánchez-Pizjuán
73	Reale Arena
74	Red Bull Arena
75	RheinEnergieStadion
76	Riverside Stadium
77	San Siro
78	Sanderson Park
79	SchücoArena
80	Selhurst Park
81	Signal Iduna Park
82	St. James` Park
83	St. Mary`s Stadium
84	Stade Municipal
85	Stadio Classico
86	Stadion 23. Maj
87	Stadion An der Alten Försterei
88	Stadion Europa
89	Stadion Hanguk
90	Stadion Neder
91	Stadion Olympik
92	Stadium of Light
93	Stamford Bridge
94	Stoke City FC Stadium
95	Swansea.com Stadium
96	The Amex Stadium
97	The Hawthorns
98	Tottenham Hotspur Stadium
99	Town Park
100	Turf Moor
101	Veltins-Arena
102	Vicarage Road
103	Villa Park
104	Visit Mallorca Estadi
105	Vitality Stadium
106	Volksparkstadion
107	Volkswagen Arena
108	WWK Arena
109	Waldstadion
110	Wanda Metropolitano
111	Wohninvest Weserstadion
\.


--
-- Name: build_up_play build_up_play_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.build_up_play
    ADD CONSTRAINT build_up_play_pkey PRIMARY KEY (build_up_play_id);


--
-- Name: captain captain_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.captain
    ADD CONSTRAINT captain_pkey PRIMARY KEY (captain_id);


--
-- Name: chance_creation chance_creation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chance_creation
    ADD CONSTRAINT chance_creation_pkey PRIMARY KEY (chance_creation_id);


--
-- Name: club club_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.club
    ADD CONSTRAINT club_pkey PRIMARY KEY (club_id);


--
-- Name: coach coach_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coach
    ADD CONSTRAINT coach_pkey PRIMARY KEY (coach_id);


--
-- Name: defensive_style defensive_style_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.defensive_style
    ADD CONSTRAINT defensive_style_pkey PRIMARY KEY (defensive_style_id);


--
-- Name: league league_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.league
    ADD CONSTRAINT league_pkey PRIMARY KEY (league_id);


--
-- Name: stadium stadium_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stadium
    ADD CONSTRAINT stadium_pkey PRIMARY KEY (stadium_id);


--
-- Name: club club_build_up_play_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.club
    ADD CONSTRAINT club_build_up_play_id_fkey FOREIGN KEY (build_up_play_id) REFERENCES public.build_up_play(build_up_play_id);


--
-- Name: club club_captain_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.club
    ADD CONSTRAINT club_captain_id_fkey FOREIGN KEY (captain_id) REFERENCES public.captain(captain_id);


--
-- Name: club club_chance_creation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.club
    ADD CONSTRAINT club_chance_creation_id_fkey FOREIGN KEY (chance_creation_id) REFERENCES public.chance_creation(chance_creation_id);


--
-- Name: club club_defensive_style_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.club
    ADD CONSTRAINT club_defensive_style_id_fkey FOREIGN KEY (defensive_style_id) REFERENCES public.defensive_style(defensive_style_id);


--
-- Name: club club_home_stadium_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.club
    ADD CONSTRAINT club_home_stadium_id_fkey FOREIGN KEY (home_stadium_id) REFERENCES public.stadium(stadium_id);


--
-- Name: club club_league_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.club
    ADD CONSTRAINT club_league_id_fkey FOREIGN KEY (league_id) REFERENCES public.league(league_id);


--
-- Name: club club_rival_club_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.club
    ADD CONSTRAINT club_rival_club_id_fkey FOREIGN KEY (rival_club_id) REFERENCES public.club(club_id);


--
-- Name: coach coach_club_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coach
    ADD CONSTRAINT coach_club_id_fkey FOREIGN KEY (club_id) REFERENCES public.club(club_id);


--
-- PostgreSQL database dump complete
--

