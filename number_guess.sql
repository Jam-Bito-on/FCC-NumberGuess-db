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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (17, 'user_1739198658706', 5, 113);
INSERT INTO public.users VALUES (2, 'user_1739197672136', 2, 874);
INSERT INTO public.users VALUES (1, 'user_1739197672137', 5, 359);
INSERT INTO public.users VALUES (20, 'user_1739198661438', 2, 205);
INSERT INTO public.users VALUES (4, 'user_1739198116279', 2, 154);
INSERT INTO public.users VALUES (3, 'user_1739198116280', 5, 317);
INSERT INTO public.users VALUES (19, 'user_1739198661439', 5, 34);
INSERT INTO public.users VALUES (6, 'user_1739198172634', 2, 123);
INSERT INTO public.users VALUES (5, 'user_1739198172635', 5, 112);
INSERT INTO public.users VALUES (22, 'user_1739198680339', 2, 755);
INSERT INTO public.users VALUES (8, 'user_1739198246955', 2, 171);
INSERT INTO public.users VALUES (21, 'user_1739198680340', 5, 217);
INSERT INTO public.users VALUES (7, 'user_1739198246956', 5, 208);
INSERT INTO public.users VALUES (10, 'user_1739198261735', 2, 364);
INSERT INTO public.users VALUES (9, 'user_1739198261736', 5, 20);
INSERT INTO public.users VALUES (12, 'user_1739198270648', 2, 197);
INSERT INTO public.users VALUES (11, 'user_1739198270649', 5, 68);
INSERT INTO public.users VALUES (14, 'user_1739198614796', 2, 106);
INSERT INTO public.users VALUES (13, 'user_1739198614797', 5, 530);
INSERT INTO public.users VALUES (16, 'user_1739198617458', 2, 268);
INSERT INTO public.users VALUES (15, 'user_1739198617459', 5, 62);
INSERT INTO public.users VALUES (18, 'user_1739198658705', 2, 80);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 22, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

