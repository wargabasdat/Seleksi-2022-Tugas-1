--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Ubuntu 14.4-1.pgdg20.04+1)
-- Dumped by pg_dump version 14.2

-- Started on 2022-06-28 22:14:54

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
-- TOC entry 4304 (class 1262 OID 4986153)
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
-- TOC entry 213 (class 1259 OID 7634044)
-- Name: card_skills; Type: TABLE; Schema: public; Owner: wmnowcsvmoqrto
--

CREATE TABLE public.card_skills (
    card_id integer,
    skill_id integer
);


ALTER TABLE public.card_skills OWNER TO wmnowcsvmoqrto;

--
-- TOC entry 4298 (class 0 OID 7634044)
-- Dependencies: 213
-- Data for Name: card_skills; Type: TABLE DATA; Schema: public; Owner: wmnowcsvmoqrto
--

INSERT INTO public.card_skills VALUES (1, 85);
INSERT INTO public.card_skills VALUES (1, 52);
INSERT INTO public.card_skills VALUES (1, 116);
INSERT INTO public.card_skills VALUES (2, 20);
INSERT INTO public.card_skills VALUES (2, 4);
INSERT INTO public.card_skills VALUES (2, 145);
INSERT INTO public.card_skills VALUES (3, 98);
INSERT INTO public.card_skills VALUES (3, 151);
INSERT INTO public.card_skills VALUES (3, 58);
INSERT INTO public.card_skills VALUES (4, 120);
INSERT INTO public.card_skills VALUES (4, 151);
INSERT INTO public.card_skills VALUES (4, 116);
INSERT INTO public.card_skills VALUES (5, 120);
INSERT INTO public.card_skills VALUES (5, 39);
INSERT INTO public.card_skills VALUES (5, 48);
INSERT INTO public.card_skills VALUES (6, 63);
INSERT INTO public.card_skills VALUES (6, 77);
INSERT INTO public.card_skills VALUES (6, 41);
INSERT INTO public.card_skills VALUES (7, 156);
INSERT INTO public.card_skills VALUES (7, 38);
INSERT INTO public.card_skills VALUES (7, 41);
INSERT INTO public.card_skills VALUES (8, 10);
INSERT INTO public.card_skills VALUES (8, 123);
INSERT INTO public.card_skills VALUES (8, 41);
INSERT INTO public.card_skills VALUES (9, 92);
INSERT INTO public.card_skills VALUES (9, 71);
INSERT INTO public.card_skills VALUES (9, 41);
INSERT INTO public.card_skills VALUES (10, 83);
INSERT INTO public.card_skills VALUES (10, 5);
INSERT INTO public.card_skills VALUES (10, 44);
INSERT INTO public.card_skills VALUES (11, 65);
INSERT INTO public.card_skills VALUES (11, 144);
INSERT INTO public.card_skills VALUES (11, 68);
INSERT INTO public.card_skills VALUES (12, 86);
INSERT INTO public.card_skills VALUES (12, 79);
INSERT INTO public.card_skills VALUES (12, 147);
INSERT INTO public.card_skills VALUES (13, 21);
INSERT INTO public.card_skills VALUES (13, 51);
INSERT INTO public.card_skills VALUES (13, 117);
INSERT INTO public.card_skills VALUES (14, 121);
INSERT INTO public.card_skills VALUES (14, 27);
INSERT INTO public.card_skills VALUES (14, 44);
INSERT INTO public.card_skills VALUES (15, 89);
INSERT INTO public.card_skills VALUES (15, 144);
INSERT INTO public.card_skills VALUES (15, 142);
INSERT INTO public.card_skills VALUES (16, 11);
INSERT INTO public.card_skills VALUES (16, 81);
INSERT INTO public.card_skills VALUES (16, 128);
INSERT INTO public.card_skills VALUES (17, 99);
INSERT INTO public.card_skills VALUES (17, 115);
INSERT INTO public.card_skills VALUES (17, 140);
INSERT INTO public.card_skills VALUES (18, 34);
INSERT INTO public.card_skills VALUES (18, 27);
INSERT INTO public.card_skills VALUES (18, 142);
INSERT INTO public.card_skills VALUES (19, 121);
INSERT INTO public.card_skills VALUES (19, 42);
INSERT INTO public.card_skills VALUES (19, 72);
INSERT INTO public.card_skills VALUES (20, 89);
INSERT INTO public.card_skills VALUES (20, 79);
INSERT INTO public.card_skills VALUES (20, 49);
INSERT INTO public.card_skills VALUES (21, 121);
INSERT INTO public.card_skills VALUES (21, 152);
INSERT INTO public.card_skills VALUES (21, 132);
INSERT INTO public.card_skills VALUES (22, 35);
INSERT INTO public.card_skills VALUES (22, 69);
INSERT INTO public.card_skills VALUES (23, 66);
INSERT INTO public.card_skills VALUES (23, 129);
INSERT INTO public.card_skills VALUES (24, 109);
INSERT INTO public.card_skills VALUES (24, 69);
INSERT INTO public.card_skills VALUES (25, 9);
INSERT INTO public.card_skills VALUES (25, 69);
INSERT INTO public.card_skills VALUES (26, 97);
INSERT INTO public.card_skills VALUES (26, 69);
INSERT INTO public.card_skills VALUES (27, 25);
INSERT INTO public.card_skills VALUES (27, 129);
INSERT INTO public.card_skills VALUES (28, 90);
INSERT INTO public.card_skills VALUES (28, 129);
INSERT INTO public.card_skills VALUES (29, 122);
INSERT INTO public.card_skills VALUES (29, 129);
INSERT INTO public.card_skills VALUES (30, 12);
INSERT INTO public.card_skills VALUES (30, 129);
INSERT INTO public.card_skills VALUES (31, 97);
INSERT INTO public.card_skills VALUES (31, 69);
INSERT INTO public.card_skills VALUES (32, 22);
INSERT INTO public.card_skills VALUES (32, 69);
INSERT INTO public.card_skills VALUES (33, 22);
INSERT INTO public.card_skills VALUES (33, 129);
INSERT INTO public.card_skills VALUES (34, 64);
INSERT INTO public.card_skills VALUES (34, 129);
INSERT INTO public.card_skills VALUES (35, 57);
INSERT INTO public.card_skills VALUES (35, 69);
INSERT INTO public.card_skills VALUES (36, 88);
INSERT INTO public.card_skills VALUES (36, 114);
INSERT INTO public.card_skills VALUES (36, 131);
INSERT INTO public.card_skills VALUES (37, 23);
INSERT INTO public.card_skills VALUES (37, 149);
INSERT INTO public.card_skills VALUES (37, 43);
INSERT INTO public.card_skills VALUES (38, 98);
INSERT INTO public.card_skills VALUES (38, 110);
INSERT INTO public.card_skills VALUES (38, 58);
INSERT INTO public.card_skills VALUES (39, 63);
INSERT INTO public.card_skills VALUES (39, 110);
INSERT INTO public.card_skills VALUES (39, 91);
INSERT INTO public.card_skills VALUES (40, 120);
INSERT INTO public.card_skills VALUES (40, 78);
INSERT INTO public.card_skills VALUES (40, 1);
INSERT INTO public.card_skills VALUES (41, 7);
INSERT INTO public.card_skills VALUES (41, 16);
INSERT INTO public.card_skills VALUES (41, 136);
INSERT INTO public.card_skills VALUES (42, 13);
INSERT INTO public.card_skills VALUES (42, 123);
INSERT INTO public.card_skills VALUES (42, 136);
INSERT INTO public.card_skills VALUES (43, 120);
INSERT INTO public.card_skills VALUES (43, 110);
INSERT INTO public.card_skills VALUES (43, 131);
INSERT INTO public.card_skills VALUES (44, 156);
INSERT INTO public.card_skills VALUES (44, 110);
INSERT INTO public.card_skills VALUES (44, 1);
INSERT INTO public.card_skills VALUES (45, 95);
INSERT INTO public.card_skills VALUES (45, 71);
INSERT INTO public.card_skills VALUES (45, 136);
INSERT INTO public.card_skills VALUES (46, 96);
INSERT INTO public.card_skills VALUES (46, 111);
INSERT INTO public.card_skills VALUES (46, 59);
INSERT INTO public.card_skills VALUES (47, 121);
INSERT INTO public.card_skills VALUES (47, 144);
INSERT INTO public.card_skills VALUES (47, 137);
INSERT INTO public.card_skills VALUES (48, 55);
INSERT INTO public.card_skills VALUES (48, 124);
INSERT INTO public.card_skills VALUES (48, 130);
INSERT INTO public.card_skills VALUES (49, 106);
INSERT INTO public.card_skills VALUES (49, 150);
INSERT INTO public.card_skills VALUES (49, 140);
INSERT INTO public.card_skills VALUES (50, 121);
INSERT INTO public.card_skills VALUES (50, 27);
INSERT INTO public.card_skills VALUES (50, 142);
INSERT INTO public.card_skills VALUES (51, 21);
INSERT INTO public.card_skills VALUES (51, 53);
INSERT INTO public.card_skills VALUES (51, 113);
INSERT INTO public.card_skills VALUES (52, 36);
INSERT INTO public.card_skills VALUES (52, 143);
INSERT INTO public.card_skills VALUES (52, 130);
INSERT INTO public.card_skills VALUES (53, 65);
INSERT INTO public.card_skills VALUES (53, 61);
INSERT INTO public.card_skills VALUES (53, 146);
INSERT INTO public.card_skills VALUES (54, 14);
INSERT INTO public.card_skills VALUES (54, 81);
INSERT INTO public.card_skills VALUES (54, 137);
INSERT INTO public.card_skills VALUES (55, 86);
INSERT INTO public.card_skills VALUES (55, 30);
INSERT INTO public.card_skills VALUES (55, 59);
INSERT INTO public.card_skills VALUES (56, 121);
INSERT INTO public.card_skills VALUES (56, 137);
INSERT INTO public.card_skills VALUES (56, 124);
INSERT INTO public.card_skills VALUES (57, 86);
INSERT INTO public.card_skills VALUES (57, 111);
INSERT INTO public.card_skills VALUES (57, 117);
INSERT INTO public.card_skills VALUES (58, 89);
INSERT INTO public.card_skills VALUES (58, 115);
INSERT INTO public.card_skills VALUES (58, 2);
INSERT INTO public.card_skills VALUES (59, 74);
INSERT INTO public.card_skills VALUES (59, 69);
INSERT INTO public.card_skills VALUES (60, 84);
INSERT INTO public.card_skills VALUES (60, 129);
INSERT INTO public.card_skills VALUES (61, 154);
INSERT INTO public.card_skills VALUES (61, 129);
INSERT INTO public.card_skills VALUES (62, 90);
INSERT INTO public.card_skills VALUES (62, 69);
INSERT INTO public.card_skills VALUES (63, 9);
INSERT INTO public.card_skills VALUES (63, 129);
INSERT INTO public.card_skills VALUES (64, 87);
INSERT INTO public.card_skills VALUES (64, 129);
INSERT INTO public.card_skills VALUES (65, 76);
INSERT INTO public.card_skills VALUES (65, 129);
INSERT INTO public.card_skills VALUES (66, 94);
INSERT INTO public.card_skills VALUES (66, 69);
INSERT INTO public.card_skills VALUES (67, 105);
INSERT INTO public.card_skills VALUES (67, 69);
INSERT INTO public.card_skills VALUES (68, 94);
INSERT INTO public.card_skills VALUES (68, 129);
INSERT INTO public.card_skills VALUES (69, 57);
INSERT INTO public.card_skills VALUES (69, 69);
INSERT INTO public.card_skills VALUES (70, 64);
INSERT INTO public.card_skills VALUES (70, 69);
INSERT INTO public.card_skills VALUES (71, 73);
INSERT INTO public.card_skills VALUES (71, 129);
INSERT INTO public.card_skills VALUES (72, 94);
INSERT INTO public.card_skills VALUES (72, 69);
INSERT INTO public.card_skills VALUES (73, 153);
INSERT INTO public.card_skills VALUES (73, 135);
INSERT INTO public.card_skills VALUES (73, 31);
INSERT INTO public.card_skills VALUES (74, 120);
INSERT INTO public.card_skills VALUES (74, 45);
INSERT INTO public.card_skills VALUES (74, 101);
INSERT INTO public.card_skills VALUES (75, 17);
INSERT INTO public.card_skills VALUES (75, 103);
INSERT INTO public.card_skills VALUES (75, 118);
INSERT INTO public.card_skills VALUES (76, 13);
INSERT INTO public.card_skills VALUES (76, 45);
INSERT INTO public.card_skills VALUES (76, 127);
INSERT INTO public.card_skills VALUES (77, 62);
INSERT INTO public.card_skills VALUES (77, 148);
INSERT INTO public.card_skills VALUES (77, 58);
INSERT INTO public.card_skills VALUES (78, 98);
INSERT INTO public.card_skills VALUES (78, 37);
INSERT INTO public.card_skills VALUES (78, 141);
INSERT INTO public.card_skills VALUES (79, 85);
INSERT INTO public.card_skills VALUES (79, 26);
INSERT INTO public.card_skills VALUES (79, 112);
INSERT INTO public.card_skills VALUES (80, 120);
INSERT INTO public.card_skills VALUES (80, 80);
INSERT INTO public.card_skills VALUES (80, 133);
INSERT INTO public.card_skills VALUES (81, 120);
INSERT INTO public.card_skills VALUES (81, 45);
INSERT INTO public.card_skills VALUES (81, 116);
INSERT INTO public.card_skills VALUES (82, 121);
INSERT INTO public.card_skills VALUES (82, 40);
INSERT INTO public.card_skills VALUES (82, 59);
INSERT INTO public.card_skills VALUES (83, 18);
INSERT INTO public.card_skills VALUES (83, 113);
INSERT INTO public.card_skills VALUES (83, 32);
INSERT INTO public.card_skills VALUES (84, 24);
INSERT INTO public.card_skills VALUES (84, 46);
INSERT INTO public.card_skills VALUES (84, 44);
INSERT INTO public.card_skills VALUES (85, 121);
INSERT INTO public.card_skills VALUES (85, 27);
INSERT INTO public.card_skills VALUES (85, 128);
INSERT INTO public.card_skills VALUES (86, 96);
INSERT INTO public.card_skills VALUES (86, 72);
INSERT INTO public.card_skills VALUES (86, 142);
INSERT INTO public.card_skills VALUES (87, 89);
INSERT INTO public.card_skills VALUES (87, 51);
INSERT INTO public.card_skills VALUES (87, 44);
INSERT INTO public.card_skills VALUES (88, 8);
INSERT INTO public.card_skills VALUES (88, 81);
INSERT INTO public.card_skills VALUES (88, 102);
INSERT INTO public.card_skills VALUES (89, 55);
INSERT INTO public.card_skills VALUES (89, 81);
INSERT INTO public.card_skills VALUES (89, 134);
INSERT INTO public.card_skills VALUES (90, 108);
INSERT INTO public.card_skills VALUES (90, 40);
INSERT INTO public.card_skills VALUES (90, 132);
INSERT INTO public.card_skills VALUES (91, 89);
INSERT INTO public.card_skills VALUES (91, 79);
INSERT INTO public.card_skills VALUES (91, 134);
INSERT INTO public.card_skills VALUES (92, 86);
INSERT INTO public.card_skills VALUES (92, 46);
INSERT INTO public.card_skills VALUES (92, 132);
INSERT INTO public.card_skills VALUES (93, 121);
INSERT INTO public.card_skills VALUES (93, 119);
INSERT INTO public.card_skills VALUES (93, 104);
INSERT INTO public.card_skills VALUES (94, 100);
INSERT INTO public.card_skills VALUES (94, 129);
INSERT INTO public.card_skills VALUES (95, 122);
INSERT INTO public.card_skills VALUES (95, 69);
INSERT INTO public.card_skills VALUES (96, 33);
INSERT INTO public.card_skills VALUES (96, 129);
INSERT INTO public.card_skills VALUES (97, 64);
INSERT INTO public.card_skills VALUES (97, 69);
INSERT INTO public.card_skills VALUES (98, 76);
INSERT INTO public.card_skills VALUES (98, 69);
INSERT INTO public.card_skills VALUES (99, 66);
INSERT INTO public.card_skills VALUES (99, 129);
INSERT INTO public.card_skills VALUES (100, 122);
INSERT INTO public.card_skills VALUES (100, 69);
INSERT INTO public.card_skills VALUES (101, 122);
INSERT INTO public.card_skills VALUES (101, 69);
INSERT INTO public.card_skills VALUES (102, 122);
INSERT INTO public.card_skills VALUES (102, 129);
INSERT INTO public.card_skills VALUES (103, 100);
INSERT INTO public.card_skills VALUES (103, 129);
INSERT INTO public.card_skills VALUES (104, 15);
INSERT INTO public.card_skills VALUES (104, 69);
INSERT INTO public.card_skills VALUES (105, 56);
INSERT INTO public.card_skills VALUES (105, 129);
INSERT INTO public.card_skills VALUES (106, 66);
INSERT INTO public.card_skills VALUES (106, 69);
INSERT INTO public.card_skills VALUES (107, 25);
INSERT INTO public.card_skills VALUES (107, 129);
INSERT INTO public.card_skills VALUES (108, 120);
INSERT INTO public.card_skills VALUES (108, 138);
INSERT INTO public.card_skills VALUES (108, 116);
INSERT INTO public.card_skills VALUES (109, 17);
INSERT INTO public.card_skills VALUES (109, 6);
INSERT INTO public.card_skills VALUES (109, 125);
INSERT INTO public.card_skills VALUES (110, 10);
INSERT INTO public.card_skills VALUES (110, 123);
INSERT INTO public.card_skills VALUES (110, 28);
INSERT INTO public.card_skills VALUES (111, 23);
INSERT INTO public.card_skills VALUES (111, 138);
INSERT INTO public.card_skills VALUES (111, 112);
INSERT INTO public.card_skills VALUES (112, 88);
INSERT INTO public.card_skills VALUES (112, 60);
INSERT INTO public.card_skills VALUES (112, 101);
INSERT INTO public.card_skills VALUES (113, 82);
INSERT INTO public.card_skills VALUES (113, 3);
INSERT INTO public.card_skills VALUES (113, 28);
INSERT INTO public.card_skills VALUES (114, 13);
INSERT INTO public.card_skills VALUES (114, 47);
INSERT INTO public.card_skills VALUES (114, 67);
INSERT INTO public.card_skills VALUES (115, 63);
INSERT INTO public.card_skills VALUES (115, 138);
INSERT INTO public.card_skills VALUES (115, 28);
INSERT INTO public.card_skills VALUES (116, 120);
INSERT INTO public.card_skills VALUES (116, 50);
INSERT INTO public.card_skills VALUES (116, 125);
INSERT INTO public.card_skills VALUES (117, 98);
INSERT INTO public.card_skills VALUES (117, 3);
INSERT INTO public.card_skills VALUES (117, 70);
INSERT INTO public.card_skills VALUES (118, 96);
INSERT INTO public.card_skills VALUES (118, 27);
INSERT INTO public.card_skills VALUES (118, 59);
INSERT INTO public.card_skills VALUES (119, 121);
INSERT INTO public.card_skills VALUES (119, 61);
INSERT INTO public.card_skills VALUES (119, 68);
INSERT INTO public.card_skills VALUES (120, 11);
INSERT INTO public.card_skills VALUES (120, 81);
INSERT INTO public.card_skills VALUES (120, 128);
INSERT INTO public.card_skills VALUES (121, 65);
INSERT INTO public.card_skills VALUES (121, 40);
INSERT INTO public.card_skills VALUES (121, 132);
INSERT INTO public.card_skills VALUES (122, 75);
INSERT INTO public.card_skills VALUES (122, 51);
INSERT INTO public.card_skills VALUES (122, 117);
INSERT INTO public.card_skills VALUES (123, 21);
INSERT INTO public.card_skills VALUES (123, 139);
INSERT INTO public.card_skills VALUES (123, 146);
INSERT INTO public.card_skills VALUES (124, 89);
INSERT INTO public.card_skills VALUES (124, 104);
INSERT INTO public.card_skills VALUES (124, 44);
INSERT INTO public.card_skills VALUES (125, 93);
INSERT INTO public.card_skills VALUES (125, 139);
INSERT INTO public.card_skills VALUES (125, 140);
INSERT INTO public.card_skills VALUES (126, 121);
INSERT INTO public.card_skills VALUES (126, 29);
INSERT INTO public.card_skills VALUES (126, 124);
INSERT INTO public.card_skills VALUES (127, 89);
INSERT INTO public.card_skills VALUES (127, 53);
INSERT INTO public.card_skills VALUES (127, 126);
INSERT INTO public.card_skills VALUES (128, 107);
INSERT INTO public.card_skills VALUES (128, 129);
INSERT INTO public.card_skills VALUES (129, 84);
INSERT INTO public.card_skills VALUES (129, 129);
INSERT INTO public.card_skills VALUES (130, 90);
INSERT INTO public.card_skills VALUES (130, 129);
INSERT INTO public.card_skills VALUES (131, 66);
INSERT INTO public.card_skills VALUES (131, 69);
INSERT INTO public.card_skills VALUES (132, 87);
INSERT INTO public.card_skills VALUES (132, 69);
INSERT INTO public.card_skills VALUES (133, 19);
INSERT INTO public.card_skills VALUES (133, 129);
INSERT INTO public.card_skills VALUES (134, 109);
INSERT INTO public.card_skills VALUES (134, 69);
INSERT INTO public.card_skills VALUES (135, 97);
INSERT INTO public.card_skills VALUES (135, 129);
INSERT INTO public.card_skills VALUES (136, 19);
INSERT INTO public.card_skills VALUES (136, 129);
INSERT INTO public.card_skills VALUES (137, 155);
INSERT INTO public.card_skills VALUES (137, 69);
INSERT INTO public.card_skills VALUES (138, 57);
INSERT INTO public.card_skills VALUES (138, 129);
INSERT INTO public.card_skills VALUES (139, 87);
INSERT INTO public.card_skills VALUES (139, 69);
INSERT INTO public.card_skills VALUES (140, 54);
INSERT INTO public.card_skills VALUES (140, 129);
INSERT INTO public.card_skills VALUES (141, 19);
INSERT INTO public.card_skills VALUES (141, 129);


--
-- TOC entry 4157 (class 2606 OID 7634047)
-- Name: card_skills FK_card_skills_cards; Type: FK CONSTRAINT; Schema: public; Owner: wmnowcsvmoqrto
--

ALTER TABLE ONLY public.card_skills
    ADD CONSTRAINT "FK_card_skills_cards" FOREIGN KEY (card_id) REFERENCES public.cards(card_id);


--
-- TOC entry 4158 (class 2606 OID 7634052)
-- Name: card_skills FK_card_skills_skills; Type: FK CONSTRAINT; Schema: public; Owner: wmnowcsvmoqrto
--

ALTER TABLE ONLY public.card_skills
    ADD CONSTRAINT "FK_card_skills_skills" FOREIGN KEY (skill_id) REFERENCES public.skills(skill_id);


--
-- TOC entry 4305 (class 0 OID 0)
-- Dependencies: 4304
-- Name: DATABASE dbidj1jmgf1lvo; Type: ACL; Schema: -; Owner: wmnowcsvmoqrto
--

REVOKE CONNECT,TEMPORARY ON DATABASE dbidj1jmgf1lvo FROM PUBLIC;


--
-- TOC entry 4306 (class 0 OID 0)
-- Dependencies: 832
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO wmnowcsvmoqrto;


-- Completed on 2022-06-28 22:15:15

--
-- PostgreSQL database dump complete
--

