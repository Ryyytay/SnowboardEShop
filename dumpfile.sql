--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Debian 16.3-1.pgdg120+1)
-- Dumped by pg_dump version 16.3 (Debian 16.3-1.pgdg120+1)

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
-- Name: AspNetRoleClaims; Type: TABLE; Schema: public; Owner: appuser
--

CREATE TABLE public."AspNetRoleClaims" (
    "Id" integer NOT NULL,
    "RoleId" integer NOT NULL,
    "ClaimType" text,
    "ClaimValue" text
);


ALTER TABLE public."AspNetRoleClaims" OWNER TO appuser;

--
-- Name: AspNetRoleClaims_Id_seq; Type: SEQUENCE; Schema: public; Owner: appuser
--

ALTER TABLE public."AspNetRoleClaims" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."AspNetRoleClaims_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: AspNetRoles; Type: TABLE; Schema: public; Owner: appuser
--

CREATE TABLE public."AspNetRoles" (
    "Id" integer NOT NULL,
    "Name" character varying(256),
    "NormalizedName" character varying(256),
    "ConcurrencyStamp" text
);


ALTER TABLE public."AspNetRoles" OWNER TO appuser;

--
-- Name: AspNetRoles_Id_seq; Type: SEQUENCE; Schema: public; Owner: appuser
--

ALTER TABLE public."AspNetRoles" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."AspNetRoles_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: AspNetUserClaims; Type: TABLE; Schema: public; Owner: appuser
--

CREATE TABLE public."AspNetUserClaims" (
    "Id" integer NOT NULL,
    "UserId" integer NOT NULL,
    "ClaimType" text,
    "ClaimValue" text
);


ALTER TABLE public."AspNetUserClaims" OWNER TO appuser;

--
-- Name: AspNetUserClaims_Id_seq; Type: SEQUENCE; Schema: public; Owner: appuser
--

ALTER TABLE public."AspNetUserClaims" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."AspNetUserClaims_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: AspNetUserLogins; Type: TABLE; Schema: public; Owner: appuser
--

CREATE TABLE public."AspNetUserLogins" (
    "LoginProvider" text NOT NULL,
    "ProviderKey" text NOT NULL,
    "ProviderDisplayName" text,
    "UserId" integer NOT NULL
);


ALTER TABLE public."AspNetUserLogins" OWNER TO appuser;

--
-- Name: AspNetUserRoles; Type: TABLE; Schema: public; Owner: appuser
--

CREATE TABLE public."AspNetUserRoles" (
    "UserId" integer NOT NULL,
    "RoleId" integer NOT NULL
);


ALTER TABLE public."AspNetUserRoles" OWNER TO appuser;

--
-- Name: AspNetUserTokens; Type: TABLE; Schema: public; Owner: appuser
--

CREATE TABLE public."AspNetUserTokens" (
    "UserId" integer NOT NULL,
    "LoginProvider" text NOT NULL,
    "Name" text NOT NULL,
    "Value" text
);


ALTER TABLE public."AspNetUserTokens" OWNER TO appuser;

--
-- Name: AspNetUsers; Type: TABLE; Schema: public; Owner: appuser
--

CREATE TABLE public."AspNetUsers" (
    "Id" integer NOT NULL,
    "UserName" character varying(256),
    "NormalizedUserName" character varying(256),
    "Email" character varying(256),
    "NormalizedEmail" character varying(256),
    "EmailConfirmed" boolean NOT NULL,
    "PasswordHash" text,
    "SecurityStamp" text,
    "ConcurrencyStamp" text,
    "PhoneNumber" text,
    "PhoneNumberConfirmed" boolean NOT NULL,
    "TwoFactorEnabled" boolean NOT NULL,
    "LockoutEnd" timestamp with time zone,
    "LockoutEnabled" boolean NOT NULL,
    "AccessFailedCount" integer NOT NULL
);


ALTER TABLE public."AspNetUsers" OWNER TO appuser;

--
-- Name: AspNetUsers_Id_seq; Type: SEQUENCE; Schema: public; Owner: appuser
--

ALTER TABLE public."AspNetUsers" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."AspNetUsers_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: BasketItem; Type: TABLE; Schema: public; Owner: appuser
--

CREATE TABLE public."BasketItem" (
    "Id" integer NOT NULL,
    "Quantity" integer NOT NULL,
    "ProductId" integer NOT NULL,
    "BasketId" integer NOT NULL
);


ALTER TABLE public."BasketItem" OWNER TO appuser;

--
-- Name: BasketItem_Id_seq; Type: SEQUENCE; Schema: public; Owner: appuser
--

ALTER TABLE public."BasketItem" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."BasketItem_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Baskets; Type: TABLE; Schema: public; Owner: appuser
--

CREATE TABLE public."Baskets" (
    "Id" integer NOT NULL,
    "BuyerId" text,
    "PaymentIntentId" text,
    "ClientSecret" text
);


ALTER TABLE public."Baskets" OWNER TO appuser;

--
-- Name: Baskets_Id_seq; Type: SEQUENCE; Schema: public; Owner: appuser
--

ALTER TABLE public."Baskets" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Baskets_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: OrderItem; Type: TABLE; Schema: public; Owner: appuser
--

CREATE TABLE public."OrderItem" (
    "Id" integer NOT NULL,
    "ItemOrdered_ProductId" integer,
    "ItemOrdered_Name" text,
    "ItemOrdered_PictureUrl" text,
    "Price" bigint NOT NULL,
    "Quantity" integer NOT NULL,
    "OrderId" integer
);


ALTER TABLE public."OrderItem" OWNER TO appuser;

--
-- Name: OrderItem_Id_seq; Type: SEQUENCE; Schema: public; Owner: appuser
--

ALTER TABLE public."OrderItem" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."OrderItem_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Orders; Type: TABLE; Schema: public; Owner: appuser
--

CREATE TABLE public."Orders" (
    "Id" integer NOT NULL,
    "BuyerId" text,
    "ShippingAddress_FullName" text,
    "ShippingAddress_Address1" text,
    "ShippingAddress_Address2" text,
    "ShippingAddress_City" text,
    "ShippingAddress_State" text,
    "ShippingAddress_Zip" text,
    "ShippingAddress_Country" text,
    "OrderDate" timestamp with time zone NOT NULL,
    "Subtotal" bigint NOT NULL,
    "DeliveryFee" bigint NOT NULL,
    "OrderStatus" integer NOT NULL,
    "PaymentIntentId" text
);


ALTER TABLE public."Orders" OWNER TO appuser;

--
-- Name: Orders_Id_seq; Type: SEQUENCE; Schema: public; Owner: appuser
--

ALTER TABLE public."Orders" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Orders_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Products; Type: TABLE; Schema: public; Owner: appuser
--

CREATE TABLE public."Products" (
    "Id" integer NOT NULL,
    "Name" text,
    "Description" text,
    "Price" bigint NOT NULL,
    "PictureUrl" text,
    "Type" text,
    "Brand" text,
    "QuantityInStock" integer NOT NULL,
    "PublicId" text
);


ALTER TABLE public."Products" OWNER TO appuser;

--
-- Name: Products_Id_seq; Type: SEQUENCE; Schema: public; Owner: appuser
--

ALTER TABLE public."Products" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Products_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: UserAddress; Type: TABLE; Schema: public; Owner: appuser
--

CREATE TABLE public."UserAddress" (
    "Id" integer NOT NULL,
    "FullName" text,
    "Address1" text,
    "Address2" text,
    "City" text,
    "State" text,
    "Zip" text,
    "Country" text
);


ALTER TABLE public."UserAddress" OWNER TO appuser;

--
-- Name: __EFMigrationsHistory; Type: TABLE; Schema: public; Owner: appuser
--

CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);


ALTER TABLE public."__EFMigrationsHistory" OWNER TO appuser;

--
-- Data for Name: AspNetRoleClaims; Type: TABLE DATA; Schema: public; Owner: appuser
--

COPY public."AspNetRoleClaims" ("Id", "RoleId", "ClaimType", "ClaimValue") FROM stdin;
\.


--
-- Data for Name: AspNetRoles; Type: TABLE DATA; Schema: public; Owner: appuser
--

COPY public."AspNetRoles" ("Id", "Name", "NormalizedName", "ConcurrencyStamp") FROM stdin;
1	Member	MEMBER	\N
2	Admin	ADMIN	\N
\.


--
-- Data for Name: AspNetUserClaims; Type: TABLE DATA; Schema: public; Owner: appuser
--

COPY public."AspNetUserClaims" ("Id", "UserId", "ClaimType", "ClaimValue") FROM stdin;
\.


--
-- Data for Name: AspNetUserLogins; Type: TABLE DATA; Schema: public; Owner: appuser
--

COPY public."AspNetUserLogins" ("LoginProvider", "ProviderKey", "ProviderDisplayName", "UserId") FROM stdin;
\.


--
-- Data for Name: AspNetUserRoles; Type: TABLE DATA; Schema: public; Owner: appuser
--

COPY public."AspNetUserRoles" ("UserId", "RoleId") FROM stdin;
1	1
2	1
2	2
3	1
4	1
5	1
\.


--
-- Data for Name: AspNetUserTokens; Type: TABLE DATA; Schema: public; Owner: appuser
--

COPY public."AspNetUserTokens" ("UserId", "LoginProvider", "Name", "Value") FROM stdin;
\.


--
-- Data for Name: AspNetUsers; Type: TABLE DATA; Schema: public; Owner: appuser
--

COPY public."AspNetUsers" ("Id", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "ConcurrencyStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount") FROM stdin;
1	bob	BOB	bob@test.com	BOB@TEST.COM	f	AQAAAAIAAYagAAAAEBQIcwXaTwufBJaBzau/Vsr1JZnMAY0uwjKnOwwtnS+mU0G1Lm0339ZK1AMTKERVwg==	BMASKMMN7BKKMNDLEFKYNHN3VVPDBSOV	35f531a0-d54d-4d8f-9ad4-4137a0124920	\N	f	f	\N	t	0
2	admin	ADMIN	admin@test.com	ADMIN@TEST.COM	f	AQAAAAIAAYagAAAAEBr+zfl/c2bhESfF3WThxKxXGNP4pEvOdASRfa1Qp/+CUQwJZaogSyQqu4VF6l15YQ==	MRCGQBQWL3X7FC7RHQ7ZFJXVMO2LSPWX	337bd9bc-5a8f-4554-abab-fc32cdb6cd8e	\N	f	f	\N	t	0
3	rayna	RAYNA	rayna@test.com	RAYNA@TEST.COM	f	AQAAAAIAAYagAAAAEIBGC+IgTyIHi1nzsMgUzjaeieh1dgBD7s/dS6X+kblifrFjKsVTQJf92ofuZCm59A==	37233FOZIQRBISXJEKG257TYCICELTQE	e9b8e2aa-346a-4b0c-9544-953ee29bb8c2	\N	f	f	\N	t	0
4	ryan	RYAN	ryan@test.com	RYAN@TEST.COM	f	AQAAAAIAAYagAAAAEFFop6YdBsSbxe6rHeD1i0A5SGezHoOwuVXkxcS8XLHIs/8KExHFIHXa4aEJfyXpgQ==	NPBBAU7CIR7KXRF2ISQ2O4EZ25EHWLTO	c8427278-3491-40fd-9db5-981a82504e26	\N	f	f	\N	t	0
5	ray	RAY	ray@gmail.com	RAY@GMAIL.COM	f	AQAAAAIAAYagAAAAEByHHtXBuKtiiCdOdtw5fRiYyIKzayqysHA62B63gomFOMzYA3/UTOL6y/UEFmvrFA==	VEEWI2MMPFP2FRLXXYJQPUT5ALWVBDBP	5770cd78-dabb-448d-ab31-39235e3259d6	\N	f	f	\N	t	0
\.


--
-- Data for Name: BasketItem; Type: TABLE DATA; Schema: public; Owner: appuser
--

COPY public."BasketItem" ("Id", "Quantity", "ProductId", "BasketId") FROM stdin;
21	1	17	8
22	1	7	8
\.


--
-- Data for Name: Baskets; Type: TABLE DATA; Schema: public; Owner: appuser
--

COPY public."Baskets" ("Id", "BuyerId", "PaymentIntentId", "ClientSecret") FROM stdin;
8	bob	pi_3Q1kulK1Y6bCNrVW146pAOIK	pi_3Q1kulK1Y6bCNrVW146pAOIK_secret_Iy5lnpfb8OFXRfWbQv7G2MqwW
10	admin	\N	\N
\.


--
-- Data for Name: OrderItem; Type: TABLE DATA; Schema: public; Owner: appuser
--

COPY public."OrderItem" ("Id", "ItemOrdered_ProductId", "ItemOrdered_Name", "ItemOrdered_PictureUrl", "Price", "Quantity", "OrderId") FROM stdin;
1	16	Core Purple Boots	/images/products/boot-core1.png	19999	1	1
2	2	Green Angular Board 3000	/images/products/sb-ang2.png	15000	2	1
3	14	Redis Red Boots	/images/products/boot-redis1.png	25000	2	2
4	5	React Board Super Whizzy Fast	/images/products/sb-react1.png	25000	1	2
5	18	Angular Blue Boots	/images/products/boot-ang1.png	17500	1	3
6	1	Angular Speedster Board 2000	/images/products/sb-ang1.png	20000	2	3
7	17	Angular Purple Boots	/images/products/boot-ang2.png	15000	1	4
8	18	Angular Blue Boots	/images/products/boot-ang1.png	17500	1	5
9	17	Angular Purple Boots	/images/products/boot-ang2.png	15000	1	5
10	15	Core Red Boots	/images/products/boot-core2.png	18999	1	6
11	2	Green Angular Board 3000	/images/products/sb-ang2.png	15000	1	6
12	8	Green React Woolen Hat	/images/products/hat-react1.png	8000	1	6
\.


--
-- Data for Name: Orders; Type: TABLE DATA; Schema: public; Owner: appuser
--

COPY public."Orders" ("Id", "BuyerId", "ShippingAddress_FullName", "ShippingAddress_Address1", "ShippingAddress_Address2", "ShippingAddress_City", "ShippingAddress_State", "ShippingAddress_Zip", "ShippingAddress_Country", "OrderDate", "Subtotal", "DeliveryFee", "OrderStatus", "PaymentIntentId") FROM stdin;
1	rayna	Rayna	123 Abc	123 Abc	Auckland	Auckalnd	2011	NZ	2024-08-03 22:51:57.967755+00	49999	0	0	pi_3PjqkyK1Y6bCNrVW1CO3Cw8Z
2	ryan	Ryan	123 Abc	123 Abc	Auckalnd	Auckland	2000	NZ	2024-08-03 23:16:13.165877+00	75000	0	0	pi_3PjrA3K1Y6bCNrVW1XkL3dHI
3	ray	Ryan Tay	19-26 Nicholls Ln, Auckland, 1010	Wiri	Auckland	Auckland City	1010	New Zealand	2024-08-31 00:47:10.791511+00	57500	0	0	pi_3PtfS2K1Y6bCNrVW133MLpw9
4	bob	Ray	Test	Test	Auckland	Auckland City	1010	New Zealand	2024-09-20 09:46:23.731971+00	15000	0	0	pi_3Q13PIK1Y6bCNrVW0P2nB7Yw
5	bob	Ryan Tay	19-26 Nicholls Ln, Auckland, 1010	Auckland	Auckland	Auckland City	1010	New Zealand	2024-09-22 08:09:57.849586+00	32500	0	0	pi_3Q1krFK1Y6bCNrVW05OCQCB7
6	bob	Bob	123 Avenue	Avenue	Auckland	Auckland	2104	New Zealand	2024-09-23 01:13:13.777202+00	41999	0	0	\N
\.


--
-- Data for Name: Products; Type: TABLE DATA; Schema: public; Owner: appuser
--

COPY public."Products" ("Id", "Name", "Description", "Price", "PictureUrl", "Type", "Brand", "QuantityInStock", "PublicId") FROM stdin;
3	Core Board Speed Rush 3	Suspendisse dui purus, scelerisque at, vulputate vitae, pretium mattis, nunc. Mauris eget neque at sem venenatis eleifend. Ut nonummy.	18000	/images/products/sb-core1.png	Boards	NetCore	100	\N
4	Net Core Super Board	Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.	30000	/images/products/sb-core2.png	Boards	NetCore	100	\N
6	Typescript Entry Board	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.	12000	/images/products/sb-ts1.png	Boards	TypeScript	100	\N
7	Core Blue Hat	Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.	1000	/images/products/hat-core1.png	Hats	NetCore	100	\N
9	Purple React Woolen Hat	Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.	1500	/images/products/hat-react2.png	Hats	React	100	\N
10	Blue Code Gloves	Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.	1800	/images/products/glove-code1.png	Gloves	VS Code	100	\N
11	Green Code Gloves	Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.	1500	/images/products/glove-code2.png	Gloves	VS Code	100	\N
12	Purple React Gloves	Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.	1600	/images/products/glove-react1.png	Gloves	React	100	\N
13	Green React Gloves	Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.	1400	/images/products/glove-react2.png	Gloves	React	100	\N
14	Redis Red Boots	Suspendisse dui purus, scelerisque at, vulputate vitae, pretium mattis, nunc. Mauris eget neque at sem venenatis eleifend. Ut nonummy.	25000	/images/products/boot-redis1.png	Boots	Redis	98	\N
8	Green React Woolen Hat	Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.	8000	/images/products/hat-react1.png	Hats	React	99	\N
15	Core Red Boots	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.	18999	/images/products/boot-core2.png	Boots	Redis	99	\N
20	Net Test Boot	This is a test boot	500	https://res.cloudinary.com/dvj1vfj72/image/upload/v1722719037/drwefs6rxr6d9nikahuo.png	Boots	NetCore	2	drwefs6rxr6d9nikahuo
16	Core Purple Boots	Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.	19999	/images/products/boot-core1.png	Boots	NetCore	99	\N
5	React Board Super Whizzy Fast	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.	25000	/images/products/sb-react1.png	Boards	React	99	\N
18	Angular Blue Boots	Suspendisse dui purus, scelerisque at, vulputate vitae, pretium mattis, nunc. Mauris eget neque at sem venenatis eleifend. Ut nonummy.	17500	/images/products/boot-ang1.png	Boots	Angular	79	\N
17	Angular Purple Boots	Aenean nec lorem. In porttitor. Donec laoreet nonummy augue.	15000	/images/products/boot-ang2.png	Boots	Angular	100	\N
2	Green Angular Board 3000	Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.	15000	/images/products/sb-ang2.png	Boards	Angular	97	\N
1	Angular Speedster Board 2000	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.	20000	https://res.cloudinary.com/dvj1vfj72/image/upload/v1728256374/ocmh01aaklxdew4mzucc.png	Boards	Angular	98	ocmh01aaklxdew4mzucc
\.


--
-- Data for Name: UserAddress; Type: TABLE DATA; Schema: public; Owner: appuser
--

COPY public."UserAddress" ("Id", "FullName", "Address1", "Address2", "City", "State", "Zip", "Country") FROM stdin;
4	Ryan	123 Abc	123 Abc	Auckalnd	Auckland	2000	NZ
5	Ryan Tay	19-26 Nicholls Ln, Auckland, 1010	Wiri	Auckland	Auckland City	1010	New Zealand
1	Bob	123 Avenue	Avenue	Auckland	Auckland	2104	New Zealand
\.


--
-- Data for Name: __EFMigrationsHistory; Type: TABLE DATA; Schema: public; Owner: appuser
--

COPY public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
20240803203219_PostgresInitial	8.0.7
\.


--
-- Name: AspNetRoleClaims_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: appuser
--

SELECT pg_catalog.setval('public."AspNetRoleClaims_Id_seq"', 1, false);


--
-- Name: AspNetRoles_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: appuser
--

SELECT pg_catalog.setval('public."AspNetRoles_Id_seq"', 3, false);


--
-- Name: AspNetUserClaims_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: appuser
--

SELECT pg_catalog.setval('public."AspNetUserClaims_Id_seq"', 1, false);


--
-- Name: AspNetUsers_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: appuser
--

SELECT pg_catalog.setval('public."AspNetUsers_Id_seq"', 5, true);


--
-- Name: BasketItem_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: appuser
--

SELECT pg_catalog.setval('public."BasketItem_Id_seq"', 28, true);


--
-- Name: Baskets_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: appuser
--

SELECT pg_catalog.setval('public."Baskets_Id_seq"', 10, true);


--
-- Name: OrderItem_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: appuser
--

SELECT pg_catalog.setval('public."OrderItem_Id_seq"', 12, true);


--
-- Name: Orders_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: appuser
--

SELECT pg_catalog.setval('public."Orders_Id_seq"', 6, true);


--
-- Name: Products_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: appuser
--

SELECT pg_catalog.setval('public."Products_Id_seq"', 24, true);


--
-- Name: AspNetRoleClaims PK_AspNetRoleClaims; Type: CONSTRAINT; Schema: public; Owner: appuser
--

ALTER TABLE ONLY public."AspNetRoleClaims"
    ADD CONSTRAINT "PK_AspNetRoleClaims" PRIMARY KEY ("Id");


--
-- Name: AspNetRoles PK_AspNetRoles; Type: CONSTRAINT; Schema: public; Owner: appuser
--

ALTER TABLE ONLY public."AspNetRoles"
    ADD CONSTRAINT "PK_AspNetRoles" PRIMARY KEY ("Id");


--
-- Name: AspNetUserClaims PK_AspNetUserClaims; Type: CONSTRAINT; Schema: public; Owner: appuser
--

ALTER TABLE ONLY public."AspNetUserClaims"
    ADD CONSTRAINT "PK_AspNetUserClaims" PRIMARY KEY ("Id");


--
-- Name: AspNetUserLogins PK_AspNetUserLogins; Type: CONSTRAINT; Schema: public; Owner: appuser
--

ALTER TABLE ONLY public."AspNetUserLogins"
    ADD CONSTRAINT "PK_AspNetUserLogins" PRIMARY KEY ("LoginProvider", "ProviderKey");


--
-- Name: AspNetUserRoles PK_AspNetUserRoles; Type: CONSTRAINT; Schema: public; Owner: appuser
--

ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "PK_AspNetUserRoles" PRIMARY KEY ("UserId", "RoleId");


--
-- Name: AspNetUserTokens PK_AspNetUserTokens; Type: CONSTRAINT; Schema: public; Owner: appuser
--

ALTER TABLE ONLY public."AspNetUserTokens"
    ADD CONSTRAINT "PK_AspNetUserTokens" PRIMARY KEY ("UserId", "LoginProvider", "Name");


--
-- Name: AspNetUsers PK_AspNetUsers; Type: CONSTRAINT; Schema: public; Owner: appuser
--

ALTER TABLE ONLY public."AspNetUsers"
    ADD CONSTRAINT "PK_AspNetUsers" PRIMARY KEY ("Id");


--
-- Name: BasketItem PK_BasketItem; Type: CONSTRAINT; Schema: public; Owner: appuser
--

ALTER TABLE ONLY public."BasketItem"
    ADD CONSTRAINT "PK_BasketItem" PRIMARY KEY ("Id");


--
-- Name: Baskets PK_Baskets; Type: CONSTRAINT; Schema: public; Owner: appuser
--

ALTER TABLE ONLY public."Baskets"
    ADD CONSTRAINT "PK_Baskets" PRIMARY KEY ("Id");


--
-- Name: OrderItem PK_OrderItem; Type: CONSTRAINT; Schema: public; Owner: appuser
--

ALTER TABLE ONLY public."OrderItem"
    ADD CONSTRAINT "PK_OrderItem" PRIMARY KEY ("Id");


--
-- Name: Orders PK_Orders; Type: CONSTRAINT; Schema: public; Owner: appuser
--

ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "PK_Orders" PRIMARY KEY ("Id");


--
-- Name: Products PK_Products; Type: CONSTRAINT; Schema: public; Owner: appuser
--

ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "PK_Products" PRIMARY KEY ("Id");


--
-- Name: UserAddress PK_UserAddress; Type: CONSTRAINT; Schema: public; Owner: appuser
--

ALTER TABLE ONLY public."UserAddress"
    ADD CONSTRAINT "PK_UserAddress" PRIMARY KEY ("Id");


--
-- Name: __EFMigrationsHistory PK___EFMigrationsHistory; Type: CONSTRAINT; Schema: public; Owner: appuser
--

ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");


--
-- Name: EmailIndex; Type: INDEX; Schema: public; Owner: appuser
--

CREATE INDEX "EmailIndex" ON public."AspNetUsers" USING btree ("NormalizedEmail");


--
-- Name: IX_AspNetRoleClaims_RoleId; Type: INDEX; Schema: public; Owner: appuser
--

CREATE INDEX "IX_AspNetRoleClaims_RoleId" ON public."AspNetRoleClaims" USING btree ("RoleId");


--
-- Name: IX_AspNetUserClaims_UserId; Type: INDEX; Schema: public; Owner: appuser
--

CREATE INDEX "IX_AspNetUserClaims_UserId" ON public."AspNetUserClaims" USING btree ("UserId");


--
-- Name: IX_AspNetUserLogins_UserId; Type: INDEX; Schema: public; Owner: appuser
--

CREATE INDEX "IX_AspNetUserLogins_UserId" ON public."AspNetUserLogins" USING btree ("UserId");


--
-- Name: IX_AspNetUserRoles_RoleId; Type: INDEX; Schema: public; Owner: appuser
--

CREATE INDEX "IX_AspNetUserRoles_RoleId" ON public."AspNetUserRoles" USING btree ("RoleId");


--
-- Name: IX_BasketItem_BasketId; Type: INDEX; Schema: public; Owner: appuser
--

CREATE INDEX "IX_BasketItem_BasketId" ON public."BasketItem" USING btree ("BasketId");


--
-- Name: IX_BasketItem_ProductId; Type: INDEX; Schema: public; Owner: appuser
--

CREATE INDEX "IX_BasketItem_ProductId" ON public."BasketItem" USING btree ("ProductId");


--
-- Name: IX_OrderItem_OrderId; Type: INDEX; Schema: public; Owner: appuser
--

CREATE INDEX "IX_OrderItem_OrderId" ON public."OrderItem" USING btree ("OrderId");


--
-- Name: RoleNameIndex; Type: INDEX; Schema: public; Owner: appuser
--

CREATE UNIQUE INDEX "RoleNameIndex" ON public."AspNetRoles" USING btree ("NormalizedName");


--
-- Name: UserNameIndex; Type: INDEX; Schema: public; Owner: appuser
--

CREATE UNIQUE INDEX "UserNameIndex" ON public."AspNetUsers" USING btree ("NormalizedUserName");


--
-- Name: AspNetRoleClaims FK_AspNetRoleClaims_AspNetRoles_RoleId; Type: FK CONSTRAINT; Schema: public; Owner: appuser
--

ALTER TABLE ONLY public."AspNetRoleClaims"
    ADD CONSTRAINT "FK_AspNetRoleClaims_AspNetRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES public."AspNetRoles"("Id") ON DELETE CASCADE;


--
-- Name: AspNetUserClaims FK_AspNetUserClaims_AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: appuser
--

ALTER TABLE ONLY public."AspNetUserClaims"
    ADD CONSTRAINT "FK_AspNetUserClaims_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;


--
-- Name: AspNetUserLogins FK_AspNetUserLogins_AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: appuser
--

ALTER TABLE ONLY public."AspNetUserLogins"
    ADD CONSTRAINT "FK_AspNetUserLogins_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;


--
-- Name: AspNetUserRoles FK_AspNetUserRoles_AspNetRoles_RoleId; Type: FK CONSTRAINT; Schema: public; Owner: appuser
--

ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "FK_AspNetUserRoles_AspNetRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES public."AspNetRoles"("Id") ON DELETE CASCADE;


--
-- Name: AspNetUserRoles FK_AspNetUserRoles_AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: appuser
--

ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "FK_AspNetUserRoles_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;


--
-- Name: AspNetUserTokens FK_AspNetUserTokens_AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: appuser
--

ALTER TABLE ONLY public."AspNetUserTokens"
    ADD CONSTRAINT "FK_AspNetUserTokens_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;


--
-- Name: BasketItem FK_BasketItem_Baskets_BasketId; Type: FK CONSTRAINT; Schema: public; Owner: appuser
--

ALTER TABLE ONLY public."BasketItem"
    ADD CONSTRAINT "FK_BasketItem_Baskets_BasketId" FOREIGN KEY ("BasketId") REFERENCES public."Baskets"("Id") ON DELETE CASCADE;


--
-- Name: BasketItem FK_BasketItem_Products_ProductId; Type: FK CONSTRAINT; Schema: public; Owner: appuser
--

ALTER TABLE ONLY public."BasketItem"
    ADD CONSTRAINT "FK_BasketItem_Products_ProductId" FOREIGN KEY ("ProductId") REFERENCES public."Products"("Id") ON DELETE CASCADE;


--
-- Name: OrderItem FK_OrderItem_Orders_OrderId; Type: FK CONSTRAINT; Schema: public; Owner: appuser
--

ALTER TABLE ONLY public."OrderItem"
    ADD CONSTRAINT "FK_OrderItem_Orders_OrderId" FOREIGN KEY ("OrderId") REFERENCES public."Orders"("Id");


--
-- Name: UserAddress FK_UserAddress_AspNetUsers_Id; Type: FK CONSTRAINT; Schema: public; Owner: appuser
--

ALTER TABLE ONLY public."UserAddress"
    ADD CONSTRAINT "FK_UserAddress_AspNetUsers_Id" FOREIGN KEY ("Id") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

