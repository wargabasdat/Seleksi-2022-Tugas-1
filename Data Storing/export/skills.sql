--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Ubuntu 14.4-1.pgdg20.04+1)
-- Dumped by pg_dump version 14.2

-- Started on 2022-06-28 22:15:25

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
-- TOC entry 210 (class 1259 OID 7623790)
-- Name: skills; Type: TABLE; Schema: public; Owner: wmnowcsvmoqrto
--

CREATE TABLE public.skills (
    skill_id integer NOT NULL,
    skill_type character varying(50),
    skill_name character varying(50),
    level_1_desc character varying(255),
    level_10_desc character varying(255)
);


ALTER TABLE public.skills OWNER TO wmnowcsvmoqrto;

--
-- TOC entry 209 (class 1259 OID 7623789)
-- Name: skills_skill_id_seq; Type: SEQUENCE; Schema: public; Owner: wmnowcsvmoqrto
--

CREATE SEQUENCE public.skills_skill_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.skills_skill_id_seq OWNER TO wmnowcsvmoqrto;

--
-- TOC entry 4309 (class 0 OID 0)
-- Dependencies: 209
-- Name: skills_skill_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wmnowcsvmoqrto
--

ALTER SEQUENCE public.skills_skill_id_seq OWNED BY public.skills.skill_id;


--
-- TOC entry 4157 (class 2604 OID 7623793)
-- Name: skills skill_id; Type: DEFAULT; Schema: public; Owner: wmnowcsvmoqrto
--

ALTER TABLE ONLY public.skills ALTER COLUMN skill_id SET DEFAULT nextval('public.skills_skill_id_seq'::regclass);


--
-- TOC entry 4300 (class 0 OID 7623790)
-- Dependencies: 210
-- Data for Name: skills; Type: TABLE DATA; Schema: public; Owner: wmnowcsvmoqrto
--

INSERT INTO public.skills VALUES (1, 'Absolute Rationality', 'Absolute Rationality III', 'Boosts the base Defense of all Artem cards in the Primary Deck by 27', 'Boosts the base Defense of all Artem cards in the Primary Deck by 135');
INSERT INTO public.skills VALUES (2, 'Absolute Rationality', 'Absolute Rationality II', 'Boosts the Defense of all Artem cards in the Primary Deck by 21.5', 'Boosts the Defense of all Artem cards in the Primary Deck by 108');
INSERT INTO public.skills VALUES (3, 'Advantage Taker', 'Advantage Taker III', 'Boosts this card''s base Defense by 2.88% for every Logic card in the Primary Deck', 'Boosts this card''s base Defense by 14.4% for every Logic card in the Primary Deck');
INSERT INTO public.skills VALUES (4, 'Antique Repairer', 'Antique Repairer III', 'Boosts this card''s base Defense by 27 for every Luke card in the Primary Deck', 'Boosts this card''s base Defense by 135 for every Luke card in the Primary Deck');
INSERT INTO public.skills VALUES (5, 'Antique Repairer', 'Antique Repairer II', 'Boosts this card''s base Defense by 21.5 for every Luke card in the Primary Deck', 'Boosts this card''s base Defense by 108 for every Luke card in the Primary Deck');
INSERT INTO public.skills VALUES (6, 'Artistic Talent', 'Artistic Talent III', 'Boosts this card''s base Influence by 1.6% for every Marius card in the Primary Deck', 'Boosts this card''s base Influence by 7.99% for every Marius card in the Primary Deck');
INSERT INTO public.skills VALUES (7, 'Attention to Detail', 'Attention to Detail α III', 'Boosts the Influence of your Intuition cards by 11% for 1 turn(s)', 'Boosts the Influence of your Intuition cards by 55.01% for 1 turn(s)');
INSERT INTO public.skills VALUES (8, 'Attention to Detail', 'Attention to Detail α II', 'Boosts the Influence of your Intuition cards by 8.2% for 1 turn(s)', 'Boosts the Influence of your Intuition cards by 40.96% for 1 turn(s)');
INSERT INTO public.skills VALUES (9, 'Attention to Detail', 'Attention to Detail α I', 'Boosts the Influence of your Intuition cards by 6.6% for 1 turn(s)', 'Boosts the Influence of your Intuition cards by 32.97% for 1 turn(s)');
INSERT INTO public.skills VALUES (10, 'Attention to Detail', 'Attention to Detail β III', 'Boosts the Influence of your Intuition cards by 7% for 2 turn(s)', 'Boosts the Influence of your Intuition cards by 34.99% for 2 turn(s)');
INSERT INTO public.skills VALUES (11, 'Attention to Detail', 'Attention to Detail β II', 'Boosts the Influence of your Intuition cards by 5.2% for 2 turn(s)', 'Boosts the Influence of your Intuition cards by 25.99% for 2 turn(s)');
INSERT INTO public.skills VALUES (12, 'Attention to Detail', 'Attention to Detail β I', 'Boosts the Influence of your Intuition cards by 4.2% for 2 turn(s)', 'Boosts the Influence of your Intuition cards by 21.03% for 2 turn(s)');
INSERT INTO public.skills VALUES (13, 'Attention to Detail', 'Attention to Detail γ III', 'Boosts the Influence of your Intuition cards by 6% for 3 turn(s)', 'Boosts the Influence of your Intuition cards by 30.03% for 3 turn(s)');
INSERT INTO public.skills VALUES (14, 'Attention to Detail', 'Attention to Detail γ II', 'Boosts the Influence of your Intuition cards by 4.5% for 3 turn(s)', 'Boosts the Influence of your Intuition cards by 22.5% for 3 turn(s).');
INSERT INTO public.skills VALUES (15, 'Attention to Detail', 'Attention to Detail γ I', 'Boosts the Influence of your Intuition cards by 3.6% for 3 turn(s)', 'Boosts the Influence of your Intuition cards by 18% for 3 turn(s)');
INSERT INTO public.skills VALUES (16, 'Avoidance Instinct', 'Avoidance Instinct III', 'Boosts this card''s base Defense by 2.88% for every Intuition card in the Primary Deck', 'Boosts this card''s base Defense by 14.4% for every Intuition card in the Primary Deck');
INSERT INTO public.skills VALUES (17, 'Bait & Lure', 'Bait & Lure α III', 'Boosts the Influence of your Empathy cards by 11% for 1 turn(s)', 'Boosts the Influence of your Empathy cards by 55.01% for 1 turn(s)');
INSERT INTO public.skills VALUES (18, 'Bait & Lure', 'Bait & Lure α II', 'Boosts the Influence of your Empathy cards by 8.2% for 1 turn(s)', 'Boosts the Influence of your Empathy cards by 40.96% for 1 turn(s)');
INSERT INTO public.skills VALUES (19, 'Bait & Lure', 'Bait & Lure α I', 'Boosts the Influence of your Empathy cards by 6.6% for 1 turn(s)', 'Boosts the Influence of your Empathy cards by 32.97% for 1 turn(s)');
INSERT INTO public.skills VALUES (20, 'Bait & Lure', 'Bait & Lure β III', 'Boosts the Influence of your Empathy cards by 7% for 2 turn(s)', 'Boosts the Influence of your Empathy cards by 34.99% for 2 turn(s)');
INSERT INTO public.skills VALUES (21, 'Bait & Lure', 'Bait & Lure β II', 'Boosts the Influence of your Empathy cards by 5.2% for 2 turn(s)', 'Boosts the Influence of your Empathy cards by 25.99% for 2 turn(s)');
INSERT INTO public.skills VALUES (22, 'Bait & Lure', 'Bait & Lure β I', 'Boosts the Influence of your Empathy cards by 4.2% for 2 turn(s)', 'Boosts the Influence of your Empathy cards by 21.03% for 2 turns(s)');
INSERT INTO public.skills VALUES (23, 'Bait & Lure', 'Bait & Lure γ III', 'Boosts the Influence of your Empathy cards by 6% for 3 turn(s)', 'Boosts the Influence of your Empathy cards by 30.03% for 3 turn(s)');
INSERT INTO public.skills VALUES (24, 'Bait & Lure', 'Bait & Lure γ II', 'Boosts the Influence of your Empathy cards by 4.5% for 3 turn(s)', 'Boosts the Influence of your Empathy cards by 22.5% for 3 turn(s).');
INSERT INTO public.skills VALUES (25, 'Bait & Lure', 'Bait & Lure γ I', 'Boosts the Influence of your Empathy cards by 3.6% for 3 turn(s)', 'Boosts the Influence of your Empathy cards by 18% for 3 turn(s)');
INSERT INTO public.skills VALUES (26, 'Balanced', 'Balanced III', 'Boosts this card''s base Influence by 180 during debates', 'Boosts this card''s base Influence by 963 during debates');
INSERT INTO public.skills VALUES (27, 'Balanced', 'Balanced II', 'Boosts this card''s base Influence by 144 during debates', 'Boosts this card''s base Influence by 770 during debates');
INSERT INTO public.skills VALUES (28, 'Business Negotiator', 'Business Negotiator III', 'Boosts the base Influence of all Marius cards in the Primary Deck by 27', 'Boosts the base Influence of all Marius cards in the Primary Deck by 135');
INSERT INTO public.skills VALUES (29, 'Business Negotiator', 'Business Negotiator II', 'Boosts the base Influence of all Marius cards in the Primary Deck by 21.5', 'Boosts the base Influence of all Marius cards in the Primary Deck by 108');
INSERT INTO public.skills VALUES (30, 'Constant Improvement', 'Constant Improvement II', 'Boosts this card''s base Influence by 1.28% for every Artem card in the Primary Deck', 'Boosts this card''s base Influence by 6.5% for every Artem card in the Primary Deck');
INSERT INTO public.skills VALUES (31, 'Conversation Guide', 'Conversation Guide III', 'Boosts the base Influence of all Vyn cards in the Primary Deck by 1.6%', 'Boosts the base Influence of all Vyn cards in the Primary Deck by 7.99%');
INSERT INTO public.skills VALUES (32, 'Conversation Guide', 'Conversation Guide II', 'Boosts the base Influence of all Vyn cards in the Primary Deck by 1.28%', 'Boosts the base Influence of all Vyn cards in the Primary Deck by 6.5%');
INSERT INTO public.skills VALUES (33, 'Cover Tactics', 'Cover Tactics α I', 'Reduces the opponent''s Influence by 5.4% for 1 turn(s)', 'Reduces the opponent''s Influence by 27% for 1 turn(s)');
INSERT INTO public.skills VALUES (34, 'Cover Tactics', 'Cover Tactics β II', 'Reduces the opponent''s Influence by 3.8% for 2 turn(s)', 'Reduces the opponent''s Influence by 19.01% for 2 turn(s)');
INSERT INTO public.skills VALUES (35, 'Cover Tactics', 'Cover Tactics β I', 'Reduces the opponent''s Influence by 3% for 2 turn(s)', 'Reduces the opponent''s Influence by 14.97% for 2 turn(s)');
INSERT INTO public.skills VALUES (36, 'Cover Tactics', 'Cover Tactics γ II', 'Reduces the opponent''s Influence by 2.7% for 3 turn(s)', 'Reduces the opponent''s Influence by 13.5% for 3 turn(s)');
INSERT INTO public.skills VALUES (37, 'Cultured', 'Cultured III', 'Boosts this card''s base Defense by 27 for every Vyn card in the Primary Deck', 'Boosts this card''s base Defense by 135 for every Vyn card in the Primary Deck');
INSERT INTO public.skills VALUES (38, 'Curiosity', 'Curiosity III', 'Boosts this card''s base Defense by 3.2% for every Luke card in the Primary Deck', 'Boosts this card''s base Defense by 15.98% for every Luke card in the Primary Deck');
INSERT INTO public.skills VALUES (39, 'Deductive Reasoning', 'Deductive Reasoning III', 'Boosts this card''s base Influence by 26 for every Logic card in the Primary Deck', 'Boosts this card''s base Influence by 125 for every Logic card in the Primary Deck');
INSERT INTO public.skills VALUES (40, 'Deductive Reasoning', 'Deductive Reasoning II', 'Boosts this card''s base Influence by 21 for every Logic card in the Primary Deck', 'Boosts this card''s base Influence by 100 for every Logic card in the Primary Deck');
INSERT INTO public.skills VALUES (41, 'Detective''s Mind', 'Detective''s Mind III', 'Boosts the base Influence of all Luke cards in the Primary Deck by 27', 'Boosts the base Influence of all Luke cards in the Primary Deck by 135');
INSERT INTO public.skills VALUES (42, 'Detective''s Mind', 'Detective''s Mind II', 'Boosts the base Influence of all Luke cards in the Primary Deck by 21.5', 'Boosts the base Influence of all Luke cards in the Primary Deck by 108');
INSERT INTO public.skills VALUES (43, 'Drastic Measures', 'Drastic Measures III', 'Boosts the base Influence of all Empathy cards in the Primary Deck by 1.44%', 'Boosts the base Influence of all Empathy cards in the Primary Deck by 7.2%');
INSERT INTO public.skills VALUES (44, 'Drastic Measures', 'Drastic Measures II', 'Boosts the base Influence of all Empathy cards in the Primary Deck by 1.15%', 'Boosts the base influence of all Empathy cards in the Primary Deck by 5.83%');
INSERT INTO public.skills VALUES (45, 'Dressage', 'Dressage III', 'Boosts this card''s base Influence by 27 for every Vyn card in the Primary Deck', 'Boosts this card''s base Influence by 135 for every Vyn card in the Primary Deck');
INSERT INTO public.skills VALUES (46, 'Dressage', 'Dressage II', 'Boosts this card''s base Influence by 21.5 for every Vyn card in the Primary Deck', 'Boosts this card''s base Influence by 108 for every Vyn card in the Primary Deck');
INSERT INTO public.skills VALUES (47, 'Elite Education', 'Elite Education III', 'Boosts this card''s base Defense by 27 for every Marius card in the Primary Deck', 'Boosts this card''s base Defense by 135 for every Marius card in the Primary Deck');
INSERT INTO public.skills VALUES (48, 'Emergent Retreat', 'Emergent Retreat III', 'Boosts the base Defense of all Luke cards in the Primary Deck by 27', 'Boosts the base Defense of all Luke cards in the Primary Deck by 135');
INSERT INTO public.skills VALUES (49, 'Emergent Retreat', 'Emergent Retreat II', 'Boosts the Defense of all Luke cards in the Primary Deck by 21.5', 'Boosts the Defense of all Luke cards in the Primary Deck by 108');
INSERT INTO public.skills VALUES (50, 'Emotional Appeal', 'Emotional Appeal III', 'Boosts this card''s base Influence by 26 for every Empathy card in the Primary Deck', 'Boosts this card''s base Influence by 125 for every Empathy card in the Primary Deck');
INSERT INTO public.skills VALUES (51, 'Emotional Appeal', 'Emotional Appeal II', 'Boosts this card''s base Influence by 21 for every Empathy card in the Primary Deck', 'Boosts this card''s base Influence by 100 for every Empathy card in the Primary Deck');
INSERT INTO public.skills VALUES (52, 'Emotional Projection', 'Emotional Projection III', 'Boosts this card''s base Influence by 1.44% for every Empathy card in the Primary Deck', 'Boosts this card''s base Influence by 7.2% for every Empathy card in the Primary Deck');
INSERT INTO public.skills VALUES (53, 'Emotional Projection', 'Emotional Projection II', 'Boosts this card''s base Influence by 1.15% for every Empathy card in the Primary Deck', 'Boosts this card''s base Influence by 5.83% for every Empathy card in the Primary Deck');
INSERT INTO public.skills VALUES (54, 'Evasive Maneuver', 'Evasive Maneuver α I', 'Reduces the opponent''s Intuition Defense by 11.4% for 1 turn(s)', 'Reduces the opponent''s Intuition Defense by 57.03% for 1 turn(s).');
INSERT INTO public.skills VALUES (55, 'Evasive Maneuver', 'Evasive Maneuver β II', 'Reduces the opponent''s Intuition Defense by 9.8% for 2 turn(s)', 'Reduces the opponent''s Intuition Defense by 49.04% for 2 turn(s).');
INSERT INTO public.skills VALUES (56, 'Evasive Maneuver', 'Evasive Maneuver β I', 'Reduces the opponent''s Intuition Defense by 7.8% for 2 turn(s)', 'Reduces the opponent''s Intuition Defense by 39.03% for 2 turn(s).');
INSERT INTO public.skills VALUES (57, 'Evasive Maneuver', 'Evasive Maneuver γ I', 'Reduces the opponent''s Intuition Defense by 7.2% for 3 turn(s)', 'Reduces the opponent''s Intuition Defense by 36% for 3 turn(s).');
INSERT INTO public.skills VALUES (58, 'Exemplar', 'Exemplar III', 'Boosts the base Defense of all Logic cards in the Primary Deck by 26', 'Boosts the base Defense of all Logic cards in the Primary Deck by 125');
INSERT INTO public.skills VALUES (59, 'Exemplar', 'Exemplar II', 'Boosts the base Defense of all Logic cards in the Primary Deck by 21', 'Boosts the base Defense of all Logic cards in the Primary Deck by 100');
INSERT INTO public.skills VALUES (60, 'Extrapolation', 'Extrapolation III', 'Boosts this card''s base Influence by 9% during debates', 'Boosts this card''s base Influence by 45% during debates');
INSERT INTO public.skills VALUES (61, 'Extrapolation', 'Extrapolation II', 'Boosts this card''s base Influence by 7.2% during debates', 'Boosts this card''s base Influence by 36% during debates');
INSERT INTO public.skills VALUES (62, 'Feigning Defeat', 'Feigning Defeat α III', 'Boosts your Defense by 24% for 1 turn(s)', 'Boosts your Defense by 120.03% for 1 turn(s)');
INSERT INTO public.skills VALUES (63, 'Feigning Defeat', 'Feigning Defeat β III', 'Boosts your Defense by 12% for 2 turn(s)', 'Boosts your Defense by 59.97% for 2 turn(s)');
INSERT INTO public.skills VALUES (64, 'Feigning Defeat', 'Feigning Defeat β I', 'Boosts your Defense by 7.2% for 2 turn(s)', 'Boosts your Defense by 36% for 2 turn(s)');
INSERT INTO public.skills VALUES (65, 'Feigning Defeat', 'Feigning Defeat γ II', 'Boosts your Defense by 6% for 3 turn(s)', 'Boosts your Defense by 30.03% for 3 turn(s)');
INSERT INTO public.skills VALUES (66, 'Feigning Defeat', 'Feigning Defeat γ I', 'Boosts your Defense by 4.8% for 3 turn(s)', 'Boosts your Defense by 23.97% for 3 turn(s)');
INSERT INTO public.skills VALUES (67, 'Foresight', 'Foresight III', 'Boosts the base Influence of all Intuition cards in the Primary Deck by 26', 'Boosts the base Influence of all Intuition cards in the Primary Deck by 125');
INSERT INTO public.skills VALUES (68, 'Foresight', 'Foresight II', 'Boosts the base Influence of all Intuition cards in the Primary Deck by 21', 'Boosts the base Influence of all Intuition cards in the Primary Deck by 100');
INSERT INTO public.skills VALUES (69, 'Formidable', 'Formidable I', 'When this card is in the Support Deck, boosts Influence by an additional 0.19%', 'When this card is in the Support Deck, boosts Influence by an additional 1%');
INSERT INTO public.skills VALUES (70, 'Game of Fortune', 'Game of Fortune III', 'Boosts the base Influence of all Marius cards in the Primary Deck by 1.6%', 'Boosts the base Influence of all Marius cards in the Primary Deck by 7.99%');
INSERT INTO public.skills VALUES (71, 'Impeccable', 'Impeccable III', 'Boosts this card''s base Defense by 26 for every Logic card in the Primary Deck', 'Boosts this card''s base Defense by 125 for every Logic card in the Primary Deck');
INSERT INTO public.skills VALUES (72, 'Impeccable', 'Impeccable II', 'Boosts this card''s base Defense by 21 for every Logic card in the Primary Deck', 'Boosts this card''s base Defense by 100 for every Logic card in the Primary Deck');
INSERT INTO public.skills VALUES (73, 'Indirect Approach', 'Indirect Approach α I', 'Reduces the opponent''s Empathy Defense by 11.4% for 1 turn(s)', 'Reduces the opponent''s Empathy Defense by 57.03% for 1 turn(s).');
INSERT INTO public.skills VALUES (74, 'Indirect Approach', 'Indirect Approach β I', 'Reduces the opponent''s Empathy Defense by 7.8% for 2 turn(s)', 'Reduces the opponent''s Empathy Defense by 39.03% for 2 turn(s).');
INSERT INTO public.skills VALUES (75, 'Indirect Approach', 'Indirect Approach γ II', 'Reduces the opponent''s Empathy Defense by 9% for 3 turn(s)', 'Reduces the opponent''s Empathy Defense by 45% for 3 turn(s).');
INSERT INTO public.skills VALUES (76, 'Indirect Approach', 'Indirect Approach γ I', 'Reduces the opponent''s Empathy Defense by 7.2% for 3 turn(s)', 'Reduces the opponent''s Empathy Defense by 36% for 3 turn(s).');
INSERT INTO public.skills VALUES (77, 'Instantaneous Capture', 'Instantaneous Capture III', 'Boosts this card''s base Influence by 1.6% for every Luke card in the Primary Deck', 'Boosts this card''s base Influence by 7.99% for every Luke card in the Primary Deck');
INSERT INTO public.skills VALUES (78, 'Intuitive Thinking', 'Intuitive Thinking III', 'Boosts this card''s base Influence by 1.44% for every Intuition card in the Primary Deck', 'Boosts this card''s base Influence by 7.2% for every Intuition card in the Primary Deck');
INSERT INTO public.skills VALUES (79, 'Intuitive Thinking', 'Intuitive Thinking II', 'Boosts this card''s base Influence by 1.15% for every Intuition card in the Primary Deck', 'Boosts this card''s base Influence by 5.83% for every Intuition card in the Primary Deck');
INSERT INTO public.skills VALUES (80, 'Keen Observation', 'Keen Observation III', 'Boosts this card''s base Influence by 26 for every Intuition card in the Primary Deck', 'Boosts this card''s base Influence by 125 for every Intuition card in the Primary Deck');
INSERT INTO public.skills VALUES (81, 'Keen Observation', 'Keen Observation II', 'Boosts this card''s base Influence by 21 for every Intuition card in the Primary Deck', 'Boosts this card''s base Influence by 100 for every Intuition card in the Primary Deck');
INSERT INTO public.skills VALUES (82, 'Layer by Layer', 'Layer by Layer α III', 'Boosts your Influence by 9% for 2 turn(s)', 'Boosts your Influence by 45% for 2 turn(s)');
INSERT INTO public.skills VALUES (83, 'Layer by Layer', 'Layer by Layer α II', 'Boosts your Influence by 6.8% for 1 turn(s)', 'Boosts your Influence by 33.98% for 1 turn(s)');
INSERT INTO public.skills VALUES (84, 'Layer by Layer', 'Layer by Layer α I', 'Boosts your Influence by 5.4% for 1 turn(s)', 'Boosts your Influence by 27% for 1 turn(s)');
INSERT INTO public.skills VALUES (85, 'Layer by Layer', 'Layer by Layer β III', 'Boost your Influence by 5% for 2 turn(s)', 'Boost your Influence by 24.98% for 2 turn(s)');
INSERT INTO public.skills VALUES (86, 'Layer by Layer', 'Layer by Layer β II', 'Boosts your Influence by 3.8% for 2 turn(s)', 'Boosts your Influence by 19.01% for 2 turn(s)');
INSERT INTO public.skills VALUES (87, 'Layer by Layer', 'Layer by Layer β I', 'Boosts your Influence by 3% for 2 turn(s)', 'Boosts your Influence by 14.97% for 2 turn(s)');
INSERT INTO public.skills VALUES (88, 'Layer by Layer', 'Layer by Layer γ III', 'Boosts your Influence by 3.6% for 3 turn(s)', 'Boosts your Influence by 18% for 3 turn(s)');
INSERT INTO public.skills VALUES (89, 'Layer by Layer', 'Layer by Layer γ II', 'Boosts your Influence by 2.7% for 3 turn(s)', 'Boosts your Influence by 13.5% for 3 turn(s)');
INSERT INTO public.skills VALUES (90, 'Layer by Layer', 'Layer by Layer γ I', 'Boosts your Influence by 2.2% for 3 turn(s)', 'Boosts your Influence by 11.02% for 3 turn(s)');
INSERT INTO public.skills VALUES (91, 'Legal Expert', 'Legal Expert III', 'Boosts the base Influence of all Artem cards in the Primary Deck by 1.6%', 'Boosts the base Influence of all Artem cards in the Primary Deck by 7.99%');
INSERT INTO public.skills VALUES (92, 'Logical Conclusion', 'Logical Conclusion α III', 'Boosts the Influence of your Logic cards by 11% for 1 turn(s)', 'Boosts the Influence of your Logic cards by 55.01% for 1 turn(s)');
INSERT INTO public.skills VALUES (93, 'Logical Conclusion', 'Logical Conclusion α II', 'Boosts the Influence of your Logic cards by 8.2% for 3 turn(s)', 'Boosts the Influence of your Logic cards by 40.96% for 3 turn(s)');
INSERT INTO public.skills VALUES (94, 'Logical Conclusion', 'Logical Conclusion α I', 'Boosts the Influence of your Logic cards by 6.6% for 1 turn(s)', 'Boosts the Influence of your Logic cards by 32.97% for 1 turn(s).');
INSERT INTO public.skills VALUES (95, 'Logical Conclusion', 'Logical Conclusion β III', 'Boosts the Influence of your Logic cards by 7% for 2 turn(s)', 'Boosts the Influence of your Logic cards by 34.99% for 2 turn(s)');
INSERT INTO public.skills VALUES (96, 'Logical Conclusion', 'Logical Conclusion β II', 'Boosts the Influence of your Logic cards by 5.2% for 2 turn(s)', 'Boosts the Influence of your Logic cards by 25.99% for 2 turn(s)');
INSERT INTO public.skills VALUES (97, 'Logical Conclusion', 'Logical Conclusion β I', 'Boosts the Influence of your Logic cards by 4.2% for 2 turn(s)', 'Boosts the Influence of your Logic cards by 21.03% for 2 turn(s).');
INSERT INTO public.skills VALUES (98, 'Logical Conclusion', 'Logical Conclusion γ III', 'Boosts the Influence of your Logic cards by 6% for 3 turn(s)', 'Boosts the Influence of your Logic cards by 30.03% for 3 turn(s)');
INSERT INTO public.skills VALUES (99, 'Logical Conclusion', 'Logical Conclusion γ II', 'Boosts the Influence of your Logic cards by 4.5% for 3 turn(s)', 'Boosts the Influence of your Logic cards by 22.5% for 3 turn(s).');
INSERT INTO public.skills VALUES (100, 'Logical Conclusion', 'Logical Conclusion γ I', 'Boosts the Influence of your Logic cards by 3.6% for 3 turn(s)', 'Boosts the Influence of your Logic cards by 18% for 3 turn(s).');
INSERT INTO public.skills VALUES (101, 'Mediator', 'Mediator III', 'Boosts the base Defense of all Intuition cards in the Primary Deck by 2.88%', 'Boosts the base Defense of all Intuition cards in the Primary Deck by 14.4%');
INSERT INTO public.skills VALUES (102, 'Mediator', 'Mediator II', 'Boosts the base Defense of all Intuition cards in the Primary Deck by 2.3%', 'Boosts the base Defense of all Intuition cards in the Primary Deck by 11.48%');
INSERT INTO public.skills VALUES (103, 'Mutual Effect', 'Mutual Effect III', 'Boosts this card''s base Defense by 26 for every Empathy card in the Primary Deck', 'Boosts this card''s base Defense by 125 for every Empathy card in the Primary Deck');
INSERT INTO public.skills VALUES (104, 'Mutual Effect', 'Mutual Effect II', 'Boosts this card''s base Defense by 21 for every Empathy card in the Primary Deck', 'Boosts this card''s base Defense by 100 for every Empathy card in the Primary Deck');
INSERT INTO public.skills VALUES (105, 'Negation', 'Negation α I', 'Reduces the opponent''s Logic Defense by 11.4% for 1 turn(s)', 'Reduces the opponent''s Logic Defense by 57.03% for 1 turn(s).');
INSERT INTO public.skills VALUES (106, 'Negation', 'Negation β II', 'Reduces the opponent''s Logic Defense by 9.8% for 2 turn(s)', 'Reduces the opponent''s Logic Defense by 49.04% for 2 turn(s)');
INSERT INTO public.skills VALUES (107, 'Negation', 'Negation β I', 'Reduces the opponent''s Logic Defense by 7.8% for 2 turn(s)', 'Reduces the opponent''s Logic Defense by 39.03% for 2 turn(s).');
INSERT INTO public.skills VALUES (108, 'Negation', 'Negation γ II', 'Reduces the opponent''s Logic Defense by 9% for 3 turn(s)', 'Reduces the opponent''s Logic Defense by 45% for 3 turn(s).');
INSERT INTO public.skills VALUES (109, 'Negation', 'Negation γ I', 'Reduces the opponent''s Logic Defense by 7.2% for 3 turn(s)', 'Reduces the opponent''s Logic Defense by 36% for 3 turn(s).');
INSERT INTO public.skills VALUES (110, 'Omnipotent Law', 'Omnipotent Law III', 'Boosts this card''s base Influence by 27 for every Artem card in the Primary Deck', 'Boosts this card''s base Influence by 135 for every Artem card in the Primary Deck');
INSERT INTO public.skills VALUES (111, 'Omnipotent Law', 'Omnipotent Law II', 'Boosts this card''s base Influence by 21.5 for every Artem card in the Primary Deck', 'Boosts this card''s base Influence by 108 for every Artem card in the Primary Deck');
INSERT INTO public.skills VALUES (112, 'Opportunist', 'Opportunist III', 'Boosts the base Defense of all Empathy cards in the Primary Deck by 26', 'Boosts the base Defense of all Empathy cards in the Primary Deck by 125');
INSERT INTO public.skills VALUES (113, 'Opportunist', 'Opportunist II', 'Boosts the base Defense of all Empathy cards in the Primary Deck by 21', 'Boosts the base Defense of all Empathy cards in the Primary Deck by 100');
INSERT INTO public.skills VALUES (114, 'Painstaking Investigator', 'Painstaking Investigator III', 'Boosts this card''s base Influence by 1.44% for every Logic card in the Primary Deck', 'Boosts this card''s base Influence by 7.2% for every Logic card in the Primary Deck');
INSERT INTO public.skills VALUES (115, 'Painstaking Investigator', 'Painstaking Investigator II', 'Boosts this card''s base Influence by 1.15% for every Logic card in the Primary Deck', 'Boosts this card''s base Influence by 5.83% for every Logic card in the Primary Deck');
INSERT INTO public.skills VALUES (116, 'Parallel Growth', 'Parallel Growth III', 'Boosts the base Defense of all Empathy cards in the Primary Deck by 2.88%', 'Boosts the base Defense of all Empathy cards in the Primary Deck by 14.4%');
INSERT INTO public.skills VALUES (117, 'Parallel Growth', 'Parallel Growth II', 'Boosts the base Defense of all Empathy cards in the Primary Deck by 2.3%', 'Boosts the base Defense of all Empathy cards in the Primary Deck by 11.48%');
INSERT INTO public.skills VALUES (118, 'Personality Profiler', 'Personality Profiler III', 'Boosts the base Influence of all Vyn cards in the Primary Deck by 27', 'Boosts the base Influence of all Vyn cards in the Primary Deck by 135');
INSERT INTO public.skills VALUES (119, 'Personality Profiler', 'Personality Profiler II', 'Boosts the base Influence of all Vyn cards in the Primary Deck by 21.5', 'Boosts the base Influence of all Vyn cards in the Primary Deck by 108');
INSERT INTO public.skills VALUES (120, 'Preemptive Strike', 'Preemptive Strike III', 'Deals 110% Influence damage to a single argument.', 'Deals 149.96% Influence damage to a single argument.');
INSERT INTO public.skills VALUES (121, 'Preemptive Strike', 'Preemptive Strike II', 'Deals 109% Influence damage to a single argument.', 'Deals 145% Influence damage to a single argument.');
INSERT INTO public.skills VALUES (122, 'Preemptive Strike', 'Preemptive Strike I', 'Deals 108% Influence damage to a single argument.', 'Deals 140.04% Influence damage to a single argument.');
INSERT INTO public.skills VALUES (123, 'Premonition', 'Premonition III', 'Boosts this card''s base Defense by 26 for every Intuition card in the Primary Deck', 'Boosts this card''s base Defense by 125 for every Intuition card in the Primary Deck');
INSERT INTO public.skills VALUES (124, 'Premonition', 'Premonition II', 'Boosts this card''s base Defense by 21 for every Intuition card in the Primary Deck', 'Boosts this card''s base Defense by 100 for every Intuition card in the Primary Deck');
INSERT INTO public.skills VALUES (125, 'President''s Orders', 'President''s Orders III', 'Boosts the base Defense of all Marius cards in the Primary Deck by 27', 'Boosts the base Defense of all Marius cards in the Primary Deck by 135');
INSERT INTO public.skills VALUES (126, 'President''s Orders', 'President''s Orders II', 'Boosts the Defense of all Marius cards in the Primary Deck by 21.5', 'Boosts the Defense of all Marius cards in the Primary Deck by 108');
INSERT INTO public.skills VALUES (127, 'Prevention', 'Prevention III', 'Boosts the base Defense of all Intuition cards in the Primary Deck by 26', 'Boosts the base Defense of all Intuition cards in the Primary Deck by 125');
INSERT INTO public.skills VALUES (128, 'Prevention', 'Prevention II', 'Boosts the base Defense of all Intuition cards in the Primary Deck by 21', 'Boosts the base Defense of all Intuition cards in the Primary Deck by 100');
INSERT INTO public.skills VALUES (129, 'Progressive', 'Progressive I', 'When this card is in the Support Deck, boosts Defense by an additional 0.19%', 'When this card is in the Support Deck, boosts Defense by an additional 1%');
INSERT INTO public.skills VALUES (130, 'Reformer', 'Reformer II', 'Boosts the base Influence of all Intuition cards in the Primary Deck by 1.15%', 'Boosts the base Influence of all Intuition cards in the Primary Deck by 5.83%');
INSERT INTO public.skills VALUES (131, 'Rigor', 'Rigor III', 'Boost the base Defense of all Logic cards in the Primary Deck by 2.88%', 'Boost the base Defense of all Logic cards in the Primary Deck by 14.4%');
INSERT INTO public.skills VALUES (132, 'Rigor', 'Rigor II', 'Boosts the base Defense of all Logic cards in the Primary Deck by 2.3%', 'Boosts the base Defense of all Logic cards in the Primary Deck by 11.48%');
INSERT INTO public.skills VALUES (133, 'Sandplay Therapy', 'Sandplay Therapy III', 'Boosts the base Defense of all Vyn cards in the Primary Deck by 27', 'Boosts the base Defense of all Vyn cards in the Primary Deck by 135');
INSERT INTO public.skills VALUES (134, 'Sandplay Therapy', 'Sandplay Therapy II', 'Boosts the base Defense of all Vyn cards in the Primary Deck by 21.5', 'Boosts the base Defense of all Vyn cards in the Primary Deck by 108');
INSERT INTO public.skills VALUES (135, 'Self-Evaluation', 'Self-Evaluation III', 'Boosts this card''s base Defense by 3.2% for every Vyn card in the Primary Deck', 'Boosts this card''s base Defense by 15.98% for every Vyn card in the Primary Deck');
INSERT INTO public.skills VALUES (136, 'Sharp Debater', 'Sharp Debater III', 'Boosts the base Influence of all Artem cards in the Primary Deck by 27', 'Boosts the base Influence of all Artem cards in the Primary Deck by 135');
INSERT INTO public.skills VALUES (137, 'Sharp Debater', 'Sharp Debater II', 'Boosts the base Influence of all Artem cards in the Primary Deck by 21.5', 'Boosts the base Influence of all Artem cards in the Primary Deck by 107.99');
INSERT INTO public.skills VALUES (138, 'Sharp One', 'Sharp One III', 'Boosts this card''s base Influence by 27 for every Marius card in the Primary Deck', 'Boosts this card''s base Influence by 135 for every Marius card in the Primary Deck');
INSERT INTO public.skills VALUES (139, 'Sharp One', 'Sharp One II', 'Boosts this card''s base Influence by 21.5 for every Marius card in the Primary Deck', 'Boosts this card''s base Influence by 108 for every Marius card in the Primary Deck');
INSERT INTO public.skills VALUES (140, 'Sharp Strategist', 'Sharp Strategist II', 'Boosts the base Influence of all Logic cards in the Primary Deck by 1.15%', 'Boosts the base Influence of all Logic cards in the Primary Deck by 5.83%');
INSERT INTO public.skills VALUES (141, 'Skilled Diplomat', 'Skilled Diplomat III', 'Boosts the base Influence of all Logic cards in the Primary Deck by 26', 'Boosts the base Influence of all Logic cards in the Primary Deck by 125');
INSERT INTO public.skills VALUES (142, 'Skilled Diplomat', 'Skilled Diplomat II', 'Boosts the base Influence of all Logic cards in the Primary Deck by 21', 'Boosts the base Influence of all Logic cards in the Primary Deck by 100');
INSERT INTO public.skills VALUES (143, 'Sound Judgment', 'Sound Judgment II', 'Boosts this card''s base Defense by 14.4% during debates', 'Boosts this card''s base Defense by 72% during debates');
INSERT INTO public.skills VALUES (144, 'Strategist', 'Strategist II', 'Boosts this card''s base Defense by 144 during debates', 'Boosts this card''s base Defense by 770 during debates');
INSERT INTO public.skills VALUES (145, 'Strike Weakness', 'Strike Weakness III', 'Boosts the base Influence of all Empathy cards in the Primary Deck by 26', 'Boosts the base Influence of all Empathy cards in the Primary Deck by 125');
INSERT INTO public.skills VALUES (146, 'Strike Weakness', 'Strike Weakness II', 'Boosts the base Influence of all Empathy cards in the Primary Deck by 21', 'Boosts the base Influence of all Empathy cards in the Primary Deck by 100');
INSERT INTO public.skills VALUES (147, 'Superior Stamina', 'Superior Stamina II', 'Boosts the base Defense of all Luke cards in the Primary Deck by 2.56%', 'Boosts the base Defense of all Luke cards in the Primary Deck by 12.82%');
INSERT INTO public.skills VALUES (148, 'Symphony', 'Symphony III', 'Boosts this card''s base Influence by 1.6% for every Vyn card in the Primary Deck', 'Boosts this card''s base Influence by 7.99% for every Vyn card in the Primary Deck');
INSERT INTO public.skills VALUES (149, 'Systematic', 'Systematic III', 'Boosts this card''s base Defense by 27 for every Artem card in the Primary Deck', 'Boosts this card''s base Defense by 135 for every Artem card in the Primary Deck');
INSERT INTO public.skills VALUES (150, 'Systematic', 'Systematic II', 'Boosts this card''s base Defense by 21.5 for every Artem card in the Primary Deck', 'Boosts this card''s base Defense by 108 for every Artem card in the Primary Deck');
INSERT INTO public.skills VALUES (151, 'Truth Restorer', 'Truth Restorer III', 'Boosts this card''s base Influence by 27 for every Luke card in the Primary Deck', 'Boosts this card''s base Influence by 135 for every Luke card in the Primary Deck');
INSERT INTO public.skills VALUES (152, 'Truth Restorer', 'Truth Restorer II', 'Boosts this card''s Influence by 21.5 for every Luke card in the Primary Deck', 'Boosts this card''s Influence by 108 for every Luke card in the Primary Deck');
INSERT INTO public.skills VALUES (153, 'Virtuous Presence', 'Virtuous Presence α III', 'Reduces the opponent''s Defense by 15% for 1 turn', 'Reduces the opponent''s Defense by 75.03% for 1 turn');
INSERT INTO public.skills VALUES (154, 'Virtuous Presence', 'Virtuous Presence α I', 'Reduces the opponent''s Defense by 9% for 1 turn', 'Reduces the opponent''s Defense by 45% for 1 turn');
INSERT INTO public.skills VALUES (155, 'Virtuous Presence', 'Virtuous Presence β I', 'Reduces the opponent''s Defense by 5.4% for 2 turns', 'Reduces the opponent''s Defense by 27% for 2 turns');
INSERT INTO public.skills VALUES (156, 'Virtuous Presence', 'Virtuous Presence γ III', 'Reduces the opponent''s Defense by 7% for 3 turn(s)', 'Reduces the opponent''s Defense by 34.99% for 3 turn(s)');


--
-- TOC entry 4310 (class 0 OID 0)
-- Dependencies: 209
-- Name: skills_skill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wmnowcsvmoqrto
--

SELECT pg_catalog.setval('public.skills_skill_id_seq', 156, true);


--
-- TOC entry 4159 (class 2606 OID 7623797)
-- Name: skills skills_pkey; Type: CONSTRAINT; Schema: public; Owner: wmnowcsvmoqrto
--

ALTER TABLE ONLY public.skills
    ADD CONSTRAINT skills_pkey PRIMARY KEY (skill_id);


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


-- Completed on 2022-06-28 22:15:46

--
-- PostgreSQL database dump complete
--

