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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    is_spherical boolean,
    age integer NOT NULL
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
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    age integer NOT NULL
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
    star_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    has_life boolean,
    age integer NOT NULL
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
-- Name: random_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.random_table (
    name character varying,
    age integer NOT NULL,
    random_table_id integer NOT NULL
);


ALTER TABLE public.random_table OWNER TO freecodecamp;

--
-- Name: random_table_random_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.random_table_random_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.random_table_random_table_id_seq OWNER TO freecodecamp;

--
-- Name: random_table_random_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.random_table_random_table_id_seq OWNED BY public.random_table.random_table_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    distance_from_earth numeric,
    age integer NOT NULL
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
-- Name: random_table random_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random_table ALTER COLUMN random_table_id SET DEFAULT nextval('public.random_table_random_table_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', NULL, true, 25);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, true, 19);
INSERT INTO public.galaxy VALUES (3, 'galaxy1', NULL, true, 19);
INSERT INTO public.galaxy VALUES (4, 'galaxy2', NULL, true, 19);
INSERT INTO public.galaxy VALUES (5, 'galaxy3', NULL, true, 19);
INSERT INTO public.galaxy VALUES (6, 'galaxy4', NULL, true, 19);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 3, 'moon', NULL, 100);
INSERT INTO public.moon VALUES (2, 12, 'moon1', NULL, 100);
INSERT INTO public.moon VALUES (3, 12, 'moon2', NULL, 100);
INSERT INTO public.moon VALUES (4, 12, 'moon3', NULL, 100);
INSERT INTO public.moon VALUES (5, 12, 'moon4', NULL, 100);
INSERT INTO public.moon VALUES (6, 12, 'moon5', NULL, 100);
INSERT INTO public.moon VALUES (7, 12, 'moon6', NULL, 100);
INSERT INTO public.moon VALUES (8, 12, 'moon7', NULL, 100);
INSERT INTO public.moon VALUES (9, 12, 'moon8', NULL, 100);
INSERT INTO public.moon VALUES (10, 12, 'moon9', NULL, 100);
INSERT INTO public.moon VALUES (11, 12, 'moon10', NULL, 100);
INSERT INTO public.moon VALUES (12, 12, 'moon11', NULL, 100);
INSERT INTO public.moon VALUES (13, 12, 'moon12', NULL, 100);
INSERT INTO public.moon VALUES (14, 12, 'moon13', NULL, 100);
INSERT INTO public.moon VALUES (15, 12, 'moon14', NULL, 100);
INSERT INTO public.moon VALUES (16, 12, 'moon15', NULL, 100);
INSERT INTO public.moon VALUES (17, 12, 'moon16', NULL, 100);
INSERT INTO public.moon VALUES (18, 12, 'moon17', NULL, 100);
INSERT INTO public.moon VALUES (19, 12, 'moon18', NULL, 100);
INSERT INTO public.moon VALUES (20, 12, 'moon19', NULL, 100);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'mercury', NULL, NULL, 100);
INSERT INTO public.planet VALUES (2, 1, 'venus', NULL, NULL, 100);
INSERT INTO public.planet VALUES (3, 1, 'earth', NULL, NULL, 100);
INSERT INTO public.planet VALUES (4, 1, 'mars', NULL, NULL, 100);
INSERT INTO public.planet VALUES (5, 1, 'jupiter', NULL, NULL, 100);
INSERT INTO public.planet VALUES (6, 1, 'saturn', NULL, NULL, 100);
INSERT INTO public.planet VALUES (7, 1, 'uranus', NULL, NULL, 100);
INSERT INTO public.planet VALUES (8, 1, 'neptun', NULL, NULL, 100);
INSERT INTO public.planet VALUES (9, 1, 'pluto', NULL, NULL, 100);
INSERT INTO public.planet VALUES (10, 1, 'planet1', NULL, NULL, 100);
INSERT INTO public.planet VALUES (11, 2, 'planet2', NULL, NULL, 100);
INSERT INTO public.planet VALUES (12, 2, 'planet3', NULL, NULL, 100);
INSERT INTO public.planet VALUES (13, 2, 'planet4', NULL, NULL, 100);
INSERT INTO public.planet VALUES (14, 2, 'planet5', NULL, NULL, 100);


--
-- Data for Name: random_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.random_table VALUES ('qql coisa', 1, 1);
INSERT INTO public.random_table VALUES ('qql coisa2', 1, 2);
INSERT INTO public.random_table VALUES ('qql coisa3', 1, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sun', NULL, NULL, 100);
INSERT INTO public.star VALUES (2, 1, 'star1', NULL, NULL, 100);
INSERT INTO public.star VALUES (3, 2, 'star2', NULL, NULL, 100);
INSERT INTO public.star VALUES (4, 2, 'star3', NULL, NULL, 100);
INSERT INTO public.star VALUES (5, 2, 'star4', NULL, NULL, 100);
INSERT INTO public.star VALUES (6, 2, 'star5', NULL, NULL, 100);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: random_table_random_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.random_table_random_table_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


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
-- Name: random_table random_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random_table
    ADD CONSTRAINT random_table_name_key UNIQUE (name);


--
-- Name: random_table random_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random_table
    ADD CONSTRAINT random_table_pkey PRIMARY KEY (random_table_id);


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

