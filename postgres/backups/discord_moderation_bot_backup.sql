--
-- PostgreSQL database dump
--

\restrict mZdyJc82ylRUbMKLRCTI7AjpRC8AxNl2kn90zlvnwvRyKFUlJCC4mcAflDDi9Iw

-- Dumped from database version 17.10 (Debian 17.10-1.pgdg13+1)
-- Dumped by pg_dump version 17.10 (Debian 17.10-0+deb13u1)

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
-- Name: punishment_bans; Type: TABLE; Schema: public; Owner: discord_moderation_bot
--

CREATE TABLE public.punishment_bans (
    id integer NOT NULL,
    user_id bigint NOT NULL,
    reason text,
    time_end double precision,
    time_begin double precision DEFAULT EXTRACT(epoch FROM now()) NOT NULL,
    moderator_id bigint
);


ALTER TABLE public.punishment_bans OWNER TO discord_moderation_bot;

--
-- Name: punishment_bans_id_seq; Type: SEQUENCE; Schema: public; Owner: discord_moderation_bot
--

CREATE SEQUENCE public.punishment_bans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.punishment_bans_id_seq OWNER TO discord_moderation_bot;

--
-- Name: punishment_bans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: discord_moderation_bot
--

ALTER SEQUENCE public.punishment_bans_id_seq OWNED BY public.punishment_bans.id;


--
-- Name: punishment_mutes_text; Type: TABLE; Schema: public; Owner: discord_moderation_bot
--

CREATE TABLE public.punishment_mutes_text (
    id integer NOT NULL,
    user_id bigint NOT NULL,
    reason text,
    time_end double precision,
    time_warn double precision,
    time_begin double precision DEFAULT EXTRACT(epoch FROM now()) NOT NULL,
    moderator_id bigint
);


ALTER TABLE public.punishment_mutes_text OWNER TO discord_moderation_bot;

--
-- Name: punishment_mutes_text_id_seq; Type: SEQUENCE; Schema: public; Owner: discord_moderation_bot
--

CREATE SEQUENCE public.punishment_mutes_text_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.punishment_mutes_text_id_seq OWNER TO discord_moderation_bot;

--
-- Name: punishment_mutes_text_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: discord_moderation_bot
--

ALTER SEQUENCE public.punishment_mutes_text_id_seq OWNED BY public.punishment_mutes_text.id;


--
-- Name: punishment_mutes_voice; Type: TABLE; Schema: public; Owner: discord_moderation_bot
--

CREATE TABLE public.punishment_mutes_voice (
    id integer NOT NULL,
    user_id bigint NOT NULL,
    reason text,
    time_end double precision,
    time_warn double precision,
    time_begin double precision DEFAULT EXTRACT(epoch FROM now()) NOT NULL,
    moderator_id bigint
);


ALTER TABLE public.punishment_mutes_voice OWNER TO discord_moderation_bot;

--
-- Name: punishment_mutes_voice_id_seq; Type: SEQUENCE; Schema: public; Owner: discord_moderation_bot
--

CREATE SEQUENCE public.punishment_mutes_voice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.punishment_mutes_voice_id_seq OWNER TO discord_moderation_bot;

--
-- Name: punishment_mutes_voice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: discord_moderation_bot
--

ALTER SEQUENCE public.punishment_mutes_voice_id_seq OWNED BY public.punishment_mutes_voice.id;


--
-- Name: punishment_perms; Type: TABLE; Schema: public; Owner: discord_moderation_bot
--

CREATE TABLE public.punishment_perms (
    id integer NOT NULL,
    user_id bigint NOT NULL,
    reason text,
    time_begin double precision DEFAULT EXTRACT(epoch FROM now()) NOT NULL,
    moderator_id bigint
);


ALTER TABLE public.punishment_perms OWNER TO discord_moderation_bot;

--
-- Name: punishment_perms_id_seq; Type: SEQUENCE; Schema: public; Owner: discord_moderation_bot
--

CREATE SEQUENCE public.punishment_perms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.punishment_perms_id_seq OWNER TO discord_moderation_bot;

--
-- Name: punishment_perms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: discord_moderation_bot
--

ALTER SEQUENCE public.punishment_perms_id_seq OWNED BY public.punishment_perms.id;


--
-- Name: punishment_reprimands; Type: TABLE; Schema: public; Owner: discord_moderation_bot
--

CREATE TABLE public.punishment_reprimands (
    id integer NOT NULL,
    user_id bigint NOT NULL,
    reason text,
    time_warn double precision NOT NULL,
    branch_id integer NOT NULL,
    time_begin double precision DEFAULT EXTRACT(epoch FROM now()) NOT NULL,
    designated_user_id bigint
);


ALTER TABLE public.punishment_reprimands OWNER TO discord_moderation_bot;

--
-- Name: punishment_reprimands_id_seq; Type: SEQUENCE; Schema: public; Owner: discord_moderation_bot
--

CREATE SEQUENCE public.punishment_reprimands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.punishment_reprimands_id_seq OWNER TO discord_moderation_bot;

--
-- Name: punishment_reprimands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: discord_moderation_bot
--

ALTER SEQUENCE public.punishment_reprimands_id_seq OWNED BY public.punishment_reprimands.id;


--
-- Name: punishment_warns; Type: TABLE; Schema: public; Owner: discord_moderation_bot
--

CREATE TABLE public.punishment_warns (
    id integer NOT NULL,
    user_id bigint NOT NULL,
    reason text,
    time_warn double precision NOT NULL,
    time_begin double precision DEFAULT EXTRACT(epoch FROM now()) NOT NULL,
    moderator_id bigint
);


ALTER TABLE public.punishment_warns OWNER TO discord_moderation_bot;

--
-- Name: punishment_warns_id_seq; Type: SEQUENCE; Schema: public; Owner: discord_moderation_bot
--

CREATE SEQUENCE public.punishment_warns_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.punishment_warns_id_seq OWNER TO discord_moderation_bot;

--
-- Name: punishment_warns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: discord_moderation_bot
--

ALTER SEQUENCE public.punishment_warns_id_seq OWNED BY public.punishment_warns.id;


--
-- Name: scheduled_messages; Type: TABLE; Schema: public; Owner: discord_moderation_bot
--

CREATE TABLE public.scheduled_messages (
    source_message_id bigint NOT NULL,
    source_channel_id bigint NOT NULL,
    webhook_id bigint,
    "timestamp" double precision
);


ALTER TABLE public.scheduled_messages OWNER TO discord_moderation_bot;

--
-- Name: scheduled_messages_source_message_id_seq; Type: SEQUENCE; Schema: public; Owner: discord_moderation_bot
--

CREATE SEQUENCE public.scheduled_messages_source_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.scheduled_messages_source_message_id_seq OWNER TO discord_moderation_bot;

--
-- Name: scheduled_messages_source_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: discord_moderation_bot
--

ALTER SEQUENCE public.scheduled_messages_source_message_id_seq OWNED BY public.scheduled_messages.source_message_id;


--
-- Name: staff_branches; Type: TABLE; Schema: public; Owner: discord_moderation_bot
--

CREATE TABLE public.staff_branches (
    id integer NOT NULL,
    layer integer NOT NULL,
    purpose text NOT NULL,
    is_admin boolean NOT NULL,
    is_moder boolean NOT NULL
);


ALTER TABLE public.staff_branches OWNER TO discord_moderation_bot;

--
-- Name: staff_branches_id_seq; Type: SEQUENCE; Schema: public; Owner: discord_moderation_bot
--

CREATE SEQUENCE public.staff_branches_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.staff_branches_id_seq OWNER TO discord_moderation_bot;

--
-- Name: staff_branches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: discord_moderation_bot
--

ALTER SEQUENCE public.staff_branches_id_seq OWNED BY public.staff_branches.id;


--
-- Name: staff_curation; Type: TABLE; Schema: public; Owner: discord_moderation_bot
--

CREATE TABLE public.staff_curation (
    id integer NOT NULL,
    apprentice_id bigint NOT NULL,
    curator_id bigint NOT NULL,
    branch_id integer NOT NULL
);


ALTER TABLE public.staff_curation OWNER TO discord_moderation_bot;

--
-- Name: staff_curation_id_seq; Type: SEQUENCE; Schema: public; Owner: discord_moderation_bot
--

CREATE SEQUENCE public.staff_curation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.staff_curation_id_seq OWNER TO discord_moderation_bot;

--
-- Name: staff_curation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: discord_moderation_bot
--

ALTER SEQUENCE public.staff_curation_id_seq OWNED BY public.staff_curation.id;


--
-- Name: staff_roles; Type: TABLE; Schema: public; Owner: discord_moderation_bot
--

CREATE TABLE public.staff_roles (
    id bigint NOT NULL,
    layer integer NOT NULL,
    staff_salary integer NOT NULL,
    branch_id integer NOT NULL
);


ALTER TABLE public.staff_roles OWNER TO discord_moderation_bot;

--
-- Name: staff_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: discord_moderation_bot
--

CREATE SEQUENCE public.staff_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.staff_roles_id_seq OWNER TO discord_moderation_bot;

--
-- Name: staff_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: discord_moderation_bot
--

ALTER SEQUENCE public.staff_roles_id_seq OWNED BY public.staff_roles.id;


--
-- Name: staff_users; Type: TABLE; Schema: public; Owner: discord_moderation_bot
--

CREATE TABLE public.staff_users (
    id bigint NOT NULL
);


ALTER TABLE public.staff_users OWNER TO discord_moderation_bot;

--
-- Name: staff_users_id_seq; Type: SEQUENCE; Schema: public; Owner: discord_moderation_bot
--

CREATE SEQUENCE public.staff_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.staff_users_id_seq OWNER TO discord_moderation_bot;

--
-- Name: staff_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: discord_moderation_bot
--

ALTER SEQUENCE public.staff_users_id_seq OWNED BY public.staff_users.id;


--
-- Name: staff_users_roles; Type: TABLE; Schema: public; Owner: discord_moderation_bot
--

CREATE TABLE public.staff_users_roles (
    id integer NOT NULL,
    user_id bigint NOT NULL,
    role_id bigint NOT NULL,
    branch_id integer NOT NULL,
    description text,
    update_time double precision DEFAULT EXTRACT(epoch FROM now()) NOT NULL
);


ALTER TABLE public.staff_users_roles OWNER TO discord_moderation_bot;

--
-- Name: staff_users_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: discord_moderation_bot
--

CREATE SEQUENCE public.staff_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.staff_users_roles_id_seq OWNER TO discord_moderation_bot;

--
-- Name: staff_users_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: discord_moderation_bot
--

ALTER SEQUENCE public.staff_users_roles_id_seq OWNED BY public.staff_users_roles.id;


--
-- Name: аllowed_domains; Type: TABLE; Schema: public; Owner: discord_moderation_bot
--

CREATE TABLE public."аllowed_domains" (
    id integer NOT NULL,
    domain text NOT NULL,
    initiator_id bigint NOT NULL
);


ALTER TABLE public."аllowed_domains" OWNER TO discord_moderation_bot;

--
-- Name: аllowed_domains_id_seq; Type: SEQUENCE; Schema: public; Owner: discord_moderation_bot
--

CREATE SEQUENCE public."аllowed_domains_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."аllowed_domains_id_seq" OWNER TO discord_moderation_bot;

--
-- Name: аllowed_domains_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: discord_moderation_bot
--

ALTER SEQUENCE public."аllowed_domains_id_seq" OWNED BY public."аllowed_domains".id;


--
-- Name: punishment_bans id; Type: DEFAULT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.punishment_bans ALTER COLUMN id SET DEFAULT nextval('public.punishment_bans_id_seq'::regclass);


--
-- Name: punishment_mutes_text id; Type: DEFAULT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.punishment_mutes_text ALTER COLUMN id SET DEFAULT nextval('public.punishment_mutes_text_id_seq'::regclass);


--
-- Name: punishment_mutes_voice id; Type: DEFAULT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.punishment_mutes_voice ALTER COLUMN id SET DEFAULT nextval('public.punishment_mutes_voice_id_seq'::regclass);


--
-- Name: punishment_perms id; Type: DEFAULT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.punishment_perms ALTER COLUMN id SET DEFAULT nextval('public.punishment_perms_id_seq'::regclass);


--
-- Name: punishment_reprimands id; Type: DEFAULT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.punishment_reprimands ALTER COLUMN id SET DEFAULT nextval('public.punishment_reprimands_id_seq'::regclass);


--
-- Name: punishment_warns id; Type: DEFAULT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.punishment_warns ALTER COLUMN id SET DEFAULT nextval('public.punishment_warns_id_seq'::regclass);


--
-- Name: scheduled_messages source_message_id; Type: DEFAULT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.scheduled_messages ALTER COLUMN source_message_id SET DEFAULT nextval('public.scheduled_messages_source_message_id_seq'::regclass);


--
-- Name: staff_branches id; Type: DEFAULT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.staff_branches ALTER COLUMN id SET DEFAULT nextval('public.staff_branches_id_seq'::regclass);


--
-- Name: staff_curation id; Type: DEFAULT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.staff_curation ALTER COLUMN id SET DEFAULT nextval('public.staff_curation_id_seq'::regclass);


--
-- Name: staff_roles id; Type: DEFAULT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.staff_roles ALTER COLUMN id SET DEFAULT nextval('public.staff_roles_id_seq'::regclass);


--
-- Name: staff_users id; Type: DEFAULT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.staff_users ALTER COLUMN id SET DEFAULT nextval('public.staff_users_id_seq'::regclass);


--
-- Name: staff_users_roles id; Type: DEFAULT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.staff_users_roles ALTER COLUMN id SET DEFAULT nextval('public.staff_users_roles_id_seq'::regclass);


--
-- Name: аllowed_domains id; Type: DEFAULT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public."аllowed_domains" ALTER COLUMN id SET DEFAULT nextval('public."аllowed_domains_id_seq"'::regclass);


--
-- Data for Name: punishment_bans; Type: TABLE DATA; Schema: public; Owner: discord_moderation_bot
--

COPY public.punishment_bans (id, user_id, reason, time_end, time_begin, moderator_id) FROM stdin;
\.


--
-- Data for Name: punishment_mutes_text; Type: TABLE DATA; Schema: public; Owner: discord_moderation_bot
--

COPY public.punishment_mutes_text (id, user_id, reason, time_end, time_warn, time_begin, moderator_id) FROM stdin;
1	580665095244349450	Масс оск	1781973916.491672	\N	1781369118.447296	598561807925248010
\.


--
-- Data for Name: punishment_mutes_voice; Type: TABLE DATA; Schema: public; Owner: discord_moderation_bot
--

COPY public.punishment_mutes_voice (id, user_id, reason, time_end, time_warn, time_begin, moderator_id) FROM stdin;
\.


--
-- Data for Name: punishment_perms; Type: TABLE DATA; Schema: public; Owner: discord_moderation_bot
--

COPY public.punishment_perms (id, user_id, reason, time_begin, moderator_id) FROM stdin;
\.


--
-- Data for Name: punishment_reprimands; Type: TABLE DATA; Schema: public; Owner: discord_moderation_bot
--

COPY public.punishment_reprimands (id, user_id, reason, time_warn, branch_id, time_begin, designated_user_id) FROM stdin;
\.


--
-- Data for Name: punishment_warns; Type: TABLE DATA; Schema: public; Owner: discord_moderation_bot
--

COPY public.punishment_warns (id, user_id, reason, time_warn, time_begin, moderator_id) FROM stdin;
1	1105217070918017044	Полит картинка	1783695083.7296	1781103083.740589	598561807925248010
\.


--
-- Data for Name: scheduled_messages; Type: TABLE DATA; Schema: public; Owner: discord_moderation_bot
--

COPY public.scheduled_messages (source_message_id, source_channel_id, webhook_id, "timestamp") FROM stdin;
\.


--
-- Data for Name: staff_branches; Type: TABLE DATA; Schema: public; Owner: discord_moderation_bot
--

COPY public.staff_branches (id, layer, purpose, is_admin, is_moder) FROM stdin;
1	2	администрация	t	f
2	5	модерация	f	t
\.


--
-- Data for Name: staff_curation; Type: TABLE DATA; Schema: public; Owner: discord_moderation_bot
--

COPY public.staff_curation (id, apprentice_id, curator_id, branch_id) FROM stdin;
\.


--
-- Data for Name: staff_roles; Type: TABLE DATA; Schema: public; Owner: discord_moderation_bot
--

COPY public.staff_roles (id, layer, staff_salary, branch_id) FROM stdin;
887696340920963072	4	10	1
490712205445169162	5	10	2
490712181927837722	10	10	2
\.


--
-- Data for Name: staff_users; Type: TABLE DATA; Schema: public; Owner: discord_moderation_bot
--

COPY public.staff_users (id) FROM stdin;
479210801891115009
1163921593026744320
477514968216895501
598561807925248010
520882567424114689
337903497401991191
\.


--
-- Data for Name: staff_users_roles; Type: TABLE DATA; Schema: public; Owner: discord_moderation_bot
--

COPY public.staff_users_roles (id, user_id, role_id, branch_id, description, update_time) FROM stdin;
1	479210801891115009	887696340920963072	1	\N	1780815432.267434
2	1163921593026744320	490712181927837722	2	\N	1780815922.348591
3	477514968216895501	490712205445169162	2	\N	1780815971.973426
4	598561807925248010	490712205445169162	2	\N	1780816016.639775
5	520882567424114689	490712205445169162	2	\N	1780816048.099903
7	337903497401991191	490712205445169162	2	\N	1780816086.164406
8	479210801891115009	490712205445169162	2	\N	1780816109.883106
\.


--
-- Data for Name: аllowed_domains; Type: TABLE DATA; Schema: public; Owner: discord_moderation_bot
--

COPY public."аllowed_domains" (id, domain, initiator_id) FROM stdin;
\.


--
-- Name: punishment_bans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: discord_moderation_bot
--

SELECT pg_catalog.setval('public.punishment_bans_id_seq', 1, false);


--
-- Name: punishment_mutes_text_id_seq; Type: SEQUENCE SET; Schema: public; Owner: discord_moderation_bot
--

SELECT pg_catalog.setval('public.punishment_mutes_text_id_seq', 1, true);


--
-- Name: punishment_mutes_voice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: discord_moderation_bot
--

SELECT pg_catalog.setval('public.punishment_mutes_voice_id_seq', 1, false);


--
-- Name: punishment_perms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: discord_moderation_bot
--

SELECT pg_catalog.setval('public.punishment_perms_id_seq', 1, false);


--
-- Name: punishment_reprimands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: discord_moderation_bot
--

SELECT pg_catalog.setval('public.punishment_reprimands_id_seq', 1, false);


--
-- Name: punishment_warns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: discord_moderation_bot
--

SELECT pg_catalog.setval('public.punishment_warns_id_seq', 1, true);


--
-- Name: scheduled_messages_source_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: discord_moderation_bot
--

SELECT pg_catalog.setval('public.scheduled_messages_source_message_id_seq', 1, false);


--
-- Name: staff_branches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: discord_moderation_bot
--

SELECT pg_catalog.setval('public.staff_branches_id_seq', 2, true);


--
-- Name: staff_curation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: discord_moderation_bot
--

SELECT pg_catalog.setval('public.staff_curation_id_seq', 1, false);


--
-- Name: staff_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: discord_moderation_bot
--

SELECT pg_catalog.setval('public.staff_roles_id_seq', 1, false);


--
-- Name: staff_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: discord_moderation_bot
--

SELECT pg_catalog.setval('public.staff_users_id_seq', 1, false);


--
-- Name: staff_users_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: discord_moderation_bot
--

SELECT pg_catalog.setval('public.staff_users_roles_id_seq', 8, true);


--
-- Name: аllowed_domains_id_seq; Type: SEQUENCE SET; Schema: public; Owner: discord_moderation_bot
--

SELECT pg_catalog.setval('public."аllowed_domains_id_seq"', 1, false);


--
-- Name: punishment_bans punishment_bans_pkey; Type: CONSTRAINT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.punishment_bans
    ADD CONSTRAINT punishment_bans_pkey PRIMARY KEY (id);


--
-- Name: punishment_mutes_text punishment_mutes_text_pkey; Type: CONSTRAINT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.punishment_mutes_text
    ADD CONSTRAINT punishment_mutes_text_pkey PRIMARY KEY (id);


--
-- Name: punishment_mutes_voice punishment_mutes_voice_pkey; Type: CONSTRAINT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.punishment_mutes_voice
    ADD CONSTRAINT punishment_mutes_voice_pkey PRIMARY KEY (id);


--
-- Name: punishment_perms punishment_perms_pkey; Type: CONSTRAINT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.punishment_perms
    ADD CONSTRAINT punishment_perms_pkey PRIMARY KEY (id);


--
-- Name: punishment_reprimands punishment_reprimands_pkey; Type: CONSTRAINT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.punishment_reprimands
    ADD CONSTRAINT punishment_reprimands_pkey PRIMARY KEY (id);


--
-- Name: punishment_warns punishment_warns_pkey; Type: CONSTRAINT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.punishment_warns
    ADD CONSTRAINT punishment_warns_pkey PRIMARY KEY (id);


--
-- Name: scheduled_messages scheduled_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.scheduled_messages
    ADD CONSTRAINT scheduled_messages_pkey PRIMARY KEY (source_message_id);


--
-- Name: staff_branches staff_branches_pkey; Type: CONSTRAINT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.staff_branches
    ADD CONSTRAINT staff_branches_pkey PRIMARY KEY (id);


--
-- Name: staff_curation staff_curation_pkey; Type: CONSTRAINT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.staff_curation
    ADD CONSTRAINT staff_curation_pkey PRIMARY KEY (id);


--
-- Name: staff_roles staff_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.staff_roles
    ADD CONSTRAINT staff_roles_pkey PRIMARY KEY (id);


--
-- Name: staff_users staff_users_pkey; Type: CONSTRAINT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.staff_users
    ADD CONSTRAINT staff_users_pkey PRIMARY KEY (id);


--
-- Name: staff_users_roles staff_users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.staff_users_roles
    ADD CONSTRAINT staff_users_roles_pkey PRIMARY KEY (id);


--
-- Name: staff_curation uq_apprentice_curator_branch; Type: CONSTRAINT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.staff_curation
    ADD CONSTRAINT uq_apprentice_curator_branch UNIQUE (apprentice_id, curator_id, branch_id);


--
-- Name: staff_users_roles uq_user_branch; Type: CONSTRAINT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.staff_users_roles
    ADD CONSTRAINT uq_user_branch UNIQUE (user_id, branch_id);


--
-- Name: аllowed_domains аllowed_domains_pkey; Type: CONSTRAINT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public."аllowed_domains"
    ADD CONSTRAINT "аllowed_domains_pkey" PRIMARY KEY (id);


--
-- Name: ix_punishment_bans_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX ix_punishment_bans_id ON public.punishment_bans USING btree (id);


--
-- Name: ix_punishment_bans_moderator_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX ix_punishment_bans_moderator_id ON public.punishment_bans USING btree (moderator_id);


--
-- Name: ix_punishment_bans_user_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX ix_punishment_bans_user_id ON public.punishment_bans USING btree (user_id);


--
-- Name: ix_punishment_mutes_text_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX ix_punishment_mutes_text_id ON public.punishment_mutes_text USING btree (id);


--
-- Name: ix_punishment_mutes_text_moderator_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX ix_punishment_mutes_text_moderator_id ON public.punishment_mutes_text USING btree (moderator_id);


--
-- Name: ix_punishment_mutes_text_user_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX ix_punishment_mutes_text_user_id ON public.punishment_mutes_text USING btree (user_id);


--
-- Name: ix_punishment_mutes_voice_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX ix_punishment_mutes_voice_id ON public.punishment_mutes_voice USING btree (id);


--
-- Name: ix_punishment_mutes_voice_moderator_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX ix_punishment_mutes_voice_moderator_id ON public.punishment_mutes_voice USING btree (moderator_id);


--
-- Name: ix_punishment_mutes_voice_user_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX ix_punishment_mutes_voice_user_id ON public.punishment_mutes_voice USING btree (user_id);


--
-- Name: ix_punishment_perms_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX ix_punishment_perms_id ON public.punishment_perms USING btree (id);


--
-- Name: ix_punishment_perms_moderator_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX ix_punishment_perms_moderator_id ON public.punishment_perms USING btree (moderator_id);


--
-- Name: ix_punishment_perms_user_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX ix_punishment_perms_user_id ON public.punishment_perms USING btree (user_id);


--
-- Name: ix_punishment_reprimands_designated_user_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX ix_punishment_reprimands_designated_user_id ON public.punishment_reprimands USING btree (designated_user_id);


--
-- Name: ix_punishment_reprimands_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX ix_punishment_reprimands_id ON public.punishment_reprimands USING btree (id);


--
-- Name: ix_punishment_reprimands_user_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX ix_punishment_reprimands_user_id ON public.punishment_reprimands USING btree (user_id);


--
-- Name: ix_punishment_warns_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX ix_punishment_warns_id ON public.punishment_warns USING btree (id);


--
-- Name: ix_punishment_warns_moderator_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX ix_punishment_warns_moderator_id ON public.punishment_warns USING btree (moderator_id);


--
-- Name: ix_punishment_warns_user_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX ix_punishment_warns_user_id ON public.punishment_warns USING btree (user_id);


--
-- Name: ix_scheduled_messages_source_channel_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX ix_scheduled_messages_source_channel_id ON public.scheduled_messages USING btree (source_channel_id);


--
-- Name: ix_scheduled_messages_source_message_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX ix_scheduled_messages_source_message_id ON public.scheduled_messages USING btree (source_message_id);


--
-- Name: ix_scheduled_messages_timestamp; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX ix_scheduled_messages_timestamp ON public.scheduled_messages USING btree ("timestamp");


--
-- Name: ix_scheduled_messages_webhook_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX ix_scheduled_messages_webhook_id ON public.scheduled_messages USING btree (webhook_id);


--
-- Name: ix_staff_branches_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX ix_staff_branches_id ON public.staff_branches USING btree (id);


--
-- Name: ix_staff_curation_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX ix_staff_curation_id ON public.staff_curation USING btree (id);


--
-- Name: ix_staff_roles_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX ix_staff_roles_id ON public.staff_roles USING btree (id);


--
-- Name: ix_staff_users_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX ix_staff_users_id ON public.staff_users USING btree (id);


--
-- Name: ix_staff_users_roles_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX ix_staff_users_roles_id ON public.staff_users_roles USING btree (id);


--
-- Name: ix_аllowed_domains_domain; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE UNIQUE INDEX "ix_аllowed_domains_domain" ON public."аllowed_domains" USING btree (domain);


--
-- Name: ix_аllowed_domains_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX "ix_аllowed_domains_id" ON public."аllowed_domains" USING btree (id);


--
-- Name: ix_аllowed_domains_initiator_id; Type: INDEX; Schema: public; Owner: discord_moderation_bot
--

CREATE INDEX "ix_аllowed_domains_initiator_id" ON public."аllowed_domains" USING btree (initiator_id);


--
-- Name: punishment_reprimands punishment_reprimands_branch_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.punishment_reprimands
    ADD CONSTRAINT punishment_reprimands_branch_id_fkey FOREIGN KEY (branch_id) REFERENCES public.staff_branches(id) ON DELETE CASCADE;


--
-- Name: staff_curation staff_curation_apprentice_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.staff_curation
    ADD CONSTRAINT staff_curation_apprentice_id_fkey FOREIGN KEY (apprentice_id) REFERENCES public.staff_users(id) ON DELETE CASCADE;


--
-- Name: staff_curation staff_curation_branch_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.staff_curation
    ADD CONSTRAINT staff_curation_branch_id_fkey FOREIGN KEY (branch_id) REFERENCES public.staff_branches(id) ON DELETE CASCADE;


--
-- Name: staff_curation staff_curation_curator_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.staff_curation
    ADD CONSTRAINT staff_curation_curator_id_fkey FOREIGN KEY (curator_id) REFERENCES public.staff_users(id) ON DELETE CASCADE;


--
-- Name: staff_roles staff_roles_branch_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.staff_roles
    ADD CONSTRAINT staff_roles_branch_id_fkey FOREIGN KEY (branch_id) REFERENCES public.staff_branches(id) ON DELETE CASCADE;


--
-- Name: staff_users_roles staff_users_roles_branch_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.staff_users_roles
    ADD CONSTRAINT staff_users_roles_branch_id_fkey FOREIGN KEY (branch_id) REFERENCES public.staff_branches(id) ON DELETE CASCADE;


--
-- Name: staff_users_roles staff_users_roles_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.staff_users_roles
    ADD CONSTRAINT staff_users_roles_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.staff_roles(id) ON DELETE CASCADE;


--
-- Name: staff_users_roles staff_users_roles_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: discord_moderation_bot
--

ALTER TABLE ONLY public.staff_users_roles
    ADD CONSTRAINT staff_users_roles_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.staff_users(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict mZdyJc82ylRUbMKLRCTI7AjpRC8AxNl2kn90zlvnwvRyKFUlJCC4mcAflDDi9Iw

