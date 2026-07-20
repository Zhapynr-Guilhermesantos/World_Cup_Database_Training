--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (53, 2018, 'Final', 4, 2, 35, 32);
INSERT INTO public.games VALUES (54, 2018, 'Third Place', 2, 0, 27, 34);
INSERT INTO public.games VALUES (55, 2018, 'Semi-Final', 2, 1, 32, 34);
INSERT INTO public.games VALUES (56, 2018, 'Semi-Final', 1, 0, 35, 27);
INSERT INTO public.games VALUES (57, 2018, 'Quarter-Final', 3, 2, 32, 43);
INSERT INTO public.games VALUES (58, 2018, 'Quarter-Final', 2, 0, 34, 45);
INSERT INTO public.games VALUES (59, 2018, 'Quarter-Final', 2, 1, 27, 28);
INSERT INTO public.games VALUES (60, 2018, 'Quarter-Final', 2, 0, 35, 48);
INSERT INTO public.games VALUES (61, 2018, 'Eighth-Final', 2, 1, 34, 30);
INSERT INTO public.games VALUES (62, 2018, 'Eighth-Final', 1, 0, 45, 46);
INSERT INTO public.games VALUES (63, 2018, 'Eighth-Final', 3, 2, 27, 38);
INSERT INTO public.games VALUES (64, 2018, 'Eighth-Final', 2, 0, 28, 39);
INSERT INTO public.games VALUES (65, 2018, 'Eighth-Final', 2, 1, 32, 33);
INSERT INTO public.games VALUES (66, 2018, 'Eighth-Final', 2, 1, 43, 44);
INSERT INTO public.games VALUES (67, 2018, 'Eighth-Final', 2, 1, 48, 42);
INSERT INTO public.games VALUES (68, 2018, 'Eighth-Final', 4, 3, 35, 26);
INSERT INTO public.games VALUES (69, 2014, 'Final', 1, 0, 36, 26);
INSERT INTO public.games VALUES (70, 2014, 'Third Place', 3, 0, 40, 28);
INSERT INTO public.games VALUES (71, 2014, 'Semi-Final', 1, 0, 26, 40);
INSERT INTO public.games VALUES (72, 2014, 'Semi-Final', 7, 1, 36, 28);
INSERT INTO public.games VALUES (73, 2014, 'Quarter-Final', 1, 0, 40, 31);
INSERT INTO public.games VALUES (74, 2014, 'Quarter-Final', 1, 0, 26, 27);
INSERT INTO public.games VALUES (75, 2014, 'Quarter-Final', 2, 1, 28, 30);
INSERT INTO public.games VALUES (76, 2014, 'Quarter-Final', 1, 0, 36, 35);
INSERT INTO public.games VALUES (77, 2014, 'Eighth-Final', 2, 1, 28, 29);
INSERT INTO public.games VALUES (78, 2014, 'Eighth-Final', 2, 0, 30, 48);
INSERT INTO public.games VALUES (79, 2014, 'Eighth-Final', 2, 0, 35, 41);
INSERT INTO public.games VALUES (80, 2014, 'Eighth-Final', 2, 1, 36, 25);
INSERT INTO public.games VALUES (81, 2014, 'Eighth-Final', 2, 1, 40, 39);
INSERT INTO public.games VALUES (82, 2014, 'Eighth-Final', 2, 1, 31, 37);
INSERT INTO public.games VALUES (83, 2014, 'Eighth-Final', 1, 0, 26, 46);
INSERT INTO public.games VALUES (84, 2014, 'Eighth-Final', 2, 1, 27, 47);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (25, 'Algeria');
INSERT INTO public.teams VALUES (26, 'Argentina');
INSERT INTO public.teams VALUES (27, 'Belgium');
INSERT INTO public.teams VALUES (28, 'Brazil');
INSERT INTO public.teams VALUES (29, 'Chile');
INSERT INTO public.teams VALUES (30, 'Colombia');
INSERT INTO public.teams VALUES (31, 'Costa Rica');
INSERT INTO public.teams VALUES (32, 'Croatia');
INSERT INTO public.teams VALUES (33, 'Denmark');
INSERT INTO public.teams VALUES (34, 'England');
INSERT INTO public.teams VALUES (35, 'France');
INSERT INTO public.teams VALUES (36, 'Germany');
INSERT INTO public.teams VALUES (37, 'Greece');
INSERT INTO public.teams VALUES (38, 'Japan');
INSERT INTO public.teams VALUES (39, 'Mexico');
INSERT INTO public.teams VALUES (40, 'Netherlands');
INSERT INTO public.teams VALUES (41, 'Nigeria');
INSERT INTO public.teams VALUES (42, 'Portugal');
INSERT INTO public.teams VALUES (43, 'Russia');
INSERT INTO public.teams VALUES (44, 'Spain');
INSERT INTO public.teams VALUES (45, 'Sweden');
INSERT INTO public.teams VALUES (46, 'Switzerland');
INSERT INTO public.teams VALUES (47, 'United States');
INSERT INTO public.teams VALUES (48, 'Uruguay');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 84, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 48, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

