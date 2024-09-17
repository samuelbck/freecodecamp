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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    distance_from_earth numeric(12,2),
    age_in_millions_of_years integer NOT NULL,
    is_spherical boolean NOT NULL
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
    description text,
    distance_from_earth numeric(12,2),
    age_in_millions_of_years integer NOT NULL,
    is_spherical boolean NOT NULL,
    planet_id integer
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
    description text,
    distance_from_earth numeric(12,2),
    age_in_millions_of_years integer NOT NULL,
    is_spherical boolean NOT NULL,
    star_id integer
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
    description text,
    distance_from_earth numeric(12,2),
    age_in_millions_of_years integer NOT NULL,
    is_spherical boolean NOT NULL,
    galaxy_id integer
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Sagittarius A*', 'Trou noir supermassif au centre de la Voie lactée');
INSERT INTO public.black_hole VALUES (2, 'Messier 87*', 'Trou noir supermassif dans la galaxie Messier 87');
INSERT INTO public.black_hole VALUES (3, 'Cygnus X-1', 'Trou noir stellaire dans la constellation du Cygne');
INSERT INTO public.black_hole VALUES (4, 'Hawking’s Black Hole', 'Hypothétique trou noir lié aux travaux de Stephen Hawking');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Voie lactée', 'La galaxie la plus observée', 0.00, 100, false);
INSERT INTO public.galaxy VALUES (2, 'Andromède', 'Une galaxie spirale massive', 2537000.00, 450, true);
INSERT INTO public.galaxy VALUES (3, 'Triangle', 'Petite galaxie spirale proche d''Andromède', 3000000.00, 200, true);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'Galaxie elliptique géante avec un trou noir massif', 53700000.00, 13000, true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Galaxie avec un large anneau de poussière', 29000000.00, 9800, true);
INSERT INTO public.galaxy VALUES (6, 'Sagittaire A', 'Galaxie abritant un trou noir supermassif', 26000.00, 13500, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lune', 'Satellite naturel de la Terre', 384400.00, 4500, true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Lune de Mars, la plus proche', 9377.00, 4500, true, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Lune plus petite de Mars', 23458.00, 4500, true, 2);
INSERT INTO public.moon VALUES (4, 'Io', 'Lune volcanique de Jupiter', 421800.00, 4600, true, 3);
INSERT INTO public.moon VALUES (5, 'Europa', 'Lune de Jupiter avec une surface glacée', 670900.00, 4600, true, 3);
INSERT INTO public.moon VALUES (6, 'Ganymède', 'Plus grande lune de Jupiter', 1070400.00, 4600, true, 3);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Lune de Jupiter avec de nombreux cratères', 1882700.00, 4600, true, 3);
INSERT INTO public.moon VALUES (8, 'Titan', 'Lune de Saturne avec une atmosphère dense', 1221700.00, 4500, true, 4);
INSERT INTO public.moon VALUES (9, 'Encelade', 'Lune de Saturne avec des geysers', 238000.00, 4500, true, 4);
INSERT INTO public.moon VALUES (10, 'Rhéa', 'Lune de Saturne avec un anneau fin', 527040.00, 4500, true, 4);
INSERT INTO public.moon VALUES (11, 'Iapetus', 'Lune de Saturne avec des contrastes de couleur', 3561300.00, 4500, true, 4);
INSERT INTO public.moon VALUES (12, 'Miranda', 'Lune d''Uranus avec une surface variée', 129000.00, 4600, true, 5);
INSERT INTO public.moon VALUES (13, 'Ariel', 'Lune d''Uranus avec des canyons', 191000.00, 4600, true, 5);
INSERT INTO public.moon VALUES (14, 'Umbriel', 'Lune d''Uranus avec une surface sombre', 266000.00, 4600, true, 5);
INSERT INTO public.moon VALUES (15, 'Titania', 'Plus grande lune d''Uranus', 435000.00, 4600, true, 5);
INSERT INTO public.moon VALUES (16, 'Oberon', 'Lune d''Uranus avec de nombreux cratères', 583000.00, 4600, true, 5);
INSERT INTO public.moon VALUES (17, 'Triton', 'Lune de Neptune avec des geysers', 354800.00, 4600, true, 6);
INSERT INTO public.moon VALUES (18, 'Néréide', 'Lune de Neptune avec une orbite très elliptique', 1176470.00, 4600, true, 6);
INSERT INTO public.moon VALUES (19, 'Charon', 'Lune de Pluton', 19500.00, 4600, true, 7);
INSERT INTO public.moon VALUES (20, 'Hydra', 'Lune de Pluton avec une surface sombre', 65200.00, 4600, true, 7);
INSERT INTO public.moon VALUES (21, 'Nix', 'Lune de Pluton avec une forme irrégulière', 48600.00, 4600, true, 7);
INSERT INTO public.moon VALUES (22, 'Styx', 'Lune de Pluton, la plus petite connue', 11400.00, 4600, true, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Terre', 'Notre planète, riche en vie', 0.00, 4500, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Planète rouge avec des caractéristiques géologiques intéressantes', 54.60, 4500, true, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'La plus grande planète de notre système solaire', 778.30, 4600, true, 1);
INSERT INTO public.planet VALUES (4, 'Saturne', 'Planète célèbre pour ses anneaux', 1427.00, 4500, true, 1);
INSERT INTO public.planet VALUES (5, 'Uranus', 'Planète inclinée sur le côté', 2871.00, 4600, true, 2);
INSERT INTO public.planet VALUES (6, 'Neptune', 'Planète bleue avec des vents violents', 4497.00, 4600, true, 2);
INSERT INTO public.planet VALUES (7, 'Kepler-22b', 'Exoplanète située dans la zone habitable de son étoile', 620.00, 4500, true, 3);
INSERT INTO public.planet VALUES (8, 'HD 209458 b', 'Exoplanète connue pour son atmosphère', 153.00, 4500, true, 4);
INSERT INTO public.planet VALUES (9, '55 Cancri e', 'Exoplanète riche en carbone', 41.00, 4500, true, 5);
INSERT INTO public.planet VALUES (10, 'TRAPPIST-1d', 'Exoplanète rocheuse dans le système TRAPPIST-1', 39.60, 4500, true, 6);
INSERT INTO public.planet VALUES (11, 'LHS 1140 b', 'Exoplanète potentiellement habitable', 40.00, 4500, true, 7);
INSERT INTO public.planet VALUES (12, 'Proxima b', 'Exoplanète située dans la zone habitable de Proxima Centauri', 4.24, 4500, true, 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Soleil', 'Notre étoile, source de lumière et de chaleur', 0.00, 4600, true, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'L''étoile la plus proche du système solaire', 4.24, 4500, true, 1);
INSERT INTO public.star VALUES (3, 'Sirius', 'La plus brillante étoile du ciel nocturne', 8.60, 230, true, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'Une étoile géante rouge dans la constellation d''Orion', 642.50, 100, true, 1);
INSERT INTO public.star VALUES (5, 'Aldebaran', 'Étoile géante rouge dans la constellation du Taureau', 65.00, 65, true, 1);
INSERT INTO public.star VALUES (6, 'Alpha Centauri A', 'Une étoile de type G semblable au Soleil', 4.37, 6000, true, 2);
INSERT INTO public.star VALUES (7, 'Vega', 'Étoile brillante de la constellation de la Lyre', 25.04, 455, true, 3);
INSERT INTO public.star VALUES (8, 'Altair', 'Étoile brillante de la constellation de l''Aigle', 16.73, 1000, true, 3);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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
-- Name: galaxy unique_name_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name_galaxy UNIQUE (name);


--
-- Name: moon unique_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name_moon UNIQUE (name);


--
-- Name: planet unique_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_planet UNIQUE (name);


--
-- Name: star unique_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_star UNIQUE (name);


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

