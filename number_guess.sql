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
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1686351133539', 2, 652);
INSERT INTO public.users VALUES ('user_1686351977627', 2, 682);
INSERT INTO public.users VALUES ('user_1686351133540', 5, 137);
INSERT INTO public.users VALUES ('user_1686351977628', 5, 50);
INSERT INTO public.users VALUES ('user_1686351142460', 2, 261);
INSERT INTO public.users VALUES ('user_1686351142461', 5, 291);
INSERT INTO public.users VALUES ('user_1686351472962', 2, 224);
INSERT INTO public.users VALUES ('user_1686351996058', 2, 143);
INSERT INTO public.users VALUES ('user_1686351472963', 5, 194);
INSERT INTO public.users VALUES ('user_1686351996059', 5, 26);
INSERT INTO public.users VALUES ('user_1686351583684', 2, 525);
INSERT INTO public.users VALUES ('user_1686351583685', 5, 38);
INSERT INTO public.users VALUES ('Dom', 3, 0);
INSERT INTO public.users VALUES ('user_1686352025291', 2, 319);
INSERT INTO public.users VALUES ('user_1686351603215', 2, 583);
INSERT INTO public.users VALUES ('user_1686352025292', 5, 101);
INSERT INTO public.users VALUES ('user_1686351603216', 5, 166);
INSERT INTO public.users VALUES ('user_1686351679772', 2, 222);
INSERT INTO public.users VALUES ('user_1686351679773', 5, 209);
INSERT INTO public.users VALUES ('user_1686352378741', 2, 363);
INSERT INTO public.users VALUES ('user_1686351692790', 2, 317);
INSERT INTO public.users VALUES ('user_1686352378742', 5, 279);
INSERT INTO public.users VALUES ('user_1686351692791', 5, 162);
INSERT INTO public.users VALUES ('user_1686352422190', 2, 178);
INSERT INTO public.users VALUES ('user_1686352422191', 5, 284);
INSERT INTO public.users VALUES ('user_1686352434652', 2, 266);
INSERT INTO public.users VALUES ('user_1686352434653', 5, 496);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- PostgreSQL database dump complete
--

