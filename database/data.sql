--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Ubuntu 12.4-1.pgdg16.04+1)
-- Dumped by pg_dump version 12.3

-- Started on 2020-10-05 10:21:02

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

--
-- TOC entry 3905 (class 0 OID 6140089)
-- Dependencies: 202
-- Data for Name: auth_role; Type: TABLE DATA; Schema: public; Owner: tvwexrydbwrtnx
--

INSERT INTO public.auth_role (id, description, label) VALUES (1, NULL, 'ADMIN');
INSERT INTO public.auth_role (id, description, label) VALUES (2, NULL, 'USER');


--
-- TOC entry 3907 (class 0 OID 6140099)
-- Dependencies: 204
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: tvwexrydbwrtnx
--

INSERT INTO public.auth_user (id, password, username) VALUES (1, '$2a$10$4mtJPUySOPSWIgqOi9YbQ.bDX46wC3Moefxvk8pAvGtrZ0418.EXS', 'matej');
INSERT INTO public.auth_user (id, password, username) VALUES (4, '$2a$10$7wY9nvMQFw0RvYTn8fReeei8uQ83lbInzrXER8/asVDeNxjvxJWje', 'Bumer');
INSERT INTO public.auth_user (id, password, username) VALUES (5, '$2a$10$IKVwNSZPJXj81KRXFDjRFe.N9pwxlDAaaax2dD7wKfYIK58TKju7m', 'anja');
INSERT INTO public.auth_user (id, password, username) VALUES (7, '$2a$10$gwowQgcd7hlpGv/NxfHA4OtHmFFrH.yxT/a5.Or3/sdwyo.XJ5xl6', 'Barbara');
INSERT INTO public.auth_user (id, password, username) VALUES (8, '$2a$10$sgVBigHoFjRGBTAaYTraJepioCtd7CwFjPp3ZpxdwreWxmmnQn8De', 'Kery');
INSERT INTO public.auth_user (id, password, username) VALUES (9, '$2a$10$eBZuGRS6xY9vFSvODvWO5.nSZSUMrV6KctEa0DfPXZfLWq0G6XHdC', 'brana');


--
-- TOC entry 3908 (class 0 OID 6140105)
-- Dependencies: 205
-- Data for Name: auth_user_role; Type: TABLE DATA; Schema: public; Owner: tvwexrydbwrtnx
--

INSERT INTO public.auth_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO public.auth_user_role (user_id, role_id) VALUES (1, 2);
INSERT INTO public.auth_user_role (user_id, role_id) VALUES (4, 1);
INSERT INTO public.auth_user_role (user_id, role_id) VALUES (5, 1);
INSERT INTO public.auth_user_role (user_id, role_id) VALUES (7, 1);
INSERT INTO public.auth_user_role (user_id, role_id) VALUES (8, 1);
INSERT INTO public.auth_user_role (user_id, role_id) VALUES (9, 1);


--
-- TOC entry 3909 (class 0 OID 6140110)
-- Dependencies: 206
-- Data for Name: box_type; Type: TABLE DATA; Schema: public; Owner: tvwexrydbwrtnx
--

INSERT INTO public.box_type (id, label) VALUES (1, 'ONES');
INSERT INTO public.box_type (id, label) VALUES (2, 'TWOS');
INSERT INTO public.box_type (id, label) VALUES (3, 'THREES');
INSERT INTO public.box_type (id, label) VALUES (4, 'FOURS');
INSERT INTO public.box_type (id, label) VALUES (5, 'FIVES');
INSERT INTO public.box_type (id, label) VALUES (6, 'SIXES');
INSERT INTO public.box_type (id, label) VALUES (7, 'MAX');
INSERT INTO public.box_type (id, label) VALUES (8, 'MIN');
INSERT INTO public.box_type (id, label) VALUES (9, 'TRIPS');
INSERT INTO public.box_type (id, label) VALUES (10, 'STRAIGHT');
INSERT INTO public.box_type (id, label) VALUES (11, 'FULL');
INSERT INTO public.box_type (id, label) VALUES (12, 'POKER');
INSERT INTO public.box_type (id, label) VALUES (13, 'JAMB');


--
-- TOC entry 3910 (class 0 OID 6140115)
-- Dependencies: 207
-- Data for Name: column_type; Type: TABLE DATA; Schema: public; Owner: tvwexrydbwrtnx
--

INSERT INTO public.column_type (id, label) VALUES (1, 'DOWNWARDS');
INSERT INTO public.column_type (id, label) VALUES (2, 'UPWARDS');
INSERT INTO public.column_type (id, label) VALUES (3, 'ANY_DIRECTION');
INSERT INTO public.column_type (id, label) VALUES (4, 'ANNOUNCEMENT');


--
-- TOC entry 3915 (class 0 OID 6140137)
-- Dependencies: 212
-- Data for Name: game_form; Type: TABLE DATA; Schema: public; Owner: tvwexrydbwrtnx
--

INSERT INTO public.game_form (id, roll_count, announcement, user_id) VALUES (13, 0, NULL, 1);
INSERT INTO public.game_form (id, roll_count, announcement, user_id) VALUES (7, 0, NULL, 5);
INSERT INTO public.game_form (id, roll_count, announcement, user_id) VALUES (17, 3, NULL, 8);
INSERT INTO public.game_form (id, roll_count, announcement, user_id) VALUES (24, 0, NULL, 9);
INSERT INTO public.game_form (id, roll_count, announcement, user_id) VALUES (27, 3, NULL, 7);


--
-- TOC entry 3912 (class 0 OID 6140125)
-- Dependencies: 209
-- Data for Name: game_column; Type: TABLE DATA; Schema: public; Owner: tvwexrydbwrtnx
--

INSERT INTO public.game_column (column_type, form_id) VALUES (1, 24);
INSERT INTO public.game_column (column_type, form_id) VALUES (2, 24);
INSERT INTO public.game_column (column_type, form_id) VALUES (3, 24);
INSERT INTO public.game_column (column_type, form_id) VALUES (4, 24);
INSERT INTO public.game_column (column_type, form_id) VALUES (1, 7);
INSERT INTO public.game_column (column_type, form_id) VALUES (2, 7);
INSERT INTO public.game_column (column_type, form_id) VALUES (3, 7);
INSERT INTO public.game_column (column_type, form_id) VALUES (4, 7);
INSERT INTO public.game_column (column_type, form_id) VALUES (1, 27);
INSERT INTO public.game_column (column_type, form_id) VALUES (2, 27);
INSERT INTO public.game_column (column_type, form_id) VALUES (3, 27);
INSERT INTO public.game_column (column_type, form_id) VALUES (4, 27);
INSERT INTO public.game_column (column_type, form_id) VALUES (1, 13);
INSERT INTO public.game_column (column_type, form_id) VALUES (2, 13);
INSERT INTO public.game_column (column_type, form_id) VALUES (3, 13);
INSERT INTO public.game_column (column_type, form_id) VALUES (4, 13);
INSERT INTO public.game_column (column_type, form_id) VALUES (1, 17);
INSERT INTO public.game_column (column_type, form_id) VALUES (2, 17);
INSERT INTO public.game_column (column_type, form_id) VALUES (3, 17);
INSERT INTO public.game_column (column_type, form_id) VALUES (4, 17);


--
-- TOC entry 3911 (class 0 OID 6140120)
-- Dependencies: 208
-- Data for Name: game_box; Type: TABLE DATA; Schema: public; Owner: tvwexrydbwrtnx
--

INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 1, 7, 1);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 7, 2);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 7, 3);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 7, 4);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 7, 5);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 7, 6);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 1, 27, 1);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 27, 2);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 27, 3);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 27, 4);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 27, 5);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 27, 6);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 27, 7);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 27, 8);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 27, 9);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 27, 10);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 27, 11);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 27, 12);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 27, 13);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 27, 1);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 27, 2);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 27, 3);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 27, 4);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 27, 5);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 27, 6);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 27, 7);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 27, 8);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 27, 9);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 27, 10);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 27, 11);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 27, 1);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 27, 3);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 27, 4);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 27, 5);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 27, 6);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 27, 7);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 27, 8);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 27, 9);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 27, 10);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 27, 11);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 27, 12);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 27, 13);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 27, 1);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 27, 2);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 27, 3);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 27, 4);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 27, 5);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 27, 6);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 7, 7);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 7, 8);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 7, 9);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 7, 10);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 7, 11);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 7, 12);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 7, 13);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 7, 1);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 7, 2);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 7, 3);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 7, 4);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 7, 5);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 7, 6);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 7, 7);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 7, 8);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 7, 9);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 7, 10);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 7, 11);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 7, 12);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 2, 7, 13);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 7, 1);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 7, 3);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 7, 4);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 7, 5);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 7, 6);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 7, 7);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 7, 8);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 7, 9);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 7, 10);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 7, 11);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 7, 12);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 7, 13);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 7, 1);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 7, 2);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 7, 3);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 7, 4);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 7, 5);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 7, 6);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 7, 7);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 7, 8);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 7, 9);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 7, 10);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 7, 11);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 7, 12);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 7, 13);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 4, 3, 7, 2);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 27, 7);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 27, 8);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 27, 9);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 27, 10);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 27, 11);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 27, 12);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 27, 13);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 8, 3, 27, 2);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 2, 27, 12);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 75, 2, 27, 13);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 1, 13, 1);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 13, 2);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 13, 3);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 13, 4);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 13, 5);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 13, 6);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 13, 7);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 13, 8);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 13, 9);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 13, 10);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 13, 11);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 13, 12);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 13, 13);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 13, 1);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 13, 2);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 13, 3);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 13, 4);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 13, 5);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 13, 6);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 13, 7);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 13, 8);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 13, 9);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 13, 10);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 13, 11);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 13, 12);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 2, 13, 13);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 13, 1);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 13, 2);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 13, 3);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 13, 4);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 13, 5);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 13, 6);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 13, 7);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 13, 8);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 13, 9);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 13, 10);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 13, 11);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 13, 12);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 13, 13);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 13, 1);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 13, 2);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 13, 3);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 13, 4);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 13, 5);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 13, 6);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 13, 7);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 13, 8);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 13, 9);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 13, 10);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 13, 11);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 13, 12);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 13, 13);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 2, 3, 17, 2);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 8, 3, 17, 4);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 75, 2, 17, 13);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 6, 4, 17, 2);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 35, 2, 17, 10);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 60, 2, 17, 12);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 27, 3, 17, 7);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 12, 4, 17, 4);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 6, 3, 17, 3);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 8, 3, 17, 8);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 22, 4, 17, 9);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 4, 1, 17, 1);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 12, 4, 17, 3);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 3, 3, 17, 1);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 4, 1, 17, 2);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 10, 2, 17, 5);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 45, 3, 17, 10);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 0, 4, 17, 10);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 10, 3, 17, 5);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 64, 3, 17, 12);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 6, 1, 17, 3);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 0, 1, 17, 10);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 0, 3, 17, 9);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 24, 3, 17, 6);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 0, 3, 17, 11);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 20, 4, 17, 5);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 41, 2, 17, 11);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 0, 4, 17, 11);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 25, 2, 17, 9);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 0, 1, 17, 11);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 10, 2, 17, 8);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 25, 2, 17, 7);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 24, 4, 17, 6);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 0, 4, 17, 13);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 8, 1, 17, 4);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 2, 4, 17, 1);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 10, 1, 17, 5);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 8, 2, 17, 4);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 15, 4, 17, 8);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 18, 1, 17, 6);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 0, 4, 17, 12);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 0, 3, 17, 13);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 22, 1, 17, 7);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 9, 2, 17, 3);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 23, 4, 17, 7);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 11, 1, 17, 8);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 18, 2, 17, 6);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 28, 1, 17, 9);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 6, 2, 17, 2);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 2, 2, 17, 1);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 56, 1, 17, 12);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 0, 1, 17, 13);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 9, 3, 24, 3);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 12, 3, 24, 4);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 12, 3, 24, 6);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 6, 3, 24, 2);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 27, 3, 24, 7);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 4, 1, 24, 1);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 1, 24, 2);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 3, 3, 24, 1);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 48, 3, 24, 11);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 12, 4, 24, 8);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 19, 3, 24, 9);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 12, 4, 24, 3);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 2, 4, 24, 1);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 2, 24, 12);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 0, 2, 24, 13);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 0, 3, 24, 10);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 24, 3);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 24, 4);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 24, 5);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 24, 6);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 24, 7);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 24, 8);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 24, 9);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 24, 10);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 24, 11);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 24, 12);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 1, 24, 13);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 24, 1);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 24, 2);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 24, 3);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 24, 4);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 24, 5);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 24, 6);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 24, 7);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 24, 8);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 24, 9);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 24, 10);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, false, 0, 2, 24, 11);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 24, 5);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 3, 24, 13);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 24, 2);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 24, 4);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 24, 5);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 24, 6);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 24, 7);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 24, 9);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 24, 10);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 24, 11);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 24, 12);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (true, false, 0, 4, 24, 13);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 60, 3, 24, 12);
INSERT INTO public.game_box (available, filled, value, column_type_id, form_id, box_type) VALUES (false, true, 10, 3, 24, 8);


--
-- TOC entry 3913 (class 0 OID 6140130)
-- Dependencies: 210
-- Data for Name: game_dice; Type: TABLE DATA; Schema: public; Owner: tvwexrydbwrtnx
--

INSERT INTO public.game_dice (ordinal_number, value, form_id) VALUES (1, 1, 24);
INSERT INTO public.game_dice (ordinal_number, value, form_id) VALUES (1, 3, 7);
INSERT INTO public.game_dice (ordinal_number, value, form_id) VALUES (3, 2, 7);
INSERT INTO public.game_dice (ordinal_number, value, form_id) VALUES (4, 3, 7);
INSERT INTO public.game_dice (ordinal_number, value, form_id) VALUES (2, 2, 7);
INSERT INTO public.game_dice (ordinal_number, value, form_id) VALUES (0, 4, 7);
INSERT INTO public.game_dice (ordinal_number, value, form_id) VALUES (0, 6, 13);
INSERT INTO public.game_dice (ordinal_number, value, form_id) VALUES (1, 6, 13);
INSERT INTO public.game_dice (ordinal_number, value, form_id) VALUES (2, 6, 13);
INSERT INTO public.game_dice (ordinal_number, value, form_id) VALUES (3, 6, 13);
INSERT INTO public.game_dice (ordinal_number, value, form_id) VALUES (4, 6, 13);
INSERT INTO public.game_dice (ordinal_number, value, form_id) VALUES (3, 4, 24);
INSERT INTO public.game_dice (ordinal_number, value, form_id) VALUES (0, 6, 24);
INSERT INTO public.game_dice (ordinal_number, value, form_id) VALUES (4, 3, 24);
INSERT INTO public.game_dice (ordinal_number, value, form_id) VALUES (2, 5, 24);
INSERT INTO public.game_dice (ordinal_number, value, form_id) VALUES (0, 4, 27);
INSERT INTO public.game_dice (ordinal_number, value, form_id) VALUES (1, 4, 27);
INSERT INTO public.game_dice (ordinal_number, value, form_id) VALUES (3, 3, 27);
INSERT INTO public.game_dice (ordinal_number, value, form_id) VALUES (4, 5, 27);
INSERT INTO public.game_dice (ordinal_number, value, form_id) VALUES (2, 5, 27);
INSERT INTO public.game_dice (ordinal_number, value, form_id) VALUES (2, 2, 17);
INSERT INTO public.game_dice (ordinal_number, value, form_id) VALUES (0, 2, 17);
INSERT INTO public.game_dice (ordinal_number, value, form_id) VALUES (3, 2, 17);
INSERT INTO public.game_dice (ordinal_number, value, form_id) VALUES (4, 6, 17);
INSERT INTO public.game_dice (ordinal_number, value, form_id) VALUES (1, 2, 17);


--
-- TOC entry 3917 (class 0 OID 6140145)
-- Dependencies: 214
-- Data for Name: game_score; Type: TABLE DATA; Schema: public; Owner: tvwexrydbwrtnx
--

INSERT INTO public.game_score (id, date, value, user_id) VALUES (467, '2020-09-22 14:52:56.424607', 994, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (471, '2020-09-22 17:03:56.656687', 1233, 5);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (476, '2020-09-23 12:58:01.056073', 1039, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (479, '2020-09-23 13:22:54.518632', 818, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (482, '2020-09-23 16:24:07.319331', 1031, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (488, '2020-09-24 14:26:18.813926', 985, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (489, '2020-09-24 14:46:36.7098', 999, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (495, '2020-09-25 11:39:18.423365', 759, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (501, '2020-09-25 14:08:31.605753', 1219, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (502, '2020-09-25 14:21:47.602887', 990, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (507, '2020-09-25 21:11:27.987303', 832, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (511, '2020-09-26 10:36:09.97914', 1095, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (515, '2020-09-26 12:55:07.769398', 811, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (519, '2020-09-26 19:01:18.980977', 997, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (523, '2020-09-27 13:28:44.686749', 865, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (524, '2020-09-27 13:39:15.785045', 1086, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (532, '2020-09-27 17:28:21.082103', 878, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (536, '2020-09-28 10:57:09.451928', 848, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (541, '2020-09-28 15:45:51.239711', 1042, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (546, '2020-09-29 07:38:27.064258', 976, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (551, '2020-09-29 11:12:01.400166', 1365, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (555, '2020-09-29 15:21:57.713903', 967, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (556, '2020-09-29 15:32:23.192279', 998, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (557, '2020-09-29 15:42:19.385448', 1141, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (558, '2020-10-01 07:51:05.826155', 1007, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (562, '2020-10-01 11:44:36.77391', 1197, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (598, '2020-10-02 05:25:31.956687', 1043, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (599, '2020-10-02 10:04:56.628144', 788, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (602, '2020-10-02 14:58:10.445331', 1002, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (608, '2020-10-03 11:33:24.873299', 971, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (468, '2020-09-22 15:05:58.923402', 1115, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (472, '2020-09-23 05:31:59.039248', 1049, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (477, '2020-09-23 13:11:31.465933', 1168, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (478, '2020-09-23 13:19:35.048998', 1034, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (483, '2020-09-24 05:18:13.943984', 1021, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (490, '2020-09-24 15:10:59.598863', 954, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (496, '2020-09-25 12:35:27.208442', 982, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (497, '2020-09-25 12:49:40.322708', 1047, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (503, '2020-09-25 14:38:01.070245', 1012, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (504, '2020-09-25 14:49:55.323555', 983, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (508, '2020-09-25 21:41:36.164482', 1059, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (512, '2020-09-26 11:49:15.227147', 948, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (516, '2020-09-26 16:59:59.005512', 976, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (520, '2020-09-27 10:24:44.654147', 1014, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (525, '2020-09-27 16:29:56.334264', 720, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (533, '2020-09-27 19:09:54.331001', 1163, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (537, '2020-09-28 14:23:52.534546', 1175, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (543, '2020-09-28 16:27:01.934877', 723, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (547, '2020-09-29 07:51:48.81804', 1058, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (552, '2020-09-29 13:10:29.795326', 1043, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (559, '2020-10-01 08:29:58.525782', 1066, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (563, '2020-10-01 13:22:43.907984', 785, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (600, '2020-10-02 10:14:23.689022', 778, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (603, '2020-10-02 15:10:40.272164', 1025, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (609, '2020-10-03 12:05:02.195647', 1007, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (469, '2020-09-22 15:17:13.958899', 793, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (473, '2020-09-23 09:07:38.060042', 951, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (480, '2020-09-23 14:52:23.60374', 1021, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (484, '2020-09-24 11:29:03.331381', 1063, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (485, '2020-09-24 11:38:35.441536', 1021, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (486, '2020-09-24 11:47:54.957996', 1164, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (491, '2020-09-24 15:25:49.612304', 1163, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (492, '2020-09-24 15:29:24.428309', 1194, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (493, '2020-09-24 15:42:10.210031', 1010, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (498, '2020-09-25 12:58:13.255567', 893, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (505, '2020-09-25 15:35:32.894759', 1385, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (509, '2020-09-25 21:54:20.924701', 1012, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (513, '2020-09-26 11:49:29.057776', 914, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (517, '2020-09-26 18:36:46.541852', 920, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (521, '2020-09-27 11:55:58.747336', 829, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (526, '2020-09-27 16:33:22.856448', 977, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (527, '2020-09-27 16:39:59.793847', 948, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (534, '2020-09-28 07:44:06.032216', 1069, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (538, '2020-09-28 15:24:57.659502', 912, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (544, '2020-09-28 18:08:41.129013', 999, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (548, '2020-09-29 08:26:55.537106', 1001, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (549, '2020-09-29 08:38:02.686332', 915, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (553, '2020-09-29 13:20:29.251229', 768, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (560, '2020-10-01 08:39:43.343273', 1116, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (564, '2020-10-01 13:31:44.251333', 917, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (601, '2020-10-02 11:25:41.906727', 1140, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (604, '2020-10-02 15:22:17.277942', 990, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (2, '2020-08-11 00:00:00', 1179, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (5, '2020-08-12 00:00:00', 1081, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (6, '2020-08-12 00:00:00', 754, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (7, '2020-08-13 00:00:00', 862, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (8, '2020-08-13 00:00:00', 889, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (9, '2020-08-13 00:00:00', 828, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (10, '2020-08-13 00:00:00', 1033, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (11, '2020-08-13 00:00:00', 892, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (12, '2020-08-13 00:00:00', 987, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (13, '2020-08-14 00:00:00', 1105, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (14, '2020-08-14 00:00:00', 1033, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (15, '2020-08-14 00:00:00', 1080, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (16, '2020-08-14 00:00:00', 1030, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (17, '2020-08-14 00:00:00', 1171, 5);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (18, '2020-08-15 00:00:00', 1069, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (19, '2020-08-15 00:00:00', 1190, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (20, '2020-08-15 00:00:00', 811, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (21, '2020-08-15 00:00:00', 1217, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (22, '2020-08-15 00:00:00', 1070, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (23, '2020-08-16 00:00:00', 1171, 5);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (24, '2020-08-16 00:00:00', 1058, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (25, '2020-08-16 00:00:00', 951, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (26, '2020-08-16 00:00:00', 976, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (27, '2020-08-16 00:00:00', 1084, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (28, '2020-08-16 00:00:00', 994, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (29, '2020-08-16 00:00:00', 1085, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (30, '2020-08-16 00:00:00', 1106, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (31, '2020-08-17 00:00:00', 954, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (32, '2020-08-17 00:00:00', 928, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (33, '2020-08-17 00:00:00', 1027, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (34, '2020-08-17 00:00:00', 946, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (35, '2020-08-17 00:00:00', 973, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (36, '2020-08-17 00:00:00', 1061, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (37, '2020-08-17 00:00:00', 1029, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (38, '2020-08-17 00:00:00', 1049, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (39, '2020-08-17 00:00:00', 1062, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (40, '2020-08-17 00:00:00', 1117, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (41, '2020-08-17 00:00:00', 1199, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (42, '2020-08-17 00:00:00', 872, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (43, '2020-08-17 00:00:00', 1072, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (44, '2020-08-17 00:00:00', 859, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (45, '2020-08-17 00:00:00', 1153, 5);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (46, '2020-08-18 00:00:00', 1225, 5);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (47, '2020-08-18 00:00:00', 1023, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (48, '2020-08-18 00:00:00', 1041, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (49, '2020-08-18 00:00:00', 857, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (50, '2020-08-18 00:00:00', 1194, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (51, '2020-08-18 00:00:00', 1131, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (52, '2020-08-18 00:00:00', 947, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (53, '2020-08-18 00:00:00', 681, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (54, '2020-08-18 00:00:00', 996, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (55, '2020-08-18 00:00:00', 858, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (56, '2020-08-18 00:00:00', 1128, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (57, '2020-08-18 00:00:00', 1250, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (58, '2020-08-18 00:00:00', 1088, 5);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (59, '2020-08-18 00:00:00', 967, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (60, '2020-08-19 00:00:00', 1125, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (61, '2020-08-19 00:00:00', 962, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (62, '2020-08-19 00:00:00', 1037, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (63, '2020-08-19 00:00:00', 854, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (64, '2020-08-19 00:00:00', 931, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (65, '2020-08-19 00:00:00', 867, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (66, '2020-08-19 00:00:00', 759, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (67, '2020-08-19 00:00:00', 1088, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (68, '2020-08-19 00:00:00', 1045, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (69, '2020-08-19 00:00:00', 1097, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (70, '2020-08-19 00:00:00', 915, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (71, '2020-08-19 00:00:00', 905, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (72, '2020-08-20 00:00:00', 785, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (73, '2020-08-20 00:00:00', 948, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (74, '2020-08-20 00:00:00', 1144, 5);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (75, '2020-08-20 00:00:00', 1089, 5);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (76, '2020-08-20 00:00:00', 1270, 5);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (77, '2020-08-20 00:00:00', 1108, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (78, '2020-08-20 00:00:00', 862, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (79, '2020-08-20 00:00:00', 873, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (80, '2020-08-20 00:00:00', 1139, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (81, '2020-08-20 00:00:00', 1102, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (85, '2020-08-21 00:00:00', 1121, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (86, '2020-08-21 00:00:00', 731, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (87, '2020-08-21 00:00:00', 1059, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (88, '2020-08-21 00:00:00', 808, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (89, '2020-08-21 00:00:00', 994, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (90, '2020-08-21 00:00:00', 843, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (91, '2020-08-21 00:00:00', 977, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (92, '2020-08-22 00:00:00', 1210, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (93, '2020-08-22 00:00:00', 928, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (94, '2020-08-22 00:00:00', 1201, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (95, '2020-08-22 00:00:00', 978, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (96, '2020-08-22 00:00:00', 1034, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (97, '2020-08-22 00:00:00', 1075, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (98, '2020-08-23 00:00:00', 1072, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (99, '2020-08-23 00:00:00', 770, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (100, '2020-08-23 00:00:00', 1236, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (101, '2020-08-23 00:00:00', 897, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (102, '2020-08-23 00:00:00', 1067, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (103, '2020-08-23 00:00:00', 960, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (104, '2020-08-23 00:00:00', 864, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (105, '2020-08-23 00:00:00', 1085, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (106, '2020-08-23 00:00:00', 783, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (107, '2020-08-23 00:00:00', 1001, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (108, '2020-08-23 00:00:00', 1094, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (109, '2020-08-23 00:00:00', 1040, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (110, '2020-08-23 00:00:00', 936, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (111, '2020-08-23 00:00:00', 860, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (112, '2020-08-23 00:00:00', 983, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (113, '2020-08-23 00:00:00', 991, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (114, '2020-08-23 00:00:00', 1032, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (115, '2020-08-24 00:00:00', 961, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (116, '2020-08-24 00:00:00', 971, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (117, '2020-08-24 00:00:00', 1054, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (118, '2020-08-24 00:00:00', 995, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (119, '2020-08-24 00:00:00', 929, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (120, '2020-08-24 00:00:00', 897, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (121, '2020-08-24 00:00:00', 796, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (122, '2020-08-24 00:00:00', 958, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (123, '2020-08-24 00:00:00', 1093, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (124, '2020-08-24 00:00:00', 912, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (125, '2020-08-24 00:00:00', 574, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (126, '2020-08-24 00:00:00', 975, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (127, '2020-08-24 00:00:00', 913, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (128, '2020-08-24 00:00:00', 888, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (129, '2020-08-24 00:00:00', 991, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (130, '2020-08-25 00:00:00', 810, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (131, '2020-08-25 00:00:00', 716, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (132, '2020-08-25 00:00:00', 1085, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (133, '2020-08-25 00:00:00', 1016, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (134, '2020-08-25 00:00:00', 931, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (135, '2020-08-26 00:00:00', 1107, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (136, '2020-08-26 00:00:00', 1175, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (137, '2020-08-26 00:00:00', 995, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (138, '2020-08-26 00:00:00', 955, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (139, '2020-08-26 00:00:00', 881, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (140, '2020-08-26 00:00:00', 936, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (141, '2020-08-26 00:00:00', 920, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (142, '2020-08-26 00:00:00', 894, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (143, '2020-08-26 00:00:00', 700, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (144, '2020-08-26 00:00:00', 937, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (145, '2020-08-26 00:00:00', 845, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (146, '2020-08-27 00:00:00', 1135, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (147, '2020-08-27 00:00:00', 1004, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (148, '2020-08-27 00:00:00', 1122, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (149, '2020-08-27 00:00:00', 1022, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (150, '2020-08-27 00:00:00', 946, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (151, '2020-08-27 00:00:00', 893, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (152, '2020-08-27 00:00:00', 862, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (153, '2020-08-27 00:00:00', 1221, 5);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (154, '2020-08-27 00:00:00', 855, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (155, '2020-08-27 00:00:00', 825, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (156, '2020-08-27 00:00:00', 1207, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (157, '2020-08-28 00:00:00', 1116, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (158, '2020-08-28 00:00:00', 853, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (159, '2020-08-28 00:00:00', 1013, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (160, '2020-08-28 00:00:00', 959, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (161, '2020-08-28 00:00:00', 900, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (162, '2020-08-28 00:00:00', 947, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (163, '2020-08-28 00:00:00', 1092, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (164, '2020-08-28 00:00:00', 1013, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (165, '2020-08-28 00:00:00', 1077, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (166, '2020-08-28 00:00:00', 859, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (167, '2020-08-28 00:00:00', 914, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (168, '2020-08-28 00:00:00', 898, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (169, '2020-08-28 00:00:00', 906, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (170, '2020-08-28 00:00:00', 952, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (171, '2020-08-28 00:00:00', 1002, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (172, '2020-08-28 00:00:00', 1012, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (173, '2020-08-28 00:00:00', 956, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (174, '2020-08-28 00:00:00', 1012, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (175, '2020-08-29 00:00:00', 1045, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (177, '2020-08-29 15:17:09.367372', 925, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (178, '2020-08-29 15:27:28.631252', 880, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (179, '2020-08-29 16:08:10.638475', 857, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (180, '2020-08-29 16:19:17.386313', 1122, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (181, '2020-08-29 16:34:45.801874', 882, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (182, '2020-08-29 22:24:13.796756', 1220, 5);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (183, '2020-08-30 06:15:07.125219', 940, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (184, '2020-08-30 10:06:52.930121', 845, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (185, '2020-08-30 11:34:51.146069', 1005, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (186, '2020-08-30 11:44:45.096871', 886, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (187, '2020-08-30 13:05:42.411105', 1002, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (188, '2020-08-30 13:18:24.254513', 1165, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (189, '2020-08-30 13:57:31.619794', 971, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (190, '2020-08-30 15:06:44.240328', 935, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (191, '2020-08-30 15:39:12.303027', 1080, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (192, '2020-08-30 15:59:56.487873', 977, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (193, '2020-08-30 16:09:27.928875', 927, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (194, '2020-08-30 16:20:06.646746', 813, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (195, '2020-08-30 18:34:03.128151', 1003, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (196, '2020-08-31 08:11:56.75173', 1083, 5);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (197, '2020-08-31 08:59:54.972249', 1032, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (198, '2020-08-31 09:03:09.186449', 931, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (199, '2020-08-31 09:48:37.656402', 1040, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (200, '2020-08-31 09:59:09.268731', 847, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (201, '2020-08-31 10:09:11.689884', 967, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (202, '2020-08-31 10:18:30.199312', 831, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (203, '2020-08-31 10:47:42.764747', 1008, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (204, '2020-08-31 10:56:45.277288', 1070, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (205, '2020-08-31 11:07:20.007899', 1087, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (206, '2020-08-31 11:17:09.390353', 988, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (207, '2020-08-31 11:40:34.277894', 886, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (208, '2020-08-31 11:55:48.063747', 1121, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (209, '2020-08-31 12:45:12.299906', 961, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (210, '2020-08-31 12:58:12.881588', 1014, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (211, '2020-08-31 13:25:54.472761', 863, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (244, '2020-08-31 16:03:41.104852', 827, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (245, '2020-08-31 16:23:54.705793', 924, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (246, '2020-08-31 19:54:45.88562', 1257, 5);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (247, '2020-08-31 20:42:53.523761', 950, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (248, '2020-09-01 08:10:21.710871', 970, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (249, '2020-09-01 10:03:12.650018', 746, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (250, '2020-09-01 13:30:27.059531', 688, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (251, '2020-09-01 13:39:49.291712', 943, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (252, '2020-09-01 13:49:26.341418', 729, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (253, '2020-09-01 15:31:47.609123', 838, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (254, '2020-09-01 16:13:15.472316', 904, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (255, '2020-09-01 16:20:42.596566', 1050, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (256, '2020-09-01 16:30:24.156919', 922, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (257, '2020-09-01 16:33:45.69869', 1060, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (258, '2020-09-01 16:46:10.880963', 882, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (259, '2020-09-02 15:09:03.485338', 854, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (260, '2020-09-03 08:36:55.442372', 1152, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (261, '2020-09-03 08:46:33.829813', 1171, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (262, '2020-09-03 09:44:17.151668', 953, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (263, '2020-09-03 09:49:34.648879', 895, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (264, '2020-09-03 09:53:29.011719', 1022, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (265, '2020-09-03 10:02:09.957582', 823, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (266, '2020-09-03 10:03:11.019683', 1101, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (267, '2020-09-03 10:14:38.146172', 968, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (268, '2020-09-03 10:17:46.732745', 980, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (269, '2020-09-03 10:27:16.845979', 1006, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (270, '2020-09-03 10:39:08.746111', 859, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (271, '2020-09-03 10:52:02.821158', 1048, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (272, '2020-09-03 11:00:54.818098', 914, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (273, '2020-09-03 11:38:35.778159', 843, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (274, '2020-09-03 12:03:53.585595', 690, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (275, '2020-09-03 14:09:09.644341', 1032, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (276, '2020-09-03 14:18:18.334288', 929, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (277, '2020-09-03 14:56:23.271149', 946, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (278, '2020-09-03 17:40:50.352617', 806, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (279, '2020-09-03 18:22:14.28521', 924, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (280, '2020-09-04 06:45:08.527948', 997, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (281, '2020-09-04 06:54:53.873352', 897, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (282, '2020-09-04 11:33:03.24895', 753, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (283, '2020-09-04 12:34:39.808104', 1216, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (284, '2020-09-04 16:20:16.253275', 1038, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (285, '2020-09-04 18:11:00.428875', 1100, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (286, '2020-09-04 20:04:12.653904', 1065, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (287, '2020-09-05 09:13:07.991129', 848, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (288, '2020-09-05 10:22:00.823624', 1002, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (289, '2020-09-05 10:37:27.013104', 783, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (290, '2020-09-05 12:05:39.05631', 938, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (291, '2020-09-05 13:43:58.768045', 917, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (292, '2020-09-05 14:46:52.203485', 1016, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (293, '2020-09-06 10:20:23.539332', 1074, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (294, '2020-09-06 10:35:48.401026', 934, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (295, '2020-09-06 10:52:34.945407', 935, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (296, '2020-09-06 16:04:01.522806', 1176, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (297, '2020-09-06 17:13:07.077685', 1192, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (298, '2020-09-06 19:25:38.508011', 1042, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (299, '2020-09-06 19:36:24.176225', 1074, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (300, '2020-09-07 09:31:09.783417', 915, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (301, '2020-09-07 09:40:44.877719', 863, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (302, '2020-09-07 09:41:48.43949', 1003, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (303, '2020-09-07 09:50:30.873242', 877, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (304, '2020-09-07 09:51:04.74675', 1081, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (305, '2020-09-07 09:54:19.622509', 949, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (306, '2020-09-07 09:59:46.660517', 862, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (307, '2020-09-07 10:25:07.641135', 971, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (308, '2020-09-07 10:34:22.993259', 938, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (309, '2020-09-07 12:17:20.936004', 975, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (310, '2020-09-07 12:19:58.90414', 1231, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (311, '2020-09-07 12:26:23.140128', 1000, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (312, '2020-09-07 12:34:55.810235', 871, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (313, '2020-09-07 12:35:58.393065', 856, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (314, '2020-09-07 12:50:39.340943', 832, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (315, '2020-09-07 12:51:25.104354', 1128, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (316, '2020-09-07 13:11:47.052324', 785, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (317, '2020-09-07 13:26:42.712189', 1097, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (318, '2020-09-07 13:28:59.250392', 1048, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (319, '2020-09-07 13:40:57.566449', 961, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (320, '2020-09-07 13:43:44.188464', 866, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (321, '2020-09-07 14:02:08.352301', 845, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (322, '2020-09-07 14:11:43.791357', 1081, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (323, '2020-09-07 14:21:32.934007', 1051, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (324, '2020-09-07 14:42:51.342131', 1019, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (325, '2020-09-07 14:44:56.584224', 942, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (326, '2020-09-07 16:14:31.351367', 832, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (327, '2020-09-07 16:42:13.261256', 667, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (328, '2020-09-07 19:57:16.497156', 1038, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (329, '2020-09-08 08:00:27.878793', 1163, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (330, '2020-09-08 10:09:34.562624', 892, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (331, '2020-09-08 11:02:33.072094', 1088, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (332, '2020-09-08 11:12:40.07716', 857, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (333, '2020-09-08 11:12:55.098387', 1164, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (334, '2020-09-08 11:25:31.779108', 1142, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (335, '2020-09-08 11:30:11.581882', 1117, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (336, '2020-09-08 11:41:51.864996', 993, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (337, '2020-09-08 11:54:17.031171', 967, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (338, '2020-09-08 12:21:44.310591', 1084, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (339, '2020-09-08 12:36:49.635559', 1017, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (340, '2020-09-08 12:48:32.959651', 1039, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (341, '2020-09-08 13:01:40.008241', 859, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (342, '2020-09-08 13:15:00.986774', 991, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (343, '2020-09-08 13:29:58.987908', 1031, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (344, '2020-09-08 13:31:53.102843', 1003, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (345, '2020-09-08 13:40:11.955295', 873, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (346, '2020-09-08 13:42:46.657381', 1138, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (347, '2020-09-08 13:53:34.653599', 895, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (348, '2020-09-08 13:54:33.575639', 1094, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (349, '2020-09-08 16:47:00.676762', 1127, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (350, '2020-09-08 17:55:30.824929', 937, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (351, '2020-09-08 18:07:10.682867', 1194, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (352, '2020-09-08 18:18:33.454547', 779, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (353, '2020-09-08 18:30:34.530158', 1065, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (354, '2020-09-08 18:42:23.832243', 1040, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (355, '2020-09-08 18:55:17.879553', 1165, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (356, '2020-09-08 19:48:11.668087', 806, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (357, '2020-09-09 08:39:27.746167', 960, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (358, '2020-09-09 10:05:47.746283', 859, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (359, '2020-09-09 10:15:04.733944', 885, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (360, '2020-09-09 10:32:04.469422', 961, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (361, '2020-09-09 10:41:35.138774', 1025, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (362, '2020-09-09 12:46:17.911281', 778, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (363, '2020-09-09 13:24:29.80315', 1044, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (364, '2020-09-09 15:35:26.918926', 1098, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (365, '2020-09-09 15:48:20.737772', 872, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (366, '2020-09-09 16:14:42.795544', 1024, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (367, '2020-09-09 17:46:42.778883', 1126, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (368, '2020-09-09 17:58:45.156015', 1096, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (369, '2020-09-10 03:56:24.658572', 1100, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (370, '2020-09-10 07:53:47.116798', 1163, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (371, '2020-09-10 09:43:26.676395', 981, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (372, '2020-09-10 11:22:01.546785', 981, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (373, '2020-09-10 13:24:16.161635', 874, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (375, '2020-09-11 12:47:19.737839', 1007, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (376, '2020-09-11 19:42:54.636376', 1001, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (377, '2020-09-12 11:31:11.395023', 1126, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (378, '2020-09-12 11:42:36.455536', 1187, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (379, '2020-09-12 11:54:28.672319', 1112, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (380, '2020-09-12 12:23:48.028886', 1045, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (381, '2020-09-12 12:38:55.926194', 945, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (382, '2020-09-12 17:22:54.152108', 987, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (383, '2020-09-12 17:34:11.656394', 1083, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (384, '2020-09-12 17:46:36.565423', 1057, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (385, '2020-09-12 17:57:54.432838', 782, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (386, '2020-09-13 07:33:52.781932', 1040, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (387, '2020-09-13 11:22:31.482782', 1058, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (388, '2020-09-13 11:41:45.282832', 1141, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (389, '2020-09-13 12:15:25.638654', 890, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (390, '2020-09-13 14:33:21.805868', 776, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (391, '2020-09-13 15:23:41.56128', 1053, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (392, '2020-09-13 15:35:48.625874', 995, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (393, '2020-09-13 15:47:31.613425', 924, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (394, '2020-09-13 16:19:41.018148', 924, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (395, '2020-09-13 16:45:29.677457', 1043, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (396, '2020-09-13 16:55:16.778115', 893, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (397, '2020-09-13 17:06:34.223082', 834, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (398, '2020-09-13 17:19:41.621305', 1017, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (399, '2020-09-14 07:34:12.78064', 918, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (400, '2020-09-14 09:53:29.07225', 865, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (401, '2020-09-14 10:03:41.139385', 788, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (402, '2020-09-14 10:21:32.207631', 908, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (403, '2020-09-14 12:47:30.176093', 991, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (404, '2020-09-14 14:48:58.5823', 1001, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (405, '2020-09-14 15:14:26.882431', 884, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (406, '2020-09-14 15:33:45.946206', 1122, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (407, '2020-09-14 15:53:40.327763', 1083, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (408, '2020-09-14 17:38:25.533349', 1103, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (409, '2020-09-15 09:32:26.580719', 874, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (410, '2020-09-15 09:41:45.895812', 906, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (411, '2020-09-15 09:55:42.684782', 909, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (412, '2020-09-15 15:17:16.843515', 1132, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (413, '2020-09-15 18:48:35.375085', 1018, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (414, '2020-09-15 19:02:23.77563', 946, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (415, '2020-09-15 19:04:16.151099', 930, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (416, '2020-09-15 19:16:12.042801', 966, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (417, '2020-09-16 10:49:51.970191', 898, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (418, '2020-09-16 10:59:07.801057', 1142, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (419, '2020-09-16 11:13:24.559146', 966, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (420, '2020-09-16 11:38:23.267489', 926, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (421, '2020-09-16 11:52:22.599814', 941, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (422, '2020-09-16 16:23:16.809903', 1051, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (423, '2020-09-16 16:33:21.495014', 911, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (424, '2020-09-16 18:37:13.990793', 1007, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (425, '2020-09-17 06:11:18.71056', 909, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (426, '2020-09-17 09:24:33.957329', 834, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (427, '2020-09-17 10:14:30.10844', 843, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (428, '2020-09-17 10:29:42.97166', 1009, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (429, '2020-09-17 10:57:53.613773', 1008, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (430, '2020-09-17 18:31:31.570491', 1089, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (431, '2020-09-18 05:42:47.204993', 1036, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (432, '2020-09-18 10:56:34.040239', 919, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (433, '2020-09-18 11:36:18.083818', 1109, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (434, '2020-09-18 12:44:15.194235', 1000, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (435, '2020-09-18 12:56:54.622572', 893, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (436, '2020-09-18 13:08:42.374001', 1231, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (437, '2020-09-19 08:28:22.80849', 815, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (438, '2020-09-19 09:15:12.357529', 1193, 5);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (439, '2020-09-20 07:51:12.072162', 1103, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (440, '2020-09-20 09:22:45.320507', 1051, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (441, '2020-09-20 09:44:26.675069', 909, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (442, '2020-09-20 09:55:51.220535', 1038, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (443, '2020-09-20 11:42:22.279071', 856, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (444, '2020-09-20 13:11:01.398741', 918, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (445, '2020-09-20 13:21:41.234798', 960, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (446, '2020-09-20 13:43:53.559602', 804, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (447, '2020-09-20 14:47:13.571055', 984, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (448, '2020-09-20 15:11:46.298071', 983, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (449, '2020-09-20 15:31:08.6776', 969, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (450, '2020-09-20 16:11:12.055149', 1037, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (451, '2020-09-20 18:15:30.842493', 1102, 5);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (452, '2020-09-20 19:44:22.609453', 1024, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (453, '2020-09-21 04:48:32.411936', 936, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (454, '2020-09-21 05:37:44.528418', 1046, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (455, '2020-09-21 10:35:15.881743', 795, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (456, '2020-09-21 10:44:16.783263', 913, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (457, '2020-09-21 12:47:26.451664', 911, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (458, '2020-09-21 12:59:35.841981', 963, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (459, '2020-09-21 13:11:00.730794', 888, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (460, '2020-09-21 13:22:48.161946', 946, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (461, '2020-09-21 16:20:39.767755', 912, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (462, '2020-09-21 16:29:58.648076', 991, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (463, '2020-09-21 18:20:39.845531', 796, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (464, '2020-09-22 11:34:11.580176', 993, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (465, '2020-09-22 11:43:47.718955', 930, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (466, '2020-09-22 14:24:17.266883', 995, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (470, '2020-09-22 15:32:40.804795', 751, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (474, '2020-09-23 09:40:42.637438', 868, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (475, '2020-09-23 09:44:09.439402', 1143, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (481, '2020-09-23 15:03:25.41255', 937, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (487, '2020-09-24 14:02:10.275249', 858, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (494, '2020-09-25 05:30:37.866721', 958, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (499, '2020-09-25 13:27:17.761741', 913, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (500, '2020-09-25 13:37:03.86679', 872, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (506, '2020-09-25 16:05:58.659879', 1006, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (510, '2020-09-26 09:34:42.14506', 1031, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (514, '2020-09-26 12:02:51.429563', 812, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (518, '2020-09-26 18:49:34.129924', 1005, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (522, '2020-09-27 12:56:04.531595', 1110, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (528, '2020-09-27 16:57:40.871594', 1001, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (529, '2020-09-27 17:09:45.828924', 1125, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (530, '2020-09-27 17:10:05.699447', 971, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (531, '2020-09-27 17:19:23.416923', 929, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (535, '2020-09-28 09:25:09.235049', 929, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (539, '2020-09-28 15:25:17.345061', 1053, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (540, '2020-09-28 15:36:24.704411', 1043, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (542, '2020-09-28 15:50:56.833167', 1028, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (545, '2020-09-29 07:19:35.032964', 1071, 4);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (550, '2020-09-29 10:43:47.286995', 1073, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (554, '2020-09-29 15:12:21.914181', 1039, 7);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (561, '2020-10-01 09:30:22.391087', 960, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (565, '2020-10-01 13:54:58.976884', 975, 9);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (605, '2020-10-03 11:04:55.547828', 940, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (606, '2020-10-03 11:14:43.634049', 907, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (607, '2020-10-03 11:24:08.891327', 1031, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (610, '2020-10-04 07:35:49.414196', 1089, 1);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (611, '2020-10-04 16:33:48.385999', 991, 8);
INSERT INTO public.game_score (id, date, value, user_id) VALUES (613, '2020-10-05 08:20:56.455141', 860, 8);


--
-- TOC entry 3923 (class 0 OID 0)
-- Dependencies: 203
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tvwexrydbwrtnx
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 10, true);


--
-- TOC entry 3924 (class 0 OID 0)
-- Dependencies: 211
-- Name: game_form_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tvwexrydbwrtnx
--

SELECT pg_catalog.setval('public.game_form_id_seq', 27, true);


--
-- TOC entry 3925 (class 0 OID 0)
-- Dependencies: 213
-- Name: game_score_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tvwexrydbwrtnx
--

SELECT pg_catalog.setval('public.game_score_id_seq', 613, true);


-- Completed on 2020-10-05 10:21:13

--
-- PostgreSQL database dump complete
--

