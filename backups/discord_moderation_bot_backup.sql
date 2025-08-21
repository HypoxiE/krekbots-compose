

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.9 (Ubuntu 16.9-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.9 (Ubuntu 16.9-0ubuntu0.24.04.1)

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
1	580283856989716480	оск, неадекватное поведение, банворды, игнор предупреждения	\N	1749477018.675446	\N
2	1138571057129869402	Скам	\N	1749477018.696941	\N
3	818122097501929482	Несоответствие возрастным ограничениям дискорда (•_•)	\N	1749477018.710176	\N
4	710173705833283625	оффтоп + нарушение лицензионного соглашения дискорда + нарушение законодательства РФ	\N	1749477018.723029	\N
5	836952020858568744	18+ шок контент.	\N	1749477018.737734	\N
6	832107767182786560	реклама	\N	1749477018.752076	\N
7	1262121823471014133	нацистская символика	\N	1749477018.764442	\N
10	656053768760197130	Повторное оскорбление модерации	\N	1749477018.804154	\N
11	711891867905818715	треш контент, повторное нарушение по этой статье	\N	1749477018.81524	\N
12	1284158571680104461	игнорирование предупреждения, флуд	\N	1749477018.826453	\N
\.


--
-- Data for Name: punishment_mutes_text; Type: TABLE DATA; Schema: public; Owner: discord_moderation_bot
--

COPY public.punishment_mutes_text (id, user_id, reason, time_end, time_warn, time_begin, moderator_id) FROM stdin;
11	1214596185038524497	неадекватность, флуд	1751316852.212452	\N	1751316853.631501	479210801891115009
13	866959991385882624	Оскорбления	\N	1755758752.524561	1752740562.205983	479210801891115009
14	725375070494523392	оскорбление модерации	\N	1755852391.166809	1753173985.374117	479210801891115009
15	692403288137531464	Гифка с политическим подтекстом	\N	1756284429.457732	1753605994.280519	479210801891115009
1	938433872436281395	1.10	\N	1757013986.387846	1749477018.566395	\N
16	479209452919193610	тест	\N	1757269524.037278	1754623499.7988	479210801891115009
18	479209452919193610	тест	\N	1757438848.870735	1754846799.018741	479210801891115009
17	579698836260257813	банворд	\N	1757442568.258068	1754836142.506109	479210801891115009
19	761278717691166720	токсичность	\N	1758213024.499754	1755584966.322658	479210801891115009
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
1	786123087522693120	Символика, запрещённая правилами дискорда	1749477018.838439	\N
2	919132257053212733	Банворды, нац. символика	1749477018.85559	\N
3	589033880552734730	реклама хуйни	1749477018.866694	\N
4	295626159775940608	Неприличная аватарка. Очень неприличная.	1749477018.879227	\N
5	580283856989716480	Оскорбления	1749477018.890433	\N
6	443394204186443786	скам	1749477018.903366	\N
7	1138571057129869402	Скам	1749477018.914729	\N
8	887392259006427147	Скам	1749477018.926383	\N
9	1223665783910043672	Неадекватное поведение, поведение как у ребёнка младше 13 лет. Может быть разбанен по мнению других	1749477018.937912	\N
10	548927309332217874	Сиськи-письки	1749477018.949006	\N
11	1173221909081632808	Похититель аккаунтов стима	1749477018.960064	\N
12	875335896801624104	скам	1749477018.972074	\N
13	1199158855196741740	скам	1749477018.984143	\N
14	1168311574231007306	очевидно < 13 лет + политические высказывание в рисовых полях	1749477018.997345	\N
15	1168316536944083084	политспам	1749477019.010285	\N
16	459426166156165141	Скам Детей	1749477019.021373	\N
17	1130922971242959021	взломан. может быть разбанен по требованию	1749477019.034486	\N
18	1361218326872719423	Скам пользователей в лс	1749477019.046274	\N
19	711891867905818715	Набрал больше 18 'очков наказаний'	1749477019.057119	\N
22	572398497895284746	Скам	1752577368.398689	479210801891115009
23	841308739969351700	взлом акка	1754598924.184854	520882567424114689
24	487854614679388170	Взлом	1755585138.216502	479210801891115009
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
15	725375070494523392	привет от эпилептиков сервера	1757428231.277584	1754836231.288748	479210801891115009
16	1374720170416799754	Оффтоп + срач	1757957647.122927	1755365647.131164	598561807925248010
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
1	10	администрация	t	f
2	20	модерация	f	t
3	50	ритуализация	f	f
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
490714020068720640	10	20	1
887696340920963072	20	15	1
490712205445169162	10	10	2
490712181927837722	20	5	2
1228163601026515055	20	0	3
\.


--
-- Data for Name: staff_users; Type: TABLE DATA; Schema: public; Owner: discord_moderation_bot
--

COPY public.staff_users (id) FROM stdin;
479210801891115009
337903497401991191
520882567424114689
598561807925248010
477514968216895501
515542927158804480
\.


--
-- Data for Name: staff_users_roles; Type: TABLE DATA; Schema: public; Owner: discord_moderation_bot
--

COPY public.staff_users_roles (id, user_id, role_id, branch_id, description, update_time) FROM stdin;
1	479210801891115009	887696340920963072	1	\N	1749477487.521233
2	337903497401991191	490714020068720640	1	\N	1749477503.074246
3	520882567424114689	490712205445169162	2	\N	1749477567.829773
4	598561807925248010	490712205445169162	2	\N	1749477609.239005
5	479210801891115009	490712205445169162	2	\N	1749477646.519769
6	337903497401991191	490712205445169162	2	\N	1749477665.341977
8	477514968216895501	490712205445169162	2	\N	1749477783.200237
10	515542927158804480	1228163601026515055	3	\N	1753193960.431698
\.


--
-- Data for Name: аllowed_domains; Type: TABLE DATA; Schema: public; Owner: discord_moderation_bot
--

COPY public."аllowed_domains" (id, domain, initiator_id) FROM stdin;
1	youtube.com	479210801891115009
2	youtu.be	479210801891115009
3	tenor.com	479210801891115009
4	twitch.tv	479210801891115009
5	discord.gg	479210801891115009
6	discord.com	479210801891115009
7	discordapp.com	479210801891115009
8	discord.media	479210801891115009
9	discordapp.net	479210801891115009
10	discordcdn.com	479210801891115009
11	discord.dev	479210801891115009
12	discord.new	479210801891115009
13	discord.gift	479210801891115009
14	discordstatus.com	479210801891115009
15	dis.gd	479210801891115009
16	discord.co	479210801891115009
17	github.com	479210801891115009
18	steampowered.com	479210801891115009
19	imgur.com	479210801891115009
20	steamcommunity.com	479210801891115009
21	steamstatic.com	479210801891115009
22	ggntw.com	479210801891115009
23	shikimori.one	479210801891115009
26	google.com	479210801891115009
27	goo.su	479210801891115009
28	rimworldwiki.com	479210801891115009
29	giphy.com	479210801891115009
30	shapes.inc	479210801891115009
31	forms.gle	479210801891115009
32	factorio.com	479210801891115009
33	steamusercontent.com	479210801891115009
34	ozon.ru	479210801891115009
35	boosty.to	479210801891115009
36	t.me	479210801891115009
37	tiermaker.com	479210801891115009
38	wplace.live	337903497401991191
\.


--
-- Name: punishment_bans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: discord_moderation_bot
--

SELECT pg_catalog.setval('public.punishment_bans_id_seq', 12, true);


--
-- Name: punishment_mutes_text_id_seq; Type: SEQUENCE SET; Schema: public; Owner: discord_moderation_bot
--

SELECT pg_catalog.setval('public.punishment_mutes_text_id_seq', 19, true);


--
-- Name: punishment_mutes_voice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: discord_moderation_bot
--

SELECT pg_catalog.setval('public.punishment_mutes_voice_id_seq', 1, false);


--
-- Name: punishment_perms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: discord_moderation_bot
--

SELECT pg_catalog.setval('public.punishment_perms_id_seq', 24, true);


--
-- Name: punishment_reprimands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: discord_moderation_bot
--

SELECT pg_catalog.setval('public.punishment_reprimands_id_seq', 1, false);


--
-- Name: punishment_warns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: discord_moderation_bot
--

SELECT pg_catalog.setval('public.punishment_warns_id_seq', 16, true);


--
-- Name: scheduled_messages_source_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: discord_moderation_bot
--

SELECT pg_catalog.setval('public.scheduled_messages_source_message_id_seq', 1, false);


--
-- Name: staff_branches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: discord_moderation_bot
--

SELECT pg_catalog.setval('public.staff_branches_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.staff_users_roles_id_seq', 10, true);


--
-- Name: аllowed_domains_id_seq; Type: SEQUENCE SET; Schema: public; Owner: discord_moderation_bot
--

SELECT pg_catalog.setval('public."аllowed_domains_id_seq"', 38, true);


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

