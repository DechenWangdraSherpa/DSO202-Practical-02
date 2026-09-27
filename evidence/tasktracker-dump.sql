--
-- PostgreSQL database dump
--

\restrict fwU4Uew8upFRcWSPGoF0hSiGkvuaY2IkLdCf3Oidx8eEdhX5ar9g6KpZs4Mw3BP

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: tasks; Type: TABLE; Schema: public; Owner: taskuser
--

CREATE TABLE public.tasks (
    id integer NOT NULL,
    title text NOT NULL,
    done boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.tasks OWNER TO taskuser;

--
-- Name: tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: taskuser
--

CREATE SEQUENCE public.tasks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tasks_id_seq OWNER TO taskuser;

--
-- Name: tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: taskuser
--

ALTER SEQUENCE public.tasks_id_seq OWNED BY public.tasks.id;


--
-- Name: tasks id; Type: DEFAULT; Schema: public; Owner: taskuser
--

ALTER TABLE ONLY public.tasks ALTER COLUMN id SET DEFAULT nextval('public.tasks_id_seq'::regclass);


--
-- Data for Name: tasks; Type: TABLE DATA; Schema: public; Owner: taskuser
--

COPY public.tasks (id, title, done, created_at) FROM stdin;
1	Complete Practical 2	f	2026-09-27 19:16:28.796252+00
2	Read Unit II notes	f	2026-09-27 19:16:28.796252+00
3	Draft the report	f	2026-09-27 19:16:28.796252+00
\.


--
-- Name: tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: taskuser
--

SELECT pg_catalog.setval('public.tasks_id_seq', 3, true);


--
-- Name: tasks tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: taskuser
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict fwU4Uew8upFRcWSPGoF0hSiGkvuaY2IkLdCf3Oidx8eEdhX5ar9g6KpZs4Mw3BP

