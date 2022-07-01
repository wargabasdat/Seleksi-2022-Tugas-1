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

--
-- Name: company_status_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.company_status_type AS ENUM (
    'Active',
    'Public',
    'Exit'
);


ALTER TYPE public.company_status_type OWNER TO postgres;

--
-- Name: status_enum; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.status_enum AS ENUM (
    'Public',
    'Active'
);


ALTER TYPE public.status_enum OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO postgres;

--
-- Name: company; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.company (
    company_rank integer NOT NULL,
    company_name character varying(35) NOT NULL,
    company_website character varying(50) NOT NULL,
    company_url_logo character varying(150),
    company_overview character varying(200) NOT NULL,
    company_status character varying(6) NOT NULL,
    company_batch character varying(5) NOT NULL,
    company_breakthrough boolean,
    company_headquarters character varying(50) NOT NULL,
    company_job_portal character varying(150)
);


ALTER TABLE public.company OWNER TO postgres;

--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alembic_version (version_num) FROM stdin;
55f592ded3f5
\.


--
-- Data for Name: company; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.company (company_rank, company_name, company_website, company_url_logo, company_overview, company_status, company_batch, company_breakthrough, company_headquarters, company_job_portal) FROM stdin;
5	DoorDash	doordash.com	https://bookface-images.s3.amazonaws.com/small_logos/d13287c52acc96909f32342e85c26a33cfdac310.png	Restaurant delivery.	Public	S13	t	San Francisco, CA	https://doordash.com/careers
6	Cruise	getcruise.com	https://bookface-images.s3.amazonaws.com/small_logos/b9aae9ad065dcf8b7a07d47b45a0667c6953810b.png	Self-driving cars.	Active	W14	f	San Francisco, CA	https://getcruise.com/careers
7	OpenSea	opensea.io	https://bookface-images.s3.amazonaws.com/small_logos/be12a7a3bea106077960a6e544db5840291bb150.png	The world's largest NFT marketplace.	Active	W18	t	Remote	https://opensea.io/careers
8	Faire	faire.com	https://bookface-images.s3.amazonaws.com/small_logos/3ccfa8cd66f2a1d09da157956ae8b5686f3b2fe5.png	A one-stop shop for wholesale.	Active	W17	t	San Francisco, CA	https://www.faire.com/careers
9	Brex	brex.com	https://bookface-images.s3.amazonaws.com/small_logos/f54b10a9ade5a209276e294421888a10b115539d.png	The financial operating system for the next generation of business.	Active	W17	t	Remote	https://www.brex.com/careers/
10	Reddit	reddit.com	https://bookface-images.s3.amazonaws.com/small_logos/2f5bed7ab9abb66ee8ccbf622c27a9d741c3c4e4.png	The frontpage of the internet.	Active	S05	f	San Francisco, CA	https://www.reddit.com/jobs
11	Gusto	gusto.com	https://bookface-images.s3.amazonaws.com/small_logos/6ce7845c2e268525f5f04915212ac0a106fb7e3d.png	Provides growing businesses with everything to take care of their team	Active	W12	t	San Francisco, CA	https://gusto.com/about/careers
12	GitLab	gitlab.com	https://bookface-images.s3.amazonaws.com/small_logos/af0d32f65e9007b7edbde422787633e338fa9bff.png	A complete DevOps platform delivered as a single application.	Public	W15	t	Remote	https://about.gitlab.com/jobs/
13	Dropbox	dropbox.com	https://bookface-images.s3.amazonaws.com/small_logos/f09464ae6ddf165ef871115af711c89d6530057f.png	Backup and share files in the cloud.	Public	S07	f	San Francisco, CA	https://www.dropbox.com/jobs
14	Razorpay	razorpay.com	https://bookface-images.s3.amazonaws.com/small_logos/b6a6aaf9a84fa4b7ddb53cabda7443c142a5a154.png	A full stack payments and neobanking platform for businesses in India.	Active	W15	t	Bengaluru, India	https://razorpay.com/jobs/
15	Scale AI	scale.com	https://bookface-images.s3.amazonaws.com/small_logos/8c45a78eb56f4a95e41a3a77960b00fdfb4cd918.png	End-to-end solutions for the entire ML lifecycle	Active	S16	t	San Francisco, CA	https://scale.com/careers
1	Airbnb	airbnb.com	https://bookface-images.s3.amazonaws.com/small_logos/3e9a0092bee2ccf926e650e59c06503ec6b9ee65.png	Book accommodations around the world.	Public	W09	f	San Francisco, CA	https://careers.airbnb.com/
3	Instacart	instacart.com	https://bookface-images.s3.amazonaws.com/small_logos/6c32f4ec11ecb3b2d9e5a551de4e5eb607aacd61.png	Same-day grocery delivery and pickup service.	Active	S12	t	San Francisco, CA	https://instacart.careers/
16	Ginkgo Bioworks	ginkgobioworks.com	https://bookface-images.s3.amazonaws.com/small_logos/d8427e9e647b115fc9f1f760c7a1324f1d2c02ef.png	Our mission is to make biology easier to engineer.	Public	S14	f	Boston, MA	https://www.ginkgobioworks.com/careers/
17	Rippling	rippling.com	https://bookface-images.s3.amazonaws.com/small_logos/2758f61527dbe7c44609bc669149123e07509b8d.png	Magically Simplify Your HR & IT	Active	W17	t	San Francisco, CA	https://www.rippling.com/careers
18	Benchling	benchling.com	https://bookface-images.s3.amazonaws.com/small_logos/56dfbb621883fb62890bd66d7bd967984b974c12.png	Unlocking the power of biotech with modern software for modern science	Active	S12	f	San Francisco, CA	https://benchling.com/careers
19	Fivetran	fivetran.com	https://bookface-images.s3.amazonaws.com/small_logos/d6b5710a13038fe1daa1421a986e1f4a7839a65a.png	The global leader in modern data integration 	Active	W13	t	Oakland, CA	https://fivetran.com/careers
20	Deel	letsdeel.com	https://bookface-images.s3.amazonaws.com/small_logos/4824f7957a4721de09ddecfb75b55f69196aa383.png	Payroll, HR, compliance, perks, and benefits for remote teams	Active	W19	t	San Francisco, CA	https://www.letsdeel.com/careers
21	Rappi	rappi.com	https://bookface-images.s3.amazonaws.com/small_logos/44285cf605c3f1d288f2fb7c2f002f859ab92d0b.png	On-demand delivery and financial services for Latin America.	Active	W16	t	Bogota, Colombia	https://www.rappi.com/jobs/open-positions
22	Zapier	zapier.com	https://bookface-images.s3.amazonaws.com/small_logos/d5d8aefda7d4e7fdbe927854bc8021fbacdcbfb3.png	The easiest way to automate your work.	Active	S12	t	Mountain View, CA	https://zapier.com/jobs/
23	Meesho	meesho.com	https://bookface-images.s3.amazonaws.com/small_logos/7afa6d9ae3134789f0db9f6e1334cce9daff6875.png	Enabling anyone in India to start a business without an investment.	Active	S16	f	Bangalore, India	https://meesho.io/jobs
24	Checkr	checkr.com	https://bookface-images.s3.amazonaws.com/small_logos/97b50381d59a451de03ed83ea27722b26a5f86b0.png	A new era of background checks.	Active	S14	t	San Francisco, CA	https://checkr.com/company/careers
25	Monzo Bank	monzo.com	https://bookface-images.s3.amazonaws.com/small_logos/1f00018fa654ff2d9d8058888aba82238a80d6dc.png	A bank as smart as your phone.	Active		t	Remote	https://monzo.com/careers
26	Relativity Space	relativityspace.com	https://bookface-images.s3.amazonaws.com/small_logos/69fc3eaa7d024cb1636c3fb74c1b9ff45b63ca30.png	Building humanity’s multiplanetary future.	Active	W16	f	Los Angeles, CA	https://www.relativityspace.com/careers
27	MessageBird	messagebird.com	https://bookface-images.s3.amazonaws.com/small_logos/563bc6514eab1ccdb569103068a4a16f3f5e29fd.png	The world’s largest omnichannel communications platform	Active	S16	f	Amsterdam, Netherlands	https://www.messagebird.com/careers/
28	Retool	retool.com	https://bookface-images.s3.amazonaws.com/small_logos/0a4773159389a2bd38c10e6e9b5761d0a3666c30.png	Build internal tools fast.	Active	W17	f	San Francisco, CA	https://retool.com/jobs
29	Convoy	convoy.com	https://bookface-images.s3.amazonaws.com/small_logos/627387718c7fc43469f89a36ed26d7378497cb09.png	The world's most efficient digital freight network.	Active		t	Seattle, WA	https://jobs.lever.co/convoy
30	GOAT Group	goat.com	https://bookface-images.s3.amazonaws.com/small_logos/3e4be40a5b6301f1002d75a486591d7dd3deb253.png	Platform for the greatest products from the past, present and future.	Active	W11	f	Los Angeles, CA	https://jobs.lever.co/goat?department=GOAT
31	Flock Safety	flocksafety.com	https://bookface-images.s3.amazonaws.com/small_logos/ee69b5c905088288ff0fc007921dde14514a40a1.png	Public safety operating system disrupting the status quo	Active	S17	f	Atlanta, GA	https://www.flocksafety.com/careers
32	Flexport	flexport.com	https://bookface-images.s3.amazonaws.com/small_logos/897ef3a983ed364ca3122044cf2d2a92e05b34bb.png	Platform for global logistics.	Active	W14	f	San Francisco, CA	https://www.flexport.com/careers/
33	Segment	segment.com	https://bookface-images.s3.amazonaws.com/small_logos/99f5abd1f15fa4ca4394b5781c98d8ff23db6f7b.png	Software and APIs to collect, clean, and control customer data.	Exit	S11	t	San Francisco, CA	null
34	Ironclad	ironcladapp.com	https://bookface-images.s3.amazonaws.com/small_logos/617ef74a3e62398db60a2179add2a7f75d8bbd18.png	Digital contracting platform for legal teams.  	Active	S15	t	San Francisco, CA	https://ironcladapp.com/careers/
35	Flutterwave	flutterwave.com	https://bookface-images.s3.amazonaws.com/small_logos/dd32bdbfc11a8d096f336a6d56900dfcf322467a.png	Helping businesses make and accept payments from anywhere in Africa.	Active	S16	f	Lagos, Nigeria	https://careers.flutterwave.com/jobs
36	Podium	podium.com	https://bookface-images.s3.amazonaws.com/small_logos/d90bc164db5dd25a81e6dcfa222470eadf2c783a.png	An interaction and payments platform for local businesses.	Active	W16	t	Lehi, UT	https://www.podium.com/careers/
37	Xendit	xendit.co	https://bookface-images.s3.amazonaws.com/small_logos/82971ab934851a55cee1aa3b11b22839902e7f2e.png	Provides payment infrastructure for Indonesia and Southeast Asia.	Active	S15	f	Jakarta, Indonesia	https://www.xendit.co/en/careers/
38	Groww	groww.in	https://bookface-images.s3.amazonaws.com/small_logos/e864a7ba119bd07bb6afa16b449f83125eca3524.png	Investing made simple for everyone in India.	Active	W18	t	Bengaluru, India	https://groww.in/careers
39	Outschool	outschool.com	https://bookface-images.s3.amazonaws.com/small_logos/8d4f5bc63953a4887b889e74645b81f6aa339942.png	A live online learning platform that empowers kids ages 3–18.	Active	W16	f	San Francisco, CA	https://jobs.lever.co/outschool/
40	Lattice	lattice.com	https://bookface-images.s3.amazonaws.com/small_logos/a3bbe5d7f8ca797e1e542c827ac00dda238b0b81.png	Modern performance management software. 	Active	W16	f	San Francisco, CA	https://lattice.com/careers
41	Helion Energy	helionenergy.com	https://bookface-images.s3.amazonaws.com/small_logos/b5119e7d1a685052ca06d144fde031fb2c13baf4.png	First to Fusion	Active	S14	f	Everett, WA	https://www.helionenergy.com/careers/
42	PagerDuty	pagerduty.com	https://bookface-images.s3.amazonaws.com/small_logos/18fd6f870541d2398827dedc9e57678e8770c424.png	Real-time visibility into critical apps and services all in one place.	Public	S10	f	San Francisco, CA	https://www.pagerduty.com/careers/
43	Amplitude	amplitude.com	https://bookface-images.s3.amazonaws.com/small_logos/fa98c8a53255b3fd2e9d4a65dbb47eec293729f1.png	Pioneering Digital Optimization	Public	W12	f	San Francisco, CA	https://amplitude.com/careers
44	EquipmentShare	equipmentshare.com	https://bookface-images.s3.amazonaws.com/small_logos/ad05853522c217d92c372ba8883ff6b45dd83d99.png	Cloud solutions for the construction industry.	Active	W15	f	Columbia, MO	https://www.equipmentshare.com/careers
45	Webflow	webflow.com	https://bookface-images.s3.amazonaws.com/small_logos/d6483c7eecc5184df599b358f29fae9878179566.png	Professional website design and publishing platform. 	Active	S13	t	San Francisco, CA	https://webflow.com/careers
46	Algolia	algolia.com	https://bookface-images.s3.amazonaws.com/small_logos/f8efe4c4baf42e8a2692180536aa6dba50a61424.png	A developer-friendly and enterprise-grade search API.	Active	W14	f	San Francisco, CA	https://www.algolia.com/careers/
47	GoCardless	gocardless.com	https://bookface-images.s3.amazonaws.com/small_logos/5067ca9e3d9fc18d9936cf12c819143e2084d6b7.png	The first global network for recurring payments.	Active	S11	f	London, UK	https://gocardless.com/g/careers/
48	Modern Treasury	moderntreasury.com	https://bookface-images.s3.amazonaws.com/small_logos/a530f58c560c991cc2b9487c24cfa90465e961d6.png	Payment operations tools for money movement.	Active	S18	f	San Francisco, CA	https://www.moderntreasury.com/careers
49	Vetcove	vetcove.com	https://bookface-images.s3.amazonaws.com/small_logos/c14ca2790645cac39d58fb3153dab0e3e2c7e005.png	Powering the animal health supply chain.	Active	S16	f	Miami, FL	https://www.vetcove.com/careers/
50	Embark Trucks	embarktrucks.com	https://bookface-images.s3.amazonaws.com/small_logos/7f54038f84e639bce5c45d1756018b94f17f6125.png	Self-driving semi trucks.	Public	W16	f	San Francisco, CA	https://embarkok.com/careers
51	Solugen	solugen.com	https://bookface-images.s3.amazonaws.com/small_logos/8d4235cadbab6a51a7bfa10e7b2877bdb12a26fe.png	Decarbonizing the chemicals industry.	Active	W17	f	Houston, TX	https://solugen.breezy.hr/
52	Opentrons	opentrons.com	null	We make robots for biologists. 	Active	W16	f	New York City, NY	https://opentrons.com/jobs/
53	Sift	sift.com	https://bookface-images.s3.amazonaws.com/small_logos/6bc00b8f54db94562df9209330b7152de2ac0b41.png	Digital trust and safety suite for businesses.	Active	S11	f	San Francisco, CA	https://sift.com/careers
54	Wave	wave.com	https://bookface-images.s3.amazonaws.com/small_logos/7bb010b1c1951d3cc6578fb3ff4c83700de7c376.png	Mobile money app for Africa	Active	W12	f	Dakar, Senegal	https://www.wave.com/en/careers/
55	Truepill	truepill.com	https://bookface-images.s3.amazonaws.com/small_logos/c4a973a0300bcf108fdd2a681e5499d0d9f23c5e.png	API-connected healthcare infrastructure.	Active	S17	f	San Mateo, CA	https://jobs.lever.co/truepill
56	MatterPort	matterport.com	https://bookface-images.s3.amazonaws.com/small_logos/b271a79c3b59d6344c90e2803525a22f2a5e8406.png	Turn physical objects and environments into 3D models in seconds.	Public	W12	f	Sunnyvale, CA	https://matterport.com/careers
57	Prometheus	prometheusfuels.com	https://bookface-images.s3.amazonaws.com/small_logos/a1439ba0d08371919c2c6e45e334b24fd8d43892.png	We use solar and wind power to make zero net carbon electrofuels	Active	W19	f	Santa Cruz, CA	https://www.linkedin.com/jobs/view/2847869428/?capColoOverride=true
58	Mux	mux.com	https://bookface-images.s3.amazonaws.com/small_logos/a333c6fd617000a30a9b5b1802346d0bfcf9e3fa.png	APIs to build better video.	Active	W16	f	San Francisco, CA	mux.com/jobs
59	Athelas	athelas.com	https://bookface-images.s3.amazonaws.com/small_logos/9cccd2e88dc540efd8579f8a5c13f14c6551ea07.png	#1 Remote Patient Monitoring Platform	Active	S16	f	Mountain View, CA	https://www.athelas.com/careers
60	Snapdocs	snapdocs.com	https://bookface-images.s3.amazonaws.com/small_logos/4391e46749d4be871f138c61fa409a9979d7739e.png	Snapdocs digitizes real estate closings	Active	W14	t	San Francisco, CA	https://www.snapdocs.com/careers
61	EasyPost	easypost.com	https://bookface-images.s3.amazonaws.com/small_logos/37f58af9ede41176af776f779ec507cd820dd514.png	The shipping infrastructure of the internet.	Active	S13	f	Lehi, UT	easypost.com/careers
62	Veriff	veriff.com	https://bookface-images.s3.amazonaws.com/small_logos/a2ccec3fcd5e2746dc08abe59de1bba269fcfb06.png	Highly-automated online identity verification services	Active	W18	f	Tallinn, Estonia	https://veriff.com/careers
63	Apollo	apollographql.com	https://bookface-images.s3.amazonaws.com/small_logos/3d684926422fe826a03f5d68cd83bdb413d1c454.png	Apollo helps engineering teams accelerate delivery	Active	S11	f	San Francisco, CA	https://www.apollographql.com/careers/
64	Whatnot	whatnot.com	https://bookface-images.s3.amazonaws.com/small_logos/8cc4364cbc36079057551f98544d5fb6be675455.png	Livestream shopping platform and marketplace.	Active	W20	t	Remote	https://boards.greenhouse.io/whatnot
65	Airbyte	airbyte.io	https://bookface-images.s3.amazonaws.com/small_logos/fc4c9a8bb7a853c14be4dac967fb9717f36fca1c.png	Open-source EL(T) platform	Active	W20	f	San Francisco, CA	https://airbyte.com/careers
66	Papa	papa.com	https://bookface-images.s3.amazonaws.com/small_logos/8b6b5d357c2bb5599f3c6678242b725827948182.png	One-stop-shop for flexible family care	Active	S18	f	Miami, FL	https://www.joinpapa.com/careers
67	Salt Security	salt.security	https://bookface-images.s3.amazonaws.com/small_logos/1ac847c627193a47052e250f4bbca054731b08fa.png	Protects organizations from getting breached through their APIs.	Active	W16	t	Palo Alto, CA	https://salt.security/careers?
68	Newfront	newfront.com	https://bookface-images.s3.amazonaws.com/small_logos/ce6ff3e82371f1e059506cc44d9d76fe899d0169.png	Modern insurance brokerage.	Active	W18	f	San Francisco, CA	https://www.newfront.com/careers
69	Astranis	astranis.com	https://bookface-images.s3.amazonaws.com/small_logos/6afe4b664eab03f91fa887d1af8e11a233591900.png	The next generation of internet satellites.	Active	W16	f	San Francisco, CA	https://www.astranis.com/careers
70	CoinTracker	cointracker.io	https://bookface-images.s3.amazonaws.com/small_logos/7ae3b4357ad9c5453d7273b48935962f2129d9a4.png	The gold standard in cryptocurrency portfolio tracking and taxes	Active	W18	f	Remote	https://www.cointracker.io/about
71	Truebill	truebill.com	https://bookface-images.s3.amazonaws.com/small_logos/fae52e07d79df342dcfc28d120038d2083ae0679.png	Live your best financial life	Exit	W16	f	Silver Spring, MD	https://www.truebill.com/careers
72	CaptivateIQ	captivateiq.com	https://bookface-images.s3.amazonaws.com/small_logos/83e15a3bbe1c9a5b0e4eb87afe73eac002e01c45.png	A no-code SaaS solution to manage and track sales commissions.	Active	W18	f	San Francisco, CA	https://www.captivateiq.com/careers
73	GrubMarket	grubmarket.com	https://bookface-images.s3.amazonaws.com/small_logos/a10cd6dd027a6f9927f0c0574be6404d3ed0c014.png	Delivers direct from the⁣ farm to your door.	Active	W15	f	San Francisco, CA	https://www.grubmarket.com/jobs
74	ClassDojo	classdojo.com	https://bookface-images.s3.amazonaws.com/small_logos/5880942a2efc61218c66b07f0f2704038b3001e8.png	Community and collaboration platform for K-8 schools and families	Active	IK12	f	San Francisco, CA	https://www.classdojo.com/careers
75	Zip	ziphq.com	https://bookface-images.s3.amazonaws.com/small_logos/36e20f89b10663bb956c6daad5f19a3ee1b8cf24.png	The future of B2B spend	Active	S20	t	San Francisco, CA	https://ziphq.notion.site/ziphq/We-re-building-the-future-of-B2B-spend-Help-us-pave-the-way-15d032ed6f9d4eefa56bb962132e8c38
76	ShipBob	shipbob.com	https://bookface-images.s3.amazonaws.com/small_logos/a7fe6af4f0d7680132345ae356f0c1abe1939e2a.png	Providing Amazon level logistics to e-commerce businesses. 	Active	S14	f	Chicago, IL	https://www.shipbob.com/careers/
77	Gem	gem.com	https://bookface-images.s3.amazonaws.com/small_logos/6a37f8c6b6d3cddaee978aab62ebe0f6bacec7db.png	The platform for modern recruiting.	Active	S17	f	San Francisco, CA	https://www.gem.com/company/careers
78	Modern Health	modernhealth.com	https://bookface-images.s3.amazonaws.com/small_logos/da9eb52cdc5fa146ded74eb1b22014a374dd37c5.png	A mental health benefits platform for employers.	Active	W18	f	Remote	https://www.modernhealth.com/careers
79	Go1	go1.com	https://bookface-images.s3.amazonaws.com/small_logos/e1004ce910aafa76388e32ce5e89e431e2a22211.png	A learning platform that enables you to train your staff or customers.	Active	S15	f	Brisbane, Australia	https://www.go1.com/en-au/careers-go1
80	Boom	boomsupersonic.com	https://bookface-images.s3.amazonaws.com/small_logos/99fad830d694e292b87e0628e50c052c9f87cf86.png	Mainstream supersonic passenger airplanes.	Active	W16	t	Denver, CO	https://boomsupersonic.com/careers
81	Titan	titan.com	https://bookface-images.s3.amazonaws.com/small_logos/074ac1ce4adc88d9aede39297cf67677cacd48d0.png	Titan is the "Fidelity for millennials and Gen Z."	Active	S18	f	New York City, NY	https://boards.greenhouse.io/titan
82	SmartAsset	smartasset.com	null	Marketplace connecting consumers to financial advisors	Active	S12	f	Remote	https://smartasset.com/careers
83	People.ai	people.ai	https://bookface-images.s3.amazonaws.com/small_logos/aa9f2a7f199091128aa875d1cb80df0bd183358b.png	Harnesses business activity to unlock growth.	Active	S16	f	Redwood City, CA	https://people.ai/careers/
84	Sendbird	sendbird.com	https://bookface-images.s3.amazonaws.com/small_logos/cdd426bda9ef275c28e96ced0d2eee0559bcf773.png	Conversations platform for mobile apps	Active	W16	f	San Mateo, CA	https://sendbird.com/careers
85	Function of Beauty	functionofbeauty.com	https://bookface-images.s3.amazonaws.com/small_logos/c69054338f0f6889ab821fc3e59d609f38cfe4e1.png	Customizable beauty for hair, skin, and body care products.	Active	W16	f	New York City, NY	https://www.functionofbeauty.com/careers/
86	Human Interest	humaninterest.com	https://bookface-images.s3.amazonaws.com/small_logos/b1d2338596e801f39e8a6c668164ac020956c28f.png	The 401(k) for small and medium-sized businesses.	Active	S15	f	San Francisco, CA	https://www.humaninterest.com/careers
87	Ajaib	ajaib.co.id	https://bookface-images.s3.amazonaws.com/small_logos/e1bf471cb1ca823b88101b2542b323bf09e743d5.png	Consumer fintech for Indonesia	Active	S18	f	Jakarta, Indonesia	https://ajaib.co.id/karir/
88	Standard Cognition	standard.ai	https://bookface-images.s3.amazonaws.com/small_logos/316aac553c3e1f837d028abe43b844bbcd7d9203.png	AI-powered checkout for retail.	Active	S17	f	Remote	https://careers.standard.ai/
89	Heap	heap.io	https://bookface-images.s3.amazonaws.com/small_logos/0be58a0e5449236d7f3e0dbb741e2aadde9e2881.png	Captures user interactions with no code to generate analytics.	Active	W13	f	San Francisco, CA	https://heap.io/careers
90	Twitch	twitch.com	https://bookface-images.s3.amazonaws.com/small_logos/d0e24465d91469fa05da337659e25131f5295e3d.png	A global community creating the future of live entertainment.	Exit	W07	f	San Francisco, CA	https://www.twitch.tv/jobs/
91	Apollo.io	apollo.io	https://bookface-images.s3.amazonaws.com/small_logos/90090292c269ac533c4bfec2629f6be4bfd345fd.png	Apollo is the foundation of your entire go-to-market strategy.	Active	W16	f	San Francisco, CA	https://www.apollo.io/careers/
92	Mixpanel	mixpanel.com	https://bookface-images.s3.amazonaws.com/small_logos/fc369509c4ffa1be8493f895eeb4c3150cb24729.png	Product analytics to help convert, engage, and retain more users.	Active	S09	f	San Francisco, CA	https://mixpanel.com/jobs/
93	PlanGrid	plangrid.com	https://bookface-images.s3.amazonaws.com/small_logos/33ee27aa9c6b3036b40ec6c7f0c2a98ccaf32f40.png	Mobile applications for the construction industry.	Exit	W12	f	San Francisco, CA	https://construction.autodesk.com/products/autodesk-plangrid-build/
94	Front	front.com	https://bookface-images.s3.amazonaws.com/small_logos/bf249c52ada525d9126563265f52ec4b3105ea54.png	Collaborative hub for customer communication.	Active	S14	f	San Francisco, CA	https://front.com/jobs
95	Replit	replit.com	https://bookface-images.s3.amazonaws.com/small_logos/addd1ade87d2efe04a200a445c16b73e92a49b23.png	Collaborative in-browser IDE 	Active	W18	f	San Francisco, CA	https://replit.com/careers
96	AtoB	atob.com	https://bookface-images.s3.amazonaws.com/small_logos/12375b2a52ee867d95939da19768e87ca0b830e2.png	Rebuilding global transportation payments.	Active	S20	f	San Francisco, CA	https://careers.atob.com/
97	Squire Technologies	getsquire.com	https://bookface-images.s3.amazonaws.com/small_logos/2748c5f7b6f81c6d7e2a1bcfbdb0f677910f18a7.png	Platform to grow your barbershop and maximize profitability.	Active	S16	f	New York City, NY	https://boards.greenhouse.io/squire
98	H1	h1.co	https://bookface-images.s3.amazonaws.com/small_logos/2b3a875e1c9154c3ade1e34dfa01d06707d80bc4.png	Connecting stakeholders across the healthcare ecosystem.	Active	W20	f	New York City, NY	https://www.h1.co/about/careers
99	Kalshi	kalshi.com	https://bookface-images.s3.amazonaws.com/small_logos/ad3a7dcdbe0f26e0087eda6d5bdf6e1e2ef378aa.png	1st federally regulated exchange where people can trade on events	Active	W19	t	New York City, NY	https://kalshi.com/careers
100	Bellabeat	bellabeat.com	https://bookface-images.s3.amazonaws.com/small_logos/00b2ad3f39b442a0a8b156087e64a689ae92f3b9.png	Tech-powered women's wellness.	Active	W14	f	San Francisco, CA	https://bellabeat.com/careers/
101	Tempo	tempo.fit	https://bookface-images.s3.amazonaws.com/small_logos/8d7bb4096474a73857a04dd3a797223c11e906d3.png	Live home fitness training powered by computer vision.	Active	W15	f	San Francisco, CA	https://tempo.fit/careers
102	Frubana Inc	frubana.com	https://bookface-images.s3.amazonaws.com/small_logos/de610cdaa1b45fc16f2be037082405d108ec145d.png	The everything store for restaurants in LATAM.	Active	W19	f	Mexico City, Mexico	https://frubana.com/jobs
103	Gather	gather.town	https://bookface-images.s3.amazonaws.com/small_logos/7861de884111e3c22dce9bd8a25a30fafb7149ec.png	Building a better way to meet online.	Active	S19	f	San Francisco, CA	https://www.gather.town/careers
104	Panorama Education	panoramaed.com	https://bookface-images.s3.amazonaws.com/small_logos/498b04d0fc7ebc08b305d8bb54ef767e2a048f89.png	On a mission to radically improve education for every student.	Active	S13	f	Boston, MA	https://www.panoramaed.com/careers
105	Rescale	rescale.com	https://bookface-images.s3.amazonaws.com/small_logos/711fea8d5911eff2cca6ae58f7c2371f123c9dc1.png	High Performance Computing Built for the Cloud	Active	W12	f	San Francisco, CA	https://rescale.com/company/careers/
106	Goldbelly	goldbelly.com	https://bookface-images.s3.amazonaws.com/small_logos/e1b8d2007ae822ad1f4580bb9f5d14491fd751fa.png	Empowering restaurants and small food makers to ship nationwide.	Active	W13	f	New York City, NY	https://www.goldbelly.com/jobs
107	Substack	substack.com	https://bookface-images.s3.amazonaws.com/small_logos/5fdff68c6d284e1d2cbab6306ca3f1e7774d4d36.png	A place for independent writing.	Active	W18	f	San Francisco, CA	https://substack.com/jobs
108	Jasper	jasper.ai	https://bookface-images.s3.amazonaws.com/small_logos/18b90074b86630e3f25f2673c29d94e8c03c9018.png	Jasper is a leader in creating content using Artificial Intelligence	Active	W18	f	Austin, TX	https://www.jasper.ai/careers
109	Khatabook	khatabook.com	https://bookface-images.s3.amazonaws.com/small_logos/66b2f57ed74a17802ce2f389dc5be76a7d2e0fe0.png	Manage your business and personal ledgers on your phone and computer.	Active	S18	f	Bengaluru, India	https://khatabook.com/hiring
110	TRM Labs	trmlabs.com	https://bookface-images.s3.amazonaws.com/small_logos/19aa5130e3a0a349d200e7510f0c2fe8439a646f.png	TRM is building a safer financial system for billions of people.	Active	S19	f		https://www.trmlabs.com/careers
111	Vendr.com	vendr.com	https://bookface-images.s3.amazonaws.com/small_logos/1319026cec7fdbfc789a424b484be4ba27fe2f5f.png	The SaaS buying platform.	Active	S19	f	Boston, MA	https://www.vendr.com/careers
112	Shogun	getshogun.com	https://bookface-images.s3.amazonaws.com/small_logos/c4c9d88ca349da23988cd75431bf7ae58301ff05.png	Shogun empowers brands to create exceptional ecommerce experience.	Active	W18	f	Remote	https://getshogun.com/careers
113	Weave	getweave.com	https://bookface-images.s3.amazonaws.com/small_logos/5d33fe7ddb69049aa965ac936b584f1efc32afd2.png	Customer communication and payments platform.	Pubilc	W14	f	Lehi, UT	https://www.getweave.com/careers/
114	Zepto	zeptonow.com	https://bookface-images.s3.amazonaws.com/small_logos/b419835c59c3d3a4db7e0aaf094b54bb5cee0adb.png	10-Minute Grocery Delivery in India	Active	W21	t	Mumbai, India	https://www.zeptonow.com/careers
115	Instawork	instawork.com	https://bookface-images.s3.amazonaws.com/small_logos/1712f8a08b08bb04e192934a1098d1b5144c875b.png	Flexible staffing solution for hourly workers and hospitality	Active	S15	f	San Francisco, CA	https://jobs.lever.co/instawork
116	Vouch	vouch.us	https://bookface-images.s3.amazonaws.com/small_logos/e8306840f3c54bdf2c355017b988e6eb83f6a8cf.png	Insurance and risk management tools for startups.	Active	S19	t	Chicago, IL	https://www.vouch.us/careers
117	The Athletic	theathletic.com	https://bookface-images.s3.amazonaws.com/small_logos/7f6b19c9a7bb7ba979f8935bcd2e5bd32b954069.png	Subscription sports media.	Exit	S16	f	San Francisco, CA	https://theathletic.com/careers/
118	MBX	us.memebox.com	https://bookface-images.s3.amazonaws.com/small_logos/d5fd0f7b4450afa7af62792ef63d6c3e6a3025a3.png	A global multi-brand beauty and personal care startup.	Active	W14	f	San Francisco, CA	https://www.linkedin.com/company/memebox-corp-/mycompany/verification/?viewAsMember=true
119	Codecademy	codecademy.com	https://bookface-images.s3.amazonaws.com/small_logos/ee26c3b11a260e7a045f68b47d8c804b306db89f.png	The leading online learning platform for technical skills.	Exit	S11	f	New York City, NY	https://www.codecademy.com/about/careers
120	Pardes Biosciences	pardesbio.com	https://bookface-images.s3.amazonaws.com/small_logos/7a90b132bd3ef57761690e68c3355e7471e2abf7.png	We break viruses	Public	S20	f	San Francisco, CA	https://www.pardesbio.com/careers/#browse-jobs
121	Promise	promise-pay.com	https://bookface-images.s3.amazonaws.com/small_logos/1f469f29205bdaeb83cbefb97085b4a311f3f670.png	A modern payment processing platform focused on government agencies.	Active	W18	f	Oakland, CA	https://home.promise-pay.com/careers
122	Gecko Robotics	geckorobotics.com	https://bookface-images.s3.amazonaws.com/small_logos/3910f50a0f2bc48795c23a3e1df6e7d38223e1e3.png	Robots that mine physical data to predict when things break.	Active	W16	f	Pittsburgh, PA	https://www.geckorobotics.com
123	SingleStore	singlestore.com	https://bookface-images.s3.amazonaws.com/small_logos/4c72efc7873353258c9e7e598b2787bb4764a7b6.png	The cloud-native, operational database built for speed and scale.	Active	W11	f	San Francisco, CA	https://www.memsql.com/careers/
124	Jeeves	tryjeeves.com	https://bookface-images.s3.amazonaws.com/small_logos/faca4c2138bb38fb870736801c5d004313420eb2.png	International banking infrastructure for global startups.	Active	S20	f	Remote	null
125	Shef	shef.com	https://bookface-images.s3.amazonaws.com/small_logos/513394d94edc3e9fbdeb49f288d3ef4621c9a976.png	Marketplace for homemade food	Active	W19	f	San Francisco, CA	https://jobs.lever.co/shef
126	Vanta	vanta.com	https://bookface-images.s3.amazonaws.com/small_logos/467c166ddaf90fc9994578d1004a017f5f1a2407.png	Automated security and compliance for startups.	Active	W18	t	San Francisco, CA	https://vanta.com/jobs
127	Spenmo	spenmo.com	https://bookface-images.s3.amazonaws.com/small_logos/74f5be3a78c04affa06c9b12299d550be1451943.png	Manage all business payables in one dashboard	Active	S20	f	Singapore	https://jobs.lever.co/spenmo
128	Clear	clear.in	https://bookface-images.s3.amazonaws.com/small_logos/b9c7802fe390e275d36ad0835a41223e647bcf5a.png	Fintech SaaS platform for invoices, taxes, wealth management & credit.	Active	W14	f	Bengaluru, India	https://cleartax-talent.freshteam.com/jobs
129	May Mobility	maymobility.com	https://bookface-images.s3.amazonaws.com/small_logos/82b246f4ed3cc8c8c2d7960c19d98452ed3ecf79.png	Transforming cities with self-driving shuttles.	Active	S17	f	Ann Arbor, MI	https://maymobility.com/careers/
130	Bitrise	bitrise.io	https://bookface-images.s3.amazonaws.com/small_logos/2e5308a0848139b34600dfa7eed02fb958647387.png	Hosted Continuous Integration and Delivery for mobile apps	Active	W17	f	Remote	https://www.bitrise.io/careers
131	Jerry	getjerry.com	https://bookface-images.s3.amazonaws.com/small_logos/3bae30219cc985fbfd73c5b15e6c42d4804fabf8.png	A Super app for car owners to save money on car expenses.	Active	S17	f	Palo Alto, CA	https://getjerry.com/careers
132	Hightouch	hightouch.io	https://bookface-images.s3.amazonaws.com/small_logos/3706f866c1bf3eb736c8c7650dfd4f74c4d46757.png	Sync customer data to your sales and marketing tools	Active	S19	f	San Francisco, CA	https://hightouch.io/careers/
133	Sendwave	sendwave.com	https://bookface-images.s3.amazonaws.com/small_logos/1bbfeae646cc8051b5ad469413e67295e9fae353.png	Instant, no fee international remittances.	Exit	W12	f	Boston, MA	https://www.sendwave.com/careers
134	Superside	superside.com	https://bookface-images.s3.amazonaws.com/small_logos/3f97e6f72e5f0f939f199ac6282cab34c72f7945.png	SaaS - Creative Project Management Tool	Active	W16	f	Remote	https://www.superside.com/career
135	Fountain	fountain.com	https://bookface-images.s3.amazonaws.com/small_logos/28a140ac4ad946fb66be477d6337e2d2fd5f8092.png	Talent acquisition platform for hiring hourly workers	Active	S15	f	Remote	https://get.fountain.com/careers
136	Clever	clever.com	https://bookface-images.s3.amazonaws.com/small_logos/76cc0d8c3947ddc3bc0b8b889117b3cf3dc00ba2.png	The platform that powers technology in the classroom.	Exit	S12	f	San Francisco, CA	https://clever.com/about/careers
137	Clipboard Health	clipboardhealth.com	https://bookface-images.s3.amazonaws.com/small_logos/e00070fbe06d18db6bc2760c388b722aae67859a.png	Connects healthcare facilities with nurses nearby.	Active	W17	f	Remote	https://boards.greenhouse.io/clipboardhealth
138	Scribd	scribd.com	https://bookface-images.s3.amazonaws.com/small_logos/01a86e89391dfdeb194190d1925b25fee5854301.png	World's largest online library.	Active	S06	f	San Francisco, CA	https://www.scribd.com/careers
139	Atomwise	atomwise.com	https://bookface-images.s3.amazonaws.com/small_logos/8a1ee6b77f74cda5b7dd8fc34a8f146336ecaf89.png	Artificial intelligence for drug discovery.	Active	W15	f	San Francisco, CA	https://www.atomwise.com/life-at-atomwise/
140	Odeko	odeko.com	https://bookface-images.s3.amazonaws.com/small_logos/3b1e7b7eb171eccce88cf7089d2997df49764f1c.png	Our operations software makes it easier to run--and grow--your cafe	Active	S19	f	New York City, NY	https://boards.greenhouse.io/odeko
141	FightCamp	joinfightcamp.com	https://bookface-images.s3.amazonaws.com/small_logos/9ad4b0a44e66abd052761cca849f1d5905d25f72.png	Home boxing gym with motion trackers that compute punches and reps. 	Active	W16	f	Costa Mesa, CA	https://joinfightcamp.com/careers/
142	Pave	pave.com	https://bookface-images.s3.amazonaws.com/small_logos/dff81312b274cea63731bbae6b454eeda9a6cfc6.png	Plan, communicate, and benchmark your compensation in real-time.	Active	S20	t	San Francisco, CA	https://jobs.lever.co/pave
143	Snackpass	snackpass.co	https://bookface-images.s3.amazonaws.com/small_logos/7ac73e2746670c96205a96ceaa3fe2fd8ff8b46c.png	Order ahead at restaurants and get rewards with friends.	Active	W18	f	San Francisco, CA	https://jobs.snackpass.co/
144	Kovi	kovi.com.br	https://bookface-images.s3.amazonaws.com/small_logos/550584b5ede9d05c71bf6270532602123644a502.png	Making car ownership more inclusive, flexible and simple.	Active	W19	f	São Paulo, Brazil	kovi.com.br
145	Nobell Foods	nobellfoods.com	https://bookface-images.s3.amazonaws.com/small_logos/72e723ce1aab712607581b6fc0d418d1d4b869bf.png	Cheese and dairy products from plant-derived dairy proteins	Active	S17	f	South San Francisco, CA	https://jobs.lever.co/nobellfoods
146	InfluxData	influxdata.com	https://bookface-images.s3.amazonaws.com/small_logos/52f8bfabfa73534a4e180ab67b04914310f2a95e.png	The platform for building and operating time series applications.	Active	W13	f	San Francisco, CA	https://www.influxdata.com/careers/
147	Lob	lob.com	https://bookface-images.s3.amazonaws.com/small_logos/da7b97894001dc31174c212b134515c5f169e49c.png	Automates and simplifies direct mail and address verification.	Active	S13	t	San Francisco, CA	https://www.lob.com/careers
148	Career Karma	careerkarma.com	https://bookface-images.s3.amazonaws.com/small_logos/5103b712f62c93b40cccda12194f44aa367bef34.png	Helps job training programs find qualified applicants.	Active	W19	f	San Francisco, CA	https://careerkarma.com/company/jobs/
149	VergeSense	vergesense.com	https://bookface-images.s3.amazonaws.com/small_logos/8ae8f5a94af62b1cae1e783c5ea5dc76b3ccc975.png	AI-Powered Building Management	Active	S17	f	San Francisco, CA	https://jobs.lever.co/vergesense
150	Permutive	permutive.com	https://bookface-images.s3.amazonaws.com/small_logos/d141b2890a1f7b2c6364a0b57270fedfbad3b8f8.png	Rebuilding data in advertising to protect privacy	Active	S14	f	London, UK	https://permutive.com/careers/opportunities/
151	Teleport	goteleport.com	https://bookface-images.s3.amazonaws.com/small_logos/232b4ff716a738c3027603248f32b30a04836498.png	The easiest, most secure way to access all your infrastructure	Active	S15	f	Remote	https://goteleport.com/careers/
152	Postscript	postscript.io	https://bookface-images.s3.amazonaws.com/small_logos/feb213c736f108f91e8194abd3b972fee0e217c3.png	The SMS marketing platform for e-commerce companies	Active	W19	f	Remote	https://www.postscript.io/careers/
153	Eight Sleep	eightsleep.com	https://bookface-images.s3.amazonaws.com/small_logos/b649c0ed7300661389c61da3478d9e510a6ef517.png	The sleep fitness company.	Active	S15	f	Remote	https://jobs.ashbyhq.com/eightsleep
154	Mezmo	mezmo.com	https://bookface-images.s3.amazonaws.com/small_logos/f3a71ea034c7bfc9aef393b47b27829a3413f0b3.png	Observability platform to control all of your log data	Active	W15	f	San Francisco, CA	https://boards.greenhouse.io/logdna
155	Lively, Inc.	livelyme.com	https://bookface-images.s3.amazonaws.com/small_logos/04df2fe7c073695661ca29d77ad166593ebc25d5.png	A modern health savings account (HSA) for employers and individuals. 	Active	W17	f	San Francisco, CA	https://livelyme.com/careers/
156	Ridecell	ridecell.com	https://bookface-images.s3.amazonaws.com/small_logos/993ff6073116071031609f9e3bed69101446082b.png	Digitize your fleet and fleet operations.	Active	W12	f	San Francisco, CA	https://ridecell.com/about/careers/
157	HackerRank	hackerrank.com	https://bookface-images.s3.amazonaws.com/small_logos/6df4cc84a7b27db9480fd2d7bff6fa62ff56aacb.png	Accelerate the World's Innovation 	Active	S11	f	Mountain View, CA	https://www.hackerrank.com/careers
158	Shipper	shipper.id	https://bookface-images.s3.amazonaws.com/small_logos/d7e6eeda0da5998a1259c2403e1417212d97b487.png	Southeast Asia’s e-commerce logistics and enablement platform	Active	W19	f	Jakarta, Indonesia	https://shipper.id/career
159	Caper	caper.ai	null	Plug-and-play cashier-less retail powered by computer vision and AI	Exit	W16	f	New York City, NY	https://caper.ai/jobs
160	Momentus	momentus.space	https://bookface-images.s3.amazonaws.com/small_logos/a9e04d61888abfae102ae9245cd5325c24e4bef5.png	The space infrastructure services company	Public	S18	f	Santa Clara, CA	https://boards.greenhouse.io/momentus
161	Duffel	duffel.com	https://bookface-images.s3.amazonaws.com/small_logos/a56646ea8754eaabe60adf7f11702391cc69ae0e.png	APIs for searching, booking, and managing flights.	Active	S18	f	London, UK	https://duffel.com/careers
162	Nowports	nowports.com	https://bookface-images.s3.amazonaws.com/small_logos/3adc2d7230f0a2c3c705c361a16f9f9b93e81b7d.png	Reinventing the international supply-chain in LATAM	Active	W19	f	Monterrey, Mexico	https://www.careers-page.com/nowports
163	NURX	nurx.com	https://bookface-images.s3.amazonaws.com/small_logos/e30eef55b4ffb18884d227d20476b264b3388dd6.png	Medicine or testing kit, prescribed online and delivered to your door.	Active	W16	f	San Francisco, CA	https://www.nurx.com/careers/
164	Plate IQ	plateiq.com	https://bookface-images.s3.amazonaws.com/small_logos/2ddaee10acb71c657308a3d62234972fbca8392d.png	Seamless restaurant operations. We are redefining how restaurants…	Active	S15	f	San Francisco, CA	https://plateiq.com/careers
165	Presto	presto.com	https://bookface-images.s3.amazonaws.com/small_logos/8b5a274b2f4aec437505689ba7d8789379631349.png	Digital meets physical for big chain restaurants	Active	S10	f	Redwood City, CA	https://presto.com
166	Mattermost	mattermost.com	https://bookface-images.s3.amazonaws.com/small_logos/1828c07e7e0127350a2a1ce95943239d48691aaa.png	Open source developer collaboration platform	Active	S12	t	Remote	https://mattermost.com/careers/
167	BillionToOne	billiontoone.com	https://bookface-images.s3.amazonaws.com/small_logos/905420c2a14832a0f8aeeb3b7c32fe130e85dc80.png	The genetic testing platform detecting and measuring disease.	Active	S17	f	Menlo Park, CA	https://apply.workable.com/billiontoone/
168	Drip Capital	dripcapital.com	https://bookface-images.s3.amazonaws.com/small_logos/fd4c1794856699806ba4d2424920a88c78f1f201.png	Digital trade financing for small businesses	Active	S15	f	Palo Alto, CA	https://dripcapital.hire.trakstar.com/#content
169	Observe.AI	observe.ai	https://bookface-images.s3.amazonaws.com/small_logos/1a491d2ba965415d5df942f6ec5f8b631059b253.png	Contact center AI platform.	Active	W18	f	San Francisco, CA	https://www.observe.ai/careers#open-positions
170	Iron Ox	ironox.com	https://bookface-images.s3.amazonaws.com/small_logos/6a367eb3261209b49872b8ae5c4bf82df615e90a.png	To make food a renewable resource, for everyone	Active	W16	f	San Carlos, CA	https://ironox.com/careers/
171	RevenueCat	revenuecat.com	https://bookface-images.s3.amazonaws.com/small_logos/f8dc20fcc951e007754d6896f9f4c42ee9502a51.png	Developer tools to easily build in-app purchases and subscriptions.	Active	S18	t	Remote	https://www.revenuecat.com/jobs
172	Machine Zone	mz.com	https://bookface-images.s3.amazonaws.com/small_logos/b8a10d341a50957a4b0c63d8f94e76f52fedfb9c.png	Pioneers of mobile social gaming.	Exit	W08	f		https://www.mz.com/careers/
173	Nova Credit	novacredit.com	https://bookface-images.s3.amazonaws.com/small_logos/e302890a1a789c0460ad909ee25e2cd8cc3605fd.png	API for global consumer credit information.	Active	S16	f	San Francisco, CA	https://jobs.lever.co/neednova
174	Platzi	platzi.com	https://bookface-images.s3.amazonaws.com/small_logos/b54bffd3bd06059fabfb2a7a0351e2e4c1e8e697.png	Latin America's School of Technology	Active	W15	f	Remote	https://platzi.com/careers
175	Proxy	proxy.com	https://bookface-images.s3.amazonaws.com/small_logos/039e978da7b8c7169ad4ca836798b4d11a85b2bd.png	Web3 Identity Wallet	Active	S16	f	San Francisco, CA	https://boards.greenhouse.io/proxyv1
176	Karat Financial	trykarat.com	https://bookface-images.s3.amazonaws.com/small_logos/b45b4a40ee6990bb094f256f20eeef3730bba066.png	The black card for creators.	Active	W20	f	Los Angeles, CA	https://link.trykarat.com/jobs
177	Dover	dover.com	https://bookface-images.s3.amazonaws.com/small_logos/2f909fcfa4b1bfac3a61c82e3d1b8ee42e93bf79.png	Build your recruiting engine.	Active	S19	f	San Francisco, CA	https://dover.com/careers
178	Asher Bio	asherbio.com	https://bookface-images.s3.amazonaws.com/small_logos/6ebff96239c6b3bdc84c6e935bf7862294c380cd.png	We build better immunotherapies	Active	S19	f	South San Francisco, CA	https://asherbio.com/careers/
179	OkCredit	okcredit.in	https://bookface-images.s3.amazonaws.com/small_logos/319d958d1c1ed34dab6fa69de4c65c566d82fcc8.png	Simple and secure bookkeeping for Indian businesses.	Active	S18	f	Bengalaru, India	https://okcredit.in/careers
180	UpKeep	upkeep.com	https://bookface-images.s3.amazonaws.com/small_logos/faa6cbcaf3126fdfe71b274528ba20ca29f30eba.png	Mobile-first software for maintenance teams.	Active	W17	f	Los Angeles, CA	https://onupkeep.com/careers
181	Optimizely	optimizely.com	https://bookface-images.s3.amazonaws.com/small_logos/991485f5b633fc7c72c06be787d7b23f32900b52.png	Deliver relevant experiences driven by experimentation and data.	Exit	W10	f	San Francisco, CA	https://www.optimizely.com/company/career/open-positions/
182	Fondeadora	fondeadora.com	https://bookface-images.s3.amazonaws.com/small_logos/be08dda4b90b3b9b6dacc5ba166478966c41fd79.png	We are connecting every single Mexican to the financial system.	Active	W20	f	Mexico City, Mexico	https://careers.fondeadora.com/
183	Ophelia	ophelia.com	https://bookface-images.s3.amazonaws.com/small_logos/3cbf4c2fae04f0bf480c466e071e33c3b2be8a0d.png	Medication & support to beat opioid addiction from home	Active	W20	f	New York City, NY	https://ophelia.com/jobs
184	WePay	wepay.com	https://bookface-images.s3.amazonaws.com/small_logos/5bafed02435325734c5fec395dabe88c19ce051c.png	Payments for platform businesses.	Exit	S09	f	Redwood City, CA	https://go.wepay.com/careers/
185	TrueNorth	truenorthfleet.com	https://bookface-images.s3.amazonaws.com/small_logos/709ce7ee020882766c854fb7a3fb9292bba32240.png	TrueNorth gives truckers a single place to manage their business.	Active	W20	f	San Francisco, CA	https://www.truenorthfleet.com/careers
186	Ribbon Health	ribbonhealth.com	null	Health enterprise API for data on doctors, insurance, costs, & quality	Active	S17	f	New York City, NY	https://ribbonhealth.com/careers
187	Point	point.app	https://bookface-images.s3.amazonaws.com/small_logos/b7a8a0bfdae139ae497957454e6b2ceb29110d33.png	Brings rewards and benefits to the debit card.	Active	W19	f	San Francisco, CA	https://boards.greenhouse.io/point
188	Deepgram	deepgram.com	https://bookface-images.s3.amazonaws.com/small_logos/66d6853111f0008b026e5c57ef1f8860e400c956.png	Speech API for large scale, fast, and accurate voice transcription.	Active	W16	f	San Francisco, CA	https://deepgram.com/company/careers/
189	Culture Biosciences	culturebiosciences.com	https://bookface-images.s3.amazonaws.com/small_logos/ac962091728b8d8d331a854791fa1b892cb9f93f.png	We grow cells for biotech companies.	Active	W18	f	South San Francisco, CA	https://www.culturebiosciences.com/careers
190	Weebly	weebly.com	https://bookface-images.s3.amazonaws.com/small_logos/1f9ac2ce5b5a93035fbbf9775d29c02d9a37dd6f.png	Build a free website that grows with your business.	Exit	W07	f	San Francisco, CA	https://careers.squareup.com/us/en
191	Sqreen	sqreen.com	https://bookface-images.s3.amazonaws.com/small_logos/9d891f44fe59b3c6d5bbb6ce15c0d60af544b9b8.png	Sqreen is the application security platform for the modern enterprise	Exit	W18	f	San Francisco, CA	https://www.sqreen.com
192	CoreOS	coreos.com	https://bookface-images.s3.amazonaws.com/small_logos/0f9ad52c13f8ee67948f0995334dcaff8673134d.png	Open source tools of modern distributed systems.	Active	S13	f	San Francisco, CA	null
193	Bloom Institute of Technology	bloomtech.com	https://bookface-images.s3.amazonaws.com/small_logos/2b6fdc259fedde3b68b83c8fefd7e604dd8a9ac0.png	The online coding school that invests in you.	Active	S17	f	Remote	https://bloomtech.com/careers
194	FAZZ	fazzfinancial.com	https://bookface-images.s3.amazonaws.com/small_logos/b71ac4245fd1b313b185f2e767a0c0a96e9b13b9.png	All-in-one Finance for Every Southeast Asia Business	Active	S17	f	Jakarta, Indonesia	https://jobs.lever.co/xfers
195	Cognito	cognitohq.com	https://bookface-images.s3.amazonaws.com/small_logos/a1000d5d5bee5c940de394e0841af070cfa6e903.png	Frictionless, modern identity verification that starts with just a…	Exit	S14	f	Sisters, Oregon	https://plaid.com/careers/
196	Volansi	flyvoly.com	https://bookface-images.s3.amazonaws.com/small_logos/a5fb76375a3ebb1f2f694f690e6b22ee1ce21b34.png	Autonomous VTOL delivery solutions.	Active	W17	f	Hayward, CA	https://volansi.com/careers/
197	Convictional	convictional.com	https://bookface-images.s3.amazonaws.com/small_logos/fba139c03e77ddf11aa6ea786e0630947149fce9.png	Enabling every company to automate B2B trade	Active	W19	t	Toronto, Canada	https://jobs.ashbyhq.com/convictional
198	Bear Flag Robotics	bearflagrobotics.com	https://bookface-images.s3.amazonaws.com/small_logos/f6c760103131e6cfdd881aff2d03fe079d21ff37.png	Bear Flag Robotics is developing autonomous driving technology for…	Exit	W18	f	Newark, NJ	https://www.bearflagrobotics.com/careers/
199	Heroku	heroku.com	https://bookface-images.s3.amazonaws.com/small_logos/ccf274d8a6c429ccf311e735490c66dee76ccace.png	Enabling developers to build and run applications in the cloud.	Exit	W08	f	San Francisco, CA	https://www.heroku.com/careers
200	Pulley	pulley.com	https://bookface-images.s3.amazonaws.com/small_logos/e94020978bb07233af003f7335f4c64a30e4393a.png	Helping startups get more from their equity	Active	W20	f	San Francisco, CA	https://jobs.ashbyhq.com/Pulley
201	Cambly	cambly.com	https://bookface-images.s3.amazonaws.com/small_logos/ef92cc0c693b52652b84ef72b1e2e48723ce5296.png	On-demand access to English tutors over video chat.	Active	W14	f	San Francisco, CA	https://jobs.cambly.com/
202	Verge Genomics	vergegenomics.com	https://bookface-images.s3.amazonaws.com/small_logos/c4cfdad3584cced8a30fec859292e2380372a30d.png	We find drugs to treat brain diseases 1000x more cheaply and quickly	Active	S15	f	San Francisco, CA	https://www.vergegenomics.com/join-us
203	Quit Genius	quitgenius.com	https://bookface-images.s3.amazonaws.com/small_logos/04a236ea998ac803e3489444460679b872272b8e.png	The world's first digital clinic for addictions	Active	W18	f	New York City, NY	https://www.quitgenius.com/careers
204	NimbleRx	nimblerx.com	https://bookface-images.s3.amazonaws.com/small_logos/59164e3d525f6f19d9a4e0867a66574ef9dedfe8.png	On-demand prescription delivery.	Active	W15	f	Menlo Park, CA	https://www.nimblerx.com/careers
205	Qventus	qventus.com	https://bookface-images.s3.amazonaws.com/small_logos/1defe75646f1d3885f2a5762f45c3977246f4ec8.png	We automate operations for hospitals and health systems	Active	W15	f	Mountain View, CA	https://jobs.lever.co/qventus
206	Reliance Health	getreliancehealth.com	https://bookface-images.s3.amazonaws.com/small_logos/53abf160eeceb521432f24da0e8db75159de4f14.png	We make healthcare in emerging markets affordable and accessible	Active	W17	f	Lagos, Nigeria	https://www.linkedin.com/jobs/search/?f_C=11245693&geoId=92000000
207	Guesty	guesty.com	https://bookface-images.s3.amazonaws.com/small_logos/d59f731120bd004f3252c700f665371ea8be8b0e.png	The management platform for the short term rental industry.	Active	W14	f	Tel Aviv, Israel	https://www.guesty.com/careers/
208	Vidyard	vidyard.com	https://bookface-images.s3.amazonaws.com/small_logos/934307090567f3d1ab554fdee17624890cb7199b.png	Video for business.	Active	S11	f	Kitchener, Canada	https://www.vidyard.com/careers/
209	Avo	avo.co.il	null	Online convenience store for residential and office buildings	Active	S18	f	New York City, NY	https://www.avonow.com/careers
210	HelloSign	hellosign.com	https://bookface-images.s3.amazonaws.com/small_logos/251df7a6d1d16ee11aac63b910791aca861aff29.png	eSignature software for small and mid-market businesses.	Exit	W11	f	San Francisco, CA	https://www.hellosign.com/careers
211	Aspire	aspireapp.com	https://bookface-images.s3.amazonaws.com/small_logos/753f62b42ec2f778dd6395d3ae91802c52ab6b5a.png	Finance OS for growing businesses	Active	W18	f	Singapore	https://aspireapp.com/careers
212	Embrace	embrace.io	https://bookface-images.s3.amazonaws.com/small_logos/1671ff39ac27942e80000d91d16f869cbf382ca9.png	The only observability and data platform built exclusively for mobile.	Active	S19	f	Los Angeles, CA	https://embrace.io/careers/
213	Armory	armory.io	https://bookface-images.s3.amazonaws.com/small_logos/d2481976ecdb544597d387ea3a43b3f57c5fb6ab.png	Continuous deployment at enterprise scale	Active	W17	f	San Mateo, CA	https://www.armory.io/careers/open-positions/
214	Daily	daily.co	https://bookface-images.s3.amazonaws.com/small_logos/083decee45eda78a7354a1d02bf58c39968706d4.png	WebRTC video and audio APIs for every developer	Active	W16	f	San Francisco, CA	https://www.daily.co/jobs
215	Contentfly	contentfly.com	https://bookface-images.s3.amazonaws.com/small_logos/8bb37d0ea7a44b71d256f76d57312d2b885e6a7c.png	High quality, on-demand content for hypergrowth companies	Active	W21	f	Toronto, Canada	https://contentfly.com/company
216	Alpaca	alpaca.markets	https://bookface-images.s3.amazonaws.com/small_logos/b295431905698e781cef6baa63d47f5d752b8b18.png	API-first stock and crypto brokerage platform	Active	W19	f	Remote	https://jobs.ashbyhq.com/Alpaca
217	Ambient.ai	ambient.ai	https://bookface-images.s3.amazonaws.com/small_logos/672414bd0b1d19b315e649e49bae23ab136555be.png	AI-powered environments that are safe, efficient, and sustainable.	Active	W17	f	Palo Alto, CA	https://jobs.lever.co/ambient
218	Pachyderm	pachyderm.com	https://bookface-images.s3.amazonaws.com/small_logos/23351b36c00bacc651a4389386057c50f0690542.png	Data Versioning, Data Pipelines, and Data Lineage	Active	W15	f	San Francisco, CA	https://www.pachyderm.com/careers/#positions
219	garten	garten.co	https://bookface-images.s3.amazonaws.com/small_logos/3b3b55601198e995dd37f15f2ad59f81b5586bba.png	Creating workplace wellbeing.	Active	S16	f	San Francisco, CA	https://garten.co/careers/
220	BukuWarung	bukuwarung.com/app	https://bookface-images.s3.amazonaws.com/small_logos/ea907a1b87549241f7b6d528f2704f3c3341d802.png	Accounting & Payments app for 60M micro-businesses in Indonesia	Active	S20	f	Jakarta, Indonesia	https://jobs.lever.co/bukuwarung
221	Netomi	netomi.com	null	Self-Driving Customer Care	Active	W16	f	San Mateo, CA	https://www.netomi.com/careers
222	Unbabel	unbabel.com	https://bookface-images.s3.amazonaws.com/small_logos/6d36cb19e3763316417518c3b4a2fe8f501c6bbc.png	AI-powered Language Operations platform	Active	W14	f	San Francisco, CA	https://unbabel.com/careers/
223	Axoni	axoni.com	https://bookface-images.s3.amazonaws.com/small_logos/8c4cc56e4a37201555dc18cf1c50c92082ad616b.png	Blockchain tech for capital markets.	Active	W14	f	New York City, NY	https://axoni.com/careers/
224	Feather	livefeather.com	https://bookface-images.s3.amazonaws.com/small_logos/78565f991ce79dae3926441dab3992eb71f84d76.png	Furniture rental for people and businesses.	Active	S17	f	New York City, NY	https://boards.greenhouse.io/feather
225	Compound	withcompound.com	https://bookface-images.s3.amazonaws.com/small_logos/2f11e5dada8d8ebbf9967a5104a41e9b99bc1fd2.png	Compound is a wealth manager for people who work at tech companies. 	Active	S19	f	Remote	https://withcompound.com/careers
226	Cashfree Payments	cashfree.com	https://bookface-images.s3.amazonaws.com/small_logos/7eb68658869d911582ae784bc8ff049cb6b4a898.png	Next-gen digital payments provider for India.	Active	S17	f	Bengaluru, India	https://www.cashfree.com/careers
227	Bitmovin	bitmovin.com	https://bookface-images.s3.amazonaws.com/small_logos/d22ccb72e758575588245bb8f517bbe35f7421e7.png	Powers OTT online video providers with video developer tools.	Active	S15	f	San Francisco, CA	https://bitmovin.com/careers/
228	Eden Workplace	edenworkplace.com	https://bookface-images.s3.amazonaws.com/small_logos/6f59a6cd72ad7a541111cd58bd8a38bbd6fb95f4.png	People operations and workplace software	Active	S15	f	San Francisco, CA	https://www.edenworkplace.com/careers#openings
229	Fintual	fintual.com	https://bookface-images.s3.amazonaws.com/small_logos/cbf5d38f9bacbb95da30894913569c413307b19d.png	Wealth manager	Active	S18	f	Santiago, Chile	https://fintual.com/steve
230	OpenInvest	openinvest.com	https://bookface-images.s3.amazonaws.com/small_logos/3abd55a846c0a5b7e349727420a779d13c382e27.png	Technology-enabled asset manager providing ESG-focused investments.	Exit	S15	f	San Francisco, CA	https://jobs.lever.co/openinvest
231	Modern Fertility	modernfertility.com	https://bookface-images.s3.amazonaws.com/small_logos/b80c9ee16644141e27cf06459324dccdc7fd94bf.png	Modern Fertility is an at-home fertility test for women who aren't…	Exit	S17	f	San Francisco, CA	https://modernfertility.com/careers/
232	Convex	convex.com	https://bookface-images.s3.amazonaws.com/small_logos/7c5d3a6d72aa7ddc98296b94c59a3ba4b3e19f96.png	Software for the commercial services industry. 	Active	W19	f	San Francisco, CA	https://www.convex.com/careers/
233	Houm	houm.com	https://bookface-images.s3.amazonaws.com/small_logos/f58147331ea247e7f1b2605dfc3f60dbee27a141.png	All-in-one real estate marketplace for Latin America	Active	W21	f	Santiago, Chile	https://jobs.lever.co/houm
234	Paystack	paystack.com	https://bookface-images.s3.amazonaws.com/small_logos/8f4d18618abc91ad79be53d918a199daffad6f58.png	Modern payments infrastructure for Africa	Exit	W16	f	Lagos, Nigeria	https://paystack.com/careers
235	64x Bio	64xbio.com	https://bookface-images.s3.amazonaws.com/small_logos/19742afe098c42bc063afc58ef5bcbe750051380.png	High throughput design of cells for therapeutics applications.	Active	S18	f	San Francisco, CA	https://www.64xbio.com/careers
236	DrChrono	drchrono.com	https://bookface-images.s3.amazonaws.com/small_logos/777dd100388a6a777571baee7bd41695a7129e6a.png	The essential platform for modern medical practices and patients.	Exit	W11	f	Sunnyvale, CA	https://www.drchrono.com/careers/
237	Validere	validere.com	https://bookface-images.s3.amazonaws.com/small_logos/9ce38d2fcb3d6d1c82dbc8627ec94ca3f3fb0338.png	Integrated physical and environmental commodity management	Active	S16	f	Toronto, Canada	https://validere.com/careers/
238	STOKE Space Technologies, Inc	stokespace.com	https://bookface-images.s3.amazonaws.com/small_logos/7bd70fb6da67b164d2cd254e1073399a888f6ff9.png	Seamlessly connecting earth and space	Active	W21	f	Kent, WA	https://www.stokespace.com/employment/employment-main
239	Mighty Buildings	mightybuildings.com	https://bookface-images.s3.amazonaws.com/small_logos/844d150018622773b3680a49be87e4fbbbe4a3bc.png	3D printing beautiful, high-quality, and sustainable homes.	Active	W18	f	Oakland, CA	https://mightybuildings.com/careers
240	Nuvocargo	nuvocargo.com	https://bookface-images.s3.amazonaws.com/small_logos/275e2a78b8a55a63263d69a44e49471cf75b7b7f.png	Your all-in-one digital platform for trade across the Americas	Active	W18	f	New York City, NY	https://www.nuvocargo.com/en/jobs
241	Culdesac	culdesac.com	https://bookface-images.s3.amazonaws.com/small_logos/496d0ff1f20ae199837eebe1bfef35fa059329d0.png	We build cities for people, not cars. 	Active	S18	f	Tempe, AZ	https://culdesac.com/jobs
242	Remora	remoracarbon.com	https://bookface-images.s3.amazonaws.com/small_logos/22b6829346a08e83b56852b94f5e8748a17be818.png	Carbon capture for semi-trucks	Active	W21	f	Detroit, MI	https://www.remoracarbon.com/jobs
243	54Gene	54gene.com	https://bookface-images.s3.amazonaws.com/small_logos/f0d268f1433885c466eead20338651157ba4886f.png	Precision medicine for Africans and the global population	Active	W19	f	Washington DC	https://54gene.com/careers/
244	Burrow	burrow.com	https://bookface-images.s3.amazonaws.com/small_logos/11ae0a97ccc59088b788a8c0bab0b4819ab88ea0.png	A furniture brand creating award winning, innovative designs.	Active	S16	f	New York City, NY	https://burrow.com/careers
245	Tovala	tovala.com	https://bookface-images.s3.amazonaws.com/small_logos/4d24804e937af978727efecbdfe7f9087dac99a2.png	A smart-oven-paired subscription meal service.	Active	W16	f	Chicago, IL	https://www.tovala.com/careers
246	Curri	curri.com	https://bookface-images.s3.amazonaws.com/small_logos/d0def2ab990562a326f79a5b928123d9101a44ba.png	Construction logistics.	Active	S19	f	Ventura, CA	https://careers.curri.com/
247	Soomgo	soomgo.com	https://bookface-images.s3.amazonaws.com/small_logos/949d18eff196662c6fe0d32da65dd061d3b005b5.png	Local services marketplace that connects providers with new customers	Active	W17	f	Seoul, South Korea	https://soomgo.recruitee.com
248	Shelf Engine	shelfengine.com	https://bookface-images.s3.amazonaws.com/small_logos/30d8273cf77bf9ee7c72f1c08b3457034ba910b3.png	Transforms how grocery stores buy highly perishable foods.	Active	S18	f	Seattle, WA	https://www.shelfengine.com/careers/
249	Yassir	yassir.com	https://bookface-images.s3.amazonaws.com/small_logos/73bd927e75c509d21699165f6d43ad2c3f5acf76.png	Yassir is the leading Super App for French Speaking Africa	Active	W20	f	Algiers, Casablanca	https://www.linkedin.com/company/yassir-global/jobs/?viewAsMember=true
250	Yummy	apps.apple.com/us/app/yummy-venezuela/id1506748350	https://bookface-images.s3.amazonaws.com/small_logos/787eb4a9de615a922a26c27f02b3f9ced148e4d4.png	SuperApp & Quick Commerce for LATAM 	Active	S21	f	San Francisco, CA	https://jobs.lever.co/yummysuperapp
251	Lucira Health	lucirahealth.com	https://bookface-images.s3.amazonaws.com/small_logos/c16f624e7c7aac96877a792583de496fc66b4a02.png	Next generation infectious disease test kits	Public	W15	f	Emeryville, CA	https://www.lucirahealth.com/lucira-careers/
252	GitPrime	gitprime.com	https://bookface-images.s3.amazonaws.com/small_logos/b2d3dd198bca90e8788c0aefde72b644504fe75e.png	Visibility and analytics for software development leaders.	Exit	W16	f	Durango, CO	null
253	Wefunder	wefunder.com	https://bookface-images.s3.amazonaws.com/small_logos/86fe89dc40132aeb8f280105ad161eb9c7281ebc.png	We're Robinhood for pre-IPO startups. Everyone can invest $100.	Active	W13	f	San Francisco, CA	https://wefunder.com/jobs
254	ZeroDown	zerodown.com	https://bookface-images.s3.amazonaws.com/small_logos/dcf6e1a573bd469deaf497a44224b21356c1f65e.png	Find beautiful homes	Active	W19	f	San Francisco, CA	null
255	Meru Health	meruhealth.com	https://bookface-images.s3.amazonaws.com/small_logos/9bce3268ca5aae45afdd08977611e554f479cde4.png	An online provider for greater mental health	Active	S18	f	San Mateo, CA	https://www.meruhealth.com/careers-full
256	Notable Labs	notablelabs.com	https://bookface-images.s3.amazonaws.com/small_logos/c2bf47d120c3bdde2a9ad11d9f05f1c08a72ca0e.png	Personalized drug discovery for blood cancer.	Active	W15	f	Foster City, CA	https://notablelabs.com/careers/
257	REGENT	regentcraft.com	https://bookface-images.s3.amazonaws.com/small_logos/e0c83c9ecbf81c8809be20d15fe4abf91f2789dc.png	Electric boat-planes for fast, affordable regional transportation	Active	W21	f	Boston, MA	https://www.regentcraft.com/careers
258	Belvo	belvo.com	https://bookface-images.s3.amazonaws.com/small_logos/8a630e8e8c65d44c6d85d84dfe4c115d9c8671c2.png	Open Finance API platform for Latam.	Active	W20	f	Mexico City, Mexico	https://belvo.com/careers/
259	Landed	landed.com	https://bookface-images.s3.amazonaws.com/small_logos/7ab8fa26571630366add5d76d46ba876b673c7b9.png	Tools to build financial security for people with essential jobs	Active	W16	f	San Francisco, CA	https://landed.com/jobs
260	Roboflow	roboflow.com	https://bookface-images.s3.amazonaws.com/small_logos/ba0036069bd338a4c6188cb137722d8f584d0016.png	🖼️ Give your software the sense of sight.	Active	S20	f	Remote	https://roboflow.com/careers
261	Legacy	givelegacy.com	https://bookface-images.s3.amazonaws.com/small_logos/1c02b41e587eed23f3ca35f6f7c921db840e8cbb.png	Legacy helps you test, improve, and freeze your sperm	Active	S19	f	Boston, MA	https://jobs.lever.co/legacy
262	PostHog	posthog.com	https://bookface-images.s3.amazonaws.com/small_logos/f0b4836a182b382bf652dda6326d85410d0f78be.png	Open source product analytics, self-hosted or in the cloud.	Active	W20	t	Remote	https://posthog.com/careers
263	FutureAdvisor	futureadvisor.com	https://bookface-images.s3.amazonaws.com/small_logos/f9646d12ef702815678b089d1127fdf3de037009.png	The online financial management service for everyone.	Exit	S10	f	San Francisco, CA	null
264	Rainbow	rainbow.me	https://bookface-images.s3.amazonaws.com/small_logos/28f27645fc5edf8589ed512ab974bba4e165bad1.png	Open-source, design centric software for interacting with blockchains	Active	S19	f	Remote	https://twitter.com/mikedemarais
265	Reach Labs	reachlabs.co	https://bookface-images.s3.amazonaws.com/small_logos/2996d2661354e506266f6122ea522379aa429590.png	Long range, wireless energy distribution that scales	Active	S15	f	Emeryville, CA	https://reachlabs.co/company/#careers
266	Depict	depict.ai	https://bookface-images.s3.amazonaws.com/small_logos/ab7c0b045e631107c80e1bfa7e008c9c211f8bb9.png	Amazon-quality product recommendations for any e-commerce store	Active	S20	f	Remote	https://careers.depict.ai/
267	Nomba	nomba.com	https://bookface-images.s3.amazonaws.com/small_logos/df1f2387282fcfbd2c12fe132115b6a2f5601924.png	Banking and payment services for small businesses in Nigeria	Active	W17	f	Lagos, Nigeria	https://kudi.com/careers
268	FamPay	fampay.in	https://bookface-images.s3.amazonaws.com/small_logos/319c4ca66fa53bdc1e6c40bcff4a0ea5aebe575d.png	India’s first neobank for teenagers	Active	S19	f	Bengaluru, India	https://join.fampay.in
269	Supabase	supabase.com	https://bookface-images.s3.amazonaws.com/small_logos/72824c6619a275a9285002167a4aa732f4248c6e.png	Build in a weekend. Scale to billions.	Active	S20	f	Remote	https://about.supabase.com/careers
270	SFOX	sfox.com	https://bookface-images.s3.amazonaws.com/small_logos/a274dfcb73df4022ba335a9f013ebc1f51ffa2d7.png	Crypto-currency trading platform.	Active	S14	f	Los Angeles, CA	https://www.sfox.com/jobs/#jobBoard
271	Recurrency	recurrency.com	https://bookface-images.s3.amazonaws.com/small_logos/5fe4ce1410d8f06bc2d1f59d61a7c96d9c9fccdd.png	Automated ERP for distributors.	Active	S20	f	Remote	https://www.recurrency.com/about#careers
2	Nama baruu	stripe.com	https://bookface-images.s3.amazonaws.com/small_logos/c29b3c85a1f648ebedea88c22f4656bafc2e7823.png	Payments infrastructure for the internet.	Active	S09	t	San Francisco, CA	https://stripe.com/jobs/search
\.


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: company company_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (company_rank);


--
-- PostgreSQL database dump complete
--

