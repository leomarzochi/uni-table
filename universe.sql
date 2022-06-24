--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: constelation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constelation (
    constelation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer
);


ALTER TABLE public.constelation OWNER TO freecodecamp;

--
-- Name: constelation_constelation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constelation_constelation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constelation_constelation_id_seq OWNER TO freecodecamp;

--
-- Name: constelation_constelation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constelation_constelation_id_seq OWNED BY public.constelation.constelation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    shape character varying(20) NOT NULL,
    color character varying(20),
    planet_types integer,
    star_forming_activity character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    mass numeric,
    code integer,
    composition character varying(20),
    is_spherical boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean,
    moons integer,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    distance_from_earth integer,
    age integer,
    surface_temperature integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: constelation constelation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation ALTER COLUMN constelation_id SET DEFAULT nextval('public.constelation_constelation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: constelation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constelation VALUES (1, 'Scurton', NULL);
INSERT INTO public.constelation VALUES (2, 'Libra', NULL);
INSERT INTO public.constelation VALUES (3, 'Virgo', NULL);
INSERT INTO public.constelation VALUES (4, 'Horus', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'spherical', 'white', 2, 'high');
INSERT INTO public.galaxy VALUES (2, 'Milk Way', 'cubical', 'red', 5, 'low');
INSERT INTO public.galaxy VALUES (3, 'XS3', 'cilindrical', 'blue', 1, 'mid');
INSERT INTO public.galaxy VALUES (4, 'Alfa Centauri', 'conical', 'red', 120, 'low');
INSERT INTO public.galaxy VALUES (5, 'Big Berta', 'spherical', 'red', 50, 'low');
INSERT INTO public.galaxy VALUES (6, 'Rodia', 'cubical', 'green', 3, 'mid');
INSERT INTO public.galaxy VALUES (7, 'Large Magellanic Cloud', 'twisted', 'blue', 2, 'mid');
INSERT INTO public.galaxy VALUES (8, 'Small Magellanic Cloud ', 'cubical', 'red', 9, 'mid');
INSERT INTO public.galaxy VALUES (9, 'Antennae', 'spherical', 'yellow', 1, 'mid');
INSERT INTO public.galaxy VALUES (10, 'Backward', 'twisted', 'green', 2, 'mid');
INSERT INTO public.galaxy VALUES (11, 'Bodes Galaxy', 'spherical', 'blue', 45, 'mid');
INSERT INTO public.galaxy VALUES (12, 'Coma Pinwheel Galaxy', 'cubical', 'green', 5, 'mid');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1234, 1, 'Ice', false, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 1234, 2, 'Ice', false, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 1234, 3, 'Ice', false, 4);
INSERT INTO public.moon VALUES (4, 'Io', 1234, 4, 'Ice', false, 1);
INSERT INTO public.moon VALUES (5, 'Europa', 1234, 5, 'Ice', false, 1);
INSERT INTO public.moon VALUES (6, 'Callisto', 1234, 6, 'Ice', false, 1);
INSERT INTO public.moon VALUES (7, 'Tethys', 1234, 7, 'Ice', false, 1);
INSERT INTO public.moon VALUES (8, 'Rhea', 1234, 8, 'Ice', false, 1);
INSERT INTO public.moon VALUES (9, 'Himalia', 1234, 9, 'Ice', false, 1);
INSERT INTO public.moon VALUES (10, 'Pan', 1234, 11, 'Ice', false, 1);
INSERT INTO public.moon VALUES (11, 'Atlas', 1234, 123, 'Ice', false, 1);
INSERT INTO public.moon VALUES (12, 'Prometheus', 1234, 12, 'Ice', false, 1);
INSERT INTO public.moon VALUES (13, 'Pandora', 1234, 13, 'Ice', false, 1);
INSERT INTO public.moon VALUES (14, 'Janus', 1234, 14, 'Ice', false, 1);
INSERT INTO public.moon VALUES (15, 'Tethys', 1234, 15, 'Ice', false, 1);
INSERT INTO public.moon VALUES (16, 'Titania', 1234, 16, 'Ice', false, 1);
INSERT INTO public.moon VALUES (17, 'Despina', 1234, 17, 'Ice', false, 1);
INSERT INTO public.moon VALUES (18, 'Styx', 1234, 1123, 'Ice', false, 1);
INSERT INTO public.moon VALUES (19, 'Nix', 1234, 1124, 'Ice', false, 1);
INSERT INTO public.moon VALUES (20, 'Namaka', 1234, 12366, 'Ice', false, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'A very call and relaxing green planet, excelent for those who like exo planets', false, 23, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'A very call and relaxing green planet, excelent for those who like exo planets', false, 23, 2);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'A very call and relaxing green planet, excelent for those who like exo planets', false, 23, 3);
INSERT INTO public.planet VALUES (4, 'Saturn', 'A very call and relaxing green planet, excelent for those who like exo planets', false, 23, 4);
INSERT INTO public.planet VALUES (5, 'Uranus', 'A very call and relaxing green planet, excelent for those who like exo planets', false, 23, 5);
INSERT INTO public.planet VALUES (6, 'Neptune', 'A very call and relaxing green planet, excelent for those who like exo planets', false, 23, 6);
INSERT INTO public.planet VALUES (7, 'Pluto', 'A very call and relaxing green planet, excelent for those who like exo planets', false, 23, 7);
INSERT INTO public.planet VALUES (8, 'EaErisrth', 'A very call and relaxing green planet, excelent for those who like exo planets', false, 23, 8);
INSERT INTO public.planet VALUES (9, 'Haumea', 'A very call and relaxing green planet, excelent for those who like exo planets', false, 23, 9);
INSERT INTO public.planet VALUES (10, 'Makemake', 'A very call and relaxing green planet, excelent for those who like exo planets', false, 23, 1);
INSERT INTO public.planet VALUES (11, 'Brod', 'A very call and relaxing green planet, excelent for those who like exo planets', false, 23, 2);
INSERT INTO public.planet VALUES (12, 'Eris', 'A very call and relaxing green planet, excelent for those who like exo planets', false, 23, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'AEX2', 123456, 123456, 123456, 1);
INSERT INTO public.star VALUES (2, 'AEX1', 243456, 123456, 123456, 1);
INSERT INTO public.star VALUES (3, 'AEX0', 243400, 3456, 993456, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 243400, 3456, 993456, 1);
INSERT INTO public.star VALUES (5, 'Antares', 243400, 3456, 993456, 1);
INSERT INTO public.star VALUES (6, 'Deneb', 243400, 3456, 993456, 1);
INSERT INTO public.star VALUES (7, 'Epsolon', 243400, 3456, 993456, 1);
INSERT INTO public.star VALUES (8, 'Sun', 243400, 3456, 993456, 1);
INSERT INTO public.star VALUES (9, 'Brodgui', 243400, 3456, 993456, 1);


--
-- Name: constelation_constelation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constelation_constelation_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 3, true);


--
-- Name: constelation constelation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_name_key UNIQUE (name);


--
-- Name: constelation constelation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_pkey PRIMARY KEY (constelation_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_code_key UNIQUE (code);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

