--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.5
-- Dumped by pg_dump version 9.6.5

-- Started on 2017-11-17 21:30:54

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12387)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2230 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 198 (class 1259 OID 17582)
-- Name: Actors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Actors" (
    id integer NOT NULL,
    "First Name Actor" text NOT NULL,
    "Second Name Actor" text NOT NULL,
    "Date of Birth" date NOT NULL,
    "Place of Birth" integer NOT NULL
);


ALTER TABLE "Actors" OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 17580)
-- Name: Actors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Actors_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Actors_id_seq" OWNER TO postgres;

--
-- TOC entry 2231 (class 0 OID 0)
-- Dependencies: 197
-- Name: Actors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Actors_id_seq" OWNED BY "Actors".id;


--
-- TOC entry 194 (class 1259 OID 17556)
-- Name: City; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "City" (
    id integer NOT NULL,
    "Name" text NOT NULL,
    "Country" integer NOT NULL
);


ALTER TABLE "City" OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 17554)
-- Name: City_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "City_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "City_id_seq" OWNER TO postgres;

--
-- TOC entry 2232 (class 0 OID 0)
-- Dependencies: 193
-- Name: City_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "City_id_seq" OWNED BY "City".id;


--
-- TOC entry 196 (class 1259 OID 17569)
-- Name: Country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Country" (
    id integer NOT NULL,
    "Name " text NOT NULL
);


ALTER TABLE "Country" OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 17567)
-- Name: Country_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Country_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Country_id_seq" OWNER TO postgres;

--
-- TOC entry 2233 (class 0 OID 0)
-- Dependencies: 195
-- Name: Country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Country_id_seq" OWNED BY "Country".id;


--
-- TOC entry 186 (class 1259 OID 17508)
-- Name: Films; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Films" (
    id integer NOT NULL,
    "Name" text NOT NULL,
    "Studio" integer NOT NULL,
    "Year" integer NOT NULL,
    "Tagline" text,
    "Producer" integer NOT NULL,
    "Name Main Actor" integer NOT NULL,
    "Name Personage" integer NOT NULL,
    "Genre" integer NOT NULL,
    "Runtime" integer NOT NULL,
    "Rating" text NOT NULL
);


ALTER TABLE "Films" OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 17506)
-- Name: Films_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Films_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Films_id_seq" OWNER TO postgres;

--
-- TOC entry 2234 (class 0 OID 0)
-- Dependencies: 185
-- Name: Films_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Films_id_seq" OWNED BY "Films".id;


--
-- TOC entry 190 (class 1259 OID 17530)
-- Name: Genre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Genre" (
    id integer NOT NULL,
    "Name Genre" text NOT NULL
);


ALTER TABLE "Genre" OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 17528)
-- Name: Genre_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Genre_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Genre_id_seq" OWNER TO postgres;

--
-- TOC entry 2235 (class 0 OID 0)
-- Dependencies: 189
-- Name: Genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Genre_id_seq" OWNED BY "Genre".id;


--
-- TOC entry 188 (class 1259 OID 17519)
-- Name: Producer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Producer" (
    id integer NOT NULL,
    "First Name " text NOT NULL,
    "Second Name" text NOT NULL,
    "Date of Birth" date NOT NULL,
    "Place of Birth" integer NOT NULL,
    "Total number of films" integer NOT NULL
);


ALTER TABLE "Producer" OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 17517)
-- Name: Producer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Producer_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Producer_id_seq" OWNER TO postgres;

--
-- TOC entry 2236 (class 0 OID 0)
-- Dependencies: 187
-- Name: Producer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Producer_id_seq" OWNED BY "Producer".id;


--
-- TOC entry 200 (class 1259 OID 17593)
-- Name: Protagonist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Protagonist" (
    id integer NOT NULL,
    "Name Protogonist" text NOT NULL
);


ALTER TABLE "Protagonist" OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 17591)
-- Name: Protagonist_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Protagonist_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Protagonist_id_seq" OWNER TO postgres;

--
-- TOC entry 2237 (class 0 OID 0)
-- Dependencies: 199
-- Name: Protagonist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Protagonist_id_seq" OWNED BY "Protagonist".id;


--
-- TOC entry 192 (class 1259 OID 17543)
-- Name: Studio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Studio" (
    id integer NOT NULL,
    "Name Studio" text NOT NULL
);


ALTER TABLE "Studio" OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 17541)
-- Name: Studio_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Studio_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Studio_id_seq" OWNER TO postgres;

--
-- TOC entry 2238 (class 0 OID 0)
-- Dependencies: 191
-- Name: Studio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Studio_id_seq" OWNED BY "Studio".id;


--
-- TOC entry 2057 (class 2604 OID 17585)
-- Name: Actors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Actors" ALTER COLUMN id SET DEFAULT nextval('"Actors_id_seq"'::regclass);


--
-- TOC entry 2055 (class 2604 OID 17559)
-- Name: City id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "City" ALTER COLUMN id SET DEFAULT nextval('"City_id_seq"'::regclass);


--
-- TOC entry 2056 (class 2604 OID 17572)
-- Name: Country id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Country" ALTER COLUMN id SET DEFAULT nextval('"Country_id_seq"'::regclass);


--
-- TOC entry 2051 (class 2604 OID 17511)
-- Name: Films id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Films" ALTER COLUMN id SET DEFAULT nextval('"Films_id_seq"'::regclass);


--
-- TOC entry 2053 (class 2604 OID 17533)
-- Name: Genre id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Genre" ALTER COLUMN id SET DEFAULT nextval('"Genre_id_seq"'::regclass);


--
-- TOC entry 2052 (class 2604 OID 17522)
-- Name: Producer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Producer" ALTER COLUMN id SET DEFAULT nextval('"Producer_id_seq"'::regclass);


--
-- TOC entry 2058 (class 2604 OID 17596)
-- Name: Protagonist id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Protagonist" ALTER COLUMN id SET DEFAULT nextval('"Protagonist_id_seq"'::regclass);


--
-- TOC entry 2054 (class 2604 OID 17546)
-- Name: Studio id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Studio" ALTER COLUMN id SET DEFAULT nextval('"Studio_id_seq"'::regclass);


--
-- TOC entry 2221 (class 0 OID 17582)
-- Dependencies: 198
-- Data for Name: Actors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Actors" (id, "First Name Actor", "Second Name Actor", "Date of Birth", "Place of Birth") FROM stdin;
2	Chris	Evans	1981-06-13	4
1	Robert	Downey Jr.	1965-04-04	1
3	Edward	Norton	1969-08-18	4
4	Artem 	Bistrov	1985-03-19	8
5	Denis	Shvedov	1981-10-24	9
\.


--
-- TOC entry 2239 (class 0 OID 0)
-- Dependencies: 197
-- Name: Actors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Actors_id_seq"', 1, false);


--
-- TOC entry 2217 (class 0 OID 17556)
-- Dependencies: 194
-- Data for Name: City; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "City" (id, "Name", "Country") FROM stdin;
2	Pittsburg	1
1	New York	1
4	Boston	1
3	Austin	1
6	Paris	2
5	Clevburg	1
9	Moscow	3
8	Nijnii Novgorod	3
7	Novomichurinsk	3
\.


--
-- TOC entry 2240 (class 0 OID 0)
-- Dependencies: 193
-- Name: City_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"City_id_seq"', 1, false);


--
-- TOC entry 2219 (class 0 OID 17569)
-- Dependencies: 196
-- Data for Name: Country; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Country" (id, "Name ") FROM stdin;
2	France
1	USA
3	Russia
\.


--
-- TOC entry 2241 (class 0 OID 0)
-- Dependencies: 195
-- Name: Country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Country_id_seq"', 1, false);


--
-- TOC entry 2209 (class 0 OID 17508)
-- Dependencies: 186
-- Data for Name: Films; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Films" (id, "Name", "Studio", "Year", "Tagline", "Producer", "Name Main Actor", "Name Personage", "Genre", "Runtime", "Rating") FROM stdin;
2	Iron Man 2	1	2010	\N	1	1	1	1	125	PG-13
1	Iron Man 	1	2008	\N	1	1	1	1	127	PG-13
4	Captain America 	1	2011	\N	3	2	2	1	124	PG-13
3	Iron Man 3	2	2013	\N	2	1	1	1	131	PG-13
6	The Hulk	3	2008	\N	5	3	3	1	112	PG-13
5	Captain America 2	2	2014	\N	4	2	2	1	136	PG-13
8	Maior	4	2013	\N	6	5	5	2	99	18+
7	Durak	4	2014	\N	6	4	4	2	116	16+
\.


--
-- TOC entry 2242 (class 0 OID 0)
-- Dependencies: 185
-- Name: Films_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Films_id_seq"', 1, false);


--
-- TOC entry 2213 (class 0 OID 17530)
-- Dependencies: 190
-- Data for Name: Genre; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Genre" (id, "Name Genre") FROM stdin;
1	Action\\Adventure
2	Drama
\.


--
-- TOC entry 2243 (class 0 OID 0)
-- Dependencies: 189
-- Name: Genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Genre_id_seq"', 1, false);


--
-- TOC entry 2211 (class 0 OID 17519)
-- Dependencies: 188
-- Data for Name: Producer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Producer" (id, "First Name ", "Second Name", "Date of Birth", "Place of Birth", "Total number of films") FROM stdin;
2	Stane	Black	1961-12-16	2	43
1	Jon	Favreau	1966-10-19	1	138
4	Anthony	Russo	1970-02-03	4	38
3	Joe	Johnston	1950-05-13	3	31
5	Louis	Leterrier	1973-05-17	5	24
6	Yra	Bikov	1981-08-15	6	24
\.


--
-- TOC entry 2244 (class 0 OID 0)
-- Dependencies: 187
-- Name: Producer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Producer_id_seq"', 1, false);


--
-- TOC entry 2223 (class 0 OID 17593)
-- Dependencies: 200
-- Data for Name: Protagonist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Protagonist" (id, "Name Protogonist") FROM stdin;
2	Captain America\\Steave Rojers
1	Tony Stark\\Iron Man
3	Bruce Banner\\Hulk
4	Nikitin
5	Sergey Sobolev
\.


--
-- TOC entry 2245 (class 0 OID 0)
-- Dependencies: 199
-- Name: Protagonist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Protagonist_id_seq"', 1, false);


--
-- TOC entry 2215 (class 0 OID 17543)
-- Dependencies: 192
-- Data for Name: Studio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Studio" (id, "Name Studio") FROM stdin;
2	Marvel Studios
1	Paramount
3	Universal
4	Rock Films
\.


--
-- TOC entry 2246 (class 0 OID 0)
-- Dependencies: 191
-- Name: Studio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Studio_id_seq"', 1, false);


--
-- TOC entry 2072 (class 2606 OID 17566)
-- Name: City City_Name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "City"
    ADD CONSTRAINT "City_Name_key" UNIQUE ("Name");


--
-- TOC entry 2076 (class 2606 OID 17579)
-- Name: Country Country_Name _key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Country"
    ADD CONSTRAINT "Country_Name _key" UNIQUE ("Name ");


--
-- TOC entry 2064 (class 2606 OID 17540)
-- Name: Genre Genre_Name Genre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Genre"
    ADD CONSTRAINT "Genre_Name Genre_key" UNIQUE ("Name Genre");


--
-- TOC entry 2068 (class 2606 OID 17553)
-- Name: Studio Studio_Name Studio_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Studio"
    ADD CONSTRAINT "Studio_Name Studio_key" UNIQUE ("Name Studio");


--
-- TOC entry 2080 (class 2606 OID 17590)
-- Name: Actors actors_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Actors"
    ADD CONSTRAINT actors_pk PRIMARY KEY (id);


--
-- TOC entry 2074 (class 2606 OID 17564)
-- Name: City city_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "City"
    ADD CONSTRAINT city_pk PRIMARY KEY (id);


--
-- TOC entry 2078 (class 2606 OID 17577)
-- Name: Country country_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Country"
    ADD CONSTRAINT country_pk PRIMARY KEY (id);


--
-- TOC entry 2060 (class 2606 OID 17516)
-- Name: Films films_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Films"
    ADD CONSTRAINT films_pk PRIMARY KEY (id);


--
-- TOC entry 2066 (class 2606 OID 17538)
-- Name: Genre genre_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Genre"
    ADD CONSTRAINT genre_pk PRIMARY KEY (id);


--
-- TOC entry 2062 (class 2606 OID 17527)
-- Name: Producer producer_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Producer"
    ADD CONSTRAINT producer_pk PRIMARY KEY (id);


--
-- TOC entry 2082 (class 2606 OID 17601)
-- Name: Protagonist protagonist_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Protagonist"
    ADD CONSTRAINT protagonist_pk PRIMARY KEY (id);


--
-- TOC entry 2070 (class 2606 OID 17551)
-- Name: Studio studio_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Studio"
    ADD CONSTRAINT studio_pk PRIMARY KEY (id);


--
-- TOC entry 2090 (class 2606 OID 17637)
-- Name: Actors Actors_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Actors"
    ADD CONSTRAINT "Actors_fk1" FOREIGN KEY ("Place of Birth") REFERENCES "City"(id);


--
-- TOC entry 2089 (class 2606 OID 17632)
-- Name: City City_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "City"
    ADD CONSTRAINT "City_fk0" FOREIGN KEY ("Country") REFERENCES "Country"(id);


--
-- TOC entry 2083 (class 2606 OID 17602)
-- Name: Films Films_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Films"
    ADD CONSTRAINT "Films_fk0" FOREIGN KEY ("Studio") REFERENCES "Studio"(id);


--
-- TOC entry 2084 (class 2606 OID 17607)
-- Name: Films Films_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Films"
    ADD CONSTRAINT "Films_fk1" FOREIGN KEY ("Producer") REFERENCES "Producer"(id);


--
-- TOC entry 2085 (class 2606 OID 17612)
-- Name: Films Films_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Films"
    ADD CONSTRAINT "Films_fk2" FOREIGN KEY ("Name Main Actor") REFERENCES "Actors"(id);


--
-- TOC entry 2086 (class 2606 OID 17617)
-- Name: Films Films_fk3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Films"
    ADD CONSTRAINT "Films_fk3" FOREIGN KEY ("Name Personage") REFERENCES "Protagonist"(id);


--
-- TOC entry 2087 (class 2606 OID 17622)
-- Name: Films Films_fk4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Films"
    ADD CONSTRAINT "Films_fk4" FOREIGN KEY ("Genre") REFERENCES "Genre"(id);


--
-- TOC entry 2088 (class 2606 OID 17627)
-- Name: Producer Producer_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Producer"
    ADD CONSTRAINT "Producer_fk1" FOREIGN KEY ("Place of Birth") REFERENCES "City"(id);


-- Completed on 2017-11-17 21:30:54

--
-- PostgreSQL database dump complete
--

