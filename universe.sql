--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: culture; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.culture (
    culture_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    is_bellicous boolean
);


ALTER TABLE public.culture OWNER TO freecodecamp;

--
-- Name: culture_culture_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.culture_culture_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.culture_culture_id_seq OWNER TO freecodecamp;

--
-- Name: culture_culture_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.culture_culture_id_seq OWNED BY public.culture.culture_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    coordinate character varying(8),
    description text,
    dimension numeric(10,2),
    habitable boolean NOT NULL
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
    name character varying(30) NOT NULL,
    dimension character varying(1),
    "position" integer,
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
    name character varying(30) NOT NULL,
    type character varying(2),
    "position" integer,
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
    name character varying(30) NOT NULL,
    type character varying(2),
    coordinate character varying(8),
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
-- Name: culture culture_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.culture ALTER COLUMN culture_id SET DEFAULT nextval('public.culture_culture_id_seq'::regclass);


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
-- Data for Name: culture; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.culture VALUES (1, 'Umanità', 3, NULL);
INSERT INTO public.culture VALUES (2, 'Fremen', 11, NULL);
INSERT INTO public.culture VALUES (3, 'Jedi', 10, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'QW34RT56', 'Lorem ipsum dolor sit amet, consectetur adisciping elit.', 3.00, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'PO12HJ90', 'Lorem ipsum dolor sit amet, consetetur adisciping elit.', 3.00, true);
INSERT INTO public.galaxy VALUES (3, 'Magellan Little Numb', 'TY78BV43', 'Lorem ipsum dolor sit amet, consetetur adisciping elit.', 1.00, false);
INSERT INTO public.galaxy VALUES (4, 'Magellan Great Numb', 'ZX01TC34', 'Lorem ipsum dolor sit amet, consetetur adisciping elit.', 1.00, false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'WK93BW12', 'Lorem ipsum dolor sit amet, consetetur adisciping elit.', 3.00, true);
INSERT INTO public.galaxy VALUES (6, 'Boote Void', 'ZZ99ZZ99', 'Lorem ipsum dolor sit amet, consetetur adisciping elit.', 4.00, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'M', 1, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'P', 1, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'P', 2, 4);
INSERT INTO public.moon VALUES (4, 'Io', 'P', 1, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'M', 2, 5);
INSERT INTO public.moon VALUES (6, 'Ganimede', 'M', 3, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'M', 4, 5);
INSERT INTO public.moon VALUES (8, 'Amaltea', 'p', 5, 5);
INSERT INTO public.moon VALUES (9, 'Himalia', 'p', 6, 5);
INSERT INTO public.moon VALUES (10, 'Elara', 'p', 7, 5);
INSERT INTO public.moon VALUES (11, 'Titano', 'M', 1, 6);
INSERT INTO public.moon VALUES (12, 'Encelado', 'P', 2, 6);
INSERT INTO public.moon VALUES (13, 'Teti', 'P', 3, 6);
INSERT INTO public.moon VALUES (14, 'Dione', 'P', 4, 6);
INSERT INTO public.moon VALUES (15, 'Rhea', 'P', 5, 6);
INSERT INTO public.moon VALUES (16, 'Mimas', 'P', 6, 6);
INSERT INTO public.moon VALUES (17, 'Titania', 'P', 1, 7);
INSERT INTO public.moon VALUES (18, 'Oberon', 'P', 2, 7);
INSERT INTO public.moon VALUES (19, 'Umbriel', 'P', 3, 7);
INSERT INTO public.moon VALUES (20, 'Ariel', 'P', 4, 7);
INSERT INTO public.moon VALUES (21, 'Miranda', 'P', 5, 7);
INSERT INTO public.moon VALUES (22, 'Tritone', 'M', 1, 8);
INSERT INTO public.moon VALUES (23, 'Proteo', 'P', 2, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', 'TP', 1, 1);
INSERT INTO public.planet VALUES (2, 'Venere', 'TM', 2, 1);
INSERT INTO public.planet VALUES (3, 'Terra', 'TM', 3, 1);
INSERT INTO public.planet VALUES (4, 'Marte', 'Tp', 4, 1);
INSERT INTO public.planet VALUES (5, 'Giove', 'GG', 5, 1);
INSERT INTO public.planet VALUES (6, 'Saturno', 'GG', 6, 1);
INSERT INTO public.planet VALUES (7, 'Urano', 'GG', 7, 1);
INSERT INTO public.planet VALUES (8, 'Nettuno', 'GG', 8, 1);
INSERT INTO public.planet VALUES (9, 'Alderaan', 'TM', 2, 4);
INSERT INTO public.planet VALUES (10, 'Corruscant', 'TM', 3, 6);
INSERT INTO public.planet VALUES (11, 'Arrakis', 'TM', 2, 2);
INSERT INTO public.planet VALUES (12, 'Nibiru', 'TM', 9, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sole', 'G2', 'ID34MN78', 1);
INSERT INTO public.star VALUES (2, 'Sirio A', 'A1', 'UY67KL90', 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'M1', 'TY89HJ56', 1);
INSERT INTO public.star VALUES (4, 'Rigel', 'B8', 'HJ20VC34', 1);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 'M5', 'RT35VB23', 1);
INSERT INTO public.star VALUES (6, 'Vega', 'A0', 'QK45KJ45', 1);
INSERT INTO public.star VALUES (7, 'Arturo', 'K1', 'JK63XB17', 1);
INSERT INTO public.star VALUES (8, 'Aldebaran', 'K5', 'AB12WZ89', 1);


--
-- Name: culture_culture_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.culture_culture_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: culture culture_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.culture
    ADD CONSTRAINT culture_pkey PRIMARY KEY (culture_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: star name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: culture name_culture; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.culture
    ADD CONSTRAINT name_culture UNIQUE (name);


--
-- Name: galaxy name_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_galaxy UNIQUE (name);


--
-- Name: moon name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name_moon UNIQUE (name);


--
-- Name: planet name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_planet UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: culture culture_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.culture
    ADD CONSTRAINT culture_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

