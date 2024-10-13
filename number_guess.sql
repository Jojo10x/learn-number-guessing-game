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
    games_played integer NOT NULL,
    best_game integer NOT NULL
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

INSERT INTO public.users VALUES (2, 'user_1728776796894', 2, 621);
INSERT INTO public.users VALUES (1, 'user_1728776796895', 5, 206);
INSERT INTO public.users VALUES (18, 'user_1728777957831', 2, 2);
INSERT INTO public.users VALUES (4, 'user_1728777440043', 2, 580);
INSERT INTO public.users VALUES (17, 'user_1728777957832', 5, 254);
INSERT INTO public.users VALUES (3, 'user_1728777440044', 5, 187);
INSERT INTO public.users VALUES (38, 'user_1728778788443', 2, 283);
INSERT INTO public.users VALUES (6, 'user_1728777447392', 2, 9);
INSERT INTO public.users VALUES (20, 'user_1728778302514', 2, 3);
INSERT INTO public.users VALUES (5, 'user_1728777447393', 5, 226);
INSERT INTO public.users VALUES (37, 'user_1728778788444', 5, 103);
INSERT INTO public.users VALUES (19, 'user_1728778302515', 5, 5);
INSERT INTO public.users VALUES (8, 'user_1728777508917', 2, 186);
INSERT INTO public.users VALUES (7, 'user_1728777508918', 5, 393);
INSERT INTO public.users VALUES (10, 'user_1728777511608', 2, 401);
INSERT INTO public.users VALUES (22, 'user_1728778305433', 2, 720);
INSERT INTO public.users VALUES (9, 'user_1728777511609', 5, 70);
INSERT INTO public.users VALUES (40, 'user_1728778818257', 2, 267);
INSERT INTO public.users VALUES (21, 'user_1728778305434', 5, 476);
INSERT INTO public.users VALUES (12, 'user_1728777518977', 2, 72);
INSERT INTO public.users VALUES (11, 'user_1728777518978', 5, 230);
INSERT INTO public.users VALUES (39, 'user_1728778818258', 5, 116);
INSERT INTO public.users VALUES (24, 'user_1728778492649', 2, 150);
INSERT INTO public.users VALUES (14, 'user_1728777598930', 2, 797);
INSERT INTO public.users VALUES (13, 'user_1728777598931', 5, 83);
INSERT INTO public.users VALUES (23, 'user_1728778492650', 5, 238);
INSERT INTO public.users VALUES (16, 'user_1728777810619', 2, 884);
INSERT INTO public.users VALUES (15, 'user_1728777810620', 5, 119);
INSERT INTO public.users VALUES (26, 'user_1728778684254', 2, 146);
INSERT INTO public.users VALUES (42, 'user_1728778845049', 2, 454);
INSERT INTO public.users VALUES (25, 'user_1728778684255', 5, 116);
INSERT INTO public.users VALUES (41, 'user_1728778845050', 5, 299);
INSERT INTO public.users VALUES (28, 'user_1728778729272', 2, 381);
INSERT INTO public.users VALUES (27, 'user_1728778729273', 5, 21);
INSERT INTO public.users VALUES (44, 'user_1728778981933', 2, 754);
INSERT INTO public.users VALUES (30, 'user_1728778748127', 2, 543);
INSERT INTO public.users VALUES (29, 'user_1728778748128', 5, 539);
INSERT INTO public.users VALUES (43, 'user_1728778981934', 5, 229);
INSERT INTO public.users VALUES (32, 'user_1728778750391', 2, 405);
INSERT INTO public.users VALUES (31, 'user_1728778750392', 5, 334);
INSERT INTO public.users VALUES (46, 'user_1728779049209', 2, 246);
INSERT INTO public.users VALUES (34, 'user_1728778752426', 2, 77);
INSERT INTO public.users VALUES (45, 'user_1728779049210', 5, 358);
INSERT INTO public.users VALUES (33, 'user_1728778752427', 5, 27);
INSERT INTO public.users VALUES (36, 'user_1728778754294', 2, 113);
INSERT INTO public.users VALUES (35, 'user_1728778754295', 5, 105);
INSERT INTO public.users VALUES (48, 'user_1728779427329', 2, 802);
INSERT INTO public.users VALUES (47, 'user_1728779427330', 5, 29);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 48, true);


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

