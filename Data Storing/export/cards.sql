--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Ubuntu 14.4-1.pgdg20.04+1)
-- Dumped by pg_dump version 14.2

-- Started on 2022-06-28 22:15:12

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

--
-- TOC entry 4306 (class 1262 OID 4986153)
-- Name: dbidj1jmgf1lvo; Type: DATABASE; Schema: -; Owner: wmnowcsvmoqrto
--

CREATE DATABASE dbidj1jmgf1lvo WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


ALTER DATABASE dbidj1jmgf1lvo OWNER TO wmnowcsvmoqrto;

\connect dbidj1jmgf1lvo

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
-- TOC entry 212 (class 1259 OID 7634038)
-- Name: cards; Type: TABLE; Schema: public; Owner: wmnowcsvmoqrto
--

CREATE TABLE public.cards (
    card_id integer NOT NULL,
    card_name character varying(50),
    card_rarity character varying(3),
    card_character character varying(50),
    card_attribute character varying(10),
    max_power integer,
    max_influence integer,
    max_defense integer
);


ALTER TABLE public.cards OWNER TO wmnowcsvmoqrto;

--
-- TOC entry 211 (class 1259 OID 7634037)
-- Name: cards_card_id_seq; Type: SEQUENCE; Schema: public; Owner: wmnowcsvmoqrto
--

CREATE SEQUENCE public.cards_card_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cards_card_id_seq OWNER TO wmnowcsvmoqrto;

--
-- TOC entry 4309 (class 0 OID 0)
-- Dependencies: 211
-- Name: cards_card_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wmnowcsvmoqrto
--

ALTER SEQUENCE public.cards_card_id_seq OWNED BY public.cards.card_id;


--
-- TOC entry 4157 (class 2604 OID 7634041)
-- Name: cards card_id; Type: DEFAULT; Schema: public; Owner: wmnowcsvmoqrto
--

ALTER TABLE ONLY public.cards ALTER COLUMN card_id SET DEFAULT nextval('public.cards_card_id_seq'::regclass);


--
-- TOC entry 4300 (class 0 OID 7634038)
-- Dependencies: 212
-- Data for Name: cards; Type: TABLE DATA; Schema: public; Owner: wmnowcsvmoqrto
--

INSERT INTO public.cards VALUES (1, 'Alluring Gaze', 'SSR', 'Luke Pearce', 'Empathy', 9699, 2879, 1573);
INSERT INTO public.cards VALUES (2, 'Iridescent Heartbeat', 'SSR', 'Luke Pearce', 'Empathy', 9699, 2968, 1484);
INSERT INTO public.cards VALUES (3, 'Overflowing Thoughts', 'SSR', 'Luke Pearce', 'Logic', 9699, 2968, 1484);
INSERT INTO public.cards VALUES (4, 'Peaceful Place', 'SSR', 'Luke Pearce', 'Empathy', 9699, 2820, 1632);
INSERT INTO public.cards VALUES (5, 'Perfect Partner', 'SSR', 'Luke Pearce', 'Logic', 9699, 2820, 1632);
INSERT INTO public.cards VALUES (6, 'Shape of You', 'SSR', 'Luke Pearce', 'Intuition', 9699, 2879, 1573);
INSERT INTO public.cards VALUES (7, 'Through the Heavens', 'SSR', 'Luke Pearce', 'Intuition', 9699, 2968, 1484);
INSERT INTO public.cards VALUES (8, 'Twinkling Eyes', 'SSR', 'Luke Pearce', 'Intuition', 9699, 2820, 1632);
INSERT INTO public.cards VALUES (9, 'Warm Embrace', 'SSR', 'Luke Pearce', 'Logic', 9699, 2968, 1484);
INSERT INTO public.cards VALUES (10, 'A Star in the Palm', 'SR', 'Luke Pearce', 'Empathy', 7268, 2327, 997);
INSERT INTO public.cards VALUES (11, 'Among the Great Blue', 'SR', 'Luke Pearce', 'Intuition', 7268, 2105, 1219);
INSERT INTO public.cards VALUES (12, 'How I Remember You', 'SR', 'Luke Pearce', 'Intuition', 7268, 2282, 1042);
INSERT INTO public.cards VALUES (13, 'Inner Sanctum', 'SR', 'Luke Pearce', 'Empathy', 7268, 2282, 1042);
INSERT INTO public.cards VALUES (14, 'Moment of Danger', 'SR', 'Luke Pearce', 'Empathy', 7268, 2150, 1174);
INSERT INTO public.cards VALUES (15, 'Once Upon a Time', 'SR', 'Luke Pearce', 'Logic', 7268, 2216, 1108);
INSERT INTO public.cards VALUES (16, 'Radiant Sunlight', 'SR', 'Luke Pearce', 'Intuition', 7268, 2216, 1108);
INSERT INTO public.cards VALUES (17, 'Timely Rescue', 'SR', 'Luke Pearce', 'Logic', 7268, 2327, 997);
INSERT INTO public.cards VALUES (18, 'Together With You', 'SR', 'Luke Pearce', 'Logic', 7268, 2105, 1219);
INSERT INTO public.cards VALUES (19, 'Companionship', 'MR', 'Luke Pearce', 'Logic', 7425, 2251, 1230);
INSERT INTO public.cards VALUES (20, 'Entrusted Feelings', 'MR', 'Luke Pearce', 'Intuition', 7425, 2321, 1161);
INSERT INTO public.cards VALUES (21, 'Shining Warmth', 'MR', 'Luke Pearce', 'Logic', 7425, 2321, 1161);
INSERT INTO public.cards VALUES (22, 'All Ready', 'R', 'Luke Pearce', 'Logic', 3913, 1208, 604);
INSERT INTO public.cards VALUES (23, 'Gaze', 'R', 'Luke Pearce', 'Intuition', 3913, 1148, 664);
INSERT INTO public.cards VALUES (24, 'Gourmet', 'R', 'Luke Pearce', 'Logic', 3913, 1148, 664);
INSERT INTO public.cards VALUES (25, 'Greetings', 'R', 'Luke Pearce', 'Intuition', 3913, 1172, 640);
INSERT INTO public.cards VALUES (26, 'Our Secret', 'R', 'Luke Pearce', 'Logic', 3913, 1244, 568);
INSERT INTO public.cards VALUES (27, 'Partner', 'R', 'Luke Pearce', 'Empathy', 3913, 1208, 604);
INSERT INTO public.cards VALUES (28, 'Personal Server', 'R', 'Luke Pearce', 'Empathy', 3913, 1172, 640);
INSERT INTO public.cards VALUES (29, 'Quietly Waiting', 'R', 'Luke Pearce', 'Intuition', 3913, 1244, 568);
INSERT INTO public.cards VALUES (30, 'Tiredness', 'R', 'Luke Pearce', 'Intuition', 3913, 1268, 544);
INSERT INTO public.cards VALUES (31, 'Together', 'R', 'Luke Pearce', 'Logic', 3913, 1268, 544);
INSERT INTO public.cards VALUES (32, 'Waiting for You', 'R', 'Luke Pearce', 'Empathy', 3913, 1244, 568);
INSERT INTO public.cards VALUES (33, 'Warm Home', 'R', 'Luke Pearce', 'Empathy', 3913, 1148, 664);
INSERT INTO public.cards VALUES (34, 'Warm Up', 'R', 'Luke Pearce', 'Intuition', 3913, 1208, 604);
INSERT INTO public.cards VALUES (35, 'Willful Youth', 'R', 'Luke Pearce', 'Intuition', 3913, 1208, 604);
INSERT INTO public.cards VALUES (36, 'Atmospherics', 'SSR', 'Artem Wing', 'Logic', 9699, 2879, 1573);
INSERT INTO public.cards VALUES (37, 'Dreamful Melodies', 'SSR', 'Artem Wing', 'Empathy', 9699, 2968, 1484);
INSERT INTO public.cards VALUES (38, 'Echoes Ablaze', 'SSR', 'Artem Wing', 'Logic', 9699, 2968, 1484);
INSERT INTO public.cards VALUES (39, 'Entwined Fate', 'SSR', 'Artem Wing', 'Empathy', 9699, 2820, 1632);
INSERT INTO public.cards VALUES (40, 'Loving Memories', 'SSR', 'Artem Wing', 'Intuition', 9699, 2820, 1632);
INSERT INTO public.cards VALUES (41, 'Por Una Cabeza', 'SSR', 'Artem Wing', 'Intuition', 9699, 2968, 1484);
INSERT INTO public.cards VALUES (42, 'Sunshine After the Rain', 'SSR', 'Artem Wing', 'Intuition', 9699, 2879, 1573);
INSERT INTO public.cards VALUES (43, 'Two Hearts as One', 'SSR', 'Artem Wing', 'Logic', 9699, 2820, 1632);
INSERT INTO public.cards VALUES (44, 'Unusual Love', 'SSR', 'Artem Wing', 'Empathy', 9699, 2878, 1573);
INSERT INTO public.cards VALUES (45, 'Wandering Heart', 'SSR', 'Artem Wing', 'Logic', 9699, 2968, 1484);
INSERT INTO public.cards VALUES (46, 'Autumn Dreams', 'SR', 'Artem Wing', 'Logic', 7268, 2282, 1042);
INSERT INTO public.cards VALUES (47, 'Choice', 'SR', 'Artem Wing', 'Empathy', 7268, 2282, 1042);
INSERT INTO public.cards VALUES (48, 'Darkest Before Dawn', 'SR', 'Artem Wing', 'Intuition', 7268, 2105, 1219);
INSERT INTO public.cards VALUES (49, 'Fixated on You', 'SR', 'Artem Wing', 'Logic', 7268, 2327, 997);
INSERT INTO public.cards VALUES (50, 'Focus Fire', 'SR', 'Artem Wing', 'Logic', 7268, 2150, 1174);
INSERT INTO public.cards VALUES (51, 'In Sickness or in Health', 'SR', 'Artem Wing', 'Empathy', 7268, 2150, 1174);
INSERT INTO public.cards VALUES (52, 'Sparks', 'SR', 'Artem Wing', 'Intuition', 7268, 2327, 997);
INSERT INTO public.cards VALUES (53, 'Staying Humble', 'SR', 'Artem Wing', 'Empathy', 7268, 2216, 1108);
INSERT INTO public.cards VALUES (54, 'Thin Veil', 'SR', 'Artem Wing', 'Intuition', 7268, 2216, 1108);
INSERT INTO public.cards VALUES (55, 'Winning Ball', 'SR', 'Artem Wing', 'Logic', 7268, 2105, 1219);
INSERT INTO public.cards VALUES (56, 'Intentions', 'MR', 'Artem Wing', 'Intuition', 7425, 2251, 1230);
INSERT INTO public.cards VALUES (57, 'Stretching', 'MR', 'Artem Wing', 'Empathy', 7425, 2205, 1277);
INSERT INTO public.cards VALUES (58, 'Unwilling to Part', 'MR', 'Artem Wing', 'Logic', 7425, 2321, 1161);
INSERT INTO public.cards VALUES (59, 'Back to Business', 'R', 'Artem Wing', 'Empathy', 3913, 1148, 664);
INSERT INTO public.cards VALUES (60, 'Deduction', 'R', 'Artem Wing', 'Empathy', 3913, 1172, 640);
INSERT INTO public.cards VALUES (61, 'Here for You', 'R', 'Artem Wing', 'Intuition', 3913, 1148, 664);
INSERT INTO public.cards VALUES (62, 'Lock and Load', 'R', 'Artem Wing', 'Intuition', 3913, 1208, 604);
INSERT INTO public.cards VALUES (63, 'My Heart is Flying', 'R', 'Artem Wing', 'Intuition', 3913, 1244, 568);
INSERT INTO public.cards VALUES (64, 'Patience Is a Virtue', 'R', 'Artem Wing', 'Intuition', 3913, 1172, 640);
INSERT INTO public.cards VALUES (65, 'Picking a Gift', 'R', 'Artem Wing', 'Empathy', 3913, 1244, 568);
INSERT INTO public.cards VALUES (66, 'Questioning', 'R', 'Artem Wing', 'Logic', 3913, 1329, 604);
INSERT INTO public.cards VALUES (67, 'Rain Drops', 'R', 'Artem Wing', 'Logic', 3913, 1268, 544);
INSERT INTO public.cards VALUES (68, 'Sweet Tastes', 'R', 'Artem Wing', 'Logic', 3913, 1208, 604);
INSERT INTO public.cards VALUES (69, 'Systematic', 'R', 'Artem Wing', 'Intuition', 3913, 1208, 604);
INSERT INTO public.cards VALUES (70, 'Tailored Suit', 'R', 'Artem Wing', 'Logic', 3913, 1244, 568);
INSERT INTO public.cards VALUES (71, 'Taking a Breather', 'R', 'Artem Wing', 'Empathy', 3913, 1208, 604);
INSERT INTO public.cards VALUES (72, 'With You', 'R', 'Artem Wing', 'Logic', 3913, 1172, 640);
INSERT INTO public.cards VALUES (73, 'A Star in the Night', 'SSR', 'Vyn Richter', 'Logic', 9699, 2820, 1632);
INSERT INTO public.cards VALUES (74, 'Between Good and Evil', 'SSR', 'Vyn Richter', 'Intuition', 9699, 2879, 1573);
INSERT INTO public.cards VALUES (75, 'Blazing Colors', 'SSR', 'Vyn Richter', 'Empathy', 9699, 2968, 1484);
INSERT INTO public.cards VALUES (76, 'Flickering Moonlight', 'SSR', 'Vyn Richter', 'Intuition', 9699, 2968, 1484);
INSERT INTO public.cards VALUES (77, 'Food for Thought', 'SSR', 'Vyn Richter', 'Logic', 9699, 2879, 1573);
INSERT INTO public.cards VALUES (78, 'Heartfelt Suspense', 'SSR', 'Vyn Richter', 'Logic', 9699, 2968, 1484);
INSERT INTO public.cards VALUES (79, 'Medieval Suspense', 'SSR', 'Vyn Richter', 'Empathy', 9699, 2878, 1574);
INSERT INTO public.cards VALUES (80, 'Near and Far', 'SSR', 'Vyn Richter', 'Intuition', 9699, 2820, 1632);
INSERT INTO public.cards VALUES (81, 'Neon Melody', 'SSR', 'Vyn Richter', 'Empathy', 9699, 2820, 1632);
INSERT INTO public.cards VALUES (82, 'Cool Summer', 'SR', 'Vyn Richter', 'Logic', 7268, 2105, 1219);
INSERT INTO public.cards VALUES (83, 'Entrapped', 'SR', 'Vyn Richter', 'Empathy', 7268, 2282, 1042);
INSERT INTO public.cards VALUES (84, 'False Tears', 'SR', 'Vyn Richter', 'Empathy', 7268, 2105, 1219);
INSERT INTO public.cards VALUES (85, 'Gentleman''s Game', 'SR', 'Vyn Richter', 'Intuition', 7268, 2282, 1042);
INSERT INTO public.cards VALUES (86, 'Lingering Warmth', 'SR', 'Vyn Richter', 'Logic', 7268, 2327, 997);
INSERT INTO public.cards VALUES (87, 'Mended Heart', 'SR', 'Vyn Richter', 'Empathy', 7268, 2216, 1108);
INSERT INTO public.cards VALUES (88, 'Mercury in Retrograde', 'SR', 'Vyn Richter', 'Intuition', 7268, 2150, 1174);
INSERT INTO public.cards VALUES (89, 'Snowy Fairy Tale', 'SR', 'Vyn Richter', 'Intuition', 7268, 2327, 997);
INSERT INTO public.cards VALUES (90, 'Spilling Light', 'SR', 'Vyn Richter', 'Logic', 7268, 2216, 1108);
INSERT INTO public.cards VALUES (91, 'Focused Gaze', 'MR', 'Vyn Richter', 'Intuition', 7425, 2321, 1161);
INSERT INTO public.cards VALUES (92, 'Morning Glory', 'MR', 'Vyn Richter', 'Logic', 7425, 2205, 1277);
INSERT INTO public.cards VALUES (93, 'Promise', 'MR', 'Vyn Richter', 'Empathy', 7425, 2251, 1230);
INSERT INTO public.cards VALUES (94, 'A Hobby of Mine', 'R', 'Vyn Richter', 'Logic', 3913, 1244, 568);
INSERT INTO public.cards VALUES (95, 'Another Side of You', 'R', 'Vyn Richter', 'Empathy', 3913, 1268, 544);
INSERT INTO public.cards VALUES (96, 'Dressed Up', 'R', 'Vyn Richter', 'Intuition', 3913, 1148, 664);
INSERT INTO public.cards VALUES (97, 'Elegance', 'R', 'Vyn Richter', 'Empathy', 3913, 1244, 568);
INSERT INTO public.cards VALUES (98, 'Fated Invitation', 'R', 'Vyn Richter', 'Empathy', 3913, 1208, 604);
INSERT INTO public.cards VALUES (99, 'Gentlemanly Courtesy', 'R', 'Vyn Richter', 'Logic', 3913, 1172, 640);
INSERT INTO public.cards VALUES (100, 'Leisure Time', 'R', 'Vyn Richter', 'Intuition', 3913, 1208, 604);
INSERT INTO public.cards VALUES (101, 'Observations', 'R', 'Vyn Richter', 'Logic', 3913, 1208, 604);
INSERT INTO public.cards VALUES (102, 'Remaining in Control', 'R', 'Vyn Richter', 'Empathy', 3913, 1148, 664);
INSERT INTO public.cards VALUES (103, 'Secret Gift', 'R', 'Vyn Richter', 'Logic', 3913, 1148, 664);
INSERT INTO public.cards VALUES (104, 'Unexpected Letter', 'R', 'Vyn Richter', 'Intuition', 3913, 1268, 544);
INSERT INTO public.cards VALUES (105, 'Unexpected Run-In', 'R', 'Vyn Richter', 'Intuition', 3913, 1172, 640);
INSERT INTO public.cards VALUES (106, 'Whole New Experience', 'R', 'Vyn Richter', 'Intuition', 3913, 1244, 568);
INSERT INTO public.cards VALUES (107, 'Wish', 'R', 'Vyn Richter', 'Empathy', 3913, 1172, 640);
INSERT INTO public.cards VALUES (108, 'All Through the Night', 'SSR', 'Marius von Hagen', 'Empathy', 9699, 2879, 1573);
INSERT INTO public.cards VALUES (109, 'Crown of Glory', 'SSR', 'Marius von Hagen', 'Empathy', 9699, 2968, 1484);
INSERT INTO public.cards VALUES (110, 'Daytime Aurora', 'SSR', 'Marius von Hagen', 'Intuition', 9699, 2820, 1632);
INSERT INTO public.cards VALUES (111, 'Dimly Lit', 'SSR', 'Marius von Hagen', 'Empathy', 9699, 2968, 1484);
INSERT INTO public.cards VALUES (112, 'Eye of the Beholder', 'SSR', 'Marius von Hagen', 'Intuition', 9699, 2879, 1573);
INSERT INTO public.cards VALUES (113, 'Fabulous Feast', 'SSR', 'Marius von Hagen', 'Logic', 9699, 2879, 1573);
INSERT INTO public.cards VALUES (114, 'In the Darkness', 'SSR', 'Marius von Hagen', 'Intuition', 9699, 2968, 1484);
INSERT INTO public.cards VALUES (115, 'Matching Tattoos', 'SSR', 'Marius von Hagen', 'Logic', 9699, 2968, 1484);
INSERT INTO public.cards VALUES (116, 'Narrow Road', 'SSR', 'Marius von Hagen', 'Empathy', 9699, 2820, 1632);
INSERT INTO public.cards VALUES (117, 'Will of the Trees', 'SSR', 'Marius von Hagen', 'Logic', 9699, 2820, 1632);
INSERT INTO public.cards VALUES (118, 'A Dance on the Clouds', 'SR', 'Marius von Hagen', 'Logic', 7268, 2216, 1108);
INSERT INTO public.cards VALUES (119, 'Butterflies', 'SR', 'Marius von Hagen', 'Intuition', 7268, 2327, 997);
INSERT INTO public.cards VALUES (120, 'Child at Heart', 'SR', 'Marius von Hagen', 'Intuition', 7268, 2150, 1174);
INSERT INTO public.cards VALUES (121, 'Dream of Thebes', 'SR', 'Marius von Hagen', 'Logic', 7268, 2282, 1042);
INSERT INTO public.cards VALUES (122, 'Falling into You', 'SR', 'Marius von Hagen', 'Empathy', 0, 2216, 1108);
INSERT INTO public.cards VALUES (123, 'Overtone', 'SR', 'Marius von Hagen', 'Empathy', 7268, 2105, 1219);
INSERT INTO public.cards VALUES (124, 'Twilight Beauty', 'SR', 'Marius von Hagen', 'Empathy', 7268, 2327, 997);
INSERT INTO public.cards VALUES (125, 'Vibrant Graffiti', 'SR', 'Marius von Hagen', 'Logic', 7268, 2150, 1174);
INSERT INTO public.cards VALUES (126, 'Keepsake', 'MR', 'Marius von Hagen', 'Intuition', 7425, 2251, 1230);
INSERT INTO public.cards VALUES (127, 'Palpitations', 'MR', 'Marius von Hagen', 'Empathy', 7425, 2321, 1161);
INSERT INTO public.cards VALUES (128, 'Discussion', 'R', 'Marius von Hagen', 'Logic', 3913, 1172, 640);
INSERT INTO public.cards VALUES (129, 'Freeze-Frame', 'R', 'Marius von Hagen', 'Intuition', 3913, 1148, 664);
INSERT INTO public.cards VALUES (130, 'Fully Prepped', 'R', 'Marius von Hagen', 'Logic', 3913, 1244, 568);
INSERT INTO public.cards VALUES (131, 'Half-Time', 'R', 'Marius von Hagen', 'Empathy', 3913, 1148, 664);
INSERT INTO public.cards VALUES (132, 'Interlude', 'R', 'Marius von Hagen', 'Empathy', 3913, 1268, 544);
INSERT INTO public.cards VALUES (133, 'Invitation', 'R', 'Marius von Hagen', 'Empathy', 3913, 1329, 604);
INSERT INTO public.cards VALUES (134, 'Kingly Praise', 'R', 'Marius von Hagen', 'Logic', 3913, 1208, 604);
INSERT INTO public.cards VALUES (135, 'Myth', 'R', 'Marius von Hagen', 'Logic', 3913, 1148, 664);
INSERT INTO public.cards VALUES (136, 'Perfectionist', 'R', 'Marius von Hagen', 'Empathy', 3913, 1172, 640);
INSERT INTO public.cards VALUES (137, 'Practice Makes Perfect', 'R', 'Marius von Hagen', 'Intuition', 3913, 1244, 568);
INSERT INTO public.cards VALUES (138, 'Presence', 'R', 'Marius von Hagen', 'Intuition', 3913, 1208, 604);
INSERT INTO public.cards VALUES (139, 'Rhythm', 'R', 'Marius von Hagen', 'Logic', 3913, 1208, 604);
INSERT INTO public.cards VALUES (140, 'Sudden Occurrence', 'R', 'Marius von Hagen', 'Intuition', 3913, 1172, 640);
INSERT INTO public.cards VALUES (141, 'Victory Is at Hand', 'R', 'Marius von Hagen', 'Empathy', 3913, 1208, 604);


--
-- TOC entry 4310 (class 0 OID 0)
-- Dependencies: 211
-- Name: cards_card_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wmnowcsvmoqrto
--

SELECT pg_catalog.setval('public.cards_card_id_seq', 1, false);


--
-- TOC entry 4159 (class 2606 OID 7634043)
-- Name: cards cards_pkey; Type: CONSTRAINT; Schema: public; Owner: wmnowcsvmoqrto
--

ALTER TABLE ONLY public.cards
    ADD CONSTRAINT cards_pkey PRIMARY KEY (card_id);


--
-- TOC entry 4307 (class 0 OID 0)
-- Dependencies: 4306
-- Name: DATABASE dbidj1jmgf1lvo; Type: ACL; Schema: -; Owner: wmnowcsvmoqrto
--

REVOKE CONNECT,TEMPORARY ON DATABASE dbidj1jmgf1lvo FROM PUBLIC;


--
-- TOC entry 4308 (class 0 OID 0)
-- Dependencies: 832
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO wmnowcsvmoqrto;


-- Completed on 2022-06-28 22:15:34

--
-- PostgreSQL database dump complete
--

