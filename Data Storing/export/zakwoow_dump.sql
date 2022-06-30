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
-- Name: kategori; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kategori (
    idkategori integer NOT NULL,
    kategori text NOT NULL
);


ALTER TABLE public.kategori OWNER TO postgres;

--
-- Name: produkberdiskon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produkberdiskon (
    name text NOT NULL,
    pricebeforediscount integer NOT NULL,
    priceafterdiscount integer NOT NULL,
    discount double precision
);


ALTER TABLE public.produkberdiskon OWNER TO postgres;

--
-- Name: produktas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produktas (
    name text NOT NULL,
    price integer,
    rating double precision,
    isdiscountapplied boolean,
    kondisistok character varying(50),
    idkategori integer NOT NULL
);


ALTER TABLE public.produktas OWNER TO postgres;

--
-- Data for Name: kategori; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kategori (idkategori, kategori) FROM stdin;
199036	Backpack
199045	Waistbag
198660	Wallet
199040	Slingbag
199044	Totebag/ Handbag
199047	Fashion
199048	Others
\.


--
-- Data for Name: produkberdiskon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produkberdiskon (name, pricebeforediscount, priceafterdiscount, discount) FROM stdin;
Posca Backpack by Zakwoowstyle	150000	50000	66.66666666666666
Kizzy Health Kit by Zakwoowstyle	99000	40000	59.59595959595959
Apricya Slingbag by Zakwoowstyle	85000	59500	30
Animal Retro Bag by Zakwoowstyle	85000	59500	30
Cameela Handbag by Zakwoowstyle	115000	80500	30
[Doodle Series] Digital Watch by Zakwoowstyle	230000	184000	20
Two Tone Baby Corduroy Shirt Series	130000	104000	20
Baby Corduroy Shirt Series	130000	104000	20
Color Block Puff Shirt by Zakwoowstyle	130000	104000	20
Basic Cargo Pants by Zakwoowstyle	99000	79200	20
Tanktop Series by Zakwoowstyle	49000	39200	20
Color Block Shirt by Zakwoowstyle	110000	88000	20
Toys Digital Watches by Zakwoowstyle	219000	135000	38.35616438356164
Tie Dye Raglan	120000	40000	66.66666666666666
Food Doodle Watch Edition	225000	135000	40
Zakwoow's Slipper Edition	60000	42000	30
Polka Clearly Mask by Zakwoowstyle	35000	24500	30
\.


--
-- Data for Name: produktas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produktas (name, price, rating, isdiscountapplied, kondisistok, idkategori) FROM stdin;
Mini Aira Bag by Zakwoowstyle	90000	0	f	Stok habis	199036
Clearly Backpack Black	85000	5	f	Stok habis	199036
Posca Backpack by Zakwoowstyle	50000	0	t	Stok habis	199036
Belova 3 Ways Mini Backpack by Zakwoowstyle	85000	0	f	Stok habis	199036
Clearly Backpack	85000	0	f	Stok habis	199036
Aeera Backpack by Zakwoowstyle	150000	0	f	Stok habis	199036
Yellowna Bag by Zakwoowstyle	120000	0	f	Stok habis	199045
Clearly Waistbag Black by Zakwoowstyle	60000	0	f	Stok habis	199045
Clearly Waistbag Transparent by Zakwoowstyle	60000	0	f	Stok habis	199045
Olio Clearly Purse by Zakwoowstyle	45000	5	f	Stok habis	198660
Clearly Purse by Zakwoowstyle	30000	5	f	Stok habis	198660
Kansa Purse by Zakwoowstyle	45000	0	f	Stok habis	198660
Pocky Phone Bag	89000	0	f	Stok habis	198660
Osika Hanging Wallet	80000	0	f	Stok habis	198660
Crystal Purse by Zakwoowstyle	68000	5	f	Stok habis	198660
Homi Purse	45000	5	f	Stok habis	198660
Tie Dye Purse by Zakwoowstyle	45000	5	f	Stok habis	198660
Kizzy Health Kit by Zakwoowstyle	40000	4	t	Stok habis	198660
Claire Wallet by Zakwoowstyle	55000	0	f	Stok habis	198660
Lila Purse by Zakwoowstyle	35000	0	f	Stok habis	198660
Cleary Jolie Bag by Zakwoowstyle	85000	4	f	Stok habis	199040
U-see Slingbag Blue By Zakwoowstyle	70000	0	f	Stok habis	199040
Apricya Slingbag by Zakwoowstyle	59500	5	t	Stok habis	199040
Keenan Slingbag by Zakwoowstyle	85000	0	f	Stok habis	199040
U-see Slingbag Transparent by Zakwoowstyle	60000	0	f	Stok habis	199040
U-see Slingbag Neon by Zakwoowstyle	70000	0	f	Stok habis	199040
U-see Slingbag Black by Zakwoowstyle	60000	0	f	Stok habis	199040
Nuna Bag	120000	0	f	Stok habis	199044
Calana Totebag	90000	0	f	Stok habis	199044
Animal Retro Bag by Zakwoowstyle	59500	0	t	Stok habis	199044
Clearly Totebag Black by Zakwoowstyle	50000	0	f	Stok habis	199044
Cameela Handbag by Zakwoowstyle	80500	0	t	Stok habis	199044
Kenoji Totebag  by Zakwoowstyle	90000	5	f	Stok habis	199044
Clearly Totebag Transparent by Zakwoowstyle	50000	0	f	Stok habis	199044
Clearly Totebag Neon by Zakwoowstyle	60000	0	f	Stok habis	199044
River Crop Shirt	119000	0	f	Stok habis	199047
[Doodle Series] Digital Watch by Zakwoowstyle	184000	0	t	Stok habis	199047
Two Tone Baby Corduroy Shirt Series	104000	0	t	Stok habis	199047
Baby Corduroy Shirt Series	104000	0	t	Stok habis	199047
Color Block Puff Shirt by Zakwoowstyle	104000	0	t	Stok habis	199047
Basic Cargo Pants by Zakwoowstyle	79200	0	t	Stok habis	199047
Tanktop Series by Zakwoowstyle	39200	0	t	Stok habis	199047
Color Block Shirt by Zakwoowstyle	88000	0	t	Stok habis	199047
Toys Digital Watches by Zakwoowstyle	135000	3	t	Stok habis	199047
Tie Dye Raglan	40000	5	t	Stok habis	199047
Alexa Premium  Corduroy Jacket  (New Color)	175000	0	f	Stok habis	199047
Food Doodle Watch Edition	135000	0	t	Stok habis	199047
Premium Corduroy Bucket Hat by Zakwoowstyle	80000	0	f	Stok habis	199047
Premium Corduroy Cargo Pants	180000	0	f	Stok habis	199047
Basic Scrunchie by Zakwoowstyle	10000	0	f	Stok habis	199048
Zakwoow Strap Mask	45000	5	f	Stok habis	199048
Korean Hair Band by Zakwoowstyle	15000	0	f	Stok habis	199048
id card bentuk cartoon	19000	0	f	Stok habis	199048
Zakwoow Planner	125000	0	f	Stok habis	199048
Akrylic Key Chain	12000	0	f	Stok habis	199048
Zakwoow Scrunchie	6000	0	f	Stok habis	199048
Zakwoow’s Carabiner	32000	0	f	Stok habis	199048
Zakwoow Lanyard	30000	0	f	Stok habis	199048
Zakwoow's Sticker Pack	8000	0	f	Stok habis	199048
Masker Printing by Zakwoowstyle	30000	0	f	Stok habis	199048
Zakwoow's Slipper Edition	42000	0	t	Stok habis	199048
Clearly Plain Mask	35000	5	f	Stok habis	199048
Polka Clearly Mask by Zakwoowstyle	24500	5	t	Stok habis	199048
\.


--
-- Name: kategori kategori_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kategori
    ADD CONSTRAINT kategori_pkey PRIMARY KEY (idkategori);


--
-- Name: produkberdiskon produkberdiskon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produkberdiskon
    ADD CONSTRAINT produkberdiskon_pkey PRIMARY KEY (name);


--
-- Name: produktas produktas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produktas
    ADD CONSTRAINT produktas_pkey PRIMARY KEY (name);


--
-- Name: produktas fk_idkategori; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produktas
    ADD CONSTRAINT fk_idkategori FOREIGN KEY (idkategori) REFERENCES public.kategori(idkategori);


--
-- Name: produkberdiskon fk_name; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produkberdiskon
    ADD CONSTRAINT fk_name FOREIGN KEY (name) REFERENCES public.produktas(name);


--
-- PostgreSQL database dump complete
--

