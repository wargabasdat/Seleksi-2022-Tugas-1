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
-- Name: dress; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dress (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description character varying(500) NOT NULL,
    price integer NOT NULL,
    weight character varying(255) NOT NULL,
    dimensions character varying(255) NOT NULL
);


ALTER TABLE public.dress OWNER TO postgres;

--
-- Name: dress_colour; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dress_colour (
    id integer NOT NULL,
    colour character varying(255) NOT NULL
);


ALTER TABLE public.dress_colour OWNER TO postgres;

--
-- Name: dress_colour_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dress_colour_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dress_colour_id_seq OWNER TO postgres;

--
-- Name: dress_colour_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dress_colour_id_seq OWNED BY public.dress_colour.id;


--
-- Name: dress_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dress_id_seq OWNER TO postgres;

--
-- Name: dress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dress_id_seq OWNED BY public.dress.id;


--
-- Name: dress_size; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dress_size (
    id integer NOT NULL,
    size character varying(255) NOT NULL
);


ALTER TABLE public.dress_size OWNER TO postgres;

--
-- Name: dress_size_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dress_size_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dress_size_id_seq OWNER TO postgres;

--
-- Name: dress_size_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dress_size_id_seq OWNED BY public.dress_size.id;


--
-- Name: dress id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dress ALTER COLUMN id SET DEFAULT nextval('public.dress_id_seq'::regclass);


--
-- Name: dress_colour id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dress_colour ALTER COLUMN id SET DEFAULT nextval('public.dress_colour_id_seq'::regclass);


--
-- Name: dress_size id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dress_size ALTER COLUMN id SET DEFAULT nextval('public.dress_size_id_seq'::regclass);


--
-- Data for Name: dress; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dress (id, title, description, price, weight, dimensions) FROM stdin;
1	Limbo Dress	The Limbo Dress made of 100% modal fabrication. Features with drop back hem styling	329000	0.3 g	40 x 30 x 1 cm
2	Liberty Dress	Make our Liberty Dress your favorite side split midi dress. Shop this rayon woven dress with cut out back style from Blood+Bone Bali.	499000	0.25 g	40 x 30 x 1 cm
3	Tearjerk Dress	The Tearjerk Dress made of 100% rayon fabrication. Features fitted dress in a herringbone fabric with back bow styling	549000	0.3 g	40 x 30 x 1 cm
4	Sinful Dress	The Sinful Dress made of rayon fabrication. Features voile dress with cut and sew styling and made in a sustainable eco friendly fabric	449000	0.3 g	40 x 30 x 1 cm
5	Souljack Dress	The Souljack Dress made of a linen. Features shoulder straps which can be tied and adjusted from the back	499000	0.25 g	40 x 30 x 1 cm
6	Lullaby Dress	Discover more colors of Lullaby Dress by Blood+Bone. Add this cut out dress made of rayon in a heavy vintage wash to your wardrobe.	449000	0.25 g	40 x 30 x 1 cm
7	Moonglow Dress	Shop Moonglow Dress by Blood+Bone Bali online. Get the best deal for this women short dress with front lace up & Broderie Anglaise details.	449000	0.2 g	40 x 30 x 1 cm
8	Meltdown Dress	Check out Meltdown Dress, a fitted mini dress with front drawcord and adjustable straps. Shop this rayon dress in a soft vintage wash now.	449000	0.19 g	40 x 30 x 1 cm
9	Paradox Dress	Take a closer look at Paradox Dress by Blood+Bone Bali. Get this v neck bodycon dress made of poly spandex in a stretch stripe fabric now.	549000	0.375 g	40 x 30 x 1 cm
10	Mortal Dress	Add Mortal Dress to your wardrobe now. Shop this cotton jersey dress in a vintage wash with back strap styling from Blood+Bone online.	399000	0.17 g	40 x 30 x 1 cm
11	Nightingle Shirt	Take a closer look at Nightingle long sleeve shirt dress. Shop this oversized rayon shirt dress with button-through style & tie dye wash.	599000	0.2 g	40 x 30 x 1 cm
12	Dejavu Dress	Take a look at Deja Vu Dress by Blood+Bone Bali. Shop our oversized shirt dress made of rayon with button-through style online or in-stores.	449000	0.25 g	30 x 40 x 1 cm
13	Golden Gaze Dress	Buy Golden Gaze dress, one of the finest Blood+Bone Bali long length dress collections now. Free shipping within Indonesia only.	549000	0.275 g	40 x 30 x 1 cm
14	Fire Fly Dress	Meet Fire Fly Dress from Blood+Bone Bali rayon summer dress collection. Shop this fitted cut and sew dress with shoulder detail now.	499000	0.31 g	40 x 30 x 1 cm
15	Serenade Dress	Discover the Blood+Bone Bali summer vintage dress, Serenade Dress. Shop this 100% rayon with cut-n-sew styling and front buttons now.	449000	0.3 g	40 x 30 x 1 cm
16	Sunbeam Dress	Check out our Sunbeam Dress featuring cut & sew style in super soft wash. Shop this adjustable shoulder strap dress by Blood+Bone Bali.	449000	0.3 g	40 x 30 x 1 cm
17	Antidote Dress	Buy Antidote Dress by Blood+Bone Bali. Add this embroidered mini dress made of rayon fabric with cut & sew styling to your closet.	499000	0.35 g	40 x 30 x 1 cm
18	Teardrop Dress	Shop women's simple cotton dress, Teardrop, with back cut-out styling in a vintage wash from Blood+Bone Bali dress selections.	349000	0.25 g	40 x 30 x 1 cm
19	Siren Dress	Buy Siren Dress from Blood+Bone Bali women's collection. Make this 100% rayon women's ruched dress your favorite summer attire now.	399000	0.25 g	40 x 30 x 1 cm
20	Love Spreads Dress	Discover Love Spreads Dress by Blood+Bone Bali. Let this body fitted dress made of 100% rayon embrace you. Shop online or in stores.	449000	0.25 g	40 x 30 x 1 cm
21	New Wave Dress	Find out more colors of New Waves Dress by Blood+Bone Bali. Shop this floral mini dress with double layer style online or in-stores.	449000	0.375 g	40 x 30 x 1 cm
22	Day Breaker Dress	Purchase Day Breaker Dress online or in-stores now. Get the best deals for this cotton mini dress with cut and sew style by Blood+Bone Bali	399000	0.2 g	40 x 30 x 1 cm
23	Sure Thing Dress	Shop for Sure Thing Dress, a zip front dress made of 100% cotton with fitted style. Enjoy free shipping within Indonesia only.	499000	0.3 g	40 x 30 x 1 cm
24	Run Away Dress	Check out Runaway Dress by Blood+Bone, a cotton fitted dress with a square front and front slit styling. Free shipping within Indonesia.	449000	0.275 g	40 x 30 x 1 cm
25	Cats Eyes Dress	Check out Cat's Eyes Dress from Blood+Bone Bali women's collection. Shop this ruched bodycon dress made of cotton online or in stores now.	399000	0.2 g	40 x 30 x 1 cm
26	Incognito Dress	Check out Incognito dress by Blood+Bone Bali. 100% rayon cut and sew dress with front embroidery. Get free shipping within Indonesia.	399000	0.2 g	40 x 30 x 1 cm
27	Summer Daze Dress	Get your Summer Daze Dress from Blood+Bone Bali. Purchase our button up short dress made of rayon fabric with cu & sew embroidery now.	499000	0.25 g	40 x 30 x 1 cm
28	Black Swan Dress	Find the best offers for our Black Swan Dress. Purchase this denim dress with back strap styling & soft vintage wash from Blood+Bone Bali.	599000	0.25 g	40 x 30 x 1 cm
29	Back Wash Dress	Discover Back Wash Dress from our women's dress collection. Shop and get this cut out mini dress made of rayon & herringbone to your closet.	499000	0.165 g	40 x 30 x 1 cm
30	Summer Shine Dress	The Summer Shine Dress made of rayon fabrication. Features lightweight midi dress with front shaped hem styling	399000	0.375 g	40 x 30 x 1 cm
31	Lullaby Dress	Buy Lullaby Dress from Blood+Bone Bali women's collection. Save this rayon loose mini dress with cut out back to your wardrobe.	449000	0.25 g	40 x 30 x 1 cm
32	Daybreak Dress	Shop Daybreak Dress, a silhouette rayon mini dress with cutout t bar back styling, by Blood+Bone Bali. Free shipping within Indonesia.	399000	0.17 g	40 x 30 x 1 cm
33	Neon Dream Dress	Take a look at Neon Dream Dress now. Purchase Blood+Bone Bali tie up side dress with rayon fabric in a vintage wash online or in-stores.	399000	0.235 g	40 x 30 x 1 cm
34	Lullaby Dress	Get the best offers for Lullaby Dress, rayon cut-back woven dress from Blood+Bone summer beach dress products. Shop online now.	449000	0.25 g	40 x 30 x 1 cm
35	Love Sick Dress	Check out Love Sick Dress, a loose short dress by Blood+Bone Bali. Shop our cotton silhouette dress with front scoop and drop back style.	349000	0.2 g	40 x 30 x 1 cm
36	Nite Flight Dress	Get your own Nite Flight Dress from Blood+Bone Bali women's collection. Buy this rayon jersey dress with shaped hem styling now.	399000	0.2 g	40 x 30 x 1 cm
37	Liberty Dress	Make our Liberty Dress your favorite side split midi dress. Shop this rayon woven dress with cut out back style from Blood+Bone Bali.	499000	0.25 g	40 x 30 x 1 cm
38	Golden Gaze Dress	Check out Blood+Bone Bali long dress collection, Golden Gaze Dress, made of rayon with contrast elastic shoulder styling & long side slid.	549000	0.275 g	40 x 30 x 1 cm
39	Twisted Dress	THE TWISTED DRESS COMES WITH RELAXED BODY STYLING WITH ITS SIGNATURE TWISTED DOUBLE STRAP FEATURE AND SIDE SLIT , IN A SUPER SOFT LIGHT WEIGHT FABRIC WITH VINTAGE WASH	499000	0.375 g	40 x 30 x 1 cm
40	Soulmate Dress	Take a closer look at our Soulmate Dress. Shop this full length rayon midi dress with textured rib by Blood+Bone Bali online or in-stores.	499000	0.375 g	40 x 30 x 1 cm
41	Twisted Dress	THE TWISTED DRESS COMES WITH RELAXED BODY STYLING WITH ITS SIGNATURE TWISTED DOUBLE STRAP FEATURE AND SIDE SLIT , IN A SUPER SOFT LIGHT WEIGHT FABRIC WITH VINTAGE WASH	499000	0.375 g	40 x 30 x 1 cm
42	Seaquest Dress	Purchase Seaquest Dress online or in-stores now. Add Blood+Bone Bali floral cut our dress with cut-n-sew style to your personal wardrobe.	449000	0.275 g	40 x 30 x 1 cm
43	Penderosa Dress	Add Penderosa Dress to your personal closet. Shop this floral print mini dress made of rayon by Blood+Bone Bali online or in-stores now.	449000	0.275 g	40 x 30 x 1 cm
44	Hologram Dress	Find the best offers for Hologram Dress by Blood+Bone Bali. Add this woven mini dress with various colors and sizes to your wardrobe.	399000	0.2 g	40 x 30 x 1 cm
45	Gypsy Dress	Look at our Gypsy Dress with elasticated top section & side lace up style. Get the best deal for this lace up side dress by Blood+Bone Bali.	399000	0.25 g	40 x 30 x 1 cm
46	Hologram Dress	Purchase Hologram Dress from Blood+Bone Bali women's dress collection. Enjoy the lighweight rayon woven dress with stitch embroidery.	399000	0.2 g	40 x 30 x 1 cm
47	Better Angel Dress	Get the best deals for Better Angel Dress. Buy this button up midi dress made of rayon by Blood+Bone Bali online or in stores now.	499000	0.3 g	40 x 30 x 1 cm
48	Chasing Shadows Dress	Get the best deals for Chasing Shadows black jersey dress made of rayon with open v neck back & side slits by Blood+Bone Bali.	499000	0.25 g	40 x 30 x 1 cm
49	Silver City Dress	Buy Silver City Dress from Blood+Bone Bali collection. Get your own tie up back dress with woven rayon fabric and all over print.	499000	0.275 g	40 x 30 x 1 cm
50	Havana Girl Dress	Get best deals for Havana Dress. Purchase our linen mini dress with bow tie shoulder style from Blood+Bone Bali women's collection.	449000	0.2 g	40 x 30 x 1 cm
51	Simple Thing Dress	Get your own Simple Thing Dress from Blood+Bone Bali. Purchase this side slit midi dress with rayon fabric & shoulder tie up strap now.	449000	0.25 g	40 x 30 x 1 cm
52	Twisted Dress	Buy our Twisted Dress in-stores or online. Discover Blood+Bone Bali side slit maxi dress with rayon fabric & double strap in various colors.	499000	0.375 g	40 x 30 x 1 cm
53	Liquid Dress	Shop Liquid dress from Blood+Bone Bali rayon maxi dress selections. Add this lightweight jersey dress with front shaped hem.	199500	0.35 g	40 x 30 x 1 cm
\.


--
-- Data for Name: dress_colour; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dress_colour (id, colour) FROM stdin;
1	Black
2	Pine
3	Black
4	Black
5	Black
6	Blue Acid
6	Rose Acid
7	Khaki
8	Coral
9	Tan
10	Cloud Grey
10	Rose
11	Multi
12	Desert Sage
13	Stone
14	Black
15	Jade
15	Peach
16	Lemon
17	Black Sulphur
18	Black
18	Carnation Tyedie
19	Ginger
20	Black
20	Lemon
21	White
22	Sand
23	Black
24	Black
25	Still Water
26	White
27	Seafoam
28	Denim
29	Black
30	Black
30	Moss Green
30	White
31	Peach
32	Peach
32	Seafom Acid
33	Mauve Acid
34	Black Acid
34	Seafoam Acid
35	Misty
36	Misty
37	Black
38	Black
39	Black
40	Artic
41	Yellow
41	Sand
42	Black
43	Black
44	Brick Acid
44	Lemon Acid
45	Black
45	Rose
46	Black Acid
46	Brown
47	Honeycomb
48	Black
49	Black
50	Shell
51	Black
52	Olive
53	Black
53	Taupe
\.


--
-- Data for Name: dress_size; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dress_size (id, size) FROM stdin;
1	6
1	8
1	10
1	12
2	6
2	8
2	10
2	12
3	6
3	8
3	10
3	12
4	6
4	8
4	10
4	12
5	8
5	10
5	12
6	6
6	8
6	10
6	12
6	14
7	8
7	10
7	12
7	14
8	8
8	10
8	12
8	14
9	6
9	8
9	10
9	12
10	8
10	10
10	12
10	14
11	6
11	8
11	10
11	12
12	All Size
13	6
13	8
13	10
13	12
14	6
14	8
14	10
14	12
15	6
15	8
15	10
16	6
16	8
16	10
17	8
17	10
17	12
17	14
18	6
18	8
18	10
18	12
18	14
19	S/M
19	L/XL
20	8
20	10
20	12
20	14
21	10
21	12
21	14
22	6
22	8
22	10
22	12
23	10
23	12
23	14
24	8
24	12
24	14
25	8
25	10
25	12
25	14
26	10
26	12
27	8
27	12
27	14
28	6
28	10
28	12
29	6
29	8
29	10
29	12
30	All Size
31	6
31	10
31	12
31	14
32	6
32	8
32	10
32	12
33	6
33	8
33	10
33	12
34	6
34	8
34	10
34	12
34	14
35	8
35	10
35	12
35	14
36	6
36	8
36	10
36	12
36	14
37	6
37	8
37	10
37	12
37	14
38	8
38	10
38	12
38	14
39	6
39	8
39	10
39	12
39	14
40	6
40	8
40	10
40	12
40	14
41	6
41	8
41	10
41	12
42	8
42	10
42	12
42	14
43	8
43	10
43	12
43	14
44	6
44	8
44	10
44	12
44	14
45	8
45	10
45	12
45	14
46	6
46	8
46	10
46	12
46	14
47	6
47	8
47	10
48	8
48	10
48	12
49	6
49	8
49	10
49	12
50	12
50	14
51	8
51	10
51	12
52	6
52	8
52	10
52	12
52	14
53	6
53	8
53	10
53	12
53	14
\.


--
-- Name: dress_colour_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dress_colour_id_seq', 1, false);


--
-- Name: dress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dress_id_seq', 1, false);


--
-- Name: dress_size_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dress_size_id_seq', 1, false);


--
-- Name: dress_colour dress_colour_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dress_colour
    ADD CONSTRAINT dress_colour_pkey PRIMARY KEY (id, colour);


--
-- Name: dress dress_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dress
    ADD CONSTRAINT dress_pkey PRIMARY KEY (id);


--
-- Name: dress_size dress_size_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dress_size
    ADD CONSTRAINT dress_size_pkey PRIMARY KEY (id, size);


--
-- Name: dress_colour dress_colour_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dress_colour
    ADD CONSTRAINT dress_colour_id_fkey FOREIGN KEY (id) REFERENCES public.dress(id);


--
-- Name: dress_size dress_size_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dress_size
    ADD CONSTRAINT dress_size_id_fkey FOREIGN KEY (id) REFERENCES public.dress(id);


--
-- PostgreSQL database dump complete
--

