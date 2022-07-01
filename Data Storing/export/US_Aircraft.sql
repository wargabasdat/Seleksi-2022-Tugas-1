--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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
-- Name: us_aircraft; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.us_aircraft (
    id_plane integer NOT NULL,
    aircraft character varying(50) NOT NULL,
    role character varying NOT NULL
);


ALTER TABLE public.us_aircraft OWNER TO postgres;

--
-- Data for Name: us_aircraft; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.us_aircraft (id_plane, aircraft, role) FROM stdin;
1	A-10 Thunderbolt II	Attack Aircraft
2	AC-130 Spectre	Gunship
3	B-1 Lancer	Bomber
4	B-2 Spirit	Bomber
5	B-52 Stratofortress	Bomber
6	C-5 Galaxy	Cargo Aircraft
7	C-12 Huron	Cargo AircraftSurveillance aircraft
8	C-17 Globemaster III	Cargo Aircraft
9	Gulfstream C-20	VIP/Passenger/Cargo aircraft
10	Learjet C-21	VIP/Passenger aircraft
11	C-26 Metroliner	Cargo Aircraft
12	C-27J Spartan	Cargo Aircraft
13	Boeing C-32	Passenger aircraft
14	Gulfstream C-37	VIP/Passenger aircraft
15	Gulfstream C-38	VIP/Passenger aircraft
16	C-40 Clipper	Passenger aircraft
17	C-130 Hercules	Cargo Aircraft
18	C-130J Super Hercules	Cargo Aircraft
19	C-144	Transport aircraft
20	PZL C-145 Skytruck	Transport aircraft
21	C-146[18]	Transport aircraft
22	E-3 Sentry	Airborne Command and Control Aircraft
23	Boeing E-4	Airborne Command and Control Aircraft
24	E-8 Joint STARS	Airborne Command and Control Aircraft
25	E-9A Widget	Surveillance aircraft
26	Northrop Grumman E-11A[23]	Battlefield Airborne Communications Node
27	EC-130H Compass Call	Electronic Warfare Aircraft
28	EC-130J Commando Solo III	Electronic Warfare Aircraft
29	F-15 Eagle	Air Superiority Fighter
30	F-15E Strike Eagle	Fighter Aircraft
31	F-16 Fighting Falcon	Fighter Aircraft
32	F-22 Raptor	Air Superiority Fighter
33	F-35 Lightning II	Fighter aircraft
34	HC-130 Combat King/Combat King II	Search and Rescue Aircraft
35	KC-10 Extender	Tanker Aircraft
36	KC-135 Stratotanker	Tanker Aircraft
37	LC-130 Hercules	Cargo aircraft
38	MC-130Combat Talon II/Combat Shadow	Multi-mission Aircraft
39	OC-135 Open Skies	Observation Aircraft
40	Boeing RC-135	Reconnaissance Aircraft
41	T-1 Jayhawk	Trainer Aircraft
42	T-6 Texan II	Trainer Aircraft
43	T-38 Talon	Trainer Aircraft
44	T-41 Mescalero	Trainer Aircraft
45	Cessna T-51	Trainer Aircraft
46	Diamond T-52	Trainer Aircraft
47	Cirrus T-53[34]	Trainer Aircraft
48	U-2 Dragon Lady	Reconnaissance AircraftTrainer Aircraft
49	Pilatus U-28	Utility Aircraft
50	Boeing VC-25	VIP Transport
51	WC-130 Hercules	Weather Reconnaissance Aircraft
52	WC-135 Constant Phoenix	Weather Reconnaissance Aircraft
53	HH-60 Pave Hawk	Search and Rescue Helicopter
54	UH-1N Twin Huey	Utility Helicopter
55	UH-1 Iroquois	Utility Helicopter
56	TH-1 Iroquois	Training Helicopter
57	de Havilland Canada UV-18	Utility STOL Aircraft
58	CV-22 Osprey	Cargo VTOL Aircraft
59	Mil Mi-8	Utility helicopter
60	Mikoyan MiG-29	Air superiority Multirole fighter
61	Sukhoi Su-27	Air superiority fighter
62	C-12 Huron	Cargo/Transport
63	Gulfstream C-20	Cargo/Transport
64	C-23 Sherpa	Cargo/Transport
65	C-26 Metroliner	Cargo/Transport
66	C-31 Troopship	Cargo/Transport
67	Gulfstream C-37	Cargo/Transport
68	EO-5	Reconnaissance
69	RC-12 Huron	Reconnaissance
70	Cessna UC-35	Utility aircraft
71	AH-6 Little Bird	Attack helicopter
72	AH-64 Apache	Attack helicopter
73	CH-47 Chinook	Cargo Helicopter
74	EH-60 Black Hawk	Electronic-Warfare Helicopter
75	MH-47 Chinook	Multi-Mission Helicopter
76	MH-60 Black Hawk	Multi-Mission Helicopter
77	OH-58 Kiowa	Observation Helicopter
78	TH-67 Creek	Training Helicopter
79	UH-1 Iroquois	Utility Helicopter
80	UH-60 Black Hawk	Utility Helicopter
81	UH-72 Lakota	Utility Helicopter
82	DHC-6 Twin Otter	Utility STOL Aircraft
83	Antonov An-26	Undesignated Foreign Aircraft
84	Antonov An-2	Undesignated Foreign Aircraft
85	Mil Mi-24	Attack Helicopter with transport capabilities
86	C-9 Skytrain II	Cargo/Transport Aircraft
87	F/A-18 Hornet	Carrier-based Fighter Aircraft
88	KC-130	Tanker Aircraft
89	Cessna UC-35	Utility Aircraft
90	AH-1 SuperCobra	Attack Helicopter
91	AH-1Z Viper	Attack Helicopter
92	CH-46 Sea Knight	Cargo Helicopter
93	CH-53E Super Stallion	Cargo Helicopter
94	UH-1N Twin Huey	Utility Helicopter
95	UH-1Y Venom	Utility Helicopter
96	VH-3 Sea King	VIP Transport Helicopter
97	VH-53 Sea Stallion	VIP Transport Helicopter
98	VH-60 Whitehawk	VIP Transport Helicopter
99	AV-8B Harrier II	Attack VTOL Aircraft
100	MV-22 Osprey	Multi-Mission VTOL Aircraft
101	TAV-8B Harrier II	Training VTOL Aircraft
102	F-35 Lightning II	Fighter VSTOL Aircraft
103	C-2 Greyhound	Carrier-based Cargo/Transport Aircraft
104	C-9 Skytrain II	Cargo/Transport Aircraft
105	Gulfstream C-20	Cargo/Transport Aircraft
106	Gulfstream C-37	Cargo/Transport Aircraft
107	C-40 Clipper	Cargo/Transport Aircraft
108	C-130 Hercules	Cargo/Transport Aircraft
109	CT-39 Sabreliner	Cargo/Transport Aircraft
110	E-2 Hawkeye	Carrier-based Airborne Command and Control Aircraft
111	E-6 Mercury	Electronic Warfare Aircraft
112	EA-6B Prowler	Electronic Warfare Aircraft
113	EA-18G Growler	Carrier-based Electronic Warfare Aircraft
114	EP-3 ARIES II	Electronic Warfare Aircraft
115	F-5F/N Tiger II	Fighter Aircraft
116	F/A-18 Hornet	Carrier-based Fighter Aircraft
117	F/A-18E/F Super Hornet	Carrier-based Fighter Aircraft
118	F-35 Lightning II	Carrier-based Fighter Aircraft
119	P-3 Orion	Maritime Patrol Aircraft
120	P-8 Poseidon	Anti-Submarine Warfare Aircraft
121	T-6 Texan II	Trainer Aircraft
122	Beech T-44	Trainer Aircraft
123	T-45 Goshawk	Carrier-based Trainer Aircraft
124	Cessna UC-35	Utility Aircraft
125	HH-60 Rescue Hawk	Search and Rescue Helicopter
126	MH-53 Sea Dragon	Multi-Mission Helicopter
127	MH-60 Seahawk	Anti-Submarine Warfare HelicopterMulti-Mission Helicopter
128	SH-60 Seahawk	Anti-Submarine Warfare Helicopter
129	TH-57 Sea Ranger	Training Helicopter
130	MQ-1 Predator	Air Force
131	MQ-1C Grey Eagle	Army
132	RQ-4 Global Hawk	Air Force
133	RQ-5 Hunter	Army
134	RQ-7 Shadow	Army Marine Corps
135	MQ-9 Reaper	Air Force
136	RQ-11 Raven	Army Marine Corps
137	RQ-170 Sentinel	Air Force
138	McDonnell Douglas QF-4 Phantom	Air Force
139	ScanEagle	Navy Marine Corps
140	Switchblade	Army Marine Corps
141	Puma AE	Army Marine Corps Air Force
142	Lockheed Martin Stalker	US SOCOM
143	MQ-8 Fire Scout	Marine Corps Navy
144	K-MAX	Marine Corps
145	CQ-10 Snowgoose	Army
\.


--
-- Name: us_aircraft us_aircraft_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.us_aircraft
    ADD CONSTRAINT us_aircraft_pkey PRIMARY KEY (id_plane);


--
-- PostgreSQL database dump complete
--

