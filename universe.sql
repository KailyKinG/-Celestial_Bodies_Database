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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    is_spherical boolean NOT NULL,
    age integer NOT NULL,
    size numeric(4,1) NOT NULL,
    universe_id integer NOT NULL
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
    name character varying(50) NOT NULL,
    description text NOT NULL,
    is_spherical boolean NOT NULL,
    age integer NOT NULL,
    size numeric(4,1) NOT NULL,
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
    name character varying(50) NOT NULL,
    description text NOT NULL,
    is_spherical boolean NOT NULL,
    age integer NOT NULL,
    size numeric(4,1) NOT NULL,
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
    name character varying(50) NOT NULL,
    description text NOT NULL,
    is_spherical boolean NOT NULL,
    age integer NOT NULL,
    size numeric(4,1) NOT NULL,
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
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    universe_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    god_of_destruction character varying(20) NOT NULL,
    angel character varying(20) NOT NULL,
    supreme_kai character varying(20) NOT NULL,
    average_power_level numeric(10,2) NOT NULL,
    participated_in_tournament boolean NOT NULL,
    is_destroyed boolean NOT NULL,
    total_ranking integer
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_universe_id_seq OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_universe_id_seq OWNED BY public.universe.universe_id;


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
-- Name: universe universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe ALTER COLUMN universe_id SET DEFAULT nextval('public.universe_universe_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxia Amor', 'Una galaxia dominada por mujeres, donde se valora la belleza, el amor y la cooperación.', true, 12000, 800.0, 2);
INSERT INTO public.galaxy VALUES (2, 'Galaxia Megas', 'Una galaxia tecnológicamente avanzada, hogar de guerreros cibernéticos como Anilaza y sus aliados.', false, 13000, 900.0, 3);
INSERT INTO public.galaxy VALUES (3, 'Galaxia Tempus', 'Una galaxia donde el tiempo es un recurso sagrado, y los habitantes valoran la eficiencia en todas sus actividades.', true, 11000, 750.0, 4);
INSERT INTO public.galaxy VALUES (4, 'Galaxia Equilibrio', 'Una galaxia equilibrada entre bondad y maldad, similar a la Galaxia del Universo 7, pero más ordenada.', true, 12500, 850.0, 6);
INSERT INTO public.galaxy VALUES (5, 'Via Lactea', 'La galaxia principal del Universo 7, hogar de planetas icónicos como la Tierra y Vegeta.', true, 13000, 999.9, 7);
INSERT INTO public.galaxy VALUES (6, 'Galaxia Justicia', 'Una galaxia donde la ley y la justicia son supremas, aunque a veces se aplican de manera extrema.', false, 10000, 600.0, 9);
INSERT INTO public.galaxy VALUES (7, 'Galaxia Vacío', 'Una galaxia minimalista y espiritual, donde los habitantes buscan la paz interior y evitan el conflicto.', true, 11500, 700.0, 10);
INSERT INTO public.galaxy VALUES (8, 'Galaxia Absoluta', 'Una galaxia donde los héroes mantienen un estricto código moral y luchan por la justicia absoluta.', true, 12800, 950.0, 11);
INSERT INTO public.galaxy VALUES (9, 'Galaxia Fría', 'Una galaxia dominada por climas extremadamente fríos, donde los planetas están cubiertos de hielo y nieve. Es hogar de especies adaptadas a condiciones gélidas.', true, 9000, 700.0, 6);
INSERT INTO public.galaxy VALUES (10, 'Galaxia Vegeta', 'Una galaxia conocida por su alta concentración de planetas habitados por razas guerreras. Fue el hogar de los Saiyajins antes de la destrucción de su planeta natal.', true, 12000, 950.0, 7);
INSERT INTO public.galaxy VALUES (11, 'Galaxia Jiren', 'Una galaxia misteriosa y desolada, conocida por su baja densidad de planetas habitables. Es un lugar donde solo los más fuertes sobreviven, y es hogar de guerreros legendarios como Jiren.', true, 11000, 800.0, 11);
INSERT INTO public.galaxy VALUES (12, 'Galaxia Namek', 'Una galaxia pacífica y llena de vida, conocida por sus planetas ricos en recursos naturales y su conexión espiritual con los Namekusei.', true, 9000, 600.0, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna Rosada', 'Una luna romántica y brillante que ilumina el Planet Lovely, simbolizando el amor y la belleza que definen a sus habitantes.', true, 5000, 2.0, 1);
INSERT INTO public.moon VALUES (2, 'Luna Cibernética', 'Una luna artificial que orbita el Planet Machine, utilizada como estación de reparación y almacenamiento de tecnología avanzada.', false, 7000, 3.0, 2);
INSERT INTO public.moon VALUES (3, 'Luna del Engaño', 'Una luna misteriosa que refleja la luz de manera irregular, utilizada por los habitantes del Planet Gamisaras para practicar tácticas de engaño.', true, 6000, 2.5, 3);
INSERT INTO public.moon VALUES (4, 'Luna Saiyajin', 'Una luna rocosa y dura, utilizada por los Saiyajins del Universo 6 como campo de entrenamiento para mejorar sus habilidades de combate.', true, 8000, 4.0, 4);
INSERT INTO public.moon VALUES (5, 'Luna Helada', 'Una luna cubierta de hielo perpetuo, que refleja la luz de la Estrella Gélida de manera espectacular.', true, 7500, 3.5, 5);
INSERT INTO public.moon VALUES (6, 'Luna Namek', 'Una luna pequeña y tranquila que orbita el Planet Namek, considerada sagrada por los Namekusei.', true, 5000, 2.2, 6);
INSERT INTO public.moon VALUES (7, 'Luna', 'La única luna natural de la Tierra, conocida por su influencia en las mareas y por ser el lugar donde Goku se transformó por primera vez en un Gran Simio.', true, 4500, 3.5, 7);
INSERT INTO public.moon VALUES (8, 'Luna Vegeta', 'Una luna rocosa y desolada que orbitaba el Planet Vegeta, crucial para las transformaciones de los Saiyajins en Grandes Simios.', true, 10000, 5.0, 8);
INSERT INTO public.moon VALUES (9, 'Ío', 'La luna más volcánica del sistema solar, con una superficie cubierta de azufre y actividad geológica extrema.', true, 4500, 3.6, 13);
INSERT INTO public.moon VALUES (10, 'Europa', 'Una luna cubierta de hielo con un océano subsuperficial que podría albergar vida. Es uno de los lugares más prometedores para la exploración astrobiológica.', true, 4500, 3.1, 13);
INSERT INTO public.moon VALUES (11, 'Ganímedes', 'La luna más grande del sistema solar, incluso más grande que el planeta Mercurio. Tiene su propio campo magnético y un océano subterráneo.', true, 4500, 5.3, 13);
INSERT INTO public.moon VALUES (12, 'Calisto', 'Una luna antigua y llena de cráteres, con una superficie que muestra la historia de impactos más antigua del sistema solar.', true, 4500, 4.8, 13);
INSERT INTO public.moon VALUES (13, 'Amaltea', 'Una luna irregular y rojiza, compuesta principalmente de hielo y roca. Es una de las lunas más cercanas a Júpiter.', false, 4500, 0.2, 13);
INSERT INTO public.moon VALUES (14, 'Himalia', 'La luna más grande del grupo de lunas irregulares de Júpiter, con una órbita distante y una superficie oscura.', false, 4500, 0.2, 13);
INSERT INTO public.moon VALUES (15, 'Tebe', 'Una luna pequeña y oscura, con una superficie llena de cráteres y una órbita cercana a Júpiter.', false, 4500, 0.1, 13);
INSERT INTO public.moon VALUES (16, 'Metis', 'La luna más interna de Júpiter, con una órbita extremadamente cercana al planeta. Es pequeña y de forma irregular.', false, 4500, 0.1, 13);
INSERT INTO public.moon VALUES (17, 'Luna del Caos', 'Una luna inestable y llena de cráteres, que refleja el caos y los conflictos del Planet Chappil.', true, 3000, 1.8, 9);
INSERT INTO public.moon VALUES (18, 'Luna Justa', 'Una luna perfectamente esférica y ordenada, que simboliza la justicia y el equilibrio del Planet Zoon.', true, 4000, 2.0, 10);
INSERT INTO public.moon VALUES (19, 'Luna del Orgullo', 'Una luna brillante y majestuosa que ilumina el Planet Pride, representando el orgullo y la justicia de los Pride Troopers.', true, 9000, 6.0, 11);
INSERT INTO public.moon VALUES (20, 'Luna del Poder', 'Una luna desolada y misteriosa, que orbita el Planet Jiren y refleja la fuerza y determinación de su habitante más poderoso.', true, 10000, 4.5, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet Lovely', 'Descripción: Un planeta habitado por las Magical Girls, donde el amor y la belleza son los pilares de su sociedad.', true, 5000, 10.0, 1);
INSERT INTO public.planet VALUES (2, 'Planet Machine', 'Un planeta completamente tecnológico, hogar de los guerreros cibernéticos como Anilaza y Nigrisshi.', false, 7000, 15.0, 2);
INSERT INTO public.planet VALUES (3, 'Planet Gamisaras', 'Un planeta donde el engaño y la estrategia son fundamentales, hogar de luchadores como Gamisaras y Damom.', true, 6000, 12.0, 3);
INSERT INTO public.planet VALUES (4, 'Planet Sadala', 'El planeta natal de los Saiyajins del Universo 6, hogar de Cabba y otros guerreros poderosos.', true, 8000, 20.0, 4);
INSERT INTO public.planet VALUES (5, 'Planet Frost', 'Un planeta helado gobernado por Frost, un líder astuto y engañoso.', true, 7500, 18.0, 9);
INSERT INTO public.planet VALUES (6, 'Planet Namek', 'El planeta natal de los Namekusei en el Universo 6, un mundo lleno de naturaleza, con un clima tropical y una sociedad pacífica. Es conocido por sus habitantes sabios y su conexión con las Dragon Balls.', true, 5000, 15.0, 10);
INSERT INTO public.planet VALUES (7, 'Tierra', 'Hogar de Goku, Vegeta y los Guerreros Z, un planeta lleno de diversidad y poder.', true, 4500, 12.7, 5);
INSERT INTO public.planet VALUES (8, 'Planet Vegeta', 'El planeta natal de los Saiyajins, destruido en el pasado por Freezer.', true, 10000, 25.0, 11);
INSERT INTO public.planet VALUES (9, 'Planet Chappil', 'Un planeta caótico y lleno de conflictos, hogar de los Trio de Danger (Lavender, Basil y Bergamo).', true, 3000, 8.0, 6);
INSERT INTO public.planet VALUES (10, 'Planet Zoon', 'Un planeta donde la justicia y el orden son primordiales, hogar de luchadores como Murichim y Napapa.', true, 4000, 10.5, 7);
INSERT INTO public.planet VALUES (11, 'Planet Pride', 'El planeta central de los Pride Troopers, donde la justicia y el orgullo son los valores supremos.', true, 9000, 30.0, 8);
INSERT INTO public.planet VALUES (12, 'Planet Jiren', 'Un planeta desolado y misterioso, hogar de Jiren, el guerrero más poderoso del Universo 11.', true, 10000, 22.0, 12);
INSERT INTO public.planet VALUES (13, 'Júpiter', 'El planeta más grande del sistema solar, conocido por su atmósfera turbulenta, sus tormentas gigantes (como la Gran Mancha Roja) y su gran cantidad de lunas. Es un gigante gaseoso sin superficie sólida.', true, 4500, 139.8, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Estrella del Amor', 'Un sol radiante que ilumina la Galaxia Amor, simbolizando la belleza y el afecto que caracterizan a este lugar.', true, 12000, 800.0, 1);
INSERT INTO public.star VALUES (2, 'Sol Megas', 'Una estrella energética que alimenta la tecnología avanzada de la Galaxia Megas, siendo el núcleo de sus sistemas', false, 13000, 900.0, 2);
INSERT INTO public.star VALUES (3, 'Estrella Tempus', 'Un sol que marca el ritmo del tiempo en la Galaxia Tempus, venerado por sus habitantes como un recurso sagrado.', true, 11000, 750.0, 3);
INSERT INTO public.star VALUES (4, 'Sol del Equilibrio', 'Una estrella que brilla con igual intensidad en la Galaxia Equilibrio, representando el balance entre luz y oscuridad.', true, 12500, 850.0, 4);
INSERT INTO public.star VALUES (5, 'Sol Tierra', 'El sol que ilumina la Vía Láctea, hogar de la Tierra y otros planetas icónicos del Universo 7.', true, 13000, 999.9, 5);
INSERT INTO public.star VALUES (6, 'Estrella de la Justicia', 'Un sol implacable que ilumina la Galaxia Justicia, reflejando la rigidez y el orden extremo de sus habitantes.', false, 10000, 600.0, 6);
INSERT INTO public.star VALUES (7, 'Sol Vacío', 'Una estrella serena que ilumina la Galaxia Vacío, simbolizando la paz interior y la espiritualidad de sus habitantes.', true, 11500, 700.0, 7);
INSERT INTO public.star VALUES (8, 'Estrella Absoluta', 'Un sol brillante y poderoso que ilumina la Galaxia Absoluta, representando la justicia y el orgullo de los Pride Troopers.', true, 12800, 950.0, 8);
INSERT INTO public.star VALUES (9, 'Estrella Gélida', 'Una estrella fría y tenue que emite una luz azulada, proporcionando energía limitada pero suficiente para mantener la vida en los planetas de la Galaxia Fría.', true, 8500, 1.5, 9);
INSERT INTO public.star VALUES (10, 'Estrella Namek', 'Una estrella brillante y estable que proporciona energía vital a los planetas de la Galaxia Namek, incluyendo el Planet Namek.', true, 8500, 1.8, 12);
INSERT INTO public.star VALUES (11, 'Estrella Saiyajin', 'Una estrella masiva y brillante que iluminaba el sistema solar donde se encontraba el Planet Vegeta. Simboliza el poder y la resistencia de los Saiyajins.', true, 11000, 2.0, 10);
INSERT INTO public.star VALUES (12, 'Estrella del Poder', 'Una estrella gigante y luminosa que emite una energía única, simbolizando la fuerza y la determinación de los guerreros que habitan en su sistema.', true, 10500, 2.5, 11);


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES (1, 'Universo de la Prosperidad', 'Un universo altamente desarrollado y próspero.', 'Iwan', 'Awamo', 'Anato', 7000.00, false, false, NULL);
INSERT INTO public.universe VALUES (2, 'Universo del Amor', 'Un universo donde el amor y la belleza son valores fundamentales.', 'Heles', 'Sour', 'Pell', 4500.00, true, true, 6);
INSERT INTO public.universe VALUES (3, 'Universo de la Tecnología', 'Un universo donde la tecnología ha alcanzado niveles asombrosos.', 'Mosco', 'Campari', 'Eyre', 5000.00, true, true, 5);
INSERT INTO public.universe VALUES (4, 'Universo de la Estrategia', 'Un universo conocido por sus tácticas y engaños en combate.', 'Quitela', 'Cognac', 'Kuru', 4000.00, true, true, 4);
INSERT INTO public.universe VALUES (5, 'Universo de la Sabiduría', 'Un universo donde el conocimiento y la sabiduría son prioritarios.', 'Arak', 'Cukatail', 'Ogma', 6000.00, false, false, NULL);
INSERT INTO public.universe VALUES (6, 'Universo Gemelo', 'Un universo gemelo del Universo 7, con muchas similitudes pero también diferencias notables.', 'Champa', 'Vados', 'Fuwa', 5500.00, true, true, 3);
INSERT INTO public.universe VALUES (7, 'Universo de la Tierra', 'Hogar de Goku, Vegeta y los Guerreros Z.', 'Bills', 'Whis', 'Shin', 3000.00, true, false, 1);
INSERT INTO public.universe VALUES (8, 'Universo de la Armonía', 'Un universo donde la armonía y el equilibrio son fundamentales.', 'Liquiir', 'Korn', 'Iru', 6500.00, false, false, NULL);
INSERT INTO public.universe VALUES (9, 'Universo del Caos', 'Un universo caótico y lleno de conflictos.', 'Sidra', 'Mojito', 'Roh', 2000.00, true, true, 8);
INSERT INTO public.universe VALUES (10, 'Universo de la Justicia', 'Un universo donde la justicia y el orden son valores primordiales.', 'Rumsshi', 'Kusu', 'Gowasu', 3500.00, true, true, 7);
INSERT INTO public.universe VALUES (11, 'Universo de la Justicia y el Orgullo', 'Hogar de los Pride Troopers y Jiren, el guerrero más poderoso.', 'Belmod', 'Marcarita', 'Khai', 8000.00, true, true, 2);
INSERT INTO public.universe VALUES (12, 'Universo Arcano', 'Uno de los universos con alto nivel de desarrollo y mortalidad, exento de participar en el Torneo del Poder.', 'Geene', 'Giin', 'No mencionado.', 7500.00, false, false, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 4, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: universe_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_universe_id_seq', 12, true);


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
-- Name: universe universe_angel_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_angel_key UNIQUE (angel);


--
-- Name: universe universe_god_of_destruction_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_god_of_destruction_key UNIQUE (god_of_destruction);


--
-- Name: universe universe_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_name_key UNIQUE (name);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


--
-- Name: universe universe_supreme_kai_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_supreme_kai_key UNIQUE (supreme_kai);


--
-- Name: galaxy galaxy_universe_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_universe_id_fkey FOREIGN KEY (universe_id) REFERENCES public.universe(universe_id);


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

