library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity M_Mult_AMA3_32 is
 port(
  A    : in std_logic_vector(31 downto 0);
  B    : in std_logic_vector(31 downto 0);
  R    : out std_logic_vector(63 downto 0)
 );
end M_Mult_AMA3_32;

architecture Mult32 of M_Mult_AMA3_32 is

 COMPONENT Somador_Exato_1
 PORT(
  A : IN std_logic;
  B : IN std_logic;
  Cin : IN std_logic;          
  Cout : OUT std_logic;
  S : OUT std_logic
  );
 END COMPONENT;

 COMPONENT Soma_AMA3_1
 PORT(
  A : IN std_logic;
  B : IN std_logic;
  Cin : IN std_logic;          
  Cout : OUT std_logic;
  S : OUT std_logic
  );
 END COMPONENT;
 
signal C : STD_LOGIC_VECTOR (1023 downto 0); --saida das AND
signal Carry : STD_LOGIC_VECTOR (990 downto 0); -- saida Cout dos somadores
signal E : STD_LOGIC_VECTOR (958 downto 0); -- Saida S dos somadores

begin
  C(0) <= A(0)and B(0);
  R(0) <= C(0);
 	C	(	1	)	<= A(	1	)and B(	0	);
	C	(	2	)	<= A(	2	)and B(	0	);
	C	(	3	)	<= A(	3	)and B(	0	);
	C	(	4	)	<= A(	4	)and B(	0	);
	C	(	5	)	<= A(	5	)and B(	0	);
	C	(	6	)	<= A(	6	)and B(	0	);
	C	(	7	)	<= A(	7	)and B(	0	);
	C	(	8	)	<= A(	8	)and B(	0	);
	C	(	9	)	<= A(	9	)and B(	0	);
	C	(	10	)	<= A(	10	)and B(	0	);
	C	(	11	)	<= A(	11	)and B(	0	);
	C	(	12	)	<= A(	12	)and B(	0	);
	C	(	13	)	<= A(	13	)and B(	0	);
	C	(	14	)	<= A(	14	)and B(	0	);
	C	(	15	)	<= A(	15	)and B(	0	);
	C	(	16	)	<= A(	16	)and B(	0	);
	C	(	17	)	<= A(	17	)and B(	0	);
	C	(	18	)	<= A(	18	)and B(	0	);
	C	(	19	)	<= A(	19	)and B(	0	);
	C	(	20	)	<= A(	20	)and B(	0	);
	C	(	21	)	<= A(	21	)and B(	0	);
	C	(	22	)	<= A(	22	)and B(	0	);
	C	(	23	)	<= A(	23	)and B(	0	);
	C	(	24	)	<= A(	24	)and B(	0	);
	C	(	25	)	<= A(	25	)and B(	0	);
	C	(	26	)	<= A(	26	)and B(	0	);
	C	(	27	)	<= A(	27	)and B(	0	);
	C	(	28	)	<= A(	28	)and B(	0	);
	C	(	29	)	<= A(	29	)and B(	0	);
	C	(	30	)	<= A(	30	)and B(	0	);
	C	(	31	)	<= A(	31	)and B(	0	);


	C	(	32	)	<= A(	0	)and B(	1	);
	C	(	33	)	<= A(	1	)and B(	1	);
	C	(	34	)	<= A(	2	)and B(	1	);
	C	(	35	)	<= A(	3	)and B(	1	);
	C	(	36	)	<= A(	4	)and B(	1	);
	C	(	37	)	<= A(	5	)and B(	1	);
	C	(	38	)	<= A(	6	)and B(	1	);
	C	(	39	)	<= A(	7	)and B(	1	);
	C	(	40	)	<= A(	8	)and B(	1	);
	C	(	41	)	<= A(	9	)and B(	1	);
	C	(	42	)	<= A(	10	)and B(	1	);
	C	(	43	)	<= A(	11	)and B(	1	);
	C	(	44	)	<= A(	12	)and B(	1	);
	C	(	45	)	<= A(	13	)and B(	1	);
	C	(	46	)	<= A(	14	)and B(	1	);
	C	(	47	)	<= A(	15	)and B(	1	);
	C	(	48	)	<= A(	16	)and B(	1	);
	C	(	49	)	<= A(	17	)and B(	1	);
	C	(	50	)	<= A(	18	)and B(	1	);
	C	(	51	)	<= A(	19	)and B(	1	);
	C	(	52	)	<= A(	20	)and B(	1	);
	C	(	53	)	<= A(	21	)and B(	1	);
	C	(	54	)	<= A(	22	)and B(	1	);
	C	(	55	)	<= A(	23	)and B(	1	);
	C	(	56	)	<= A(	24	)and B(	1	);
	C	(	57	)	<= A(	25	)and B(	1	);
	C	(	58	)	<= A(	26	)and B(	1	);
	C	(	59	)	<= A(	27	)and B(	1	);
	C	(	60	)	<= A(	28	)and B(	1	);
	C	(	61	)	<= A(	29	)and B(	1	);
	C	(	62	)	<= A(	30	)and B(	1	);
	C	(	63	)	<= A(	31	)and B(	1	);

	C	(	64	)	<= A(	0	)and B(	2	);
	C	(	65	)	<= A(	1	)and B(	2	);
	C	(	66	)	<= A(	2	)and B(	2	);
	C	(	67	)	<= A(	3	)and B(	2	);
	C	(	68	)	<= A(	4	)and B(	2	);
	C	(	69	)	<= A(	5	)and B(	2	);
	C	(	70	)	<= A(	6	)and B(	2	);
	C	(	71	)	<= A(	7	)and B(	2	);
	C	(	72	)	<= A(	8	)and B(	2	);
	C	(	73	)	<= A(	9	)and B(	2	);
	C	(	74	)	<= A(	10	)and B(	2	);
	C	(	75	)	<= A(	11	)and B(	2	);
	C	(	76	)	<= A(	12	)and B(	2	);
	C	(	77	)	<= A(	13	)and B(	2	);
	C	(	78	)	<= A(	14	)and B(	2	);
	C	(	79	)	<= A(	15	)and B(	2	);
	C	(	80	)	<= A(	16	)and B(	2	);
	C	(	81	)	<= A(	17	)and B(	2	);
	C	(	82	)	<= A(	18	)and B(	2	);
	C	(	83	)	<= A(	19	)and B(	2	);
	C	(	84	)	<= A(	20	)and B(	2	);
	C	(	85	)	<= A(	21	)and B(	2	);
	C	(	86	)	<= A(	22	)and B(	2	);
	C	(	87	)	<= A(	23	)and B(	2	);
	C	(	88	)	<= A(	24	)and B(	2	);
	C	(	89	)	<= A(	25	)and B(	2	);
	C	(	90	)	<= A(	26	)and B(	2	);
	C	(	91	)	<= A(	27	)and B(	2	);
	C	(	92	)	<= A(	28	)and B(	2	);
	C	(	93	)	<= A(	29	)and B(	2	);
	C	(	94	)	<= A(	30	)and B(	2	);
	C	(	95	)	<= A(	31	)and B(	2	);


	C	(	96	)	<= A(	0	)and B(	3	);
	C	(	97	)	<= A(	1	)and B(	3	);
	C	(	98	)	<= A(	2	)and B(	3	);
	C	(	99	)	<= A(	3	)and B(	3	);
	C	(	100	)	<= A(	4	)and B(	3	);
	C	(	101	)	<= A(	5	)and B(	3	);
	C	(	102	)	<= A(	6	)and B(	3	);
	C	(	103	)	<= A(	7	)and B(	3	);
	C	(	104	)	<= A(	8	)and B(	3	);
	C	(	105	)	<= A(	9	)and B(	3	);
	C	(	106	)	<= A(	10	)and B(	3	);
	C	(	107	)	<= A(	11	)and B(	3	);
	C	(	108	)	<= A(	12	)and B(	3	);
	C	(	109	)	<= A(	13	)and B(	3	);
	C	(	110	)	<= A(	14	)and B(	3	);
	C	(	111	)	<= A(	15	)and B(	3	);
	C	(	112	)	<= A(	16	)and B(	3	);
	C	(	113	)	<= A(	17	)and B(	3	);
	C	(	114	)	<= A(	18	)and B(	3	);
	C	(	115	)	<= A(	19	)and B(	3	);
	C	(	116	)	<= A(	20	)and B(	3	);
	C	(	117	)	<= A(	21	)and B(	3	);
	C	(	118	)	<= A(	22	)and B(	3	);
	C	(	119	)	<= A(	23	)and B(	3	);
	C	(	120	)	<= A(	24	)and B(	3	);
	C	(	121	)	<= A(	25	)and B(	3	);
	C	(	122	)	<= A(	26	)and B(	3	);
	C	(	123	)	<= A(	27	)and B(	3	);
	C	(	124	)	<= A(	28	)and B(	3	);
	C	(	125	)	<= A(	29	)and B(	3	);
	C	(	126	)	<= A(	30	)and B(	3	);
	C	(	127	)	<= A(	31	)and B(	3	);


	C	(	128	)	<= A(	0	)and B(	4	);
	C	(	129	)	<= A(	1	)and B(	4	);
	C	(	130	)	<= A(	2	)and B(	4	);
	C	(	131	)	<= A(	3	)and B(	4	);
	C	(	132	)	<= A(	4	)and B(	4	);
	C	(	133	)	<= A(	5	)and B(	4	);
	C	(	134	)	<= A(	6	)and B(	4	);
	C	(	135	)	<= A(	7	)and B(	4	);
	C	(	136	)	<= A(	8	)and B(	4	);
	C	(	137	)	<= A(	9	)and B(	4	);
	C	(	138	)	<= A(	10	)and B(	4	);
	C	(	139	)	<= A(	11	)and B(	4	);
	C	(	140	)	<= A(	12	)and B(	4	);
	C	(	141	)	<= A(	13	)and B(	4	);
	C	(	142	)	<= A(	14	)and B(	4	);
	C	(	143	)	<= A(	15	)and B(	4	);
	C	(	144	)	<= A(	16	)and B(	4	);
	C	(	145	)	<= A(	17	)and B(	4	);
	C	(	146	)	<= A(	18	)and B(	4	);
	C	(	147	)	<= A(	19	)and B(	4	);
	C	(	148	)	<= A(	20	)and B(	4	);
	C	(	149	)	<= A(	21	)and B(	4	);
	C	(	150	)	<= A(	22	)and B(	4	);
	C	(	151	)	<= A(	23	)and B(	4	);
	C	(	152	)	<= A(	24	)and B(	4	);
	C	(	153	)	<= A(	25	)and B(	4	);
	C	(	154	)	<= A(	26	)and B(	4	);
	C	(	155	)	<= A(	27	)and B(	4	);
	C	(	156	)	<= A(	28	)and B(	4	);
	C	(	157	)	<= A(	29	)and B(	4	);
	C	(	158	)	<= A(	30	)and B(	4	);
	C	(	159	)	<= A(	31	)and B(	4	);


	C	(	160	)	<= A(	0	)and B(	5	);
	C	(	161	)	<= A(	1	)and B(	5	);
	C	(	162	)	<= A(	2	)and B(	5	);
	C	(	163	)	<= A(	3	)and B(	5	);
	C	(	164	)	<= A(	4	)and B(	5	);
	C	(	165	)	<= A(	5	)and B(	5	);
	C	(	166	)	<= A(	6	)and B(	5	);
	C	(	167	)	<= A(	7	)and B(	5	);
	C	(	168	)	<= A(	8	)and B(	5	);
	C	(	169	)	<= A(	9	)and B(	5	);
	C	(	170	)	<= A(	10	)and B(	5	);
	C	(	171	)	<= A(	11	)and B(	5	);
	C	(	172	)	<= A(	12	)and B(	5	);
	C	(	173	)	<= A(	13	)and B(	5	);
	C	(	174	)	<= A(	14	)and B(	5	);
	C	(	175	)	<= A(	15	)and B(	5	);
	C	(	176	)	<= A(	16	)and B(	5	);
	C	(	177	)	<= A(	17	)and B(	5	);
	C	(	178	)	<= A(	18	)and B(	5	);
	C	(	179	)	<= A(	19	)and B(	5	);
	C	(	180	)	<= A(	20	)and B(	5	);
	C	(	181	)	<= A(	21	)and B(	5	);
	C	(	182	)	<= A(	22	)and B(	5	);
	C	(	183	)	<= A(	23	)and B(	5	);
	C	(	184	)	<= A(	24	)and B(	5	);
	C	(	185	)	<= A(	25	)and B(	5	);
	C	(	186	)	<= A(	26	)and B(	5	);
	C	(	187	)	<= A(	27	)and B(	5	);
	C	(	188	)	<= A(	28	)and B(	5	);
	C	(	189	)	<= A(	29	)and B(	5	);
	C	(	190	)	<= A(	30	)and B(	5	);
	C	(	191	)	<= A(	31	)and B(	5	);


	C	(	192	)	<= A(	0	)and B(	6	);
	C	(	193	)	<= A(	1	)and B(	6	);
	C	(	194	)	<= A(	2	)and B(	6	);
	C	(	195	)	<= A(	3	)and B(	6	);
	C	(	196	)	<= A(	4	)and B(	6	);
	C	(	197	)	<= A(	5	)and B(	6	);
	C	(	198	)	<= A(	6	)and B(	6	);
	C	(	199	)	<= A(	7	)and B(	6	);
	C	(	200	)	<= A(	8	)and B(	6	);
	C	(	201	)	<= A(	9	)and B(	6	);
	C	(	202	)	<= A(	10	)and B(	6	);
	C	(	203	)	<= A(	11	)and B(	6	);
	C	(	204	)	<= A(	12	)and B(	6	);
	C	(	205	)	<= A(	13	)and B(	6	);
	C	(	206	)	<= A(	14	)and B(	6	);
	C	(	207	)	<= A(	15	)and B(	6	);
	C	(	208	)	<= A(	16	)and B(	6	);
	C	(	209	)	<= A(	17	)and B(	6	);
	C	(	210	)	<= A(	18	)and B(	6	);
	C	(	211	)	<= A(	19	)and B(	6	);
	C	(	212	)	<= A(	20	)and B(	6	);
	C	(	213	)	<= A(	21	)and B(	6	);
	C	(	214	)	<= A(	22	)and B(	6	);
	C	(	215	)	<= A(	23	)and B(	6	);
	C	(	216	)	<= A(	24	)and B(	6	);
	C	(	217	)	<= A(	25	)and B(	6	);
	C	(	218	)	<= A(	26	)and B(	6	);
	C	(	219	)	<= A(	27	)and B(	6	);
	C	(	220	)	<= A(	28	)and B(	6	);
	C	(	221	)	<= A(	29	)and B(	6	);
	C	(	222	)	<= A(	30	)and B(	6	);
	C	(	223	)	<= A(	31	)and B(	6	);

	C	(	224	)	<= A(	0	)and B(	7	);
	C	(	225	)	<= A(	1	)and B(	7	);
	C	(	226	)	<= A(	2	)and B(	7	);
	C	(	227	)	<= A(	3	)and B(	7	);
	C	(	228	)	<= A(	4	)and B(	7	);
	C	(	229	)	<= A(	5	)and B(	7	);
	C	(	230	)	<= A(	6	)and B(	7	);
	C	(	231	)	<= A(	7	)and B(	7	);
	C	(	232	)	<= A(	8	)and B(	7	);
	C	(	233	)	<= A(	9	)and B(	7	);
	C	(	234	)	<= A(	10	)and B(	7	);
	C	(	235	)	<= A(	11	)and B(	7	);
	C	(	236	)	<= A(	12	)and B(	7	);
	C	(	237	)	<= A(	13	)and B(	7	);
	C	(	238	)	<= A(	14	)and B(	7	);
	C	(	239	)	<= A(	15	)and B(	7	);
	C	(	240	)	<= A(	16	)and B(	7	);
	C	(	241	)	<= A(	17	)and B(	7	);
	C	(	242	)	<= A(	18	)and B(	7	);
	C	(	243	)	<= A(	19	)and B(	7	);
	C	(	244	)	<= A(	20	)and B(	7	);
	C	(	245	)	<= A(	21	)and B(	7	);
	C	(	246	)	<= A(	22	)and B(	7	);
	C	(	247	)	<= A(	23	)and B(	7	);
	C	(	248	)	<= A(	24	)and B(	7	);
	C	(	249	)	<= A(	25	)and B(	7	);
	C	(	250	)	<= A(	26	)and B(	7	);
	C	(	251	)	<= A(	27	)and B(	7	);
	C	(	252	)	<= A(	28	)and B(	7	);
	C	(	253	)	<= A(	29	)and B(	7	);
	C	(	254	)	<= A(	30	)and B(	7	);
	C	(	255	)	<= A(	31	)and B(	7	);

	C	(	256	)	<= A(	0	)and B(	8	);
	C	(	257	)	<= A(	1	)and B(	8	);
	C	(	258	)	<= A(	2	)and B(	8	);
	C	(	259	)	<= A(	3	)and B(	8	);
	C	(	260	)	<= A(	4	)and B(	8	);
	C	(	261	)	<= A(	5	)and B(	8	);
	C	(	262	)	<= A(	6	)and B(	8	);
	C	(	263	)	<= A(	7	)and B(	8	);
	C	(	264	)	<= A(	8	)and B(	8	);
	C	(	265	)	<= A(	9	)and B(	8	);
	C	(	266	)	<= A(	10	)and B(	8	);
	C	(	267	)	<= A(	11	)and B(	8	);
	C	(	268	)	<= A(	12	)and B(	8	);
	C	(	269	)	<= A(	13	)and B(	8	);
	C	(	270	)	<= A(	14	)and B(	8	);
	C	(	271	)	<= A(	15	)and B(	8	);
	C	(	272	)	<= A(	16	)and B(	8	);
	C	(	273	)	<= A(	17	)and B(	8	);
	C	(	274	)	<= A(	18	)and B(	8	);
	C	(	275	)	<= A(	19	)and B(	8	);
	C	(	276	)	<= A(	20	)and B(	8	);
	C	(	277	)	<= A(	21	)and B(	8	);
	C	(	278	)	<= A(	22	)and B(	8	);
	C	(	279	)	<= A(	23	)and B(	8	);
	C	(	280	)	<= A(	24	)and B(	8	);
	C	(	281	)	<= A(	25	)and B(	8	);
	C	(	282	)	<= A(	26	)and B(	8	);
	C	(	283	)	<= A(	27	)and B(	8	);
	C	(	284	)	<= A(	28	)and B(	8	);
	C	(	285	)	<= A(	29	)and B(	8	);
	C	(	286	)	<= A(	30	)and B(	8	);
	C	(	287	)	<= A(	31	)and B(	8	);

	C	(	288	)	<= A(	0	)and B(	9	);
	C	(	289	)	<= A(	1	)and B(	9	);
	C	(	290	)	<= A(	2	)and B(	9	);
	C	(	291	)	<= A(	3	)and B(	9	);
	C	(	292	)	<= A(	4	)and B(	9	);
	C	(	293	)	<= A(	5	)and B(	9	);
	C	(	294	)	<= A(	6	)and B(	9	);
	C	(	295	)	<= A(	7	)and B(	9	);
	C	(	296	)	<= A(	8	)and B(	9	);
	C	(	297	)	<= A(	9	)and B(	9	);
	C	(	298	)	<= A(	10	)and B(	9	);
	C	(	299	)	<= A(	11	)and B(	9	);
	C	(	300	)	<= A(	12	)and B(	9	);
	C	(	301	)	<= A(	13	)and B(	9	);
	C	(	302	)	<= A(	14	)and B(	9	);
	C	(	303	)	<= A(	15	)and B(	9	);
	C	(	304	)	<= A(	16	)and B(	9	);
	C	(	305	)	<= A(	17	)and B(	9	);
	C	(	306	)	<= A(	18	)and B(	9	);
	C	(	307	)	<= A(	19	)and B(	9	);
	C	(	308	)	<= A(	20	)and B(	9	);
	C	(	309	)	<= A(	21	)and B(	9	);
	C	(	310	)	<= A(	22	)and B(	9	);
	C	(	311	)	<= A(	23	)and B(	9	);
	C	(	312	)	<= A(	24	)and B(	9	);
	C	(	313	)	<= A(	25	)and B(	9	);
	C	(	314	)	<= A(	26	)and B(	9	);
	C	(	315	)	<= A(	27	)and B(	9	);
	C	(	316	)	<= A(	28	)and B(	9	);
	C	(	317	)	<= A(	29	)and B(	9	);
	C	(	318	)	<= A(	30	)and B(	9	);
	C	(	319	)	<= A(	31	)and B(	9	);

	C	(	320	)	<= A(	0	)and B(	10	);
	C	(	321	)	<= A(	1	)and B(	10	);
	C	(	322	)	<= A(	2	)and B(	10	);
	C	(	323	)	<= A(	3	)and B(	10	);
	C	(	324	)	<= A(	4	)and B(	10	);
	C	(	325	)	<= A(	5	)and B(	10	);
	C	(	326	)	<= A(	6	)and B(	10	);
	C	(	327	)	<= A(	7	)and B(	10	);
	C	(	328	)	<= A(	8	)and B(	10	);
	C	(	329	)	<= A(	9	)and B(	10	);
	C	(	330	)	<= A(	10	)and B(	10	);
	C	(	331	)	<= A(	11	)and B(	10	);
	C	(	332	)	<= A(	12	)and B(	10	);
	C	(	333	)	<= A(	13	)and B(	10	);
	C	(	334	)	<= A(	14	)and B(	10	);
	C	(	335	)	<= A(	15	)and B(	10	);
	C	(	336	)	<= A(	16	)and B(	10	);
	C	(	337	)	<= A(	17	)and B(	10	);
	C	(	338	)	<= A(	18	)and B(	10	);
	C	(	339	)	<= A(	19	)and B(	10	);
	C	(	340	)	<= A(	20	)and B(	10	);
	C	(	341	)	<= A(	21	)and B(	10	);
	C	(	342	)	<= A(	22	)and B(	10	);
	C	(	343	)	<= A(	23	)and B(	10	);
	C	(	344	)	<= A(	24	)and B(	10	);
	C	(	345	)	<= A(	25	)and B(	10	);
	C	(	346	)	<= A(	26	)and B(	10	);
	C	(	347	)	<= A(	27	)and B(	10	);
	C	(	348	)	<= A(	28	)and B(	10	);
	C	(	349	)	<= A(	29	)and B(	10	);
	C	(	350	)	<= A(	30	)and B(	10	);
	C	(	351	)	<= A(	31	)and B(	10	);

	C	(	352	)	<= A(	0	)and B(	11	);
	C	(	353	)	<= A(	1	)and B(	11	);
	C	(	354	)	<= A(	2	)and B(	11	);
	C	(	355	)	<= A(	3	)and B(	11	);
	C	(	356	)	<= A(	4	)and B(	11	);
	C	(	357	)	<= A(	5	)and B(	11	);
	C	(	358	)	<= A(	6	)and B(	11	);
	C	(	359	)	<= A(	7	)and B(	11	);
	C	(	360	)	<= A(	8	)and B(	11	);
	C	(	361	)	<= A(	9	)and B(	11	);
	C	(	362	)	<= A(	10	)and B(	11	);
	C	(	363	)	<= A(	11	)and B(	11	);
	C	(	364	)	<= A(	12	)and B(	11	);
	C	(	365	)	<= A(	13	)and B(	11	);
	C	(	366	)	<= A(	14	)and B(	11	);
	C	(	367	)	<= A(	15	)and B(	11	);
	C	(	368	)	<= A(	16	)and B(	11	);
	C	(	369	)	<= A(	17	)and B(	11	);
	C	(	370	)	<= A(	18	)and B(	11	);
	C	(	371	)	<= A(	19	)and B(	11	);
	C	(	372	)	<= A(	20	)and B(	11	);
	C	(	373	)	<= A(	21	)and B(	11	);
	C	(	374	)	<= A(	22	)and B(	11	);
	C	(	375	)	<= A(	23	)and B(	11	);
	C	(	376	)	<= A(	24	)and B(	11	);
	C	(	377	)	<= A(	25	)and B(	11	);
	C	(	378	)	<= A(	26	)and B(	11	);
	C	(	379	)	<= A(	27	)and B(	11	);
	C	(	380	)	<= A(	28	)and B(	11	);
	C	(	381	)	<= A(	29	)and B(	11	);
	C	(	382	)	<= A(	30	)and B(	11	);
	C	(	383	)	<= A(	31	)and B(	11	);

	C	(	384	)	<= A(	0	)and B(	12	);
	C	(	385	)	<= A(	1	)and B(	12	);
	C	(	386	)	<= A(	2	)and B(	12	);
	C	(	387	)	<= A(	3	)and B(	12	);
	C	(	388	)	<= A(	4	)and B(	12	);
	C	(	389	)	<= A(	5	)and B(	12	);
	C	(	390	)	<= A(	6	)and B(	12	);
	C	(	391	)	<= A(	7	)and B(	12	);
	C	(	392	)	<= A(	8	)and B(	12	);
	C	(	393	)	<= A(	9	)and B(	12	);
	C	(	394	)	<= A(	10	)and B(	12	);
	C	(	395	)	<= A(	11	)and B(	12	);
	C	(	396	)	<= A(	12	)and B(	12	);
	C	(	397	)	<= A(	13	)and B(	12	);
	C	(	398	)	<= A(	14	)and B(	12	);
	C	(	399	)	<= A(	15	)and B(	12	);
	C	(	400	)	<= A(	16	)and B(	12	);
	C	(	401	)	<= A(	17	)and B(	12	);
	C	(	402	)	<= A(	18	)and B(	12	);
	C	(	403	)	<= A(	19	)and B(	12	);
	C	(	404	)	<= A(	20	)and B(	12	);
	C	(	405	)	<= A(	21	)and B(	12	);
	C	(	406	)	<= A(	22	)and B(	12	);
	C	(	407	)	<= A(	23	)and B(	12	);
	C	(	408	)	<= A(	24	)and B(	12	);
	C	(	409	)	<= A(	25	)and B(	12	);
	C	(	410	)	<= A(	26	)and B(	12	);
	C	(	411	)	<= A(	27	)and B(	12	);
	C	(	412	)	<= A(	28	)and B(	12	);
	C	(	413	)	<= A(	29	)and B(	12	);
	C	(	414	)	<= A(	30	)and B(	12	);
	C	(	415	)	<= A(	31	)and B(	12	);


	C	(	416	)	<= A(	0	)and B(	13	);
	C	(	417	)	<= A(	1	)and B(	13	);
	C	(	418	)	<= A(	2	)and B(	13	);
	C	(	419	)	<= A(	3	)and B(	13	);
	C	(	420	)	<= A(	4	)and B(	13	);
	C	(	421	)	<= A(	5	)and B(	13	);
	C	(	422	)	<= A(	6	)and B(	13	);
	C	(	423	)	<= A(	7	)and B(	13	);
	C	(	424	)	<= A(	8	)and B(	13	);
	C	(	425	)	<= A(	9	)and B(	13	);
	C	(	426	)	<= A(	10	)and B(	13	);
	C	(	427	)	<= A(	11	)and B(	13	);
	C	(	428	)	<= A(	12	)and B(	13	);
	C	(	429	)	<= A(	13	)and B(	13	);
	C	(	430	)	<= A(	14	)and B(	13	);
	C	(	431	)	<= A(	15	)and B(	13	);
	C	(	432	)	<= A(	16	)and B(	13	);
	C	(	433	)	<= A(	17	)and B(	13	);
	C	(	434	)	<= A(	18	)and B(	13	);
	C	(	435	)	<= A(	19	)and B(	13	);
	C	(	436	)	<= A(	20	)and B(	13	);
	C	(	437	)	<= A(	21	)and B(	13	);
	C	(	438	)	<= A(	22	)and B(	13	);
	C	(	439	)	<= A(	23	)and B(	13	);
	C	(	440	)	<= A(	24	)and B(	13	);
	C	(	441	)	<= A(	25	)and B(	13	);
	C	(	442	)	<= A(	26	)and B(	13	);
	C	(	443	)	<= A(	27	)and B(	13	);
	C	(	444	)	<= A(	28	)and B(	13	);
	C	(	445	)	<= A(	29	)and B(	13	);
	C	(	446	)	<= A(	30	)and B(	13	);
	C	(	447	)	<= A(	31	)and B(	13	);


	C	(	448	)	<= A(	0	)and B(	14	);
	C	(	449	)	<= A(	1	)and B(	14	);
	C	(	450	)	<= A(	2	)and B(	14	);
	C	(	451	)	<= A(	3	)and B(	14	);
	C	(	452	)	<= A(	4	)and B(	14	);
	C	(	453	)	<= A(	5	)and B(	14	);
	C	(	454	)	<= A(	6	)and B(	14	);
	C	(	455	)	<= A(	7	)and B(	14	);
	C	(	456	)	<= A(	8	)and B(	14	);
	C	(	457	)	<= A(	9	)and B(	14	);
	C	(	458	)	<= A(	10	)and B(	14	);
	C	(	459	)	<= A(	11	)and B(	14	);
	C	(	460	)	<= A(	12	)and B(	14	);
	C	(	461	)	<= A(	13	)and B(	14	);
	C	(	462	)	<= A(	14	)and B(	14	);
	C	(	463	)	<= A(	15	)and B(	14	);
	C	(	464	)	<= A(	16	)and B(	14	);
	C	(	465	)	<= A(	17	)and B(	14	);
	C	(	466	)	<= A(	18	)and B(	14	);
	C	(	467	)	<= A(	19	)and B(	14	);
	C	(	468	)	<= A(	20	)and B(	14	);
	C	(	469	)	<= A(	21	)and B(	14	);
	C	(	470	)	<= A(	22	)and B(	14	);
	C	(	471	)	<= A(	23	)and B(	14	);
	C	(	472	)	<= A(	24	)and B(	14	);
	C	(	473	)	<= A(	25	)and B(	14	);
	C	(	474	)	<= A(	26	)and B(	14	);
	C	(	475	)	<= A(	27	)and B(	14	);
	C	(	476	)	<= A(	28	)and B(	14	);
	C	(	477	)	<= A(	29	)and B(	14	);
	C	(	478	)	<= A(	30	)and B(	14	);
	C	(	479	)	<= A(	31	)and B(	14	);



	C	(	480	)	<= A(	0	)and B(	15	);
	C	(	481	)	<= A(	1	)and B(	15	);
	C	(	482	)	<= A(	2	)and B(	15	);
	C	(	483	)	<= A(	3	)and B(	15	);
	C	(	484	)	<= A(	4	)and B(	15	);
	C	(	485	)	<= A(	5	)and B(	15	);
	C	(	486	)	<= A(	6	)and B(	15	);
	C	(	487	)	<= A(	7	)and B(	15	);
	C	(	488	)	<= A(	8	)and B(	15	);
	C	(	489	)	<= A(	9	)and B(	15	);
	C	(	490	)	<= A(	10	)and B(	15	);
	C	(	491	)	<= A(	11	)and B(	15	);
	C	(	492	)	<= A(	12	)and B(	15	);
	C	(	493	)	<= A(	13	)and B(	15	);
	C	(	494	)	<= A(	14	)and B(	15	);
	C	(	495	)	<= A(	15	)and B(	15	);
	C	(	496	)	<= A(	16	)and B(	15	);
	C	(	497	)	<= A(	17	)and B(	15	);
	C	(	498	)	<= A(	18	)and B(	15	);
	C	(	499	)	<= A(	19	)and B(	15	);
	C	(	500	)	<= A(	20	)and B(	15	);
	C	(	501	)	<= A(	21	)and B(	15	);
	C	(	502	)	<= A(	22	)and B(	15	);
	C	(	503	)	<= A(	23	)and B(	15	);
	C	(	504	)	<= A(	24	)and B(	15	);
	C	(	505	)	<= A(	25	)and B(	15	);
	C	(	506	)	<= A(	26	)and B(	15	);
	C	(	507	)	<= A(	27	)and B(	15	);
	C	(	508	)	<= A(	28	)and B(	15	);
	C	(	509	)	<= A(	29	)and B(	15	);
	C	(	510	)	<= A(	30	)and B(	15	);
	C	(	511	)	<= A(	31	)and B(	15	);



	C	(	512	)	<= A(	0	)and B(	16	);
	C	(	513	)	<= A(	1	)and B(	16	);
	C	(	514	)	<= A(	2	)and B(	16	);
	C	(	515	)	<= A(	3	)and B(	16	);
	C	(	516	)	<= A(	4	)and B(	16	);
	C	(	517	)	<= A(	5	)and B(	16	);
	C	(	518	)	<= A(	6	)and B(	16	);
	C	(	519	)	<= A(	7	)and B(	16	);
	C	(	520	)	<= A(	8	)and B(	16	);
	C	(	521	)	<= A(	9	)and B(	16	);
	C	(	522	)	<= A(	10	)and B(	16	);
	C	(	523	)	<= A(	11	)and B(	16	);
	C	(	524	)	<= A(	12	)and B(	16	);
	C	(	525	)	<= A(	13	)and B(	16	);
	C	(	526	)	<= A(	14	)and B(	16	);
	C	(	527	)	<= A(	15	)and B(	16	);
	C	(	528	)	<= A(	16	)and B(	16	);
	C	(	529	)	<= A(	17	)and B(	16	);
	C	(	530	)	<= A(	18	)and B(	16	);
	C	(	531	)	<= A(	19	)and B(	16	);
	C	(	532	)	<= A(	20	)and B(	16	);
	C	(	533	)	<= A(	21	)and B(	16	);
	C	(	534	)	<= A(	22	)and B(	16	);
	C	(	535	)	<= A(	23	)and B(	16	);
	C	(	536	)	<= A(	24	)and B(	16	);
	C	(	537	)	<= A(	25	)and B(	16	);
	C	(	538	)	<= A(	26	)and B(	16	);
	C	(	539	)	<= A(	27	)and B(	16	);
	C	(	540	)	<= A(	28	)and B(	16	);
	C	(	541	)	<= A(	29	)and B(	16	);
	C	(	542	)	<= A(	30	)and B(	16	);
	C	(	543	)	<= A(	31	)and B(	16	);



	C	(	544	)	<= A(	0	)and B(	17	);
	C	(	545	)	<= A(	1	)and B(	17	);
	C	(	546	)	<= A(	2	)and B(	17	);
	C	(	547	)	<= A(	3	)and B(	17	);
	C	(	548	)	<= A(	4	)and B(	17	);
	C	(	549	)	<= A(	5	)and B(	17	);
	C	(	550	)	<= A(	6	)and B(	17	);
	C	(	551	)	<= A(	7	)and B(	17	);
	C	(	552	)	<= A(	8	)and B(	17	);
	C	(	553	)	<= A(	9	)and B(	17	);
	C	(	554	)	<= A(	10	)and B(	17	);
	C	(	555	)	<= A(	11	)and B(	17	);
	C	(	556	)	<= A(	12	)and B(	17	);
	C	(	557	)	<= A(	13	)and B(	17	);
	C	(	558	)	<= A(	14	)and B(	17	);
	C	(	559	)	<= A(	15	)and B(	17	);
	C	(	560	)	<= A(	16	)and B(	17	);
	C	(	561	)	<= A(	17	)and B(	17	);
	C	(	562	)	<= A(	18	)and B(	17	);
	C	(	563	)	<= A(	19	)and B(	17	);
	C	(	564	)	<= A(	20	)and B(	17	);
	C	(	565	)	<= A(	21	)and B(	17	);
	C	(	566	)	<= A(	22	)and B(	17	);
	C	(	567	)	<= A(	23	)and B(	17	);
	C	(	568	)	<= A(	24	)and B(	17	);
	C	(	569	)	<= A(	25	)and B(	17	);
	C	(	570	)	<= A(	26	)and B(	17	);
	C	(	571	)	<= A(	27	)and B(	17	);
	C	(	572	)	<= A(	28	)and B(	17	);
	C	(	573	)	<= A(	29	)and B(	17	);
	C	(	574	)	<= A(	30	)and B(	17	);
	C	(	575	)	<= A(	31	)and B(	17	);


	C	(	576	)	<= A(	0	)and B(	18	);
	C	(	577	)	<= A(	1	)and B(	18	);
	C	(	578	)	<= A(	2	)and B(	18	);
	C	(	579	)	<= A(	3	)and B(	18	);
	C	(	580	)	<= A(	4	)and B(	18	);
	C	(	581	)	<= A(	5	)and B(	18	);
	C	(	582	)	<= A(	6	)and B(	18	);
	C	(	583	)	<= A(	7	)and B(	18	);
	C	(	584	)	<= A(	8	)and B(	18	);
	C	(	585	)	<= A(	9	)and B(	18	);
	C	(	586	)	<= A(	10	)and B(	18	);
	C	(	587	)	<= A(	11	)and B(	18	);
	C	(	588	)	<= A(	12	)and B(	18	);
	C	(	589	)	<= A(	13	)and B(	18	);
	C	(	590	)	<= A(	14	)and B(	18	);
	C	(	591	)	<= A(	15	)and B(	18	);
	C	(	592	)	<= A(	16	)and B(	18	);
	C	(	593	)	<= A(	17	)and B(	18	);
	C	(	594	)	<= A(	18	)and B(	18	);
	C	(	595	)	<= A(	19	)and B(	18	);
	C	(	596	)	<= A(	20	)and B(	18	);
	C	(	597	)	<= A(	21	)and B(	18	);
	C	(	598	)	<= A(	22	)and B(	18	);
	C	(	599	)	<= A(	23	)and B(	18	);
	C	(	600	)	<= A(	24	)and B(	18	);
	C	(	601	)	<= A(	25	)and B(	18	);
	C	(	602	)	<= A(	26	)and B(	18	);
	C	(	603	)	<= A(	27	)and B(	18	);
	C	(	604	)	<= A(	28	)and B(	18	);
	C	(	605	)	<= A(	29	)and B(	18	);
	C	(	606	)	<= A(	30	)and B(	18	);
	C	(	607	)	<= A(	31	)and B(	18	);


	C	(	608	)	<= A(	0	)and B(	19	);
	C	(	609	)	<= A(	1	)and B(	19	);
	C	(	610	)	<= A(	2	)and B(	19	);
	C	(	611	)	<= A(	3	)and B(	19	);
	C	(	612	)	<= A(	4	)and B(	19	);
	C	(	613	)	<= A(	5	)and B(	19	);
	C	(	614	)	<= A(	6	)and B(	19	);
	C	(	615	)	<= A(	7	)and B(	19	);
	C	(	616	)	<= A(	8	)and B(	19	);
	C	(	617	)	<= A(	9	)and B(	19	);
	C	(	618	)	<= A(	10	)and B(	19	);
	C	(	619	)	<= A(	11	)and B(	19	);
	C	(	620	)	<= A(	12	)and B(	19	);
	C	(	621	)	<= A(	13	)and B(	19	);
	C	(	622	)	<= A(	14	)and B(	19	);
	C	(	623	)	<= A(	15	)and B(	19	);
	C	(	624	)	<= A(	16	)and B(	19	);
	C	(	625	)	<= A(	17	)and B(	19	);
	C	(	626	)	<= A(	18	)and B(	19	);
	C	(	627	)	<= A(	19	)and B(	19	);
	C	(	628	)	<= A(	20	)and B(	19	);
	C	(	629	)	<= A(	21	)and B(	19	);
	C	(	630	)	<= A(	22	)and B(	19	);
	C	(	631	)	<= A(	23	)and B(	19	);
	C	(	632	)	<= A(	24	)and B(	19	);
	C	(	633	)	<= A(	25	)and B(	19	);
	C	(	634	)	<= A(	26	)and B(	19	);
	C	(	635	)	<= A(	27	)and B(	19	);
	C	(	636	)	<= A(	28	)and B(	19	);
	C	(	637	)	<= A(	29	)and B(	19	);
	C	(	638	)	<= A(	30	)and B(	19	);
	C	(	639	)	<= A(	31	)and B(	19	);

	C	(	640	)	<= A(	0	)and B(	20	);
	C	(	641	)	<= A(	1	)and B(	20	);
	C	(	642	)	<= A(	2	)and B(	20	);
	C	(	643	)	<= A(	3	)and B(	20	);
	C	(	644	)	<= A(	4	)and B(	20	);
	C	(	645	)	<= A(	5	)and B(	20	);
	C	(	646	)	<= A(	6	)and B(	20	);
	C	(	647	)	<= A(	7	)and B(	20	);
	C	(	648	)	<= A(	8	)and B(	20	);
	C	(	649	)	<= A(	9	)and B(	20	);
	C	(	650	)	<= A(	10	)and B(	20	);
	C	(	651	)	<= A(	11	)and B(	20	);
	C	(	652	)	<= A(	12	)and B(	20	);
	C	(	653	)	<= A(	13	)and B(	20	);
	C	(	654	)	<= A(	14	)and B(	20	);
	C	(	655	)	<= A(	15	)and B(	20	);
	C	(	656	)	<= A(	16	)and B(	20	);
	C	(	657	)	<= A(	17	)and B(	20	);
	C	(	658	)	<= A(	18	)and B(	20	);
	C	(	659	)	<= A(	19	)and B(	20	);
	C	(	660	)	<= A(	20	)and B(	20	);
	C	(	661	)	<= A(	21	)and B(	20	);
	C	(	662	)	<= A(	22	)and B(	20	);
	C	(	663	)	<= A(	23	)and B(	20	);
	C	(	664	)	<= A(	24	)and B(	20	);
	C	(	665	)	<= A(	25	)and B(	20	);
	C	(	666	)	<= A(	26	)and B(	20	);
	C	(	667	)	<= A(	27	)and B(	20	);
	C	(	668	)	<= A(	28	)and B(	20	);
	C	(	669	)	<= A(	29	)and B(	20	);
	C	(	670	)	<= A(	30	)and B(	20	);
	C	(	671	)	<= A(	31	)and B(	20	);


	C	(	672	)	<= A(	0	)and B(	21	);
	C	(	673	)	<= A(	1	)and B(	21	);
	C	(	674	)	<= A(	2	)and B(	21	);
	C	(	675	)	<= A(	3	)and B(	21	);
	C	(	676	)	<= A(	4	)and B(	21	);
	C	(	677	)	<= A(	5	)and B(	21	);
	C	(	678	)	<= A(	6	)and B(	21	);
	C	(	679	)	<= A(	7	)and B(	21	);
	C	(	680	)	<= A(	8	)and B(	21	);
	C	(	681	)	<= A(	9	)and B(	21	);
	C	(	682	)	<= A(	10	)and B(	21	);
	C	(	683	)	<= A(	11	)and B(	21	);
	C	(	684	)	<= A(	12	)and B(	21	);
	C	(	685	)	<= A(	13	)and B(	21	);
	C	(	686	)	<= A(	14	)and B(	21	);
	C	(	687	)	<= A(	15	)and B(	21	);
	C	(	688	)	<= A(	16	)and B(	21	);
	C	(	689	)	<= A(	17	)and B(	21	);
	C	(	690	)	<= A(	18	)and B(	21	);
	C	(	691	)	<= A(	19	)and B(	21	);
	C	(	692	)	<= A(	20	)and B(	21	);
	C	(	693	)	<= A(	21	)and B(	21	);
	C	(	694	)	<= A(	22	)and B(	21	);
	C	(	695	)	<= A(	23	)and B(	21	);
	C	(	696	)	<= A(	24	)and B(	21	);
	C	(	697	)	<= A(	25	)and B(	21	);
	C	(	698	)	<= A(	26	)and B(	21	);
	C	(	699	)	<= A(	27	)and B(	21	);
	C	(	700	)	<= A(	28	)and B(	21	);
	C	(	701	)	<= A(	29	)and B(	21	);
	C	(	702	)	<= A(	30	)and B(	21	);
	C	(	703	)	<= A(	31	)and B(	21	);


	C	(	704	)	<= A(	0	)and B(	22	);
	C	(	705	)	<= A(	1	)and B(	22	);
	C	(	706	)	<= A(	2	)and B(	22	);
	C	(	707	)	<= A(	3	)and B(	22	);
	C	(	708	)	<= A(	4	)and B(	22	);
	C	(	709	)	<= A(	5	)and B(	22	);
	C	(	710	)	<= A(	6	)and B(	22	);
	C	(	711	)	<= A(	7	)and B(	22	);
	C	(	712	)	<= A(	8	)and B(	22	);
	C	(	713	)	<= A(	9	)and B(	22	);
	C	(	714	)	<= A(	10	)and B(	22	);
	C	(	715	)	<= A(	11	)and B(	22	);
	C	(	716	)	<= A(	12	)and B(	22	);
	C	(	717	)	<= A(	13	)and B(	22	);
	C	(	718	)	<= A(	14	)and B(	22	);
	C	(	719	)	<= A(	15	)and B(	22	);
	C	(	720	)	<= A(	16	)and B(	22	);
	C	(	721	)	<= A(	17	)and B(	22	);
	C	(	722	)	<= A(	18	)and B(	22	);
	C	(	723	)	<= A(	19	)and B(	22	);
	C	(	724	)	<= A(	20	)and B(	22	);
	C	(	725	)	<= A(	21	)and B(	22	);
	C	(	726	)	<= A(	22	)and B(	22	);
	C	(	727	)	<= A(	23	)and B(	22	);
	C	(	728	)	<= A(	24	)and B(	22	);
	C	(	729	)	<= A(	25	)and B(	22	);
	C	(	730	)	<= A(	26	)and B(	22	);
	C	(	731	)	<= A(	27	)and B(	22	);
	C	(	732	)	<= A(	28	)and B(	22	);
	C	(	733	)	<= A(	29	)and B(	22	);
	C	(	734	)	<= A(	30	)and B(	22	);
	C	(	735	)	<= A(	31	)and B(	22	);


	C	(	736	)	<= A(	0	)and B(	23	);
	C	(	737	)	<= A(	1	)and B(	23	);
	C	(	738	)	<= A(	2	)and B(	23	);
	C	(	739	)	<= A(	3	)and B(	23	);
	C	(	740	)	<= A(	4	)and B(	23	);
	C	(	741	)	<= A(	5	)and B(	23	);
	C	(	742	)	<= A(	6	)and B(	23	);
	C	(	743	)	<= A(	7	)and B(	23	);
	C	(	744	)	<= A(	8	)and B(	23	);
	C	(	745	)	<= A(	9	)and B(	23	);
	C	(	746	)	<= A(	10	)and B(	23	);
	C	(	747	)	<= A(	11	)and B(	23	);
	C	(	748	)	<= A(	12	)and B(	23	);
	C	(	749	)	<= A(	13	)and B(	23	);
	C	(	750	)	<= A(	14	)and B(	23	);
	C	(	751	)	<= A(	15	)and B(	23	);
	C	(	752	)	<= A(	16	)and B(	23	);
	C	(	753	)	<= A(	17	)and B(	23	);
	C	(	754	)	<= A(	18	)and B(	23	);
	C	(	755	)	<= A(	19	)and B(	23	);
	C	(	756	)	<= A(	20	)and B(	23	);
	C	(	757	)	<= A(	21	)and B(	23	);
	C	(	758	)	<= A(	22	)and B(	23	);
	C	(	759	)	<= A(	23	)and B(	23	);
	C	(	760	)	<= A(	24	)and B(	23	);
	C	(	761	)	<= A(	25	)and B(	23	);
	C	(	762	)	<= A(	26	)and B(	23	);
	C	(	763	)	<= A(	27	)and B(	23	);
	C	(	764	)	<= A(	28	)and B(	23	);
	C	(	765	)	<= A(	29	)and B(	23	);
	C	(	766	)	<= A(	30	)and B(	23	);
	C	(	767	)	<= A(	31	)and B(	23	);


	C	(	768	)	<= A(	0	)and B(	24	);
	C	(	769	)	<= A(	1	)and B(	24	);
	C	(	770	)	<= A(	2	)and B(	24	);
	C	(	771	)	<= A(	3	)and B(	24	);
	C	(	772	)	<= A(	4	)and B(	24	);
	C	(	773	)	<= A(	5	)and B(	24	);
	C	(	774	)	<= A(	6	)and B(	24	);
	C	(	775	)	<= A(	7	)and B(	24	);
	C	(	776	)	<= A(	8	)and B(	24	);
	C	(	777	)	<= A(	9	)and B(	24	);
	C	(	778	)	<= A(	10	)and B(	24	);
	C	(	779	)	<= A(	11	)and B(	24	);
	C	(	780	)	<= A(	12	)and B(	24	);
	C	(	781	)	<= A(	13	)and B(	24	);
	C	(	782	)	<= A(	14	)and B(	24	);
	C	(	783	)	<= A(	15	)and B(	24	);
	C	(	784	)	<= A(	16	)and B(	24	);
	C	(	785	)	<= A(	17	)and B(	24	);
	C	(	786	)	<= A(	18	)and B(	24	);
	C	(	787	)	<= A(	19	)and B(	24	);
	C	(	788	)	<= A(	20	)and B(	24	);
	C	(	789	)	<= A(	21	)and B(	24	);
	C	(	790	)	<= A(	22	)and B(	24	);
	C	(	791	)	<= A(	23	)and B(	24	);
	C	(	792	)	<= A(	24	)and B(	24	);
	C	(	793	)	<= A(	25	)and B(	24	);
	C	(	794	)	<= A(	26	)and B(	24	);
	C	(	795	)	<= A(	27	)and B(	24	);
	C	(	796	)	<= A(	28	)and B(	24	);
	C	(	797	)	<= A(	29	)and B(	24	);
	C	(	798	)	<= A(	30	)and B(	24	);
	C	(	799	)	<= A(	31	)and B(	24	);


	C	(	800	)	<= A(	0	)and B(	25	);
	C	(	801	)	<= A(	1	)and B(	25	);
	C	(	802	)	<= A(	2	)and B(	25	);
	C	(	803	)	<= A(	3	)and B(	25	);
	C	(	804	)	<= A(	4	)and B(	25	);
	C	(	805	)	<= A(	5	)and B(	25	);
	C	(	806	)	<= A(	6	)and B(	25	);
	C	(	807	)	<= A(	7	)and B(	25	);
	C	(	808	)	<= A(	8	)and B(	25	);
	C	(	809	)	<= A(	9	)and B(	25	);
	C	(	810	)	<= A(	10	)and B(	25	);
	C	(	811	)	<= A(	11	)and B(	25	);
	C	(	812	)	<= A(	12	)and B(	25	);
	C	(	813	)	<= A(	13	)and B(	25	);
	C	(	814	)	<= A(	14	)and B(	25	);
	C	(	815	)	<= A(	15	)and B(	25	);
	C	(	816	)	<= A(	16	)and B(	25	);
	C	(	817	)	<= A(	17	)and B(	25	);
	C	(	818	)	<= A(	18	)and B(	25	);
	C	(	819	)	<= A(	19	)and B(	25	);
	C	(	820	)	<= A(	20	)and B(	25	);
	C	(	821	)	<= A(	21	)and B(	25	);
	C	(	822	)	<= A(	22	)and B(	25	);
	C	(	823	)	<= A(	23	)and B(	25	);
	C	(	824	)	<= A(	24	)and B(	25	);
	C	(	825	)	<= A(	25	)and B(	25	);
	C	(	826	)	<= A(	26	)and B(	25	);
	C	(	827	)	<= A(	27	)and B(	25	);
	C	(	828	)	<= A(	28	)and B(	25	);
	C	(	829	)	<= A(	29	)and B(	25	);
	C	(	830	)	<= A(	30	)and B(	25	);
	C	(	831	)	<= A(	31	)and B(	25	);


	C	(	832	)	<= A(	0	)and B(	26	);
	C	(	833	)	<= A(	1	)and B(	26	);
	C	(	834	)	<= A(	2	)and B(	26	);
	C	(	835	)	<= A(	3	)and B(	26	);
	C	(	836	)	<= A(	4	)and B(	26	);
	C	(	837	)	<= A(	5	)and B(	26	);
	C	(	838	)	<= A(	6	)and B(	26	);
	C	(	839	)	<= A(	7	)and B(	26	);
	C	(	840	)	<= A(	8	)and B(	26	);
	C	(	841	)	<= A(	9	)and B(	26	);
	C	(	842	)	<= A(	10	)and B(	26	);
	C	(	843	)	<= A(	11	)and B(	26	);
	C	(	844	)	<= A(	12	)and B(	26	);
	C	(	845	)	<= A(	13	)and B(	26	);
	C	(	846	)	<= A(	14	)and B(	26	);
	C	(	847	)	<= A(	15	)and B(	26	);
	C	(	848	)	<= A(	16	)and B(	26	);
	C	(	849	)	<= A(	17	)and B(	26	);
	C	(	850	)	<= A(	18	)and B(	26	);
	C	(	851	)	<= A(	19	)and B(	26	);
	C	(	852	)	<= A(	20	)and B(	26	);
	C	(	853	)	<= A(	21	)and B(	26	);
	C	(	854	)	<= A(	22	)and B(	26	);
	C	(	855	)	<= A(	23	)and B(	26	);
	C	(	856	)	<= A(	24	)and B(	26	);
	C	(	857	)	<= A(	25	)and B(	26	);
	C	(	858	)	<= A(	26	)and B(	26	);
	C	(	859	)	<= A(	27	)and B(	26	);
	C	(	860	)	<= A(	28	)and B(	26	);
	C	(	861	)	<= A(	29	)and B(	26	);
	C	(	862	)	<= A(	30	)and B(	26	);
	C	(	863	)	<= A(	31	)and B(	26	);


	C	(	864	)	<= A(	0	)and B(	27	);
	C	(	865	)	<= A(	1	)and B(	27	);
	C	(	866	)	<= A(	2	)and B(	27	);
	C	(	867	)	<= A(	3	)and B(	27	);
	C	(	868	)	<= A(	4	)and B(	27	);
	C	(	869	)	<= A(	5	)and B(	27	);
	C	(	870	)	<= A(	6	)and B(	27	);
	C	(	871	)	<= A(	7	)and B(	27	);
	C	(	872	)	<= A(	8	)and B(	27	);
	C	(	873	)	<= A(	9	)and B(	27	);
	C	(	874	)	<= A(	10	)and B(	27	);
	C	(	875	)	<= A(	11	)and B(	27	);
	C	(	876	)	<= A(	12	)and B(	27	);
	C	(	877	)	<= A(	13	)and B(	27	);
	C	(	878	)	<= A(	14	)and B(	27	);
	C	(	879	)	<= A(	15	)and B(	27	);
	C	(	880	)	<= A(	16	)and B(	27	);
	C	(	881	)	<= A(	17	)and B(	27	);
	C	(	882	)	<= A(	18	)and B(	27	);
	C	(	883	)	<= A(	19	)and B(	27	);
	C	(	884	)	<= A(	20	)and B(	27	);
	C	(	885	)	<= A(	21	)and B(	27	);
	C	(	886	)	<= A(	22	)and B(	27	);
	C	(	887	)	<= A(	23	)and B(	27	);
	C	(	888	)	<= A(	24	)and B(	27	);
	C	(	889	)	<= A(	25	)and B(	27	);
	C	(	890	)	<= A(	26	)and B(	27	);
	C	(	891	)	<= A(	27	)and B(	27	);
	C	(	892	)	<= A(	28	)and B(	27	);
	C	(	893	)	<= A(	29	)and B(	27	);
	C	(	894	)	<= A(	30	)and B(	27	);
	C	(	895	)	<= A(	31	)and B(	27	);


	C	(	896	)	<= A(	0	)and B(	28	);
	C	(	897	)	<= A(	1	)and B(	28	);
	C	(	898	)	<= A(	2	)and B(	28	);
	C	(	899	)	<= A(	3	)and B(	28	);
	C	(	900	)	<= A(	4	)and B(	28	);
	C	(	901	)	<= A(	5	)and B(	28	);
	C	(	902	)	<= A(	6	)and B(	28	);
	C	(	903	)	<= A(	7	)and B(	28	);
	C	(	904	)	<= A(	8	)and B(	28	);
	C	(	905	)	<= A(	9	)and B(	28	);
	C	(	906	)	<= A(	10	)and B(	28	);
	C	(	907	)	<= A(	11	)and B(	28	);
	C	(	908	)	<= A(	12	)and B(	28	);
	C	(	909	)	<= A(	13	)and B(	28	);
	C	(	910	)	<= A(	14	)and B(	28	);
	C	(	911	)	<= A(	15	)and B(	28	);
	C	(	912	)	<= A(	16	)and B(	28	);
	C	(	913	)	<= A(	17	)and B(	28	);
	C	(	914	)	<= A(	18	)and B(	28	);
	C	(	915	)	<= A(	19	)and B(	28	);
	C	(	916	)	<= A(	20	)and B(	28	);
	C	(	917	)	<= A(	21	)and B(	28	);
	C	(	918	)	<= A(	22	)and B(	28	);
	C	(	919	)	<= A(	23	)and B(	28	);
	C	(	920	)	<= A(	24	)and B(	28	);
	C	(	921	)	<= A(	25	)and B(	28	);
	C	(	922	)	<= A(	26	)and B(	28	);
	C	(	923	)	<= A(	27	)and B(	28	);
	C	(	924	)	<= A(	28	)and B(	28	);
	C	(	925	)	<= A(	29	)and B(	28	);
	C	(	926	)	<= A(	30	)and B(	28	);
	C	(	927	)	<= A(	31	)and B(	28	);

	C	(	928	)	<= A(	0	)and B(	29	);
	C	(	929	)	<= A(	1	)and B(	29	);
	C	(	930	)	<= A(	2	)and B(	29	);
	C	(	931	)	<= A(	3	)and B(	29	);
	C	(	932	)	<= A(	4	)and B(	29	);
	C	(	933	)	<= A(	5	)and B(	29	);
	C	(	934	)	<= A(	6	)and B(	29	);
	C	(	935	)	<= A(	7	)and B(	29	);
	C	(	936	)	<= A(	8	)and B(	29	);
	C	(	937	)	<= A(	9	)and B(	29	);
	C	(	938	)	<= A(	10	)and B(	29	);
	C	(	939	)	<= A(	11	)and B(	29	);
	C	(	940	)	<= A(	12	)and B(	29	);
	C	(	941	)	<= A(	13	)and B(	29	);
	C	(	942	)	<= A(	14	)and B(	29	);
	C	(	943	)	<= A(	15	)and B(	29	);
	C	(	944	)	<= A(	16	)and B(	29	);
	C	(	945	)	<= A(	17	)and B(	29	);
	C	(	946	)	<= A(	18	)and B(	29	);
	C	(	947	)	<= A(	19	)and B(	29	);
	C	(	948	)	<= A(	20	)and B(	29	);
	C	(	949	)	<= A(	21	)and B(	29	);
	C	(	950	)	<= A(	22	)and B(	29	);
	C	(	951	)	<= A(	23	)and B(	29	);
	C	(	952	)	<= A(	24	)and B(	29	);
	C	(	953	)	<= A(	25	)and B(	29	);
	C	(	954	)	<= A(	26	)and B(	29	);
	C	(	955	)	<= A(	27	)and B(	29	);
	C	(	956	)	<= A(	28	)and B(	29	);
	C	(	957	)	<= A(	29	)and B(	29	);
	C	(	958	)	<= A(	30	)and B(	29	);
	C	(	959	)	<= A(	31	)and B(	29	);


	C	(	960	)	<= A(	0	)and B(	30	);
	C	(	961	)	<= A(	1	)and B(	30	);
	C	(	962	)	<= A(	2	)and B(	30	);
	C	(	963	)	<= A(	3	)and B(	30	);
	C	(	964	)	<= A(	4	)and B(	30	);
	C	(	965	)	<= A(	5	)and B(	30	);
	C	(	966	)	<= A(	6	)and B(	30	);
	C	(	967	)	<= A(	7	)and B(	30	);
	C	(	968	)	<= A(	8	)and B(	30	);
	C	(	969	)	<= A(	9	)and B(	30	);
	C	(	970	)	<= A(	10	)and B(	30	);
	C	(	971	)	<= A(	11	)and B(	30	);
	C	(	972	)	<= A(	12	)and B(	30	);
	C	(	973	)	<= A(	13	)and B(	30	);
	C	(	974	)	<= A(	14	)and B(	30	);
	C	(	975	)	<= A(	15	)and B(	30	);
	C	(	976	)	<= A(	16	)and B(	30	);
	C	(	977	)	<= A(	17	)and B(	30	);
	C	(	978	)	<= A(	18	)and B(	30	);
	C	(	979	)	<= A(	19	)and B(	30	);
	C	(	980	)	<= A(	20	)and B(	30	);
	C	(	981	)	<= A(	21	)and B(	30	);
	C	(	982	)	<= A(	22	)and B(	30	);
	C	(	983	)	<= A(	23	)and B(	30	);
	C	(	984	)	<= A(	24	)and B(	30	);
	C	(	985	)	<= A(	25	)and B(	30	);
	C	(	986	)	<= A(	26	)and B(	30	);
	C	(	987	)	<= A(	27	)and B(	30	);
	C	(	988	)	<= A(	28	)and B(	30	);
	C	(	989	)	<= A(	29	)and B(	30	);
	C	(	990	)	<= A(	30	)and B(	30	);
	C	(	991	)	<= A(	31	)and B(	30	);


	C	(	992	)	<= A(	0	)and B(	31	);
	C	(	993	)	<= A(	1	)and B(	31	);
	C	(	994	)	<= A(	2	)and B(	31	);
	C	(	995	)	<= A(	3	)and B(	31	);
	C	(	996	)	<= A(	4	)and B(	31	);
	C	(	997	)	<= A(	5	)and B(	31	);
	C	(	998	)	<= A(	6	)and B(	31	);
	C	(	999	)	<= A(	7	)and B(	31	);
	C	(	1000	)	<= A(	8	)and B(	31	);
	C	(	1001	)	<= A(	9	)and B(	31	);
	C	(	1002	)	<= A(	10	)and B(	31	);
	C	(	1003	)	<= A(	11	)and B(	31	);
	C	(	1004	)	<= A(	12	)and B(	31	);
	C	(	1005	)	<= A(	13	)and B(	31	);
	C	(	1006	)	<= A(	14	)and B(	31	);
	C	(	1007	)	<= A(	15	)and B(	31	);
	C	(	1008	)	<= A(	16	)and B(	31	);
	C	(	1009	)	<= A(	17	)and B(	31	);
	C	(	1010	)	<= A(	18	)and B(	31	);
	C	(	1011	)	<= A(	19	)and B(	31	);
	C	(	1012	)	<= A(	20	)and B(	31	);
	C	(	1013	)	<= A(	21	)and B(	31	);
	C	(	1014	)	<= A(	22	)and B(	31	);
	C	(	1015	)	<= A(	23	)and B(	31	);
	C	(	1016	)	<= A(	24	)and B(	31	);
	C	(	1017	)	<= A(	25	)and B(	31	);
	C	(	1018	)	<= A(	26	)and B(	31	);
	C	(	1019	)	<= A(	27	)and B(	31	);
	C	(	1020	)	<= A(	28	)and B(	31	);
	C	(	1021	)	<= A(	29	)and B(	31	);
	C	(	1022	)	<= A(	30	)and B(	31	);
	C	(	1023	)	<= A(	31	)and B(	31	);

 
--01-----------    
				
	U0: Somador_Exato_1 PORT MAP(
		A=> C(	32	),
		B=>C(	1	),
		Cin =>  '0'	,
		Cout=> Carry( 	0	),
		S=> R(	1	));
				
	U1	: Somador_Exato_1 PORT MAP(
		A=> C(	33	),
		B=>C(	2	),
		Cin=> Carry( 	0	),
		Cout=> Carry( 	1	),
		S=> E(	0	));
				
	U2	: Somador_Exato_1 PORT MAP(
		A=> C(	34	),
		B=>C(	3	),
		Cin=> Carry( 	1	),
		Cout=> Carry( 	2	),
		S=> E(	1	));
				
	U3	: Somador_Exato_1 PORT MAP(
		A=> C(	35	),
		B=>C(	4	),
		Cin=> Carry( 	2	),
		Cout=> Carry( 	3	),
		S=> E(	2	));
				
	U4	: Somador_Exato_1 PORT MAP(
		A=> C(	36	),
		B=>C(	5	),
		Cin=> Carry( 	3	),
		Cout=> Carry( 	4	),
		S=> E(	3	));
				
	U5	: Somador_Exato_1 PORT MAP(
		A=> C(	37	),
		B=>C(	6	),
		Cin=> Carry( 	4	),
		Cout=> Carry( 	5	),
		S=> E(	4	));
				
	U6	: Somador_Exato_1 PORT MAP(
		A=> C(	38	),
		B=>C(	7	),
		Cin=> Carry( 	5	),
		Cout=> Carry( 	6	),
		S=> E(	5	));
				
	U7	: Somador_Exato_1 PORT MAP(
		A=> C(	39	),
		B=>C(	8	),
		Cin=> Carry( 	6	),
		Cout=> Carry( 	7	),
		S=> E(	6	));
				
	U8	: Somador_Exato_1 PORT MAP(
		A=> C(	40	),
		B=>C(	9	),
		Cin=> Carry( 	7	),
		Cout=> Carry( 	8	),
		S=> E(	7	));
				
	U9	: Somador_Exato_1 PORT MAP(
		A=> C(	41	),
		B=>C(	10	),
		Cin=> Carry( 	8	),
		Cout=> Carry( 	9	),
		S=> E(	8	));
				
	U10	: Somador_Exato_1 PORT MAP(
		A=> C(	42	),
		B=>C(	11	),
		Cin=> Carry( 	9	),
		Cout=> Carry( 	10	),
		S=> E(	9	));
				
	U11	: Somador_Exato_1 PORT MAP(
		A=> C(	43	),
		B=>C(	12	),
		Cin=> Carry( 	10	),
		Cout=> Carry( 	11	),
		S=> E(	10	));
				
	U12	: Somador_Exato_1 PORT MAP(
		A=> C(	44	),
		B=>C(	13	),
		Cin=> Carry( 	11	),
		Cout=> Carry( 	12	),
		S=> E(	11	));
				
	U13	: Somador_Exato_1 PORT MAP(
		A=> C(	45	),
		B=>C(	14	),
		Cin=> Carry( 	12	),
		Cout=> Carry( 	13	),
		S=> E(	12	));
				
	U14	: Somador_Exato_1 PORT MAP(
		A=> C(	46	),
		B=>C(	15	),
		Cin=> Carry( 	13	),
		Cout=> Carry( 	14	),
		S=> E(	13	));
				
	U15	: Somador_Exato_1 PORT MAP(
		A=> C(	47	),
		B=>C(	16	),
		Cin=> Carry( 	14	),
		Cout=> Carry( 	15	),
		S=> E(	14	));
				
	U16	: Somador_Exato_1 PORT MAP(
		A=> C(	48	),
		B=>C(	17	),
		Cin=> Carry( 	15	),
		Cout=> Carry( 	16	),
		S=> E(	15	));
				
	U17	: Somador_Exato_1 PORT MAP(
		A=> C(	49	),
		B=>C(	18	),
		Cin=> Carry( 	16	),
		Cout=> Carry( 	17	),
		S=> E(	16	));
				
	U18	: Somador_Exato_1 PORT MAP(
		A=> C(	50	),
		B=>C(	19	),
		Cin=> Carry( 	17	),
		Cout=> Carry( 	18	),
		S=> E(	17	));
				
	U19	: Somador_Exato_1 PORT MAP(
		A=> C(	51	),
		B=>C(	20	),
		Cin=> Carry( 	18	),
		Cout=> Carry( 	19	),
		S=> E(	18	));
				
	U20	: Somador_Exato_1 PORT MAP(
		A=> C(	52	),
		B=>C(	21	),
		Cin=> Carry( 	19	),
		Cout=> Carry( 	20	),
		S=> E(	19	));
				
	U21	: Somador_Exato_1 PORT MAP(
		A=> C(	53	),
		B=>C(	22	),
		Cin=> Carry( 	20	),
		Cout=> Carry( 	21	),
		S=> E(	20	));
				
	U22	: Somador_Exato_1 PORT MAP(
		A=> C(	54	),
		B=>C(	23	),
		Cin=> Carry( 	21	),
		Cout=> Carry( 	22	),
		S=> E(	21	));
				
	U23	: Somador_Exato_1 PORT MAP(
		A=> C(	55	),
		B=>C(	24	),
		Cin=> Carry( 	22	),
		Cout=> Carry( 	23	),
		S=> E(	22	));
				
	U24	: Somador_Exato_1 PORT MAP(
		A=> C(	56	),
		B=>C(	25	),
		Cin=> Carry( 	23	),
		Cout=> Carry( 	24	),
		S=> E(	23	));
				
	U25	: Somador_Exato_1 PORT MAP(
		A=> C(	57	),
		B=>C(	26	),
		Cin=> Carry( 	24	),
		Cout=> Carry( 	25	),
		S=> E(	24	));
				
	U26	: Somador_Exato_1 PORT MAP(
		A=> C(	58	),
		B=>C(	27	),
		Cin=> Carry( 	25	),
		Cout=> Carry( 	26	),
		S=> E(	25	));
				
	U27	: Somador_Exato_1 PORT MAP(
		A=> C(	59	),
		B=>C(	28	),
		Cin=> Carry( 	26	),
		Cout=> Carry( 	27	),
		S=> E(	26	));
				
	U28	: Somador_Exato_1 PORT MAP(
		A=> C(	60	),
		B=>C(	29	),
		Cin=> Carry( 	27	),
		Cout=> Carry( 	28	),
		S=> E(	27	));
				
	U29	: Somador_Exato_1 PORT MAP(
		A=> C(	61	),
		B=>C(	30	),
		Cin=> Carry( 	28	),
		Cout=> Carry( 	29	),
		S=> E(	28	));
				
	U30	: Somador_Exato_1 PORT MAP(
		A=> C(	62	),
		B=>C(	31	),
		Cin=> Carry( 	29	),
		Cout=> Carry( 	30	),
		S=> E(	29	));
				
	U31	: Somador_Exato_1 PORT MAP(
		A=> C(	63	),
		B=> '0',
		Cin=> Carry( 	30	),
		Cout=> Carry( 	31	),
		S=> E(	30	));
		------		
				
	U32	: Somador_Exato_1 PORT MAP(
		A=> C(	64	),
		B=>E(	0	),
		Cin =>  '0'	,
		Cout=> Carry( 	32	),
		S=> R(	2	));
				
	U33	: Somador_Exato_1 PORT MAP(
		A=> C(	65	),
		B=>E(	1	),
		Cin=> Carry( 	32	),
		Cout=> Carry( 	33	),
		S=> E(	31	));
				
	U34	: Somador_Exato_1 PORT MAP(
		A=> C(	66	),
		B=>E(	2	),
		Cin=> Carry( 	33	),
		Cout=> Carry( 	34	),
		S=> E(	32	));
				
	U35	: Somador_Exato_1 PORT MAP(
		A=> C(	67	),
		B=>E(	3	),
		Cin=> Carry( 	34	),
		Cout=> Carry( 	35	),
		S=> E(	33	));
				
	U36	: Somador_Exato_1 PORT MAP(
		A=> C(	68	),
		B=>E(	4	),
		Cin=> Carry( 	35	),
		Cout=> Carry( 	36	),
		S=> E(	34	));
				
	U37	: Somador_Exato_1 PORT MAP(
		A=> C(	69	),
		B=>E(	5	),
		Cin=> Carry( 	36	),
		Cout=> Carry( 	37	),
		S=> E(	35	));
				
	U38	: Somador_Exato_1 PORT MAP(
		A=> C(	70	),
		B=>E(	6	),
		Cin=> Carry( 	37	),
		Cout=> Carry( 	38	),
		S=> E(	36	));
				
	U39	: Somador_Exato_1 PORT MAP(
		A=> C(	71	),
		B=>E(	7	),
		Cin=> Carry( 	38	),
		Cout=> Carry( 	39	),
		S=> E(	37	));
				
	U40	: Somador_Exato_1 PORT MAP(
		A=> C(	72	),
		B=>E(	8	),
		Cin=> Carry( 	39	),
		Cout=> Carry( 	40	),
		S=> E(	38	));
				
	U41	: Somador_Exato_1 PORT MAP(
		A=> C(	73	),
		B=>E(	9	),
		Cin=> Carry( 	40	),
		Cout=> Carry( 	41	),
		S=> E(	39	));
				
	U42	: Somador_Exato_1 PORT MAP(
		A=> C(	74	),
		B=>E(	10	),
		Cin=> Carry( 	41	),
		Cout=> Carry( 	42	),
		S=> E(	40	));
				
	U43	: Somador_Exato_1 PORT MAP(
		A=> C(	75	),
		B=>E(	11	),
		Cin=> Carry( 	42	),
		Cout=> Carry( 	43	),
		S=> E(	41	));
				
	U44	: Somador_Exato_1 PORT MAP(
		A=> C(	76	),
		B=>E(	12	),
		Cin=> Carry( 	43	),
		Cout=> Carry( 	44	),
		S=> E(	42	));
				
	U45	: Somador_Exato_1 PORT MAP(
		A=> C(	77	),
		B=>E(	13	),
		Cin=> Carry( 	44	),
		Cout=> Carry( 	45	),
		S=> E(	43	));
				
	U46	: Somador_Exato_1 PORT MAP(
		A=> C(	78	),
		B=>E(	14	),
		Cin=> Carry( 	45	),
		Cout=> Carry( 	46	),
		S=> E(	44	));
				
	U47	: Somador_Exato_1 PORT MAP(
		A=> C(	79	),
		B=>E(	15	),
		Cin=> Carry( 	46	),
		Cout=> Carry( 	47	),
		S=> E(	45	));
				
	U48	: Somador_Exato_1 PORT MAP(
		A=> C(	80	),
		B=>E(	16	),
		Cin=> Carry( 	47	),
		Cout=> Carry( 	48	),
		S=> E(	46	));
				
	U49	: Somador_Exato_1 PORT MAP(
		A=> C(	81	),
		B=>E(	17	),
		Cin=> Carry( 	48	),
		Cout=> Carry( 	49	),
		S=> E(	47	));
				
	U50	: Somador_Exato_1 PORT MAP(
		A=> C(	82	),
		B=>E(	18	),
		Cin=> Carry( 	49	),
		Cout=> Carry( 	50	),
		S=> E(	48	));
				
	U51	: Somador_Exato_1 PORT MAP(
		A=> C(	83	),
		B=>E(	19	),
		Cin=> Carry( 	50	),
		Cout=> Carry( 	51	),
		S=> E(	49	));
				
	U52	: Somador_Exato_1 PORT MAP(
		A=> C(	84	),
		B=>E(	20	),
		Cin=> Carry( 	51	),
		Cout=> Carry( 	52	),
		S=> E(	50	));
				
	U53	: Somador_Exato_1 PORT MAP(
		A=> C(	85	),
		B=>E(	21	),
		Cin=> Carry( 	52	),
		Cout=> Carry( 	53	),
		S=> E(	51	));
				
	U54	: Somador_Exato_1 PORT MAP(
		A=> C(	86	),
		B=>E(	22	),
		Cin=> Carry( 	53	),
		Cout=> Carry( 	54	),
		S=> E(	52	));
				
	U55	: Somador_Exato_1 PORT MAP(
		A=> C(	87	),
		B=>E(	23	),
		Cin=> Carry( 	54	),
		Cout=> Carry( 	55	),
		S=> E(	53	));
				
	U56	: Somador_Exato_1 PORT MAP(
		A=> C(	88	),
		B=>E(	24	),
		Cin=> Carry( 	55	),
		Cout=> Carry( 	56	),
		S=> E(	54	));
				
	U57	: Somador_Exato_1 PORT MAP(
		A=> C(	89	),
		B=>E(	25	),
		Cin=> Carry( 	56	),
		Cout=> Carry( 	57	),
		S=> E(	55	));
				
	U58	: Somador_Exato_1 PORT MAP(
		A=> C(	90	),
		B=>E(	26	),
		Cin=> Carry( 	57	),
		Cout=> Carry( 	58	),
		S=> E(	56	));
				
	U59	: Somador_Exato_1 PORT MAP(
		A=> C(	91	),
		B=>E(	27	),
		Cin=> Carry( 	58	),
		Cout=> Carry( 	59	),
		S=> E(	57	));
				
	U60	: Somador_Exato_1 PORT MAP(
		A=> C(	92	),
		B=>E(	28	),
		Cin=> Carry( 	59	),
		Cout=> Carry( 	60	),
		S=> E(	58	));
				
	U61	: Somador_Exato_1 PORT MAP(
		A=> C(	93	),
		B=>E(	29	),
		Cin=> Carry( 	60	),
		Cout=> Carry( 	61	),
		S=> E(	59	));
				
	U62	: Somador_Exato_1 PORT MAP(
		A=> C(	94	),
		B=>E(	30	),
		Cin=> Carry( 	61	),
		Cout=> Carry( 	62	),
		S=> E(	60	));
				
	U63	: Somador_Exato_1 PORT MAP(
		A=> C(	95	),
		B=>Carry(	31	),
		Cin=> Carry( 	62	),
		Cout=> Carry( 	63	),
		S=> E(	61	));
		------		
				
	U64	: Somador_Exato_1 PORT MAP(
		A=> C(	96	),
		B=>E(	31	),
		Cin =>  '0'	,
		Cout=> Carry( 	64	),
		S=> R(	3	));
				
	U65	: Somador_Exato_1 PORT MAP(
		A=> C(	97	),
		B=>E(	32	),
		Cin=> Carry( 	64	),
		Cout=> Carry( 	65	),
		S=> E(	62	));
				
	U66	: Somador_Exato_1 PORT MAP(
		A=> C(	98	),
		B=>E(	33	),
		Cin=> Carry( 	65	),
		Cout=> Carry( 	66	),
		S=> E(	63	));
				
	U67	: Somador_Exato_1 PORT MAP(
		A=> C(	99	),
		B=>E(	34	),
		Cin=> Carry( 	66	),
		Cout=> Carry( 	67	),
		S=> E(	64	));
				
	U68	: Somador_Exato_1 PORT MAP(
		A=> C(	100	),
		B=>E(	35	),
		Cin=> Carry( 	67	),
		Cout=> Carry( 	68	),
		S=> E(	65	));
				
	U69	: Somador_Exato_1 PORT MAP(
		A=> C(	101	),
		B=>E(	36	),
		Cin=> Carry( 	68	),
		Cout=> Carry( 	69	),
		S=> E(	66	));
				
	U70	: Somador_Exato_1 PORT MAP(
		A=> C(	102	),
		B=>E(	37	),
		Cin=> Carry( 	69	),
		Cout=> Carry( 	70	),
		S=> E(	67	));
				
	U71	: Somador_Exato_1 PORT MAP(
		A=> C(	103	),
		B=>E(	38	),
		Cin=> Carry( 	70	),
		Cout=> Carry( 	71	),
		S=> E(	68	));
				
	U72	: Somador_Exato_1 PORT MAP(
		A=> C(	104	),
		B=>E(	39	),
		Cin=> Carry( 	71	),
		Cout=> Carry( 	72	),
		S=> E(	69	));
				
	U73	: Somador_Exato_1 PORT MAP(
		A=> C(	105	),
		B=>E(	40	),
		Cin=> Carry( 	72	),
		Cout=> Carry( 	73	),
		S=> E(	70	));
				
	U74	: Somador_Exato_1 PORT MAP(
		A=> C(	106	),
		B=>E(	41	),
		Cin=> Carry( 	73	),
		Cout=> Carry( 	74	),
		S=> E(	71	));
				
	U75	: Somador_Exato_1 PORT MAP(
		A=> C(	107	),
		B=>E(	42	),
		Cin=> Carry( 	74	),
		Cout=> Carry( 	75	),
		S=> E(	72	));
				
	U76	: Somador_Exato_1 PORT MAP(
		A=> C(	108	),
		B=>E(	43	),
		Cin=> Carry( 	75	),
		Cout=> Carry( 	76	),
		S=> E(	73	));
				
	U77	: Somador_Exato_1 PORT MAP(
		A=> C(	109	),
		B=>E(	44	),
		Cin=> Carry( 	76	),
		Cout=> Carry( 	77	),
		S=> E(	74	));
				
	U78	: Somador_Exato_1 PORT MAP(
		A=> C(	110	),
		B=>E(	45	),
		Cin=> Carry( 	77	),
		Cout=> Carry( 	78	),
		S=> E(	75	));
				
	U79	: Somador_Exato_1 PORT MAP(
		A=> C(	111	),
		B=>E(	46	),
		Cin=> Carry( 	78	),
		Cout=> Carry( 	79	),
		S=> E(	76	));
				
	U80	: Somador_Exato_1 PORT MAP(
		A=> C(	112	),
		B=>E(	47	),
		Cin=> Carry( 	79	),
		Cout=> Carry( 	80	),
		S=> E(	77	));
				
	U81	: Somador_Exato_1 PORT MAP(
		A=> C(	113	),
		B=>E(	48	),
		Cin=> Carry( 	80	),
		Cout=> Carry( 	81	),
		S=> E(	78	));
				
	U82	: Somador_Exato_1 PORT MAP(
		A=> C(	114	),
		B=>E(	49	),
		Cin=> Carry( 	81	),
		Cout=> Carry( 	82	),
		S=> E(	79	));
				
	U83	: Somador_Exato_1 PORT MAP(
		A=> C(	115	),
		B=>E(	50	),
		Cin=> Carry( 	82	),
		Cout=> Carry( 	83	),
		S=> E(	80	));
				
	U84	: Somador_Exato_1 PORT MAP(
		A=> C(	116	),
		B=>E(	51	),
		Cin=> Carry( 	83	),
		Cout=> Carry( 	84	),
		S=> E(	81	));
				
	U85	: Somador_Exato_1 PORT MAP(
		A=> C(	117	),
		B=>E(	52	),
		Cin=> Carry( 	84	),
		Cout=> Carry( 	85	),
		S=> E(	82	));
				
	U86	: Somador_Exato_1 PORT MAP(
		A=> C(	118	),
		B=>E(	53	),
		Cin=> Carry( 	85	),
		Cout=> Carry( 	86	),
		S=> E(	83	));
				
	U87	: Somador_Exato_1 PORT MAP(
		A=> C(	119	),
		B=>E(	54	),
		Cin=> Carry( 	86	),
		Cout=> Carry( 	87	),
		S=> E(	84	));
				
	U88	: Somador_Exato_1 PORT MAP(
		A=> C(	120	),
		B=>E(	55	),
		Cin=> Carry( 	87	),
		Cout=> Carry( 	88	),
		S=> E(	85	));
				
	U89	: Somador_Exato_1 PORT MAP(
		A=> C(	121	),
		B=>E(	56	),
		Cin=> Carry( 	88	),
		Cout=> Carry( 	89	),
		S=> E(	86	));
				
	U90	: Somador_Exato_1 PORT MAP(
		A=> C(	122	),
		B=>E(	57	),
		Cin=> Carry( 	89	),
		Cout=> Carry( 	90	),
		S=> E(	87	));
				
	U91	: Somador_Exato_1 PORT MAP(
		A=> C(	123	),
		B=>E(	58	),
		Cin=> Carry( 	90	),
		Cout=> Carry( 	91	),
		S=> E(	88	));
				
	U92	: Somador_Exato_1 PORT MAP(
		A=> C(	124	),
		B=>E(	59	),
		Cin=> Carry( 	91	),
		Cout=> Carry( 	92	),
		S=> E(	89	));
				
	U93	: Somador_Exato_1 PORT MAP(
		A=> C(	125	),
		B=>E(	60	),
		Cin=> Carry( 	92	),
		Cout=> Carry( 	93	),
		S=> E(	90	));
				
	U94	: Somador_Exato_1 PORT MAP(
		A=> C(	126	),
		B=>E(	61	),
		Cin=> Carry( 	93	),
		Cout=> Carry( 	94	),
		S=> E(	91	));
				
	U95	: Somador_Exato_1 PORT MAP(
		A=> C(	127	),
		B=>Carry(	63	),
		Cin=> Carry( 	94	),
		Cout=> Carry( 	95	),
		S=> E(	92	));
		------		
				
	U96	: Somador_Exato_1 PORT MAP(
		A=> C(	128	),
		B=>E(	62	),
		Cin =>  '0'	,
		Cout=> Carry( 	96	),
		S=> R(	4	));
				
	U97	: Somador_Exato_1 PORT MAP(
		A=> C(	129	),
		B=>E(	63	),
		Cin=> Carry( 	96	),
		Cout=> Carry( 	97	),
		S=> E(	93	));
				
	U98	: Somador_Exato_1 PORT MAP(
		A=> C(	130	),
		B=>E(	64	),
		Cin=> Carry( 	97	),
		Cout=> Carry( 	98	),
		S=> E(	94	));
				
	U99	: Somador_Exato_1 PORT MAP(
		A=> C(	131	),
		B=>E(	65	),
		Cin=> Carry( 	98	),
		Cout=> Carry( 	99	),
		S=> E(	95	));
				
	U100	: Somador_Exato_1 PORT MAP(
		A=> C(	132	),
		B=>E(	66	),
		Cin=> Carry( 	99	),
		Cout=> Carry( 	100	),
		S=> E(	96	));
				
	U101	: Somador_Exato_1 PORT MAP(
		A=> C(	133	),
		B=>E(	67	),
		Cin=> Carry( 	100	),
		Cout=> Carry( 	101	),
		S=> E(	97	));
				
	U102	: Somador_Exato_1 PORT MAP(
		A=> C(	134	),
		B=>E(	68	),
		Cin=> Carry( 	101	),
		Cout=> Carry( 	102	),
		S=> E(	98	));
				
	U103	: Somador_Exato_1 PORT MAP(
		A=> C(	135	),
		B=>E(	69	),
		Cin=> Carry( 	102	),
		Cout=> Carry( 	103	),
		S=> E(	99	));
				
	U104	: Somador_Exato_1 PORT MAP(
		A=> C(	136	),
		B=>E(	70	),
		Cin=> Carry( 	103	),
		Cout=> Carry( 	104	),
		S=> E(	100	));
				
	U105	: Somador_Exato_1 PORT MAP(
		A=> C(	137	),
		B=>E(	71	),
		Cin=> Carry( 	104	),
		Cout=> Carry( 	105	),
		S=> E(	101	));
				
	U106	: Somador_Exato_1 PORT MAP(
		A=> C(	138	),
		B=>E(	72	),
		Cin=> Carry( 	105	),
		Cout=> Carry( 	106	),
		S=> E(	102	));
				
	U107	: Somador_Exato_1 PORT MAP(
		A=> C(	139	),
		B=>E(	73	),
		Cin=> Carry( 	106	),
		Cout=> Carry( 	107	),
		S=> E(	103	));
				
	U108	: Somador_Exato_1 PORT MAP(
		A=> C(	140	),
		B=>E(	74	),
		Cin=> Carry( 	107	),
		Cout=> Carry( 	108	),
		S=> E(	104	));
				
	U109	: Somador_Exato_1 PORT MAP(
		A=> C(	141	),
		B=>E(	75	),
		Cin=> Carry( 	108	),
		Cout=> Carry( 	109	),
		S=> E(	105	));
				
	U110	: Somador_Exato_1 PORT MAP(
		A=> C(	142	),
		B=>E(	76	),
		Cin=> Carry( 	109	),
		Cout=> Carry( 	110	),
		S=> E(	106	));
				
	U111	: Somador_Exato_1 PORT MAP(
		A=> C(	143	),
		B=>E(	77	),
		Cin=> Carry( 	110	),
		Cout=> Carry( 	111	),
		S=> E(	107	));
				
	U112	: Somador_Exato_1 PORT MAP(
		A=> C(	144	),
		B=>E(	78	),
		Cin=> Carry( 	111	),
		Cout=> Carry( 	112	),
		S=> E(	108	));
				
	U113	: Somador_Exato_1 PORT MAP(
		A=> C(	145	),
		B=>E(	79	),
		Cin=> Carry( 	112	),
		Cout=> Carry( 	113	),
		S=> E(	109	));
				
	U114	: Somador_Exato_1 PORT MAP(
		A=> C(	146	),
		B=>E(	80	),
		Cin=> Carry( 	113	),
		Cout=> Carry( 	114	),
		S=> E(	110	));
				
	U115	: Somador_Exato_1 PORT MAP(
		A=> C(	147	),
		B=>E(	81	),
		Cin=> Carry( 	114	),
		Cout=> Carry( 	115	),
		S=> E(	111	));
				
	U116	: Somador_Exato_1 PORT MAP(
		A=> C(	148	),
		B=>E(	82	),
		Cin=> Carry( 	115	),
		Cout=> Carry( 	116	),
		S=> E(	112	));
				
	U117	: Somador_Exato_1 PORT MAP(
		A=> C(	149	),
		B=>E(	83	),
		Cin=> Carry( 	116	),
		Cout=> Carry( 	117	),
		S=> E(	113	));
				
	U118	: Somador_Exato_1 PORT MAP(
		A=> C(	150	),
		B=>E(	84	),
		Cin=> Carry( 	117	),
		Cout=> Carry( 	118	),
		S=> E(	114	));
				
	U119	: Somador_Exato_1 PORT MAP(
		A=> C(	151	),
		B=>E(	85	),
		Cin=> Carry( 	118	),
		Cout=> Carry( 	119	),
		S=> E(	115	));
				
	U120	: Somador_Exato_1 PORT MAP(
		A=> C(	152	),
		B=>E(	86	),
		Cin=> Carry( 	119	),
		Cout=> Carry( 	120	),
		S=> E(	116	));
				
	U121	: Somador_Exato_1 PORT MAP(
		A=> C(	153	),
		B=>E(	87	),
		Cin=> Carry( 	120	),
		Cout=> Carry( 	121	),
		S=> E(	117	));
				
	U122	: Somador_Exato_1 PORT MAP(
		A=> C(	154	),
		B=>E(	88	),
		Cin=> Carry( 	121	),
		Cout=> Carry( 	122	),
		S=> E(	118	));
				
	U123	: Somador_Exato_1 PORT MAP(
		A=> C(	155	),
		B=>E(	89	),
		Cin=> Carry( 	122	),
		Cout=> Carry( 	123	),
		S=> E(	119	));
				
	U124	: Somador_Exato_1 PORT MAP(
		A=> C(	156	),
		B=>E(	90	),
		Cin=> Carry( 	123	),
		Cout=> Carry( 	124	),
		S=> E(	120	));
				
	U125	: Somador_Exato_1 PORT MAP(
		A=> C(	157	),
		B=>E(	91	),
		Cin=> Carry( 	124	),
		Cout=> Carry( 	125	),
		S=> E(	121	));
				
	U126	: Somador_Exato_1 PORT MAP(
		A=> C(	158	),
		B=>E(	92	),
		Cin=> Carry( 	125	),
		Cout=> Carry( 	126	),
		S=> E(	122	));
				
	U127	: Somador_Exato_1 PORT MAP(
		A=> C(	159	),
		B=>Carry(	95	),
		Cin=> Carry( 	126	),
		Cout=> Carry( 	127	),
		S=> E(	123	));
		------		
				
	U128	: Somador_Exato_1 PORT MAP(
		A=> C(	160	),
		B=>E(	93	),
		Cin =>  '0'	,
		Cout=> Carry( 	128	),
		S=> R(	5	));
				
	U129	: Somador_Exato_1 PORT MAP(
		A=> C(	161	),
		B=>E(	94	),
		Cin=> Carry( 	128	),
		Cout=> Carry( 	129	),
		S=> E(	124	));
				
	U130	: Somador_Exato_1 PORT MAP(
		A=> C(	162	),
		B=>E(	95	),
		Cin=> Carry( 	129	),
		Cout=> Carry( 	130	),
		S=> E(	125	));
				
	U131	: Somador_Exato_1 PORT MAP(
		A=> C(	163	),
		B=>E(	96	),
		Cin=> Carry( 	130	),
		Cout=> Carry( 	131	),
		S=> E(	126	));
				
	U132	: Somador_Exato_1 PORT MAP(
		A=> C(	164	),
		B=>E(	97	),
		Cin=> Carry( 	131	),
		Cout=> Carry( 	132	),
		S=> E(	127	));
				
	U133	: Somador_Exato_1 PORT MAP(
		A=> C(	165	),
		B=>E(	98	),
		Cin=> Carry( 	132	),
		Cout=> Carry( 	133	),
		S=> E(	128	));
				
	U134	: Somador_Exato_1 PORT MAP(
		A=> C(	166	),
		B=>E(	99	),
		Cin=> Carry( 	133	),
		Cout=> Carry( 	134	),
		S=> E(	129	));
				
	U135	: Somador_Exato_1 PORT MAP(
		A=> C(	167	),
		B=>E(	100	),
		Cin=> Carry( 	134	),
		Cout=> Carry( 	135	),
		S=> E(	130	));
				
	U136	: Somador_Exato_1 PORT MAP(
		A=> C(	168	),
		B=>E(	101	),
		Cin=> Carry( 	135	),
		Cout=> Carry( 	136	),
		S=> E(	131	));
				
	U137	: Somador_Exato_1 PORT MAP(
		A=> C(	169	),
		B=>E(	102	),
		Cin=> Carry( 	136	),
		Cout=> Carry( 	137	),
		S=> E(	132	));
				
	U138	: Somador_Exato_1 PORT MAP(
		A=> C(	170	),
		B=>E(	103	),
		Cin=> Carry( 	137	),
		Cout=> Carry( 	138	),
		S=> E(	133	));
				
	U139	: Somador_Exato_1 PORT MAP(
		A=> C(	171	),
		B=>E(	104	),
		Cin=> Carry( 	138	),
		Cout=> Carry( 	139	),
		S=> E(	134	));
				
	U140	: Somador_Exato_1 PORT MAP(
		A=> C(	172	),
		B=>E(	105	),
		Cin=> Carry( 	139	),
		Cout=> Carry( 	140	),
		S=> E(	135	));
				
	U141	: Somador_Exato_1 PORT MAP(
		A=> C(	173	),
		B=>E(	106	),
		Cin=> Carry( 	140	),
		Cout=> Carry( 	141	),
		S=> E(	136	));
				
	U142	: Somador_Exato_1 PORT MAP(
		A=> C(	174	),
		B=>E(	107	),
		Cin=> Carry( 	141	),
		Cout=> Carry( 	142	),
		S=> E(	137	));
				
	U143	: Somador_Exato_1 PORT MAP(
		A=> C(	175	),
		B=>E(	108	),
		Cin=> Carry( 	142	),
		Cout=> Carry( 	143	),
		S=> E(	138	));
				
	U144	: Somador_Exato_1 PORT MAP(
		A=> C(	176	),
		B=>E(	109	),
		Cin=> Carry( 	143	),
		Cout=> Carry( 	144	),
		S=> E(	139	));
				
	U145	: Somador_Exato_1 PORT MAP(
		A=> C(	177	),
		B=>E(	110	),
		Cin=> Carry( 	144	),
		Cout=> Carry( 	145	),
		S=> E(	140	));
				
	U146	: Somador_Exato_1 PORT MAP(
		A=> C(	178	),
		B=>E(	111	),
		Cin=> Carry( 	145	),
		Cout=> Carry( 	146	),
		S=> E(	141	));
				
	U147	: Somador_Exato_1 PORT MAP(
		A=> C(	179	),
		B=>E(	112	),
		Cin=> Carry( 	146	),
		Cout=> Carry( 	147	),
		S=> E(	142	));
				
	U148	: Somador_Exato_1 PORT MAP(
		A=> C(	180	),
		B=>E(	113	),
		Cin=> Carry( 	147	),
		Cout=> Carry( 	148	),
		S=> E(	143	));
				
	U149	: Somador_Exato_1 PORT MAP(
		A=> C(	181	),
		B=>E(	114	),
		Cin=> Carry( 	148	),
		Cout=> Carry( 	149	),
		S=> E(	144	));
				
	U150	: Somador_Exato_1 PORT MAP(
		A=> C(	182	),
		B=>E(	115	),
		Cin=> Carry( 	149	),
		Cout=> Carry( 	150	),
		S=> E(	145	));
				
	U151	: Somador_Exato_1 PORT MAP(
		A=> C(	183	),
		B=>E(	116	),
		Cin=> Carry( 	150	),
		Cout=> Carry( 	151	),
		S=> E(	146	));
				
	U152	: Somador_Exato_1 PORT MAP(
		A=> C(	184	),
		B=>E(	117	),
		Cin=> Carry( 	151	),
		Cout=> Carry( 	152	),
		S=> E(	147	));
				
	U153	: Somador_Exato_1 PORT MAP(
		A=> C(	185	),
		B=>E(	118	),
		Cin=> Carry( 	152	),
		Cout=> Carry( 	153	),
		S=> E(	148	));
				
	U154	: Somador_Exato_1 PORT MAP(
		A=> C(	186	),
		B=>E(	119	),
		Cin=> Carry( 	153	),
		Cout=> Carry( 	154	),
		S=> E(	149	));
				
	U155	: Somador_Exato_1 PORT MAP(
		A=> C(	187	),
		B=>E(	120	),
		Cin=> Carry( 	154	),
		Cout=> Carry( 	155	),
		S=> E(	150	));
				
	U156	: Somador_Exato_1 PORT MAP(
		A=> C(	188	),
		B=>E(	121	),
		Cin=> Carry( 	155	),
		Cout=> Carry( 	156	),
		S=> E(	151	));
				
	U157	: Somador_Exato_1 PORT MAP(
		A=> C(	189	),
		B=>E(	122	),
		Cin=> Carry( 	156	),
		Cout=> Carry( 	157	),
		S=> E(	152	));
				
	U158	: Somador_Exato_1 PORT MAP(
		A=> C(	190	),
		B=>E(	123	),
		Cin=> Carry( 	157	),
		Cout=> Carry( 	158	),
		S=> E(	153	));
				
	U159	: Somador_Exato_1 PORT MAP(
		A=> C(	191	),
		B=>Carry(	127	),
		Cin=> Carry( 	158	),
		Cout=> Carry( 	159	),
		S=> E(	154	));
		------		
				
	U160	: Somador_Exato_1 PORT MAP(
		A=> C(	192	),
		B=>E(	124	),
		Cin =>  '0'	,
		Cout=> Carry( 	160	),
		S=> R(	6	));
				
	U161	: Somador_Exato_1 PORT MAP(
		A=> C(	193	),
		B=>E(	125	),
		Cin=> Carry( 	160	),
		Cout=> Carry( 	161	),
		S=> E(	155	));
				
	U162	: Somador_Exato_1 PORT MAP(
		A=> C(	194	),
		B=>E(	126	),
		Cin=> Carry( 	161	),
		Cout=> Carry( 	162	),
		S=> E(	156	));
				
	U163	: Somador_Exato_1 PORT MAP(
		A=> C(	195	),
		B=>E(	127	),
		Cin=> Carry( 	162	),
		Cout=> Carry( 	163	),
		S=> E(	157	));
				
	U164	: Somador_Exato_1 PORT MAP(
		A=> C(	196	),
		B=>E(	128	),
		Cin=> Carry( 	163	),
		Cout=> Carry( 	164	),
		S=> E(	158	));
				
	U165	: Somador_Exato_1 PORT MAP(
		A=> C(	197	),
		B=>E(	129	),
		Cin=> Carry( 	164	),
		Cout=> Carry( 	165	),
		S=> E(	159	));
				
	U166	: Somador_Exato_1 PORT MAP(
		A=> C(	198	),
		B=>E(	130	),
		Cin=> Carry( 	165	),
		Cout=> Carry( 	166	),
		S=> E(	160	));
				
	U167	: Somador_Exato_1 PORT MAP(
		A=> C(	199	),
		B=>E(	131	),
		Cin=> Carry( 	166	),
		Cout=> Carry( 	167	),
		S=> E(	161	));
				
	U168	: Somador_Exato_1 PORT MAP(
		A=> C(	200	),
		B=>E(	132	),
		Cin=> Carry( 	167	),
		Cout=> Carry( 	168	),
		S=> E(	162	));
				
	U169	: Somador_Exato_1 PORT MAP(
		A=> C(	201	),
		B=>E(	133	),
		Cin=> Carry( 	168	),
		Cout=> Carry( 	169	),
		S=> E(	163	));
				
	U170	: Somador_Exato_1 PORT MAP(
		A=> C(	202	),
		B=>E(	134	),
		Cin=> Carry( 	169	),
		Cout=> Carry( 	170	),
		S=> E(	164	));
				
	U171	: Somador_Exato_1 PORT MAP(
		A=> C(	203	),
		B=>E(	135	),
		Cin=> Carry( 	170	),
		Cout=> Carry( 	171	),
		S=> E(	165	));
				
	U172	: Somador_Exato_1 PORT MAP(
		A=> C(	204	),
		B=>E(	136	),
		Cin=> Carry( 	171	),
		Cout=> Carry( 	172	),
		S=> E(	166	));
				
	U173	: Somador_Exato_1 PORT MAP(
		A=> C(	205	),
		B=>E(	137	),
		Cin=> Carry( 	172	),
		Cout=> Carry( 	173	),
		S=> E(	167	));
				
	U174	: Somador_Exato_1 PORT MAP(
		A=> C(	206	),
		B=>E(	138	),
		Cin=> Carry( 	173	),
		Cout=> Carry( 	174	),
		S=> E(	168	));
				
	U175	: Somador_Exato_1 PORT MAP(
		A=> C(	207	),
		B=>E(	139	),
		Cin=> Carry( 	174	),
		Cout=> Carry( 	175	),
		S=> E(	169	));
				
	U176	: Somador_Exato_1 PORT MAP(
		A=> C(	208	),
		B=>E(	140	),
		Cin=> Carry( 	175	),
		Cout=> Carry( 	176	),
		S=> E(	170	));
				
	U177	: Somador_Exato_1 PORT MAP(
		A=> C(	209	),
		B=>E(	141	),
		Cin=> Carry( 	176	),
		Cout=> Carry( 	177	),
		S=> E(	171	));
				
	U178	: Somador_Exato_1 PORT MAP(
		A=> C(	210	),
		B=>E(	142	),
		Cin=> Carry( 	177	),
		Cout=> Carry( 	178	),
		S=> E(	172	));
				
	U179	: Somador_Exato_1 PORT MAP(
		A=> C(	211	),
		B=>E(	143	),
		Cin=> Carry( 	178	),
		Cout=> Carry( 	179	),
		S=> E(	173	));
				
	U180	: Somador_Exato_1 PORT MAP(
		A=> C(	212	),
		B=>E(	144	),
		Cin=> Carry( 	179	),
		Cout=> Carry( 	180	),
		S=> E(	174	));
				
	U181	: Somador_Exato_1 PORT MAP(
		A=> C(	213	),
		B=>E(	145	),
		Cin=> Carry( 	180	),
		Cout=> Carry( 	181	),
		S=> E(	175	));
				
	U182	: Somador_Exato_1 PORT MAP(
		A=> C(	214	),
		B=>E(	146	),
		Cin=> Carry( 	181	),
		Cout=> Carry( 	182	),
		S=> E(	176	));
				
	U183	: Somador_Exato_1 PORT MAP(
		A=> C(	215	),
		B=>E(	147	),
		Cin=> Carry( 	182	),
		Cout=> Carry( 	183	),
		S=> E(	177	));
				
	U184	: Somador_Exato_1 PORT MAP(
		A=> C(	216	),
		B=>E(	148	),
		Cin=> Carry( 	183	),
		Cout=> Carry( 	184	),
		S=> E(	178	));
				
	U185	: Somador_Exato_1 PORT MAP(
		A=> C(	217	),
		B=>E(	149	),
		Cin=> Carry( 	184	),
		Cout=> Carry( 	185	),
		S=> E(	179	));
				
	U186	: Somador_Exato_1 PORT MAP(
		A=> C(	218	),
		B=>E(	150	),
		Cin=> Carry( 	185	),
		Cout=> Carry( 	186	),
		S=> E(	180	));
				
	U187	: Somador_Exato_1 PORT MAP(
		A=> C(	219	),
		B=>E(	151	),
		Cin=> Carry( 	186	),
		Cout=> Carry( 	187	),
		S=> E(	181	));
				
	U188	: Somador_Exato_1 PORT MAP(
		A=> C(	220	),
		B=>E(	152	),
		Cin=> Carry( 	187	),
		Cout=> Carry( 	188	),
		S=> E(	182	));
				
	U189	: Somador_Exato_1 PORT MAP(
		A=> C(	221	),
		B=>E(	153	),
		Cin=> Carry( 	188	),
		Cout=> Carry( 	189	),
		S=> E(	183	));
				
	U190	: Somador_Exato_1 PORT MAP(
		A=> C(	222	),
		B=>E(	154	),
		Cin=> Carry( 	189	),
		Cout=> Carry( 	190	),
		S=> E(	184	));
				
	U191	: Somador_Exato_1 PORT MAP(
		A=> C(	223	),
		B=>Carry(	159	),
		Cin=> Carry( 	190	),
		Cout=> Carry( 	191	),
		S=> E(	185	));
		------		
				
	U192	: Somador_Exato_1 PORT MAP(
		A=> C(	224	),
		B=>E(	155	),
		Cin =>  '0'	,
		Cout=> Carry( 	192	),
		S=> R(	7	));
				
	U193	: Somador_Exato_1 PORT MAP(
		A=> C(	225	),
		B=>E(	156	),
		Cin=> Carry( 	192	),
		Cout=> Carry( 	193	),
		S=> E(	186	));
				
	U194	: Somador_Exato_1 PORT MAP(
		A=> C(	226	),
		B=>E(	157	),
		Cin=> Carry( 	193	),
		Cout=> Carry( 	194	),
		S=> E(	187	));
				
	U195	: Somador_Exato_1 PORT MAP(
		A=> C(	227	),
		B=>E(	158	),
		Cin=> Carry( 	194	),
		Cout=> Carry( 	195	),
		S=> E(	188	));
				
	U196	: Somador_Exato_1 PORT MAP(
		A=> C(	228	),
		B=>E(	159	),
		Cin=> Carry( 	195	),
		Cout=> Carry( 	196	),
		S=> E(	189	));
				
	U197	: Somador_Exato_1 PORT MAP(
		A=> C(	229	),
		B=>E(	160	),
		Cin=> Carry( 	196	),
		Cout=> Carry( 	197	),
		S=> E(	190	));
				
	U198	: Somador_Exato_1 PORT MAP(
		A=> C(	230	),
		B=>E(	161	),
		Cin=> Carry( 	197	),
		Cout=> Carry( 	198	),
		S=> E(	191	));
				
	U199	: Somador_Exato_1 PORT MAP(
		A=> C(	231	),
		B=>E(	162	),
		Cin=> Carry( 	198	),
		Cout=> Carry( 	199	),
		S=> E(	192	));
				
	U200	: Somador_Exato_1 PORT MAP(
		A=> C(	232	),
		B=>E(	163	),
		Cin=> Carry( 	199	),
		Cout=> Carry( 	200	),
		S=> E(	193	));
				
	U201	: Somador_Exato_1 PORT MAP(
		A=> C(	233	),
		B=>E(	164	),
		Cin=> Carry( 	200	),
		Cout=> Carry( 	201	),
		S=> E(	194	));
				
	U202	: Somador_Exato_1 PORT MAP(
		A=> C(	234	),
		B=>E(	165	),
		Cin=> Carry( 	201	),
		Cout=> Carry( 	202	),
		S=> E(	195	));
				
	U203	: Somador_Exato_1 PORT MAP(
		A=> C(	235	),
		B=>E(	166	),
		Cin=> Carry( 	202	),
		Cout=> Carry( 	203	),
		S=> E(	196	));
				
	U204	: Somador_Exato_1 PORT MAP(
		A=> C(	236	),
		B=>E(	167	),
		Cin=> Carry( 	203	),
		Cout=> Carry( 	204	),
		S=> E(	197	));
				
	U205	: Somador_Exato_1 PORT MAP(
		A=> C(	237	),
		B=>E(	168	),
		Cin=> Carry( 	204	),
		Cout=> Carry( 	205	),
		S=> E(	198	));
				
	U206	: Somador_Exato_1 PORT MAP(
		A=> C(	238	),
		B=>E(	169	),
		Cin=> Carry( 	205	),
		Cout=> Carry( 	206	),
		S=> E(	199	));
				
	U207	: Somador_Exato_1 PORT MAP(
		A=> C(	239	),
		B=>E(	170	),
		Cin=> Carry( 	206	),
		Cout=> Carry( 	207	),
		S=> E(	200	));
				
	U208	: Somador_Exato_1 PORT MAP(
		A=> C(	240	),
		B=>E(	171	),
		Cin=> Carry( 	207	),
		Cout=> Carry( 	208	),
		S=> E(	201	));
				
	U209	: Somador_Exato_1 PORT MAP(
		A=> C(	241	),
		B=>E(	172	),
		Cin=> Carry( 	208	),
		Cout=> Carry( 	209	),
		S=> E(	202	));
				
	U210	: Somador_Exato_1 PORT MAP(
		A=> C(	242	),
		B=>E(	173	),
		Cin=> Carry( 	209	),
		Cout=> Carry( 	210	),
		S=> E(	203	));
				
	U211	: Somador_Exato_1 PORT MAP(
		A=> C(	243	),
		B=>E(	174	),
		Cin=> Carry( 	210	),
		Cout=> Carry( 	211	),
		S=> E(	204	));
				
	U212	: Somador_Exato_1 PORT MAP(
		A=> C(	244	),
		B=>E(	175	),
		Cin=> Carry( 	211	),
		Cout=> Carry( 	212	),
		S=> E(	205	));
				
	U213	: Somador_Exato_1 PORT MAP(
		A=> C(	245	),
		B=>E(	176	),
		Cin=> Carry( 	212	),
		Cout=> Carry( 	213	),
		S=> E(	206	));
				
	U214	: Somador_Exato_1 PORT MAP(
		A=> C(	246	),
		B=>E(	177	),
		Cin=> Carry( 	213	),
		Cout=> Carry( 	214	),
		S=> E(	207	));
				
	U215	: Somador_Exato_1 PORT MAP(
		A=> C(	247	),
		B=>E(	178	),
		Cin=> Carry( 	214	),
		Cout=> Carry( 	215	),
		S=> E(	208	));
				
	U216	: Somador_Exato_1 PORT MAP(
		A=> C(	248	),
		B=>E(	179	),
		Cin=> Carry( 	215	),
		Cout=> Carry( 	216	),
		S=> E(	209	));
				
	U217	: Somador_Exato_1 PORT MAP(
		A=> C(	249	),
		B=>E(	180	),
		Cin=> Carry( 	216	),
		Cout=> Carry( 	217	),
		S=> E(	210	));
				
	U218	: Somador_Exato_1 PORT MAP(
		A=> C(	250	),
		B=>E(	181	),
		Cin=> Carry( 	217	),
		Cout=> Carry( 	218	),
		S=> E(	211	));
				
	U219	: Somador_Exato_1 PORT MAP(
		A=> C(	251	),
		B=>E(	182	),
		Cin=> Carry( 	218	),
		Cout=> Carry( 	219	),
		S=> E(	212	));
				
	U220	: Somador_Exato_1 PORT MAP(
		A=> C(	252	),
		B=>E(	183	),
		Cin=> Carry( 	219	),
		Cout=> Carry( 	220	),
		S=> E(	213	));
				
	U221	: Somador_Exato_1 PORT MAP(
		A=> C(	253	),
		B=>E(	184	),
		Cin=> Carry( 	220	),
		Cout=> Carry( 	221	),
		S=> E(	214	));
				
	U222	: Somador_Exato_1 PORT MAP(
		A=> C(	254	),
		B=>E(	185	),
		Cin=> Carry( 	221	),
		Cout=> Carry( 	222	),
		S=> E(	215	));
				
	U223	: Somador_Exato_1 PORT MAP(
		A=> C(	255	),
		B=>Carry(	191	),
		Cin=> Carry( 	222	),
		Cout=> Carry( 	223	),
		S=> E(	216	));
		------		
				
	U224	: Somador_Exato_1 PORT MAP(
		A=> C(	256	),
		B=>E(	186	),
		Cin =>  '0'	,
		Cout=> Carry( 	224	),
		S=> R(	8	));
				
	U225	: Somador_Exato_1 PORT MAP(
		A=> C(	257	),
		B=>E(	187	),
		Cin=> Carry( 	224	),
		Cout=> Carry( 	225	),
		S=> E(	217	));
				
	U226	: Somador_Exato_1 PORT MAP(
		A=> C(	258	),
		B=>E(	188	),
		Cin=> Carry( 	225	),
		Cout=> Carry( 	226	),
		S=> E(	218	));
				
	U227	: Somador_Exato_1 PORT MAP(
		A=> C(	259	),
		B=>E(	189	),
		Cin=> Carry( 	226	),
		Cout=> Carry( 	227	),
		S=> E(	219	));
				
	U228	: Somador_Exato_1 PORT MAP(
		A=> C(	260	),
		B=>E(	190	),
		Cin=> Carry( 	227	),
		Cout=> Carry( 	228	),
		S=> E(	220	));
				
	U229	: Somador_Exato_1 PORT MAP(
		A=> C(	261	),
		B=>E(	191	),
		Cin=> Carry( 	228	),
		Cout=> Carry( 	229	),
		S=> E(	221	));
				
	U230	: Somador_Exato_1 PORT MAP(
		A=> C(	262	),
		B=>E(	192	),
		Cin=> Carry( 	229	),
		Cout=> Carry( 	230	),
		S=> E(	222	));
				
	U231	: Somador_Exato_1 PORT MAP(
		A=> C(	263	),
		B=>E(	193	),
		Cin=> Carry( 	230	),
		Cout=> Carry( 	231	),
		S=> E(	223	));
				
	U232	: Somador_Exato_1 PORT MAP(
		A=> C(	264	),
		B=>E(	194	),
		Cin=> Carry( 	231	),
		Cout=> Carry( 	232	),
		S=> E(	224	));
				
	U233	: Somador_Exato_1 PORT MAP(
		A=> C(	265	),
		B=>E(	195	),
		Cin=> Carry( 	232	),
		Cout=> Carry( 	233	),
		S=> E(	225	));
				
	U234	: Somador_Exato_1 PORT MAP(
		A=> C(	266	),
		B=>E(	196	),
		Cin=> Carry( 	233	),
		Cout=> Carry( 	234	),
		S=> E(	226	));
				
	U235	: Somador_Exato_1 PORT MAP(
		A=> C(	267	),
		B=>E(	197	),
		Cin=> Carry( 	234	),
		Cout=> Carry( 	235	),
		S=> E(	227	));
				
	U236	: Somador_Exato_1 PORT MAP(
		A=> C(	268	),
		B=>E(	198	),
		Cin=> Carry( 	235	),
		Cout=> Carry( 	236	),
		S=> E(	228	));
				
	U237	: Somador_Exato_1 PORT MAP(
		A=> C(	269	),
		B=>E(	199	),
		Cin=> Carry( 	236	),
		Cout=> Carry( 	237	),
		S=> E(	229	));
				
	U238	: Somador_Exato_1 PORT MAP(
		A=> C(	270	),
		B=>E(	200	),
		Cin=> Carry( 	237	),
		Cout=> Carry( 	238	),
		S=> E(	230	));
				
	U239	: Somador_Exato_1 PORT MAP(
		A=> C(	271	),
		B=>E(	201	),
		Cin=> Carry( 	238	),
		Cout=> Carry( 	239	),
		S=> E(	231	));
				
	U240	: Somador_Exato_1 PORT MAP(
		A=> C(	272	),
		B=>E(	202	),
		Cin=> Carry( 	239	),
		Cout=> Carry( 	240	),
		S=> E(	232	));
				
	U241	: Somador_Exato_1 PORT MAP(
		A=> C(	273	),
		B=>E(	203	),
		Cin=> Carry( 	240	),
		Cout=> Carry( 	241	),
		S=> E(	233	));
				
	U242	: Somador_Exato_1 PORT MAP(
		A=> C(	274	),
		B=>E(	204	),
		Cin=> Carry( 	241	),
		Cout=> Carry( 	242	),
		S=> E(	234	));
				
	U243	: Somador_Exato_1 PORT MAP(
		A=> C(	275	),
		B=>E(	205	),
		Cin=> Carry( 	242	),
		Cout=> Carry( 	243	),
		S=> E(	235	));
				
	U244	: Somador_Exato_1 PORT MAP(
		A=> C(	276	),
		B=>E(	206	),
		Cin=> Carry( 	243	),
		Cout=> Carry( 	244	),
		S=> E(	236	));
				
	U245	: Somador_Exato_1 PORT MAP(
		A=> C(	277	),
		B=>E(	207	),
		Cin=> Carry( 	244	),
		Cout=> Carry( 	245	),
		S=> E(	237	));
				
	U246	: Somador_Exato_1 PORT MAP(
		A=> C(	278	),
		B=>E(	208	),
		Cin=> Carry( 	245	),
		Cout=> Carry( 	246	),
		S=> E(	238	));
				
	U247	: Somador_Exato_1 PORT MAP(
		A=> C(	279	),
		B=>E(	209	),
		Cin=> Carry( 	246	),
		Cout=> Carry( 	247	),
		S=> E(	239	));
				
	U248	: Somador_Exato_1 PORT MAP(
		A=> C(	280	),
		B=>E(	210	),
		Cin=> Carry( 	247	),
		Cout=> Carry( 	248	),
		S=> E(	240	));
				
	U249	: Somador_Exato_1 PORT MAP(
		A=> C(	281	),
		B=>E(	211	),
		Cin=> Carry( 	248	),
		Cout=> Carry( 	249	),
		S=> E(	241	));
				
	U250	: Somador_Exato_1 PORT MAP(
		A=> C(	282	),
		B=>E(	212	),
		Cin=> Carry( 	249	),
		Cout=> Carry( 	250	),
		S=> E(	242	));
				
	U251	: Somador_Exato_1 PORT MAP(
		A=> C(	283	),
		B=>E(	213	),
		Cin=> Carry( 	250	),
		Cout=> Carry( 	251	),
		S=> E(	243	));
				
	U252	: Somador_Exato_1 PORT MAP(
		A=> C(	284	),
		B=>E(	214	),
		Cin=> Carry( 	251	),
		Cout=> Carry( 	252	),
		S=> E(	244	));
				
	U253	: Somador_Exato_1 PORT MAP(
		A=> C(	285	),
		B=>E(	215	),
		Cin=> Carry( 	252	),
		Cout=> Carry( 	253	),
		S=> E(	245	));
				
	U254	: Somador_Exato_1 PORT MAP(
		A=> C(	286	),
		B=>E(	216	),
		Cin=> Carry( 	253	),
		Cout=> Carry( 	254	),
		S=> E(	246	));
				
	U255	: Somador_Exato_1 PORT MAP(
		A=> C(	287	),
		B=>Carry(	223	),
		Cin=> Carry( 	254	),
		Cout=> Carry( 	255	),
		S=> E(	247	));
		------		
				
	U256	: Somador_Exato_1 PORT MAP(
		A=> C(	288	),
		B=>E(	217	),
		Cin =>  '0'	,
		Cout=> Carry( 	256	),
		S=> R(	9	));
				
	U257	: Somador_Exato_1 PORT MAP(
		A=> C(	289	),
		B=>E(	218	),
		Cin=> Carry( 	256	),
		Cout=> Carry( 	257	),
		S=> E(	248	));
				
	U258	: Somador_Exato_1 PORT MAP(
		A=> C(	290	),
		B=>E(	219	),
		Cin=> Carry( 	257	),
		Cout=> Carry( 	258	),
		S=> E(	249	));
				
	U259	: Somador_Exato_1 PORT MAP(
		A=> C(	291	),
		B=>E(	220	),
		Cin=> Carry( 	258	),
		Cout=> Carry( 	259	),
		S=> E(	250	));
				
	U260	: Somador_Exato_1 PORT MAP(
		A=> C(	292	),
		B=>E(	221	),
		Cin=> Carry( 	259	),
		Cout=> Carry( 	260	),
		S=> E(	251	));
				
	U261	: Somador_Exato_1 PORT MAP(
		A=> C(	293	),
		B=>E(	222	),
		Cin=> Carry( 	260	),
		Cout=> Carry( 	261	),
		S=> E(	252	));
				
	U262	: Somador_Exato_1 PORT MAP(
		A=> C(	294	),
		B=>E(	223	),
		Cin=> Carry( 	261	),
		Cout=> Carry( 	262	),
		S=> E(	253	));
				
	U263	: Somador_Exato_1 PORT MAP(
		A=> C(	295	),
		B=>E(	224	),
		Cin=> Carry( 	262	),
		Cout=> Carry( 	263	),
		S=> E(	254	));
				
	U264	: Somador_Exato_1 PORT MAP(
		A=> C(	296	),
		B=>E(	225	),
		Cin=> Carry( 	263	),
		Cout=> Carry( 	264	),
		S=> E(	255	));
				
	U265	: Somador_Exato_1 PORT MAP(
		A=> C(	297	),
		B=>E(	226	),
		Cin=> Carry( 	264	),
		Cout=> Carry( 	265	),
		S=> E(	256	));
				
	U266	: Somador_Exato_1 PORT MAP(
		A=> C(	298	),
		B=>E(	227	),
		Cin=> Carry( 	265	),
		Cout=> Carry( 	266	),
		S=> E(	257	));
				
	U267	: Somador_Exato_1 PORT MAP(
		A=> C(	299	),
		B=>E(	228	),
		Cin=> Carry( 	266	),
		Cout=> Carry( 	267	),
		S=> E(	258	));
				
	U268	: Somador_Exato_1 PORT MAP(
		A=> C(	300	),
		B=>E(	229	),
		Cin=> Carry( 	267	),
		Cout=> Carry( 	268	),
		S=> E(	259	));
				
	U269	: Somador_Exato_1 PORT MAP(
		A=> C(	301	),
		B=>E(	230	),
		Cin=> Carry( 	268	),
		Cout=> Carry( 	269	),
		S=> E(	260	));
				
	U270	: Somador_Exato_1 PORT MAP(
		A=> C(	302	),
		B=>E(	231	),
		Cin=> Carry( 	269	),
		Cout=> Carry( 	270	),
		S=> E(	261	));
				
	U271	: Somador_Exato_1 PORT MAP(
		A=> C(	303	),
		B=>E(	232	),
		Cin=> Carry( 	270	),
		Cout=> Carry( 	271	),
		S=> E(	262	));
				
	U272	: Somador_Exato_1 PORT MAP(
		A=> C(	304	),
		B=>E(	233	),
		Cin=> Carry( 	271	),
		Cout=> Carry( 	272	),
		S=> E(	263	));
				
	U273	: Somador_Exato_1 PORT MAP(
		A=> C(	305	),
		B=>E(	234	),
		Cin=> Carry( 	272	),
		Cout=> Carry( 	273	),
		S=> E(	264	));
				
	U274	: Somador_Exato_1 PORT MAP(
		A=> C(	306	),
		B=>E(	235	),
		Cin=> Carry( 	273	),
		Cout=> Carry( 	274	),
		S=> E(	265	));
				
	U275	: Somador_Exato_1 PORT MAP(
		A=> C(	307	),
		B=>E(	236	),
		Cin=> Carry( 	274	),
		Cout=> Carry( 	275	),
		S=> E(	266	));
				
	U276	: Somador_Exato_1 PORT MAP(
		A=> C(	308	),
		B=>E(	237	),
		Cin=> Carry( 	275	),
		Cout=> Carry( 	276	),
		S=> E(	267	));
				
	U277	: Somador_Exato_1 PORT MAP(
		A=> C(	309	),
		B=>E(	238	),
		Cin=> Carry( 	276	),
		Cout=> Carry( 	277	),
		S=> E(	268	));
				
	U278	: Somador_Exato_1 PORT MAP(
		A=> C(	310	),
		B=>E(	239	),
		Cin=> Carry( 	277	),
		Cout=> Carry( 	278	),
		S=> E(	269	));
				
	U279	: Somador_Exato_1 PORT MAP(
		A=> C(	311	),
		B=>E(	240	),
		Cin=> Carry( 	278	),
		Cout=> Carry( 	279	),
		S=> E(	270	));
				
	U280	: Somador_Exato_1 PORT MAP(
		A=> C(	312	),
		B=>E(	241	),
		Cin=> Carry( 	279	),
		Cout=> Carry( 	280	),
		S=> E(	271	));
				
	U281	: Somador_Exato_1 PORT MAP(
		A=> C(	313	),
		B=>E(	242	),
		Cin=> Carry( 	280	),
		Cout=> Carry( 	281	),
		S=> E(	272	));
				
	U282	: Somador_Exato_1 PORT MAP(
		A=> C(	314	),
		B=>E(	243	),
		Cin=> Carry( 	281	),
		Cout=> Carry( 	282	),
		S=> E(	273	));
				
	U283	: Somador_Exato_1 PORT MAP(
		A=> C(	315	),
		B=>E(	244	),
		Cin=> Carry( 	282	),
		Cout=> Carry( 	283	),
		S=> E(	274	));
				
	U284	: Somador_Exato_1 PORT MAP(
		A=> C(	316	),
		B=>E(	245	),
		Cin=> Carry( 	283	),
		Cout=> Carry( 	284	),
		S=> E(	275	));
				
	U285	: Somador_Exato_1 PORT MAP(
		A=> C(	317	),
		B=>E(	246	),
		Cin=> Carry( 	284	),
		Cout=> Carry( 	285	),
		S=> E(	276	));
				
	U286	: Somador_Exato_1 PORT MAP(
		A=> C(	318	),
		B=>E(	247	),
		Cin=> Carry( 	285	),
		Cout=> Carry( 	286	),
		S=> E(	277	));
				
	U287	: Somador_Exato_1 PORT MAP(
		A=> C(	319	),
		B=>Carry(	255	),
		Cin=> Carry( 	286	),
		Cout=> Carry( 	287	),
		S=> E(	278	));
		------		
				
	U288	: Somador_Exato_1 PORT MAP(
		A=> C(	320	),
		B=>E(	248	),
		Cin =>  '0'	,
		Cout=> Carry( 	288	),
		S=> R(	10	));
				
	U289	: Somador_Exato_1 PORT MAP(
		A=> C(	321	),
		B=>E(	249	),
		Cin=> Carry( 	288	),
		Cout=> Carry( 	289	),
		S=> E(	279	));
				
	U290	: Somador_Exato_1 PORT MAP(
		A=> C(	322	),
		B=>E(	250	),
		Cin=> Carry( 	289	),
		Cout=> Carry( 	290	),
		S=> E(	280	));
				
	U291	: Somador_Exato_1 PORT MAP(
		A=> C(	323	),
		B=>E(	251	),
		Cin=> Carry( 	290	),
		Cout=> Carry( 	291	),
		S=> E(	281	));
				
	U292	: Somador_Exato_1 PORT MAP(
		A=> C(	324	),
		B=>E(	252	),
		Cin=> Carry( 	291	),
		Cout=> Carry( 	292	),
		S=> E(	282	));
				
	U293	: Somador_Exato_1 PORT MAP(
		A=> C(	325	),
		B=>E(	253	),
		Cin=> Carry( 	292	),
		Cout=> Carry( 	293	),
		S=> E(	283	));
				
	U294	: Somador_Exato_1 PORT MAP(
		A=> C(	326	),
		B=>E(	254	),
		Cin=> Carry( 	293	),
		Cout=> Carry( 	294	),
		S=> E(	284	));
				
	U295	: Somador_Exato_1 PORT MAP(
		A=> C(	327	),
		B=>E(	255	),
		Cin=> Carry( 	294	),
		Cout=> Carry( 	295	),
		S=> E(	285	));
				
	U296	: Somador_Exato_1 PORT MAP(
		A=> C(	328	),
		B=>E(	256	),
		Cin=> Carry( 	295	),
		Cout=> Carry( 	296	),
		S=> E(	286	));
				
	U297	: Somador_Exato_1 PORT MAP(
		A=> C(	329	),
		B=>E(	257	),
		Cin=> Carry( 	296	),
		Cout=> Carry( 	297	),
		S=> E(	287	));
				
	U298	: Somador_Exato_1 PORT MAP(
		A=> C(	330	),
		B=>E(	258	),
		Cin=> Carry( 	297	),
		Cout=> Carry( 	298	),
		S=> E(	288	));
				
	U299	: Somador_Exato_1 PORT MAP(
		A=> C(	331	),
		B=>E(	259	),
		Cin=> Carry( 	298	),
		Cout=> Carry( 	299	),
		S=> E(	289	));
				
	U300	: Somador_Exato_1 PORT MAP(
		A=> C(	332	),
		B=>E(	260	),
		Cin=> Carry( 	299	),
		Cout=> Carry( 	300	),
		S=> E(	290	));
				
	U301	: Somador_Exato_1 PORT MAP(
		A=> C(	333	),
		B=>E(	261	),
		Cin=> Carry( 	300	),
		Cout=> Carry( 	301	),
		S=> E(	291	));
				
	U302	: Somador_Exato_1 PORT MAP(
		A=> C(	334	),
		B=>E(	262	),
		Cin=> Carry( 	301	),
		Cout=> Carry( 	302	),
		S=> E(	292	));
				
	U303	: Somador_Exato_1 PORT MAP(
		A=> C(	335	),
		B=>E(	263	),
		Cin=> Carry( 	302	),
		Cout=> Carry( 	303	),
		S=> E(	293	));
				
	U304	: Somador_Exato_1 PORT MAP(
		A=> C(	336	),
		B=>E(	264	),
		Cin=> Carry( 	303	),
		Cout=> Carry( 	304	),
		S=> E(	294	));
				
	U305	: Somador_Exato_1 PORT MAP(
		A=> C(	337	),
		B=>E(	265	),
		Cin=> Carry( 	304	),
		Cout=> Carry( 	305	),
		S=> E(	295	));
				
	U306	: Somador_Exato_1 PORT MAP(
		A=> C(	338	),
		B=>E(	266	),
		Cin=> Carry( 	305	),
		Cout=> Carry( 	306	),
		S=> E(	296	));
				
	U307	: Somador_Exato_1 PORT MAP(
		A=> C(	339	),
		B=>E(	267	),
		Cin=> Carry( 	306	),
		Cout=> Carry( 	307	),
		S=> E(	297	));
				
	U308	: Somador_Exato_1 PORT MAP(
		A=> C(	340	),
		B=>E(	268	),
		Cin=> Carry( 	307	),
		Cout=> Carry( 	308	),
		S=> E(	298	));
				
	U309	: Somador_Exato_1 PORT MAP(
		A=> C(	341	),
		B=>E(	269	),
		Cin=> Carry( 	308	),
		Cout=> Carry( 	309	),
		S=> E(	299	));
				
	U310	: Somador_Exato_1 PORT MAP(
		A=> C(	342	),
		B=>E(	270	),
		Cin=> Carry( 	309	),
		Cout=> Carry( 	310	),
		S=> E(	300	));
				
	U311	: Somador_Exato_1 PORT MAP(
		A=> C(	343	),
		B=>E(	271	),
		Cin=> Carry( 	310	),
		Cout=> Carry( 	311	),
		S=> E(	301	));
				
	U312	: Somador_Exato_1 PORT MAP(
		A=> C(	344	),
		B=>E(	272	),
		Cin=> Carry( 	311	),
		Cout=> Carry( 	312	),
		S=> E(	302	));
				
	U313	: Somador_Exato_1 PORT MAP(
		A=> C(	345	),
		B=>E(	273	),
		Cin=> Carry( 	312	),
		Cout=> Carry( 	313	),
		S=> E(	303	));
				
	U314	: Somador_Exato_1 PORT MAP(
		A=> C(	346	),
		B=>E(	274	),
		Cin=> Carry( 	313	),
		Cout=> Carry( 	314	),
		S=> E(	304	));
				
	U315	: Somador_Exato_1 PORT MAP(
		A=> C(	347	),
		B=>E(	275	),
		Cin=> Carry( 	314	),
		Cout=> Carry( 	315	),
		S=> E(	305	));
				
	U316	: Somador_Exato_1 PORT MAP(
		A=> C(	348	),
		B=>E(	276	),
		Cin=> Carry( 	315	),
		Cout=> Carry( 	316	),
		S=> E(	306	));
				
	U317	: Somador_Exato_1 PORT MAP(
		A=> C(	349	),
		B=>E(	277	),
		Cin=> Carry( 	316	),
		Cout=> Carry( 	317	),
		S=> E(	307	));
				
	U318	: Somador_Exato_1 PORT MAP(
		A=> C(	350	),
		B=>E(	278	),
		Cin=> Carry( 	317	),
		Cout=> Carry( 	318	),
		S=> E(	308	));
				
	U319	: Somador_Exato_1 PORT MAP(
		A=> C(	351	),
		B=>Carry(	287	),
		Cin=> Carry( 	318	),
		Cout=> Carry( 	319	),
		S=> E(	309	));
		------		
				
	U320	: Somador_Exato_1 PORT MAP(
		A=> C(	352	),
		B=>E(	279	),
		Cin =>  '0'	,
		Cout=> Carry( 	320	),
		S=> R(	11	));
				
	U321	: Somador_Exato_1 PORT MAP(
		A=> C(	353	),
		B=>E(	280	),
		Cin=> Carry( 	320	),
		Cout=> Carry( 	321	),
		S=> E(	310	));
				
	U322	: Somador_Exato_1 PORT MAP(
		A=> C(	354	),
		B=>E(	281	),
		Cin=> Carry( 	321	),
		Cout=> Carry( 	322	),
		S=> E(	311	));
				
	U323	: Somador_Exato_1 PORT MAP(
		A=> C(	355	),
		B=>E(	282	),
		Cin=> Carry( 	322	),
		Cout=> Carry( 	323	),
		S=> E(	312	));
				
	U324	: Somador_Exato_1 PORT MAP(
		A=> C(	356	),
		B=>E(	283	),
		Cin=> Carry( 	323	),
		Cout=> Carry( 	324	),
		S=> E(	313	));
				
	U325	: Somador_Exato_1 PORT MAP(
		A=> C(	357	),
		B=>E(	284	),
		Cin=> Carry( 	324	),
		Cout=> Carry( 	325	),
		S=> E(	314	));
				
	U326	: Somador_Exato_1 PORT MAP(
		A=> C(	358	),
		B=>E(	285	),
		Cin=> Carry( 	325	),
		Cout=> Carry( 	326	),
		S=> E(	315	));
				
	U327	: Somador_Exato_1 PORT MAP(
		A=> C(	359	),
		B=>E(	286	),
		Cin=> Carry( 	326	),
		Cout=> Carry( 	327	),
		S=> E(	316	));
				
	U328	: Somador_Exato_1 PORT MAP(
		A=> C(	360	),
		B=>E(	287	),
		Cin=> Carry( 	327	),
		Cout=> Carry( 	328	),
		S=> E(	317	));
				
	U329	: Somador_Exato_1 PORT MAP(
		A=> C(	361	),
		B=>E(	288	),
		Cin=> Carry( 	328	),
		Cout=> Carry( 	329	),
		S=> E(	318	));
				
	U330	: Somador_Exato_1 PORT MAP(
		A=> C(	362	),
		B=>E(	289	),
		Cin=> Carry( 	329	),
		Cout=> Carry( 	330	),
		S=> E(	319	));
				
	U331	: Somador_Exato_1 PORT MAP(
		A=> C(	363	),
		B=>E(	290	),
		Cin=> Carry( 	330	),
		Cout=> Carry( 	331	),
		S=> E(	320	));
				
	U332	: Somador_Exato_1 PORT MAP(
		A=> C(	364	),
		B=>E(	291	),
		Cin=> Carry( 	331	),
		Cout=> Carry( 	332	),
		S=> E(	321	));
				
	U333	: Somador_Exato_1 PORT MAP(
		A=> C(	365	),
		B=>E(	292	),
		Cin=> Carry( 	332	),
		Cout=> Carry( 	333	),
		S=> E(	322	));
				
	U334	: Somador_Exato_1 PORT MAP(
		A=> C(	366	),
		B=>E(	293	),
		Cin=> Carry( 	333	),
		Cout=> Carry( 	334	),
		S=> E(	323	));
				
	U335	: Somador_Exato_1 PORT MAP(
		A=> C(	367	),
		B=>E(	294	),
		Cin=> Carry( 	334	),
		Cout=> Carry( 	335	),
		S=> E(	324	));
				
	U336	: Somador_Exato_1 PORT MAP(
		A=> C(	368	),
		B=>E(	295	),
		Cin=> Carry( 	335	),
		Cout=> Carry( 	336	),
		S=> E(	325	));
				
	U337	: Somador_Exato_1 PORT MAP(
		A=> C(	369	),
		B=>E(	296	),
		Cin=> Carry( 	336	),
		Cout=> Carry( 	337	),
		S=> E(	326	));
				
	U338	: Somador_Exato_1 PORT MAP(
		A=> C(	370	),
		B=>E(	297	),
		Cin=> Carry( 	337	),
		Cout=> Carry( 	338	),
		S=> E(	327	));
				
	U339	: Somador_Exato_1 PORT MAP(
		A=> C(	371	),
		B=>E(	298	),
		Cin=> Carry( 	338	),
		Cout=> Carry( 	339	),
		S=> E(	328	));
				
	U340	: Somador_Exato_1 PORT MAP(
		A=> C(	372	),
		B=>E(	299	),
		Cin=> Carry( 	339	),
		Cout=> Carry( 	340	),
		S=> E(	329	));
				
	U341	: Somador_Exato_1 PORT MAP(
		A=> C(	373	),
		B=>E(	300	),
		Cin=> Carry( 	340	),
		Cout=> Carry( 	341	),
		S=> E(	330	));
				
	U342	: Somador_Exato_1 PORT MAP(
		A=> C(	374	),
		B=>E(	301	),
		Cin=> Carry( 	341	),
		Cout=> Carry( 	342	),
		S=> E(	331	));
				
	U343	: Somador_Exato_1 PORT MAP(
		A=> C(	375	),
		B=>E(	302	),
		Cin=> Carry( 	342	),
		Cout=> Carry( 	343	),
		S=> E(	332	));
				
	U344	: Somador_Exato_1 PORT MAP(
		A=> C(	376	),
		B=>E(	303	),
		Cin=> Carry( 	343	),
		Cout=> Carry( 	344	),
		S=> E(	333	));
				
	U345	: Somador_Exato_1 PORT MAP(
		A=> C(	377	),
		B=>E(	304	),
		Cin=> Carry( 	344	),
		Cout=> Carry( 	345	),
		S=> E(	334	));
				
	U346	: Somador_Exato_1 PORT MAP(
		A=> C(	378	),
		B=>E(	305	),
		Cin=> Carry( 	345	),
		Cout=> Carry( 	346	),
		S=> E(	335	));
				
	U347	: Somador_Exato_1 PORT MAP(
		A=> C(	379	),
		B=>E(	306	),
		Cin=> Carry( 	346	),
		Cout=> Carry( 	347	),
		S=> E(	336	));
				
	U348	: Somador_Exato_1 PORT MAP(
		A=> C(	380	),
		B=>E(	307	),
		Cin=> Carry( 	347	),
		Cout=> Carry( 	348	),
		S=> E(	337	));
				
	U349	: Somador_Exato_1 PORT MAP(
		A=> C(	381	),
		B=>E(	308	),
		Cin=> Carry( 	348	),
		Cout=> Carry( 	349	),
		S=> E(	338	));
				
	U350	: Somador_Exato_1 PORT MAP(
		A=> C(	382	),
		B=>E(	309	),
		Cin=> Carry( 	349	),
		Cout=> Carry( 	350	),
		S=> E(	339	));
				
	U351	: Somador_Exato_1 PORT MAP(
		A=> C(	383	),
		B=>Carry(	319	),
		Cin=> Carry( 	350	),
		Cout=> Carry( 	351	),
		S=> E(	340	));
		------		
				
	U352	: Somador_Exato_1 PORT MAP(
		A=> C(	384	),
		B=>E(	310	),
		Cin =>  '0'	,
		Cout=> Carry( 	352	),
		S=> R(	12	));
				
	U353	: Somador_Exato_1 PORT MAP(
		A=> C(	385	),
		B=>E(	311	),
		Cin=> Carry( 	352	),
		Cout=> Carry( 	353	),
		S=> E(	341	));
				
	U354	: Somador_Exato_1 PORT MAP(
		A=> C(	386	),
		B=>E(	312	),
		Cin=> Carry( 	353	),
		Cout=> Carry( 	354	),
		S=> E(	342	));
				
	U355	: Somador_Exato_1 PORT MAP(
		A=> C(	387	),
		B=>E(	313	),
		Cin=> Carry( 	354	),
		Cout=> Carry( 	355	),
		S=> E(	343	));
				
	U356	: Somador_Exato_1 PORT MAP(
		A=> C(	388	),
		B=>E(	314	),
		Cin=> Carry( 	355	),
		Cout=> Carry( 	356	),
		S=> E(	344	));
				
	U357	: Somador_Exato_1 PORT MAP(
		A=> C(	389	),
		B=>E(	315	),
		Cin=> Carry( 	356	),
		Cout=> Carry( 	357	),
		S=> E(	345	));
				
	U358	: Somador_Exato_1 PORT MAP(
		A=> C(	390	),
		B=>E(	316	),
		Cin=> Carry( 	357	),
		Cout=> Carry( 	358	),
		S=> E(	346	));
				
	U359	: Somador_Exato_1 PORT MAP(
		A=> C(	391	),
		B=>E(	317	),
		Cin=> Carry( 	358	),
		Cout=> Carry( 	359	),
		S=> E(	347	));
				
	U360	: Somador_Exato_1 PORT MAP(
		A=> C(	392	),
		B=>E(	318	),
		Cin=> Carry( 	359	),
		Cout=> Carry( 	360	),
		S=> E(	348	));
				
	U361	: Somador_Exato_1 PORT MAP(
		A=> C(	393	),
		B=>E(	319	),
		Cin=> Carry( 	360	),
		Cout=> Carry( 	361	),
		S=> E(	349	));
				
	U362	: Somador_Exato_1 PORT MAP(
		A=> C(	394	),
		B=>E(	320	),
		Cin=> Carry( 	361	),
		Cout=> Carry( 	362	),
		S=> E(	350	));
				
	U363	: Somador_Exato_1 PORT MAP(
		A=> C(	395	),
		B=>E(	321	),
		Cin=> Carry( 	362	),
		Cout=> Carry( 	363	),
		S=> E(	351	));
				
	U364	: Somador_Exato_1 PORT MAP(
		A=> C(	396	),
		B=>E(	322	),
		Cin=> Carry( 	363	),
		Cout=> Carry( 	364	),
		S=> E(	352	));
				
	U365	: Somador_Exato_1 PORT MAP(
		A=> C(	397	),
		B=>E(	323	),
		Cin=> Carry( 	364	),
		Cout=> Carry( 	365	),
		S=> E(	353	));
				
	U366	: Somador_Exato_1 PORT MAP(
		A=> C(	398	),
		B=>E(	324	),
		Cin=> Carry( 	365	),
		Cout=> Carry( 	366	),
		S=> E(	354	));
				
	U367	: Somador_Exato_1 PORT MAP(
		A=> C(	399	),
		B=>E(	325	),
		Cin=> Carry( 	366	),
		Cout=> Carry( 	367	),
		S=> E(	355	));
				
	U368	: Somador_Exato_1 PORT MAP(
		A=> C(	400	),
		B=>E(	326	),
		Cin=> Carry( 	367	),
		Cout=> Carry( 	368	),
		S=> E(	356	));
				
	U369	: Somador_Exato_1 PORT MAP(
		A=> C(	401	),
		B=>E(	327	),
		Cin=> Carry( 	368	),
		Cout=> Carry( 	369	),
		S=> E(	357	));
				
	U370	: Somador_Exato_1 PORT MAP(
		A=> C(	402	),
		B=>E(	328	),
		Cin=> Carry( 	369	),
		Cout=> Carry( 	370	),
		S=> E(	358	));
				
	U371	: Somador_Exato_1 PORT MAP(
		A=> C(	403	),
		B=>E(	329	),
		Cin=> Carry( 	370	),
		Cout=> Carry( 	371	),
		S=> E(	359	));
				
	U372	: Somador_Exato_1 PORT MAP(
		A=> C(	404	),
		B=>E(	330	),
		Cin=> Carry( 	371	),
		Cout=> Carry( 	372	),
		S=> E(	360	));
				
	U373	: Somador_Exato_1 PORT MAP(
		A=> C(	405	),
		B=>E(	331	),
		Cin=> Carry( 	372	),
		Cout=> Carry( 	373	),
		S=> E(	361	));
				
	U374	: Somador_Exato_1 PORT MAP(
		A=> C(	406	),
		B=>E(	332	),
		Cin=> Carry( 	373	),
		Cout=> Carry( 	374	),
		S=> E(	362	));
				
	U375	: Somador_Exato_1 PORT MAP(
		A=> C(	407	),
		B=>E(	333	),
		Cin=> Carry( 	374	),
		Cout=> Carry( 	375	),
		S=> E(	363	));
				
	U376	: Somador_Exato_1 PORT MAP(
		A=> C(	408	),
		B=>E(	334	),
		Cin=> Carry( 	375	),
		Cout=> Carry( 	376	),
		S=> E(	364	));
				
	U377	: Somador_Exato_1 PORT MAP(
		A=> C(	409	),
		B=>E(	335	),
		Cin=> Carry( 	376	),
		Cout=> Carry( 	377	),
		S=> E(	365	));
				
	U378	: Somador_Exato_1 PORT MAP(
		A=> C(	410	),
		B=>E(	336	),
		Cin=> Carry( 	377	),
		Cout=> Carry( 	378	),
		S=> E(	366	));
				
	U379	: Somador_Exato_1 PORT MAP(
		A=> C(	411	),
		B=>E(	337	),
		Cin=> Carry( 	378	),
		Cout=> Carry( 	379	),
		S=> E(	367	));
				
	U380	: Somador_Exato_1 PORT MAP(
		A=> C(	412	),
		B=>E(	338	),
		Cin=> Carry( 	379	),
		Cout=> Carry( 	380	),
		S=> E(	368	));
				
	U381	: Somador_Exato_1 PORT MAP(
		A=> C(	413	),
		B=>E(	339	),
		Cin=> Carry( 	380	),
		Cout=> Carry( 	381	),
		S=> E(	369	));
				
	U382	: Somador_Exato_1 PORT MAP(
		A=> C(	414	),
		B=>E(	340	),
		Cin=> Carry( 	381	),
		Cout=> Carry( 	382	),
		S=> E(	370	));
				
	U383	: Somador_Exato_1 PORT MAP(
		A=> C(	415	),
		B=>Carry(	351	),
		Cin=> Carry( 	382	),
		Cout=> Carry( 	383	),
		S=> E(	371	));
		------		
				
	U384	: Somador_Exato_1 PORT MAP(
		A=> C(	416	),
		B=>E(	341	),
		Cin =>  '0'	,
		Cout=> Carry( 	384	),
		S=> R(	13	));
				
	U385	: Somador_Exato_1 PORT MAP(
		A=> C(	417	),
		B=>E(	342	),
		Cin=> Carry( 	384	),
		Cout=> Carry( 	385	),
		S=> E(	372	));
				
	U386	: Somador_Exato_1 PORT MAP(
		A=> C(	418	),
		B=>E(	343	),
		Cin=> Carry( 	385	),
		Cout=> Carry( 	386	),
		S=> E(	373	));
				
	U387	: Somador_Exato_1 PORT MAP(
		A=> C(	419	),
		B=>E(	344	),
		Cin=> Carry( 	386	),
		Cout=> Carry( 	387	),
		S=> E(	374	));
				
	U388	: Somador_Exato_1 PORT MAP(
		A=> C(	420	),
		B=>E(	345	),
		Cin=> Carry( 	387	),
		Cout=> Carry( 	388	),
		S=> E(	375	));
				
	U389	: Somador_Exato_1 PORT MAP(
		A=> C(	421	),
		B=>E(	346	),
		Cin=> Carry( 	388	),
		Cout=> Carry( 	389	),
		S=> E(	376	));
				
	U390	: Somador_Exato_1 PORT MAP(
		A=> C(	422	),
		B=>E(	347	),
		Cin=> Carry( 	389	),
		Cout=> Carry( 	390	),
		S=> E(	377	));
				
	U391	: Somador_Exato_1 PORT MAP(
		A=> C(	423	),
		B=>E(	348	),
		Cin=> Carry( 	390	),
		Cout=> Carry( 	391	),
		S=> E(	378	));
				
	U392	: Somador_Exato_1 PORT MAP(
		A=> C(	424	),
		B=>E(	349	),
		Cin=> Carry( 	391	),
		Cout=> Carry( 	392	),
		S=> E(	379	));
				
	U393	: Somador_Exato_1 PORT MAP(
		A=> C(	425	),
		B=>E(	350	),
		Cin=> Carry( 	392	),
		Cout=> Carry( 	393	),
		S=> E(	380	));
				
	U394	: Somador_Exato_1 PORT MAP(
		A=> C(	426	),
		B=>E(	351	),
		Cin=> Carry( 	393	),
		Cout=> Carry( 	394	),
		S=> E(	381	));
				
	U395	: Somador_Exato_1 PORT MAP(
		A=> C(	427	),
		B=>E(	352	),
		Cin=> Carry( 	394	),
		Cout=> Carry( 	395	),
		S=> E(	382	));
				
	U396	: Somador_Exato_1 PORT MAP(
		A=> C(	428	),
		B=>E(	353	),
		Cin=> Carry( 	395	),
		Cout=> Carry( 	396	),
		S=> E(	383	));
				
	U397	: Somador_Exato_1 PORT MAP(
		A=> C(	429	),
		B=>E(	354	),
		Cin=> Carry( 	396	),
		Cout=> Carry( 	397	),
		S=> E(	384	));
				
	U398	: Somador_Exato_1 PORT MAP(
		A=> C(	430	),
		B=>E(	355	),
		Cin=> Carry( 	397	),
		Cout=> Carry( 	398	),
		S=> E(	385	));
				
	U399	: Somador_Exato_1 PORT MAP(
		A=> C(	431	),
		B=>E(	356	),
		Cin=> Carry( 	398	),
		Cout=> Carry( 	399	),
		S=> E(	386	));
				
	U400	: Somador_Exato_1 PORT MAP(
		A=> C(	432	),
		B=>E(	357	),
		Cin=> Carry( 	399	),
		Cout=> Carry( 	400	),
		S=> E(	387	));
				
	U401	: Somador_Exato_1 PORT MAP(
		A=> C(	433	),
		B=>E(	358	),
		Cin=> Carry( 	400	),
		Cout=> Carry( 	401	),
		S=> E(	388	));
				
	U402	: Somador_Exato_1 PORT MAP(
		A=> C(	434	),
		B=>E(	359	),
		Cin=> Carry( 	401	),
		Cout=> Carry( 	402	),
		S=> E(	389	));
				
	U403	: Somador_Exato_1 PORT MAP(
		A=> C(	435	),
		B=>E(	360	),
		Cin=> Carry( 	402	),
		Cout=> Carry( 	403	),
		S=> E(	390	));
				
	U404	: Somador_Exato_1 PORT MAP(
		A=> C(	436	),
		B=>E(	361	),
		Cin=> Carry( 	403	),
		Cout=> Carry( 	404	),
		S=> E(	391	));
				
	U405	: Somador_Exato_1 PORT MAP(
		A=> C(	437	),
		B=>E(	362	),
		Cin=> Carry( 	404	),
		Cout=> Carry( 	405	),
		S=> E(	392	));
				
	U406	: Somador_Exato_1 PORT MAP(
		A=> C(	438	),
		B=>E(	363	),
		Cin=> Carry( 	405	),
		Cout=> Carry( 	406	),
		S=> E(	393	));
				
	U407	: Somador_Exato_1 PORT MAP(
		A=> C(	439	),
		B=>E(	364	),
		Cin=> Carry( 	406	),
		Cout=> Carry( 	407	),
		S=> E(	394	));
				
	U408	: Somador_Exato_1 PORT MAP(
		A=> C(	440	),
		B=>E(	365	),
		Cin=> Carry( 	407	),
		Cout=> Carry( 	408	),
		S=> E(	395	));
				
	U409	: Somador_Exato_1 PORT MAP(
		A=> C(	441	),
		B=>E(	366	),
		Cin=> Carry( 	408	),
		Cout=> Carry( 	409	),
		S=> E(	396	));
				
	U410	: Somador_Exato_1 PORT MAP(
		A=> C(	442	),
		B=>E(	367	),
		Cin=> Carry( 	409	),
		Cout=> Carry( 	410	),
		S=> E(	397	));
				
	U411	: Somador_Exato_1 PORT MAP(
		A=> C(	443	),
		B=>E(	368	),
		Cin=> Carry( 	410	),
		Cout=> Carry( 	411	),
		S=> E(	398	));
				
	U412	: Somador_Exato_1 PORT MAP(
		A=> C(	444	),
		B=>E(	369	),
		Cin=> Carry( 	411	),
		Cout=> Carry( 	412	),
		S=> E(	399	));
				
	U413	: Somador_Exato_1 PORT MAP(
		A=> C(	445	),
		B=>E(	370	),
		Cin=> Carry( 	412	),
		Cout=> Carry( 	413	),
		S=> E(	400	));
				
	U414	: Somador_Exato_1 PORT MAP(
		A=> C(	446	),
		B=>E(	371	),
		Cin=> Carry( 	413	),
		Cout=> Carry( 	414	),
		S=> E(	401	));
				
	U415	: Somador_Exato_1 PORT MAP(
		A=> C(	447	),
		B=>Carry(	383	),
		Cin=> Carry( 	414	),
		Cout=> Carry( 	415	),
		S=> E(	402	));
		------		
				
	U416	: Somador_Exato_1 PORT MAP(
		A=> C(	448	),
		B=>E(	372	),
		Cin =>  '0'	,
		Cout=> Carry( 	416	),
		S=> R(	14	));
				
	U417	: Somador_Exato_1 PORT MAP(
		A=> C(	449	),
		B=>E(	373	),
		Cin=> Carry( 	416	),
		Cout=> Carry( 	417	),
		S=> E(	403	));
				
	U418	: Somador_Exato_1 PORT MAP(
		A=> C(	450	),
		B=>E(	374	),
		Cin=> Carry( 	417	),
		Cout=> Carry( 	418	),
		S=> E(	404	));
				
	U419	: Somador_Exato_1 PORT MAP(
		A=> C(	451	),
		B=>E(	375	),
		Cin=> Carry( 	418	),
		Cout=> Carry( 	419	),
		S=> E(	405	));
				
	U420	: Somador_Exato_1 PORT MAP(
		A=> C(	452	),
		B=>E(	376	),
		Cin=> Carry( 	419	),
		Cout=> Carry( 	420	),
		S=> E(	406	));
				
	U421	: Somador_Exato_1 PORT MAP(
		A=> C(	453	),
		B=>E(	377	),
		Cin=> Carry( 	420	),
		Cout=> Carry( 	421	),
		S=> E(	407	));
				
	U422	: Somador_Exato_1 PORT MAP(
		A=> C(	454	),
		B=>E(	378	),
		Cin=> Carry( 	421	),
		Cout=> Carry( 	422	),
		S=> E(	408	));
				
	U423	: Somador_Exato_1 PORT MAP(
		A=> C(	455	),
		B=>E(	379	),
		Cin=> Carry( 	422	),
		Cout=> Carry( 	423	),
		S=> E(	409	));
				
	U424	: Somador_Exato_1 PORT MAP(
		A=> C(	456	),
		B=>E(	380	),
		Cin=> Carry( 	423	),
		Cout=> Carry( 	424	),
		S=> E(	410	));
				
	U425	: Somador_Exato_1 PORT MAP(
		A=> C(	457	),
		B=>E(	381	),
		Cin=> Carry( 	424	),
		Cout=> Carry( 	425	),
		S=> E(	411	));
				
	U426	: Somador_Exato_1 PORT MAP(
		A=> C(	458	),
		B=>E(	382	),
		Cin=> Carry( 	425	),
		Cout=> Carry( 	426	),
		S=> E(	412	));
				
	U427	: Somador_Exato_1 PORT MAP(
		A=> C(	459	),
		B=>E(	383	),
		Cin=> Carry( 	426	),
		Cout=> Carry( 	427	),
		S=> E(	413	));
				
	U428	: Somador_Exato_1 PORT MAP(
		A=> C(	460	),
		B=>E(	384	),
		Cin=> Carry( 	427	),
		Cout=> Carry( 	428	),
		S=> E(	414	));
				
	U429	: Somador_Exato_1 PORT MAP(
		A=> C(	461	),
		B=>E(	385	),
		Cin=> Carry( 	428	),
		Cout=> Carry( 	429	),
		S=> E(	415	));
				
	U430	: Somador_Exato_1 PORT MAP(
		A=> C(	462	),
		B=>E(	386	),
		Cin=> Carry( 	429	),
		Cout=> Carry( 	430	),
		S=> E(	416	));
				
	U431	: Somador_Exato_1 PORT MAP(
		A=> C(	463	),
		B=>E(	387	),
		Cin=> Carry( 	430	),
		Cout=> Carry( 	431	),
		S=> E(	417	));
				
	U432	: Somador_Exato_1 PORT MAP(
		A=> C(	464	),
		B=>E(	388	),
		Cin=> Carry( 	431	),
		Cout=> Carry( 	432	),
		S=> E(	418	));
				
	U433	: Somador_Exato_1 PORT MAP(
		A=> C(	465	),
		B=>E(	389	),
		Cin=> Carry( 	432	),
		Cout=> Carry( 	433	),
		S=> E(	419	));
				
	U434	: Somador_Exato_1 PORT MAP(
		A=> C(	466	),
		B=>E(	390	),
		Cin=> Carry( 	433	),
		Cout=> Carry( 	434	),
		S=> E(	420	));
				
	U435	: Somador_Exato_1 PORT MAP(
		A=> C(	467	),
		B=>E(	391	),
		Cin=> Carry( 	434	),
		Cout=> Carry( 	435	),
		S=> E(	421	));
				
	U436	: Somador_Exato_1 PORT MAP(
		A=> C(	468	),
		B=>E(	392	),
		Cin=> Carry( 	435	),
		Cout=> Carry( 	436	),
		S=> E(	422	));
				
	U437	: Somador_Exato_1 PORT MAP(
		A=> C(	469	),
		B=>E(	393	),
		Cin=> Carry( 	436	),
		Cout=> Carry( 	437	),
		S=> E(	423	));
				
	U438	: Somador_Exato_1 PORT MAP(
		A=> C(	470	),
		B=>E(	394	),
		Cin=> Carry( 	437	),
		Cout=> Carry( 	438	),
		S=> E(	424	));
				
	U439	: Somador_Exato_1 PORT MAP(
		A=> C(	471	),
		B=>E(	395	),
		Cin=> Carry( 	438	),
		Cout=> Carry( 	439	),
		S=> E(	425	));
				
	U440	: Somador_Exato_1 PORT MAP(
		A=> C(	472	),
		B=>E(	396	),
		Cin=> Carry( 	439	),
		Cout=> Carry( 	440	),
		S=> E(	426	));
				
	U441	: Somador_Exato_1 PORT MAP(
		A=> C(	473	),
		B=>E(	397	),
		Cin=> Carry( 	440	),
		Cout=> Carry( 	441	),
		S=> E(	427	));
				
	U442	: Somador_Exato_1 PORT MAP(
		A=> C(	474	),
		B=>E(	398	),
		Cin=> Carry( 	441	),
		Cout=> Carry( 	442	),
		S=> E(	428	));
				
	U443	: Somador_Exato_1 PORT MAP(
		A=> C(	475	),
		B=>E(	399	),
		Cin=> Carry( 	442	),
		Cout=> Carry( 	443	),
		S=> E(	429	));
				
	U444	: Somador_Exato_1 PORT MAP(
		A=> C(	476	),
		B=>E(	400	),
		Cin=> Carry( 	443	),
		Cout=> Carry( 	444	),
		S=> E(	430	));
				
	U445	: Somador_Exato_1 PORT MAP(
		A=> C(	477	),
		B=>E(	401	),
		Cin=> Carry( 	444	),
		Cout=> Carry( 	445	),
		S=> E(	431	));
				
	U446	: Somador_Exato_1 PORT MAP(
		A=> C(	478	),
		B=>E(	402	),
		Cin=> Carry( 	445	),
		Cout=> Carry( 	446	),
		S=> E(	432	));
				
	U447	: Somador_Exato_1 PORT MAP(
		A=> C(	479	),
		B=>Carry(	415	),
		Cin=> Carry( 	446	),
		Cout=> Carry( 	447	),
		S=> E(	433	));
		------		
				
	U448	: Somador_Exato_1 PORT MAP(
		A=> C(	480	),
		B=>E(	403	),
		Cin =>  '0'	,
		Cout=> Carry( 	448	),
		S=> R(	15	));
				
	U449	: Somador_Exato_1 PORT MAP(
		A=> C(	481	),
		B=>E(	404	),
		Cin=> Carry( 	448	),
		Cout=> Carry( 	449	),
		S=> E(	434	));
				
	U450	: Somador_Exato_1 PORT MAP(
		A=> C(	482	),
		B=>E(	405	),
		Cin=> Carry( 	449	),
		Cout=> Carry( 	450	),
		S=> E(	435	));
				
	U451	: Somador_Exato_1 PORT MAP(
		A=> C(	483	),
		B=>E(	406	),
		Cin=> Carry( 	450	),
		Cout=> Carry( 	451	),
		S=> E(	436	));
				
	U452	: Somador_Exato_1 PORT MAP(
		A=> C(	484	),
		B=>E(	407	),
		Cin=> Carry( 	451	),
		Cout=> Carry( 	452	),
		S=> E(	437	));
				
	U453	: Somador_Exato_1 PORT MAP(
		A=> C(	485	),
		B=>E(	408	),
		Cin=> Carry( 	452	),
		Cout=> Carry( 	453	),
		S=> E(	438	));
				
	U454	: Somador_Exato_1 PORT MAP(
		A=> C(	486	),
		B=>E(	409	),
		Cin=> Carry( 	453	),
		Cout=> Carry( 	454	),
		S=> E(	439	));
				
	U455	: Somador_Exato_1 PORT MAP(
		A=> C(	487	),
		B=>E(	410	),
		Cin=> Carry( 	454	),
		Cout=> Carry( 	455	),
		S=> E(	440	));
				
	U456	: Somador_Exato_1 PORT MAP(
		A=> C(	488	),
		B=>E(	411	),
		Cin=> Carry( 	455	),
		Cout=> Carry( 	456	),
		S=> E(	441	));
				
	U457	: Somador_Exato_1 PORT MAP(
		A=> C(	489	),
		B=>E(	412	),
		Cin=> Carry( 	456	),
		Cout=> Carry( 	457	),
		S=> E(	442	));
				
	U458	: Somador_Exato_1 PORT MAP(
		A=> C(	490	),
		B=>E(	413	),
		Cin=> Carry( 	457	),
		Cout=> Carry( 	458	),
		S=> E(	443	));
				
	U459	: Somador_Exato_1 PORT MAP(
		A=> C(	491	),
		B=>E(	414	),
		Cin=> Carry( 	458	),
		Cout=> Carry( 	459	),
		S=> E(	444	));
				
	U460	: Somador_Exato_1 PORT MAP(
		A=> C(	492	),
		B=>E(	415	),
		Cin=> Carry( 	459	),
		Cout=> Carry( 	460	),
		S=> E(	445	));
				
	U461	: Somador_Exato_1 PORT MAP(
		A=> C(	493	),
		B=>E(	416	),
		Cin=> Carry( 	460	),
		Cout=> Carry( 	461	),
		S=> E(	446	));
				
	U462	: Somador_Exato_1 PORT MAP(
		A=> C(	494	),
		B=>E(	417	),
		Cin=> Carry( 	461	),
		Cout=> Carry( 	462	),
		S=> E(	447	));
				
	U463	: Somador_Exato_1 PORT MAP(
		A=> C(	495	),
		B=>E(	418	),
		Cin=> Carry( 	462	),
		Cout=> Carry( 	463	),
		S=> E(	448	));
				
	U464	: Somador_Exato_1 PORT MAP(
		A=> C(	496	),
		B=>E(	419	),
		Cin=> Carry( 	463	),
		Cout=> Carry( 	464	),
		S=> E(	449	));
				
	U465	: Somador_Exato_1 PORT MAP(
		A=> C(	497	),
		B=>E(	420	),
		Cin=> Carry( 	464	),
		Cout=> Carry( 	465	),
		S=> E(	450	));
				
	U466	: Somador_Exato_1 PORT MAP(
		A=> C(	498	),
		B=>E(	421	),
		Cin=> Carry( 	465	),
		Cout=> Carry( 	466	),
		S=> E(	451	));
				
	U467	: Somador_Exato_1 PORT MAP(
		A=> C(	499	),
		B=>E(	422	),
		Cin=> Carry( 	466	),
		Cout=> Carry( 	467	),
		S=> E(	452	));
				
	U468	: Somador_Exato_1 PORT MAP(
		A=> C(	500	),
		B=>E(	423	),
		Cin=> Carry( 	467	),
		Cout=> Carry( 	468	),
		S=> E(	453	));
				
	U469	: Somador_Exato_1 PORT MAP(
		A=> C(	501	),
		B=>E(	424	),
		Cin=> Carry( 	468	),
		Cout=> Carry( 	469	),
		S=> E(	454	));
				
	U470	: Somador_Exato_1 PORT MAP(
		A=> C(	502	),
		B=>E(	425	),
		Cin=> Carry( 	469	),
		Cout=> Carry( 	470	),
		S=> E(	455	));
				
	U471	: Somador_Exato_1 PORT MAP(
		A=> C(	503	),
		B=>E(	426	),
		Cin=> Carry( 	470	),
		Cout=> Carry( 	471	),
		S=> E(	456	));
				
	U472	: Somador_Exato_1 PORT MAP(
		A=> C(	504	),
		B=>E(	427	),
		Cin=> Carry( 	471	),
		Cout=> Carry( 	472	),
		S=> E(	457	));
				
	U473	: Somador_Exato_1 PORT MAP(
		A=> C(	505	),
		B=>E(	428	),
		Cin=> Carry( 	472	),
		Cout=> Carry( 	473	),
		S=> E(	458	));
				
	U474	: Somador_Exato_1 PORT MAP(
		A=> C(	506	),
		B=>E(	429	),
		Cin=> Carry( 	473	),
		Cout=> Carry( 	474	),
		S=> E(	459	));
				
	U475	: Somador_Exato_1 PORT MAP(
		A=> C(	507	),
		B=>E(	430	),
		Cin=> Carry( 	474	),
		Cout=> Carry( 	475	),
		S=> E(	460	));
				
	U476	: Somador_Exato_1 PORT MAP(
		A=> C(	508	),
		B=>E(	431	),
		Cin=> Carry( 	475	),
		Cout=> Carry( 	476	),
		S=> E(	461	));
				
	U477	: Somador_Exato_1 PORT MAP(
		A=> C(	509	),
		B=>E(	432	),
		Cin=> Carry( 	476	),
		Cout=> Carry( 	477	),
		S=> E(	462	));
				
	U478	: Somador_Exato_1 PORT MAP(
		A=> C(	510	),
		B=>E(	433	),
		Cin=> Carry( 	477	),
		Cout=> Carry( 	478	),
		S=> E(	463	));
				
	U479	: Somador_Exato_1 PORT MAP(
		A=> C(	511	),
		B=>Carry(	447	),
		Cin=> Carry( 	478	),
		Cout=> Carry( 	479	),
		S=> E(	464	));
		------		
				
	U480	: Somador_Exato_1 PORT MAP(
		A=> C(	512	),
		B=>E(	434	),
		Cin =>  '0'	,
		Cout=> Carry( 	480	),
		S=> R(	16	));
				
	U481	: Somador_Exato_1 PORT MAP(
		A=> C(	513	),
		B=>E(	435	),
		Cin=> Carry( 	480	),
		Cout=> Carry( 	481	),
		S=> E(	465	));
				
	U482	: Somador_Exato_1 PORT MAP(
		A=> C(	514	),
		B=>E(	436	),
		Cin=> Carry( 	481	),
		Cout=> Carry( 	482	),
		S=> E(	466	));
				
	U483	: Somador_Exato_1 PORT MAP(
		A=> C(	515	),
		B=>E(	437	),
		Cin=> Carry( 	482	),
		Cout=> Carry( 	483	),
		S=> E(	467	));
				
	U484	: Somador_Exato_1 PORT MAP(
		A=> C(	516	),
		B=>E(	438	),
		Cin=> Carry( 	483	),
		Cout=> Carry( 	484	),
		S=> E(	468	));
				
	U485	: Somador_Exato_1 PORT MAP(
		A=> C(	517	),
		B=>E(	439	),
		Cin=> Carry( 	484	),
		Cout=> Carry( 	485	),
		S=> E(	469	));
				
	U486	: Somador_Exato_1 PORT MAP(
		A=> C(	518	),
		B=>E(	440	),
		Cin=> Carry( 	485	),
		Cout=> Carry( 	486	),
		S=> E(	470	));
				
	U487	: Somador_Exato_1 PORT MAP(
		A=> C(	519	),
		B=>E(	441	),
		Cin=> Carry( 	486	),
		Cout=> Carry( 	487	),
		S=> E(	471	));
				
	U488	: Somador_Exato_1 PORT MAP(
		A=> C(	520	),
		B=>E(	442	),
		Cin=> Carry( 	487	),
		Cout=> Carry( 	488	),
		S=> E(	472	));
				
	U489	: Somador_Exato_1 PORT MAP(
		A=> C(	521	),
		B=>E(	443	),
		Cin=> Carry( 	488	),
		Cout=> Carry( 	489	),
		S=> E(	473	));
				
	U490	: Somador_Exato_1 PORT MAP(
		A=> C(	522	),
		B=>E(	444	),
		Cin=> Carry( 	489	),
		Cout=> Carry( 	490	),
		S=> E(	474	));
				
	U491	: Somador_Exato_1 PORT MAP(
		A=> C(	523	),
		B=>E(	445	),
		Cin=> Carry( 	490	),
		Cout=> Carry( 	491	),
		S=> E(	475	));
				
	U492	: Somador_Exato_1 PORT MAP(
		A=> C(	524	),
		B=>E(	446	),
		Cin=> Carry( 	491	),
		Cout=> Carry( 	492	),
		S=> E(	476	));
				
	U493	: Somador_Exato_1 PORT MAP(
		A=> C(	525	),
		B=>E(	447	),
		Cin=> Carry( 	492	),
		Cout=> Carry( 	493	),
		S=> E(	477	));
				
	U494	: Somador_Exato_1 PORT MAP(
		A=> C(	526	),
		B=>E(	448	),
		Cin=> Carry( 	493	),
		Cout=> Carry( 	494	),
		S=> E(	478	));
				
	U495	: Soma_AMA3_1 PORT MAP(
		A=> C(	527	),
		B=>E(	449	),
		Cin=> Carry( 	494	),
		Cout=> Carry( 	495	),
		S=> E(	479	));
				
	U496	: Soma_AMA3_1 PORT MAP(
		A=> C(	528	),
		B=>E(	450	),
		Cin=> Carry( 	495	),
		Cout=> Carry( 	496	),
		S=> E(	480	));
				
	U497	: Soma_AMA3_1 PORT MAP(
		A=> C(	529	),
		B=>E(	451	),
		Cin=> Carry( 	496	),
		Cout=> Carry( 	497	),
		S=> E(	481	));
				
	U498	: Soma_AMA3_1 PORT MAP(
		A=> C(	530	),
		B=>E(	452	),
		Cin=> Carry( 	497	),
		Cout=> Carry( 	498	),
		S=> E(	482	));
				
	U499	: Soma_AMA3_1 PORT MAP(
		A=> C(	531	),
		B=>E(	453	),
		Cin=> Carry( 	498	),
		Cout=> Carry( 	499	),
		S=> E(	483	));
				
	U500	: Soma_AMA3_1 PORT MAP(
		A=> C(	532	),
		B=>E(	454	),
		Cin=> Carry( 	499	),
		Cout=> Carry( 	500	),
		S=> E(	484	));
				
	U501	: Soma_AMA3_1 PORT MAP(
		A=> C(	533	),
		B=>E(	455	),
		Cin=> Carry( 	500	),
		Cout=> Carry( 	501	),
		S=> E(	485	));
				
	U502	: Soma_AMA3_1 PORT MAP(
		A=> C(	534	),
		B=>E(	456	),
		Cin=> Carry( 	501	),
		Cout=> Carry( 	502	),
		S=> E(	486	));
				
	U503	: Soma_AMA3_1 PORT MAP(
		A=> C(	535	),
		B=>E(	457	),
		Cin=> Carry( 	502	),
		Cout=> Carry( 	503	),
		S=> E(	487	));
				
	U504	: Soma_AMA3_1 PORT MAP(
		A=> C(	536	),
		B=>E(	458	),
		Cin=> Carry( 	503	),
		Cout=> Carry( 	504	),
		S=> E(	488	));
				
	U505	: Soma_AMA3_1 PORT MAP(
		A=> C(	537	),
		B=>E(	459	),
		Cin=> Carry( 	504	),
		Cout=> Carry( 	505	),
		S=> E(	489	));
				
	U506	: Soma_AMA3_1 PORT MAP(
		A=> C(	538	),
		B=>E(	460	),
		Cin=> Carry( 	505	),
		Cout=> Carry( 	506	),
		S=> E(	490	));
				
	U507	: Soma_AMA3_1 PORT MAP(
		A=> C(	539	),
		B=>E(	461	),
		Cin=> Carry( 	506	),
		Cout=> Carry( 	507	),
		S=> E(	491	));
				
	U508	: Soma_AMA3_1 PORT MAP(
		A=> C(	540	),
		B=>E(	462	),
		Cin=> Carry( 	507	),
		Cout=> Carry( 	508	),
		S=> E(	492	));
				
	U509	: Soma_AMA3_1 PORT MAP(
		A=> C(	541	),
		B=>E(	463	),
		Cin=> Carry( 	508	),
		Cout=> Carry( 	509	),
		S=> E(	493	));
				
	U510	: Soma_AMA3_1 PORT MAP(
		A=> C(	542	),
		B=>E(	464	),
		Cin=> Carry( 	509	),
		Cout=> Carry( 	510	),
		S=> E(	494	));
				
	U511	: Soma_AMA3_1 PORT MAP(
		A=> C(	543	),
		B=>Carry(	479	),
		Cin=> Carry( 	510	),
		Cout=> Carry( 	511	),
		S=> E(	495	));
		------		
				
	U512	: Soma_AMA3_1 PORT MAP(
		A=> C(	544	),
		B=>E(	465	),
		Cin =>  '0'	,
		Cout=> Carry( 	512	),
		S=> R(	17	));
				
	U513	: Soma_AMA3_1 PORT MAP(
		A=> C(	545	),
		B=>E(	466	),
		Cin=> Carry( 	512	),
		Cout=> Carry( 	513	),
		S=> E(	496	));
				
	U514	: Soma_AMA3_1 PORT MAP(
		A=> C(	546	),
		B=>E(	467	),
		Cin=> Carry( 	513	),
		Cout=> Carry( 	514	),
		S=> E(	497	));
				
	U515	: Soma_AMA3_1 PORT MAP(
		A=> C(	547	),
		B=>E(	468	),
		Cin=> Carry( 	514	),
		Cout=> Carry( 	515	),
		S=> E(	498	));
				
	U516	: Soma_AMA3_1 PORT MAP(
		A=> C(	548	),
		B=>E(	469	),
		Cin=> Carry( 	515	),
		Cout=> Carry( 	516	),
		S=> E(	499	));
				
	U517	: Soma_AMA3_1 PORT MAP(
		A=> C(	549	),
		B=>E(	470	),
		Cin=> Carry( 	516	),
		Cout=> Carry( 	517	),
		S=> E(	500	));
				
	U518	: Soma_AMA3_1 PORT MAP(
		A=> C(	550	),
		B=>E(	471	),
		Cin=> Carry( 	517	),
		Cout=> Carry( 	518	),
		S=> E(	501	));
				
	U519	: Soma_AMA3_1 PORT MAP(
		A=> C(	551	),
		B=>E(	472	),
		Cin=> Carry( 	518	),
		Cout=> Carry( 	519	),
		S=> E(	502	));
				
	U520	: Soma_AMA3_1 PORT MAP(
		A=> C(	552	),
		B=>E(	473	),
		Cin=> Carry( 	519	),
		Cout=> Carry( 	520	),
		S=> E(	503	));
				
	U521	: Soma_AMA3_1 PORT MAP(
		A=> C(	553	),
		B=>E(	474	),
		Cin=> Carry( 	520	),
		Cout=> Carry( 	521	),
		S=> E(	504	));
				
	U522	: Soma_AMA3_1 PORT MAP(
		A=> C(	554	),
		B=>E(	475	),
		Cin=> Carry( 	521	),
		Cout=> Carry( 	522	),
		S=> E(	505	));
				
	U523	: Soma_AMA3_1 PORT MAP(
		A=> C(	555	),
		B=>E(	476	),
		Cin=> Carry( 	522	),
		Cout=> Carry( 	523	),
		S=> E(	506	));
				
	U524	: Soma_AMA3_1 PORT MAP(
		A=> C(	556	),
		B=>E(	477	),
		Cin=> Carry( 	523	),
		Cout=> Carry( 	524	),
		S=> E(	507	));
				
	U525	: Soma_AMA3_1 PORT MAP(
		A=> C(	557	),
		B=>E(	478	),
		Cin=> Carry( 	524	),
		Cout=> Carry( 	525	),
		S=> E(	508	));
				
	U526	: Soma_AMA3_1 PORT MAP(
		A=> C(	558	),
		B=>E(	479	),
		Cin=> Carry( 	525	),
		Cout=> Carry( 	526	),
		S=> E(	509	));
				
	U527	: Soma_AMA3_1 PORT MAP(
		A=> C(	559	),
		B=>E(	480	),
		Cin=> Carry( 	526	),
		Cout=> Carry( 	527	),
		S=> E(	510	));
				
	U528	: Soma_AMA3_1 PORT MAP(
		A=> C(	560	),
		B=>E(	481	),
		Cin=> Carry( 	527	),
		Cout=> Carry( 	528	),
		S=> E(	511	));
				
	U529	: Soma_AMA3_1 PORT MAP(
		A=> C(	561	),
		B=>E(	482	),
		Cin=> Carry( 	528	),
		Cout=> Carry( 	529	),
		S=> E(	512	));
				
	U530	: Soma_AMA3_1 PORT MAP(
		A=> C(	562	),
		B=>E(	483	),
		Cin=> Carry( 	529	),
		Cout=> Carry( 	530	),
		S=> E(	513	));
				
	U531	: Soma_AMA3_1 PORT MAP(
		A=> C(	563	),
		B=>E(	484	),
		Cin=> Carry( 	530	),
		Cout=> Carry( 	531	),
		S=> E(	514	));
				
	U532	: Soma_AMA3_1 PORT MAP(
		A=> C(	564	),
		B=>E(	485	),
		Cin=> Carry( 	531	),
		Cout=> Carry( 	532	),
		S=> E(	515	));
				
	U533	: Soma_AMA3_1 PORT MAP(
		A=> C(	565	),
		B=>E(	486	),
		Cin=> Carry( 	532	),
		Cout=> Carry( 	533	),
		S=> E(	516	));
				
	U534	: Soma_AMA3_1 PORT MAP(
		A=> C(	566	),
		B=>E(	487	),
		Cin=> Carry( 	533	),
		Cout=> Carry( 	534	),
		S=> E(	517	));
				
	U535	: Soma_AMA3_1 PORT MAP(
		A=> C(	567	),
		B=>E(	488	),
		Cin=> Carry( 	534	),
		Cout=> Carry( 	535	),
		S=> E(	518	));
				
	U536	: Soma_AMA3_1 PORT MAP(
		A=> C(	568	),
		B=>E(	489	),
		Cin=> Carry( 	535	),
		Cout=> Carry( 	536	),
		S=> E(	519	));
				
	U537	: Soma_AMA3_1 PORT MAP(
		A=> C(	569	),
		B=>E(	490	),
		Cin=> Carry( 	536	),
		Cout=> Carry( 	537	),
		S=> E(	520	));
				
	U538	: Soma_AMA3_1 PORT MAP(
		A=> C(	570	),
		B=>E(	491	),
		Cin=> Carry( 	537	),
		Cout=> Carry( 	538	),
		S=> E(	521	));
				
	U539	: Soma_AMA3_1 PORT MAP(
		A=> C(	571	),
		B=>E(	492	),
		Cin=> Carry( 	538	),
		Cout=> Carry( 	539	),
		S=> E(	522	));
				
	U540	: Soma_AMA3_1 PORT MAP(
		A=> C(	572	),
		B=>E(	493	),
		Cin=> Carry( 	539	),
		Cout=> Carry( 	540	),
		S=> E(	523	));
				
	U541	: Soma_AMA3_1 PORT MAP(
		A=> C(	573	),
		B=>E(	494	),
		Cin=> Carry( 	540	),
		Cout=> Carry( 	541	),
		S=> E(	524	));
				
	U542	: Soma_AMA3_1 PORT MAP(
		A=> C(	574	),
		B=>E(	495	),
		Cin=> Carry( 	541	),
		Cout=> Carry( 	542	),
		S=> E(	525	));
				
	U543	: Soma_AMA3_1 PORT MAP(
		A=> C(	575	),
		B=>Carry(	511	),
		Cin=> Carry( 	542	),
		Cout=> Carry( 	543	),
		S=> E(	526	));
		------		
				
	U544	: Soma_AMA3_1 PORT MAP(
		A=> C(	576	),
		B=>E(	496	),
		Cin =>  '0'	,
		Cout=> Carry( 	544	),
		S=> R(	18	));
				
	U545	: Soma_AMA3_1 PORT MAP(
		A=> C(	577	),
		B=>E(	497	),
		Cin=> Carry( 	544	),
		Cout=> Carry( 	545	),
		S=> E(	527	));
				
	U546	: Soma_AMA3_1 PORT MAP(
		A=> C(	578	),
		B=>E(	498	),
		Cin=> Carry( 	545	),
		Cout=> Carry( 	546	),
		S=> E(	528	));
				
	U547	: Soma_AMA3_1 PORT MAP(
		A=> C(	579	),
		B=>E(	499	),
		Cin=> Carry( 	546	),
		Cout=> Carry( 	547	),
		S=> E(	529	));
				
	U548	: Soma_AMA3_1 PORT MAP(
		A=> C(	580	),
		B=>E(	500	),
		Cin=> Carry( 	547	),
		Cout=> Carry( 	548	),
		S=> E(	530	));
				
	U549	: Soma_AMA3_1 PORT MAP(
		A=> C(	581	),
		B=>E(	501	),
		Cin=> Carry( 	548	),
		Cout=> Carry( 	549	),
		S=> E(	531	));
				
	U550	: Soma_AMA3_1 PORT MAP(
		A=> C(	582	),
		B=>E(	502	),
		Cin=> Carry( 	549	),
		Cout=> Carry( 	550	),
		S=> E(	532	));
				
	U551	: Soma_AMA3_1 PORT MAP(
		A=> C(	583	),
		B=>E(	503	),
		Cin=> Carry( 	550	),
		Cout=> Carry( 	551	),
		S=> E(	533	));
				
	U552	: Soma_AMA3_1 PORT MAP(
		A=> C(	584	),
		B=>E(	504	),
		Cin=> Carry( 	551	),
		Cout=> Carry( 	552	),
		S=> E(	534	));
				
	U553	: Soma_AMA3_1 PORT MAP(
		A=> C(	585	),
		B=>E(	505	),
		Cin=> Carry( 	552	),
		Cout=> Carry( 	553	),
		S=> E(	535	));
				
	U554	: Soma_AMA3_1 PORT MAP(
		A=> C(	586	),
		B=>E(	506	),
		Cin=> Carry( 	553	),
		Cout=> Carry( 	554	),
		S=> E(	536	));
				
	U555	: Soma_AMA3_1 PORT MAP(
		A=> C(	587	),
		B=>E(	507	),
		Cin=> Carry( 	554	),
		Cout=> Carry( 	555	),
		S=> E(	537	));
				
	U556	: Soma_AMA3_1 PORT MAP(
		A=> C(	588	),
		B=>E(	508	),
		Cin=> Carry( 	555	),
		Cout=> Carry( 	556	),
		S=> E(	538	));
				
	U557	: Soma_AMA3_1 PORT MAP(
		A=> C(	589	),
		B=>E(	509	),
		Cin=> Carry( 	556	),
		Cout=> Carry( 	557	),
		S=> E(	539	));
				
	U558	: Soma_AMA3_1 PORT MAP(
		A=> C(	590	),
		B=>E(	510	),
		Cin=> Carry( 	557	),
		Cout=> Carry( 	558	),
		S=> E(	540	));
				
	U559	: Soma_AMA3_1 PORT MAP(
		A=> C(	591	),
		B=>E(	511	),
		Cin=> Carry( 	558	),
		Cout=> Carry( 	559	),
		S=> E(	541	));
				
	U560	: Soma_AMA3_1 PORT MAP(
		A=> C(	592	),
		B=>E(	512	),
		Cin=> Carry( 	559	),
		Cout=> Carry( 	560	),
		S=> E(	542	));
				
	U561	: Soma_AMA3_1 PORT MAP(
		A=> C(	593	),
		B=>E(	513	),
		Cin=> Carry( 	560	),
		Cout=> Carry( 	561	),
		S=> E(	543	));
				
	U562	: Soma_AMA3_1 PORT MAP(
		A=> C(	594	),
		B=>E(	514	),
		Cin=> Carry( 	561	),
		Cout=> Carry( 	562	),
		S=> E(	544	));
				
	U563	: Soma_AMA3_1 PORT MAP(
		A=> C(	595	),
		B=>E(	515	),
		Cin=> Carry( 	562	),
		Cout=> Carry( 	563	),
		S=> E(	545	));
				
	U564	: Soma_AMA3_1 PORT MAP(
		A=> C(	596	),
		B=>E(	516	),
		Cin=> Carry( 	563	),
		Cout=> Carry( 	564	),
		S=> E(	546	));
				
	U565	: Soma_AMA3_1 PORT MAP(
		A=> C(	597	),
		B=>E(	517	),
		Cin=> Carry( 	564	),
		Cout=> Carry( 	565	),
		S=> E(	547	));
				
	U566	: Soma_AMA3_1 PORT MAP(
		A=> C(	598	),
		B=>E(	518	),
		Cin=> Carry( 	565	),
		Cout=> Carry( 	566	),
		S=> E(	548	));
				
	U567	: Soma_AMA3_1 PORT MAP(
		A=> C(	599	),
		B=>E(	519	),
		Cin=> Carry( 	566	),
		Cout=> Carry( 	567	),
		S=> E(	549	));
				
	U568	: Soma_AMA3_1 PORT MAP(
		A=> C(	600	),
		B=>E(	520	),
		Cin=> Carry( 	567	),
		Cout=> Carry( 	568	),
		S=> E(	550	));
				
	U569	: Soma_AMA3_1 PORT MAP(
		A=> C(	601	),
		B=>E(	521	),
		Cin=> Carry( 	568	),
		Cout=> Carry( 	569	),
		S=> E(	551	));
				
	U570	: Soma_AMA3_1 PORT MAP(
		A=> C(	602	),
		B=>E(	522	),
		Cin=> Carry( 	569	),
		Cout=> Carry( 	570	),
		S=> E(	552	));
				
	U571	: Soma_AMA3_1 PORT MAP(
		A=> C(	603	),
		B=>E(	523	),
		Cin=> Carry( 	570	),
		Cout=> Carry( 	571	),
		S=> E(	553	));
				
	U572	: Soma_AMA3_1 PORT MAP(
		A=> C(	604	),
		B=>E(	524	),
		Cin=> Carry( 	571	),
		Cout=> Carry( 	572	),
		S=> E(	554	));
				
	U573	: Soma_AMA3_1 PORT MAP(
		A=> C(	605	),
		B=>E(	525	),
		Cin=> Carry( 	572	),
		Cout=> Carry( 	573	),
		S=> E(	555	));
				
	U574	: Soma_AMA3_1 PORT MAP(
		A=> C(	606	),
		B=>E(	526	),
		Cin=> Carry( 	573	),
		Cout=> Carry( 	574	),
		S=> E(	556	));
				
	U575	: Soma_AMA3_1 PORT MAP(
		A=> C(	607	),
		B=>Carry(	543	),
		Cin=> Carry( 	574	),
		Cout=> Carry( 	575	),
		S=> E(	557	));
		------		
				
	U576	: Soma_AMA3_1 PORT MAP(
		A=> C(	608	),
		B=>E(	527	),
		Cin =>  '0'	,
		Cout=> Carry( 	576	),
		S=> R(	19	));
				
	U577	: Soma_AMA3_1 PORT MAP(
		A=> C(	609	),
		B=>E(	528	),
		Cin=> Carry( 	576	),
		Cout=> Carry( 	577	),
		S=> E(	558	));
				
	U578	: Soma_AMA3_1 PORT MAP(
		A=> C(	610	),
		B=>E(	529	),
		Cin=> Carry( 	577	),
		Cout=> Carry( 	578	),
		S=> E(	559	));
				
	U579	: Soma_AMA3_1 PORT MAP(
		A=> C(	611	),
		B=>E(	530	),
		Cin=> Carry( 	578	),
		Cout=> Carry( 	579	),
		S=> E(	560	));
				
	U580	: Soma_AMA3_1 PORT MAP(
		A=> C(	612	),
		B=>E(	531	),
		Cin=> Carry( 	579	),
		Cout=> Carry( 	580	),
		S=> E(	561	));
				
	U581	: Soma_AMA3_1 PORT MAP(
		A=> C(	613	),
		B=>E(	532	),
		Cin=> Carry( 	580	),
		Cout=> Carry( 	581	),
		S=> E(	562	));
				
	U582	: Soma_AMA3_1 PORT MAP(
		A=> C(	614	),
		B=>E(	533	),
		Cin=> Carry( 	581	),
		Cout=> Carry( 	582	),
		S=> E(	563	));
				
	U583	: Soma_AMA3_1 PORT MAP(
		A=> C(	615	),
		B=>E(	534	),
		Cin=> Carry( 	582	),
		Cout=> Carry( 	583	),
		S=> E(	564	));
				
	U584	: Soma_AMA3_1 PORT MAP(
		A=> C(	616	),
		B=>E(	535	),
		Cin=> Carry( 	583	),
		Cout=> Carry( 	584	),
		S=> E(	565	));
				
	U585	: Soma_AMA3_1 PORT MAP(
		A=> C(	617	),
		B=>E(	536	),
		Cin=> Carry( 	584	),
		Cout=> Carry( 	585	),
		S=> E(	566	));
				
	U586	: Soma_AMA3_1 PORT MAP(
		A=> C(	618	),
		B=>E(	537	),
		Cin=> Carry( 	585	),
		Cout=> Carry( 	586	),
		S=> E(	567	));
				
	U587	: Soma_AMA3_1 PORT MAP(
		A=> C(	619	),
		B=>E(	538	),
		Cin=> Carry( 	586	),
		Cout=> Carry( 	587	),
		S=> E(	568	));
				
	U588	: Soma_AMA3_1 PORT MAP(
		A=> C(	620	),
		B=>E(	539	),
		Cin=> Carry( 	587	),
		Cout=> Carry( 	588	),
		S=> E(	569	));
				
	U589	: Soma_AMA3_1 PORT MAP(
		A=> C(	621	),
		B=>E(	540	),
		Cin=> Carry( 	588	),
		Cout=> Carry( 	589	),
		S=> E(	570	));
				
	U590	: Soma_AMA3_1 PORT MAP(
		A=> C(	622	),
		B=>E(	541	),
		Cin=> Carry( 	589	),
		Cout=> Carry( 	590	),
		S=> E(	571	));
				
	U591	: Soma_AMA3_1 PORT MAP(
		A=> C(	623	),
		B=>E(	542	),
		Cin=> Carry( 	590	),
		Cout=> Carry( 	591	),
		S=> E(	572	));
				
	U592	: Soma_AMA3_1 PORT MAP(
		A=> C(	624	),
		B=>E(	543	),
		Cin=> Carry( 	591	),
		Cout=> Carry( 	592	),
		S=> E(	573	));
				
	U593	: Soma_AMA3_1 PORT MAP(
		A=> C(	625	),
		B=>E(	544	),
		Cin=> Carry( 	592	),
		Cout=> Carry( 	593	),
		S=> E(	574	));
				
	U594	: Soma_AMA3_1 PORT MAP(
		A=> C(	626	),
		B=>E(	545	),
		Cin=> Carry( 	593	),
		Cout=> Carry( 	594	),
		S=> E(	575	));
				
	U595	: Soma_AMA3_1 PORT MAP(
		A=> C(	627	),
		B=>E(	546	),
		Cin=> Carry( 	594	),
		Cout=> Carry( 	595	),
		S=> E(	576	));
				
	U596	: Soma_AMA3_1 PORT MAP(
		A=> C(	628	),
		B=>E(	547	),
		Cin=> Carry( 	595	),
		Cout=> Carry( 	596	),
		S=> E(	577	));
				
	U597	: Soma_AMA3_1 PORT MAP(
		A=> C(	629	),
		B=>E(	548	),
		Cin=> Carry( 	596	),
		Cout=> Carry( 	597	),
		S=> E(	578	));
				
	U598	: Soma_AMA3_1 PORT MAP(
		A=> C(	630	),
		B=>E(	549	),
		Cin=> Carry( 	597	),
		Cout=> Carry( 	598	),
		S=> E(	579	));
				
	U599	: Soma_AMA3_1 PORT MAP(
		A=> C(	631	),
		B=>E(	550	),
		Cin=> Carry( 	598	),
		Cout=> Carry( 	599	),
		S=> E(	580	));
				
	U600	: Soma_AMA3_1 PORT MAP(
		A=> C(	632	),
		B=>E(	551	),
		Cin=> Carry( 	599	),
		Cout=> Carry( 	600	),
		S=> E(	581	));
				
	U601	: Soma_AMA3_1 PORT MAP(
		A=> C(	633	),
		B=>E(	552	),
		Cin=> Carry( 	600	),
		Cout=> Carry( 	601	),
		S=> E(	582	));
				
	U602	: Soma_AMA3_1 PORT MAP(
		A=> C(	634	),
		B=>E(	553	),
		Cin=> Carry( 	601	),
		Cout=> Carry( 	602	),
		S=> E(	583	));
				
	U603	: Soma_AMA3_1 PORT MAP(
		A=> C(	635	),
		B=>E(	554	),
		Cin=> Carry( 	602	),
		Cout=> Carry( 	603	),
		S=> E(	584	));
				
	U604	: Soma_AMA3_1 PORT MAP(
		A=> C(	636	),
		B=>E(	555	),
		Cin=> Carry( 	603	),
		Cout=> Carry( 	604	),
		S=> E(	585	));
				
	U605	: Soma_AMA3_1 PORT MAP(
		A=> C(	637	),
		B=>E(	556	),
		Cin=> Carry( 	604	),
		Cout=> Carry( 	605	),
		S=> E(	586	));
				
	U606	: Soma_AMA3_1 PORT MAP(
		A=> C(	638	),
		B=>E(	557	),
		Cin=> Carry( 	605	),
		Cout=> Carry( 	606	),
		S=> E(	587	));
				
	U607	: Soma_AMA3_1 PORT MAP(
		A=> C(	639	),
		B=>Carry(	575	),
		Cin=> Carry( 	606	),
		Cout=> Carry( 	607	),
		S=> E(	588	));
		------		
				
	U608	: Soma_AMA3_1 PORT MAP(
		A=> C(	640	),
		B=>E(	558	),
		Cin =>  '0'	,
		Cout=> Carry( 	608	),
		S=> R(	20	));
				
	U609	: Soma_AMA3_1 PORT MAP(
		A=> C(	641	),
		B=>E(	559	),
		Cin=> Carry( 	608	),
		Cout=> Carry( 	609	),
		S=> E(	589	));
				
	U610	: Soma_AMA3_1 PORT MAP(
		A=> C(	642	),
		B=>E(	560	),
		Cin=> Carry( 	609	),
		Cout=> Carry( 	610	),
		S=> E(	590	));
				
	U611	: Soma_AMA3_1 PORT MAP(
		A=> C(	643	),
		B=>E(	561	),
		Cin=> Carry( 	610	),
		Cout=> Carry( 	611	),
		S=> E(	591	));
				
	U612	: Soma_AMA3_1 PORT MAP(
		A=> C(	644	),
		B=>E(	562	),
		Cin=> Carry( 	611	),
		Cout=> Carry( 	612	),
		S=> E(	592	));
				
	U613	: Soma_AMA3_1 PORT MAP(
		A=> C(	645	),
		B=>E(	563	),
		Cin=> Carry( 	612	),
		Cout=> Carry( 	613	),
		S=> E(	593	));
				
	U614	: Soma_AMA3_1 PORT MAP(
		A=> C(	646	),
		B=>E(	564	),
		Cin=> Carry( 	613	),
		Cout=> Carry( 	614	),
		S=> E(	594	));
				
	U615	: Soma_AMA3_1 PORT MAP(
		A=> C(	647	),
		B=>E(	565	),
		Cin=> Carry( 	614	),
		Cout=> Carry( 	615	),
		S=> E(	595	));
				
	U616	: Soma_AMA3_1 PORT MAP(
		A=> C(	648	),
		B=>E(	566	),
		Cin=> Carry( 	615	),
		Cout=> Carry( 	616	),
		S=> E(	596	));
				
	U617	: Soma_AMA3_1 PORT MAP(
		A=> C(	649	),
		B=>E(	567	),
		Cin=> Carry( 	616	),
		Cout=> Carry( 	617	),
		S=> E(	597	));
				
	U618	: Soma_AMA3_1 PORT MAP(
		A=> C(	650	),
		B=>E(	568	),
		Cin=> Carry( 	617	),
		Cout=> Carry( 	618	),
		S=> E(	598	));
				
	U619	: Soma_AMA3_1 PORT MAP(
		A=> C(	651	),
		B=>E(	569	),
		Cin=> Carry( 	618	),
		Cout=> Carry( 	619	),
		S=> E(	599	));
				
	U620	: Soma_AMA3_1 PORT MAP(
		A=> C(	652	),
		B=>E(	570	),
		Cin=> Carry( 	619	),
		Cout=> Carry( 	620	),
		S=> E(	600	));
				
	U621	: Soma_AMA3_1 PORT MAP(
		A=> C(	653	),
		B=>E(	571	),
		Cin=> Carry( 	620	),
		Cout=> Carry( 	621	),
		S=> E(	601	));
				
	U622	: Soma_AMA3_1 PORT MAP(
		A=> C(	654	),
		B=>E(	572	),
		Cin=> Carry( 	621	),
		Cout=> Carry( 	622	),
		S=> E(	602	));
				
	U623	: Soma_AMA3_1 PORT MAP(
		A=> C(	655	),
		B=>E(	573	),
		Cin=> Carry( 	622	),
		Cout=> Carry( 	623	),
		S=> E(	603	));
				
	U624	: Soma_AMA3_1 PORT MAP(
		A=> C(	656	),
		B=>E(	574	),
		Cin=> Carry( 	623	),
		Cout=> Carry( 	624	),
		S=> E(	604	));
				
	U625	: Soma_AMA3_1 PORT MAP(
		A=> C(	657	),
		B=>E(	575	),
		Cin=> Carry( 	624	),
		Cout=> Carry( 	625	),
		S=> E(	605	));
				
	U626	: Soma_AMA3_1 PORT MAP(
		A=> C(	658	),
		B=>E(	576	),
		Cin=> Carry( 	625	),
		Cout=> Carry( 	626	),
		S=> E(	606	));
				
	U627	: Soma_AMA3_1 PORT MAP(
		A=> C(	659	),
		B=>E(	577	),
		Cin=> Carry( 	626	),
		Cout=> Carry( 	627	),
		S=> E(	607	));
				
	U628	: Soma_AMA3_1 PORT MAP(
		A=> C(	660	),
		B=>E(	578	),
		Cin=> Carry( 	627	),
		Cout=> Carry( 	628	),
		S=> E(	608	));
				
	U629	: Soma_AMA3_1 PORT MAP(
		A=> C(	661	),
		B=>E(	579	),
		Cin=> Carry( 	628	),
		Cout=> Carry( 	629	),
		S=> E(	609	));
				
	U630	: Soma_AMA3_1 PORT MAP(
		A=> C(	662	),
		B=>E(	580	),
		Cin=> Carry( 	629	),
		Cout=> Carry( 	630	),
		S=> E(	610	));
				
	U631	: Soma_AMA3_1 PORT MAP(
		A=> C(	663	),
		B=>E(	581	),
		Cin=> Carry( 	630	),
		Cout=> Carry( 	631	),
		S=> E(	611	));
				
	U632	: Soma_AMA3_1 PORT MAP(
		A=> C(	664	),
		B=>E(	582	),
		Cin=> Carry( 	631	),
		Cout=> Carry( 	632	),
		S=> E(	612	));
				
	U633	: Soma_AMA3_1 PORT MAP(
		A=> C(	665	),
		B=>E(	583	),
		Cin=> Carry( 	632	),
		Cout=> Carry( 	633	),
		S=> E(	613	));
				
	U634	: Soma_AMA3_1 PORT MAP(
		A=> C(	666	),
		B=>E(	584	),
		Cin=> Carry( 	633	),
		Cout=> Carry( 	634	),
		S=> E(	614	));
				
	U635	: Soma_AMA3_1 PORT MAP(
		A=> C(	667	),
		B=>E(	585	),
		Cin=> Carry( 	634	),
		Cout=> Carry( 	635	),
		S=> E(	615	));
				
	U636	: Soma_AMA3_1 PORT MAP(
		A=> C(	668	),
		B=>E(	586	),
		Cin=> Carry( 	635	),
		Cout=> Carry( 	636	),
		S=> E(	616	));
				
	U637	: Soma_AMA3_1 PORT MAP(
		A=> C(	669	),
		B=>E(	587	),
		Cin=> Carry( 	636	),
		Cout=> Carry( 	637	),
		S=> E(	617	));
				
	U638	: Soma_AMA3_1 PORT MAP(
		A=> C(	670	),
		B=>E(	588	),
		Cin=> Carry( 	637	),
		Cout=> Carry( 	638	),
		S=> E(	618	));
				
	U639	: Soma_AMA3_1 PORT MAP(
		A=> C(	671	),
		B=>Carry(	607	),
		Cin=> Carry( 	638	),
		Cout=> Carry( 	639	),
		S=> E(	619	));
		------		
				
	U640	: Soma_AMA3_1 PORT MAP(
		A=> C(	672	),
		B=>E(	589	),
		Cin =>  '0'	,
		Cout=> Carry( 	640	),
		S=> R(	21	));
				
	U641	: Soma_AMA3_1 PORT MAP(
		A=> C(	673	),
		B=>E(	590	),
		Cin=> Carry( 	640	),
		Cout=> Carry( 	641	),
		S=> E(	620	));
				
	U642	: Soma_AMA3_1 PORT MAP(
		A=> C(	674	),
		B=>E(	591	),
		Cin=> Carry( 	641	),
		Cout=> Carry( 	642	),
		S=> E(	621	));
				
	U643	: Soma_AMA3_1 PORT MAP(
		A=> C(	675	),
		B=>E(	592	),
		Cin=> Carry( 	642	),
		Cout=> Carry( 	643	),
		S=> E(	622	));
				
	U644	: Soma_AMA3_1 PORT MAP(
		A=> C(	676	),
		B=>E(	593	),
		Cin=> Carry( 	643	),
		Cout=> Carry( 	644	),
		S=> E(	623	));
				
	U645	: Soma_AMA3_1 PORT MAP(
		A=> C(	677	),
		B=>E(	594	),
		Cin=> Carry( 	644	),
		Cout=> Carry( 	645	),
		S=> E(	624	));
				
	U646	: Soma_AMA3_1 PORT MAP(
		A=> C(	678	),
		B=>E(	595	),
		Cin=> Carry( 	645	),
		Cout=> Carry( 	646	),
		S=> E(	625	));
				
	U647	: Soma_AMA3_1 PORT MAP(
		A=> C(	679	),
		B=>E(	596	),
		Cin=> Carry( 	646	),
		Cout=> Carry( 	647	),
		S=> E(	626	));
				
	U648	: Soma_AMA3_1 PORT MAP(
		A=> C(	680	),
		B=>E(	597	),
		Cin=> Carry( 	647	),
		Cout=> Carry( 	648	),
		S=> E(	627	));
				
	U649	: Soma_AMA3_1 PORT MAP(
		A=> C(	681	),
		B=>E(	598	),
		Cin=> Carry( 	648	),
		Cout=> Carry( 	649	),
		S=> E(	628	));
				
	U650	: Soma_AMA3_1 PORT MAP(
		A=> C(	682	),
		B=>E(	599	),
		Cin=> Carry( 	649	),
		Cout=> Carry( 	650	),
		S=> E(	629	));
				
	U651	: Soma_AMA3_1 PORT MAP(
		A=> C(	683	),
		B=>E(	600	),
		Cin=> Carry( 	650	),
		Cout=> Carry( 	651	),
		S=> E(	630	));
				
	U652	: Soma_AMA3_1 PORT MAP(
		A=> C(	684	),
		B=>E(	601	),
		Cin=> Carry( 	651	),
		Cout=> Carry( 	652	),
		S=> E(	631	));
				
	U653	: Soma_AMA3_1 PORT MAP(
		A=> C(	685	),
		B=>E(	602	),
		Cin=> Carry( 	652	),
		Cout=> Carry( 	653	),
		S=> E(	632	));
				
	U654	: Soma_AMA3_1 PORT MAP(
		A=> C(	686	),
		B=>E(	603	),
		Cin=> Carry( 	653	),
		Cout=> Carry( 	654	),
		S=> E(	633	));
				
	U655	: Soma_AMA3_1 PORT MAP(
		A=> C(	687	),
		B=>E(	604	),
		Cin=> Carry( 	654	),
		Cout=> Carry( 	655	),
		S=> E(	634	));
				
	U656	: Soma_AMA3_1 PORT MAP(
		A=> C(	688	),
		B=>E(	605	),
		Cin=> Carry( 	655	),
		Cout=> Carry( 	656	),
		S=> E(	635	));
				
	U657	: Soma_AMA3_1 PORT MAP(
		A=> C(	689	),
		B=>E(	606	),
		Cin=> Carry( 	656	),
		Cout=> Carry( 	657	),
		S=> E(	636	));
				
	U658	: Soma_AMA3_1 PORT MAP(
		A=> C(	690	),
		B=>E(	607	),
		Cin=> Carry( 	657	),
		Cout=> Carry( 	658	),
		S=> E(	637	));
				
	U659	: Soma_AMA3_1 PORT MAP(
		A=> C(	691	),
		B=>E(	608	),
		Cin=> Carry( 	658	),
		Cout=> Carry( 	659	),
		S=> E(	638	));
				
	U660	: Soma_AMA3_1 PORT MAP(
		A=> C(	692	),
		B=>E(	609	),
		Cin=> Carry( 	659	),
		Cout=> Carry( 	660	),
		S=> E(	639	));
				
	U661	: Soma_AMA3_1 PORT MAP(
		A=> C(	693	),
		B=>E(	610	),
		Cin=> Carry( 	660	),
		Cout=> Carry( 	661	),
		S=> E(	640	));
				
	U662	: Soma_AMA3_1 PORT MAP(
		A=> C(	694	),
		B=>E(	611	),
		Cin=> Carry( 	661	),
		Cout=> Carry( 	662	),
		S=> E(	641	));
				
	U663	: Soma_AMA3_1 PORT MAP(
		A=> C(	695	),
		B=>E(	612	),
		Cin=> Carry( 	662	),
		Cout=> Carry( 	663	),
		S=> E(	642	));
				
	U664	: Soma_AMA3_1 PORT MAP(
		A=> C(	696	),
		B=>E(	613	),
		Cin=> Carry( 	663	),
		Cout=> Carry( 	664	),
		S=> E(	643	));
				
	U665	: Soma_AMA3_1 PORT MAP(
		A=> C(	697	),
		B=>E(	614	),
		Cin=> Carry( 	664	),
		Cout=> Carry( 	665	),
		S=> E(	644	));
				
	U666	: Soma_AMA3_1 PORT MAP(
		A=> C(	698	),
		B=>E(	615	),
		Cin=> Carry( 	665	),
		Cout=> Carry( 	666	),
		S=> E(	645	));
				
	U667	: Soma_AMA3_1 PORT MAP(
		A=> C(	699	),
		B=>E(	616	),
		Cin=> Carry( 	666	),
		Cout=> Carry( 	667	),
		S=> E(	646	));
				
	U668	: Soma_AMA3_1 PORT MAP(
		A=> C(	700	),
		B=>E(	617	),
		Cin=> Carry( 	667	),
		Cout=> Carry( 	668	),
		S=> E(	647	));
				
	U669	: Soma_AMA3_1 PORT MAP(
		A=> C(	701	),
		B=>E(	618	),
		Cin=> Carry( 	668	),
		Cout=> Carry( 	669	),
		S=> E(	648	));
				
	U670	: Soma_AMA3_1 PORT MAP(
		A=> C(	702	),
		B=>E(	619	),
		Cin=> Carry( 	669	),
		Cout=> Carry( 	670	),
		S=> E(	649	));
				
	U671	: Soma_AMA3_1 PORT MAP(
		A=> C(	703	),
		B=>Carry(	639	),
		Cin=> Carry( 	670	),
		Cout=> Carry( 	671	),
		S=> E(	650	));
		------		
				
	U672	: Soma_AMA3_1 PORT MAP(
		A=> C(	704	),
		B=>E(	620	),
		Cin =>  '0'	,
		Cout=> Carry( 	672	),
		S=> R(	22	));
				
	U673	: Soma_AMA3_1 PORT MAP(
		A=> C(	705	),
		B=>E(	621	),
		Cin=> Carry( 	672	),
		Cout=> Carry( 	673	),
		S=> E(	651	));
				
	U674	: Soma_AMA3_1 PORT MAP(
		A=> C(	706	),
		B=>E(	622	),
		Cin=> Carry( 	673	),
		Cout=> Carry( 	674	),
		S=> E(	652	));
				
	U675	: Soma_AMA3_1 PORT MAP(
		A=> C(	707	),
		B=>E(	623	),
		Cin=> Carry( 	674	),
		Cout=> Carry( 	675	),
		S=> E(	653	));
				
	U676	: Soma_AMA3_1 PORT MAP(
		A=> C(	708	),
		B=>E(	624	),
		Cin=> Carry( 	675	),
		Cout=> Carry( 	676	),
		S=> E(	654	));
				
	U677	: Soma_AMA3_1 PORT MAP(
		A=> C(	709	),
		B=>E(	625	),
		Cin=> Carry( 	676	),
		Cout=> Carry( 	677	),
		S=> E(	655	));
				
	U678	: Soma_AMA3_1 PORT MAP(
		A=> C(	710	),
		B=>E(	626	),
		Cin=> Carry( 	677	),
		Cout=> Carry( 	678	),
		S=> E(	656	));
				
	U679	: Soma_AMA3_1 PORT MAP(
		A=> C(	711	),
		B=>E(	627	),
		Cin=> Carry( 	678	),
		Cout=> Carry( 	679	),
		S=> E(	657	));
				
	U680	: Soma_AMA3_1 PORT MAP(
		A=> C(	712	),
		B=>E(	628	),
		Cin=> Carry( 	679	),
		Cout=> Carry( 	680	),
		S=> E(	658	));
				
	U681	: Soma_AMA3_1 PORT MAP(
		A=> C(	713	),
		B=>E(	629	),
		Cin=> Carry( 	680	),
		Cout=> Carry( 	681	),
		S=> E(	659	));
				
	U682	: Soma_AMA3_1 PORT MAP(
		A=> C(	714	),
		B=>E(	630	),
		Cin=> Carry( 	681	),
		Cout=> Carry( 	682	),
		S=> E(	660	));
				
	U683	: Soma_AMA3_1 PORT MAP(
		A=> C(	715	),
		B=>E(	631	),
		Cin=> Carry( 	682	),
		Cout=> Carry( 	683	),
		S=> E(	661	));
				
	U684	: Soma_AMA3_1 PORT MAP(
		A=> C(	716	),
		B=>E(	632	),
		Cin=> Carry( 	683	),
		Cout=> Carry( 	684	),
		S=> E(	662	));
				
	U685	: Soma_AMA3_1 PORT MAP(
		A=> C(	717	),
		B=>E(	633	),
		Cin=> Carry( 	684	),
		Cout=> Carry( 	685	),
		S=> E(	663	));
				
	U686	: Soma_AMA3_1 PORT MAP(
		A=> C(	718	),
		B=>E(	634	),
		Cin=> Carry( 	685	),
		Cout=> Carry( 	686	),
		S=> E(	664	));
				
	U687	: Soma_AMA3_1 PORT MAP(
		A=> C(	719	),
		B=>E(	635	),
		Cin=> Carry( 	686	),
		Cout=> Carry( 	687	),
		S=> E(	665	));
				
	U688	: Soma_AMA3_1 PORT MAP(
		A=> C(	720	),
		B=>E(	636	),
		Cin=> Carry( 	687	),
		Cout=> Carry( 	688	),
		S=> E(	666	));
				
	U689	: Soma_AMA3_1 PORT MAP(
		A=> C(	721	),
		B=>E(	637	),
		Cin=> Carry( 	688	),
		Cout=> Carry( 	689	),
		S=> E(	667	));
				
	U690	: Soma_AMA3_1 PORT MAP(
		A=> C(	722	),
		B=>E(	638	),
		Cin=> Carry( 	689	),
		Cout=> Carry( 	690	),
		S=> E(	668	));
				
	U691	: Soma_AMA3_1 PORT MAP(
		A=> C(	723	),
		B=>E(	639	),
		Cin=> Carry( 	690	),
		Cout=> Carry( 	691	),
		S=> E(	669	));
				
	U692	: Soma_AMA3_1 PORT MAP(
		A=> C(	724	),
		B=>E(	640	),
		Cin=> Carry( 	691	),
		Cout=> Carry( 	692	),
		S=> E(	670	));
				
	U693	: Soma_AMA3_1 PORT MAP(
		A=> C(	725	),
		B=>E(	641	),
		Cin=> Carry( 	692	),
		Cout=> Carry( 	693	),
		S=> E(	671	));
				
	U694	: Soma_AMA3_1 PORT MAP(
		A=> C(	726	),
		B=>E(	642	),
		Cin=> Carry( 	693	),
		Cout=> Carry( 	694	),
		S=> E(	672	));
				
	U695	: Soma_AMA3_1 PORT MAP(
		A=> C(	727	),
		B=>E(	643	),
		Cin=> Carry( 	694	),
		Cout=> Carry( 	695	),
		S=> E(	673	));
				
	U696	: Soma_AMA3_1 PORT MAP(
		A=> C(	728	),
		B=>E(	644	),
		Cin=> Carry( 	695	),
		Cout=> Carry( 	696	),
		S=> E(	674	));
				
	U697	: Soma_AMA3_1 PORT MAP(
		A=> C(	729	),
		B=>E(	645	),
		Cin=> Carry( 	696	),
		Cout=> Carry( 	697	),
		S=> E(	675	));
				
	U698	: Soma_AMA3_1 PORT MAP(
		A=> C(	730	),
		B=>E(	646	),
		Cin=> Carry( 	697	),
		Cout=> Carry( 	698	),
		S=> E(	676	));
				
	U699	: Soma_AMA3_1 PORT MAP(
		A=> C(	731	),
		B=>E(	647	),
		Cin=> Carry( 	698	),
		Cout=> Carry( 	699	),
		S=> E(	677	));
				
	U700	: Soma_AMA3_1 PORT MAP(
		A=> C(	732	),
		B=>E(	648	),
		Cin=> Carry( 	699	),
		Cout=> Carry( 	700	),
		S=> E(	678	));
				
	U701	: Soma_AMA3_1 PORT MAP(
		A=> C(	733	),
		B=>E(	649	),
		Cin=> Carry( 	700	),
		Cout=> Carry( 	701	),
		S=> E(	679	));
				
	U702	: Soma_AMA3_1 PORT MAP(
		A=> C(	734	),
		B=>E(	650	),
		Cin=> Carry( 	701	),
		Cout=> Carry( 	702	),
		S=> E(	680	));
				
	U703	: Soma_AMA3_1 PORT MAP(
		A=> C(	735	),
		B=>Carry(	671	),
		Cin=> Carry( 	702	),
		Cout=> Carry( 	703	),
		S=> E(	681	));
		------		
				
	U704	: Soma_AMA3_1 PORT MAP(
		A=> C(	736	),
		B=>E(	651	),
		Cin =>  '0'	,
		Cout=> Carry( 	704	),
		S=> R(	23	));
				
	U705	: Soma_AMA3_1 PORT MAP(
		A=> C(	737	),
		B=>E(	652	),
		Cin=> Carry( 	704	),
		Cout=> Carry( 	705	),
		S=> E(	682	));
				
	U706	: Soma_AMA3_1 PORT MAP(
		A=> C(	738	),
		B=>E(	653	),
		Cin=> Carry( 	705	),
		Cout=> Carry( 	706	),
		S=> E(	683	));
				
	U707	: Soma_AMA3_1 PORT MAP(
		A=> C(	739	),
		B=>E(	654	),
		Cin=> Carry( 	706	),
		Cout=> Carry( 	707	),
		S=> E(	684	));
				
	U708	: Soma_AMA3_1 PORT MAP(
		A=> C(	740	),
		B=>E(	655	),
		Cin=> Carry( 	707	),
		Cout=> Carry( 	708	),
		S=> E(	685	));
				
	U709	: Soma_AMA3_1 PORT MAP(
		A=> C(	741	),
		B=>E(	656	),
		Cin=> Carry( 	708	),
		Cout=> Carry( 	709	),
		S=> E(	686	));
				
	U710	: Soma_AMA3_1 PORT MAP(
		A=> C(	742	),
		B=>E(	657	),
		Cin=> Carry( 	709	),
		Cout=> Carry( 	710	),
		S=> E(	687	));
				
	U711	: Soma_AMA3_1 PORT MAP(
		A=> C(	743	),
		B=>E(	658	),
		Cin=> Carry( 	710	),
		Cout=> Carry( 	711	),
		S=> E(	688	));
				
	U712	: Soma_AMA3_1 PORT MAP(
		A=> C(	744	),
		B=>E(	659	),
		Cin=> Carry( 	711	),
		Cout=> Carry( 	712	),
		S=> E(	689	));
				
	U713	: Soma_AMA3_1 PORT MAP(
		A=> C(	745	),
		B=>E(	660	),
		Cin=> Carry( 	712	),
		Cout=> Carry( 	713	),
		S=> E(	690	));
				
	U714	: Soma_AMA3_1 PORT MAP(
		A=> C(	746	),
		B=>E(	661	),
		Cin=> Carry( 	713	),
		Cout=> Carry( 	714	),
		S=> E(	691	));
				
	U715	: Soma_AMA3_1 PORT MAP(
		A=> C(	747	),
		B=>E(	662	),
		Cin=> Carry( 	714	),
		Cout=> Carry( 	715	),
		S=> E(	692	));
				
	U716	: Soma_AMA3_1 PORT MAP(
		A=> C(	748	),
		B=>E(	663	),
		Cin=> Carry( 	715	),
		Cout=> Carry( 	716	),
		S=> E(	693	));
				
	U717	: Soma_AMA3_1 PORT MAP(
		A=> C(	749	),
		B=>E(	664	),
		Cin=> Carry( 	716	),
		Cout=> Carry( 	717	),
		S=> E(	694	));
				
	U718	: Soma_AMA3_1 PORT MAP(
		A=> C(	750	),
		B=>E(	665	),
		Cin=> Carry( 	717	),
		Cout=> Carry( 	718	),
		S=> E(	695	));
				
	U719	: Soma_AMA3_1 PORT MAP(
		A=> C(	751	),
		B=>E(	666	),
		Cin=> Carry( 	718	),
		Cout=> Carry( 	719	),
		S=> E(	696	));
				
	U720	: Soma_AMA3_1 PORT MAP(
		A=> C(	752	),
		B=>E(	667	),
		Cin=> Carry( 	719	),
		Cout=> Carry( 	720	),
		S=> E(	697	));
				
	U721	: Soma_AMA3_1 PORT MAP(
		A=> C(	753	),
		B=>E(	668	),
		Cin=> Carry( 	720	),
		Cout=> Carry( 	721	),
		S=> E(	698	));
				
	U722	: Soma_AMA3_1 PORT MAP(
		A=> C(	754	),
		B=>E(	669	),
		Cin=> Carry( 	721	),
		Cout=> Carry( 	722	),
		S=> E(	699	));
				
	U723	: Soma_AMA3_1 PORT MAP(
		A=> C(	755	),
		B=>E(	670	),
		Cin=> Carry( 	722	),
		Cout=> Carry( 	723	),
		S=> E(	700	));
				
	U724	: Soma_AMA3_1 PORT MAP(
		A=> C(	756	),
		B=>E(	671	),
		Cin=> Carry( 	723	),
		Cout=> Carry( 	724	),
		S=> E(	701	));
				
	U725	: Soma_AMA3_1 PORT MAP(
		A=> C(	757	),
		B=>E(	672	),
		Cin=> Carry( 	724	),
		Cout=> Carry( 	725	),
		S=> E(	702	));
				
	U726	: Soma_AMA3_1 PORT MAP(
		A=> C(	758	),
		B=>E(	673	),
		Cin=> Carry( 	725	),
		Cout=> Carry( 	726	),
		S=> E(	703	));
				
	U727	: Soma_AMA3_1 PORT MAP(
		A=> C(	759	),
		B=>E(	674	),
		Cin=> Carry( 	726	),
		Cout=> Carry( 	727	),
		S=> E(	704	));
				
	U728	: Soma_AMA3_1 PORT MAP(
		A=> C(	760	),
		B=>E(	675	),
		Cin=> Carry( 	727	),
		Cout=> Carry( 	728	),
		S=> E(	705	));
				
	U729	: Soma_AMA3_1 PORT MAP(
		A=> C(	761	),
		B=>E(	676	),
		Cin=> Carry( 	728	),
		Cout=> Carry( 	729	),
		S=> E(	706	));
				
	U730	: Soma_AMA3_1 PORT MAP(
		A=> C(	762	),
		B=>E(	677	),
		Cin=> Carry( 	729	),
		Cout=> Carry( 	730	),
		S=> E(	707	));
				
	U731	: Soma_AMA3_1 PORT MAP(
		A=> C(	763	),
		B=>E(	678	),
		Cin=> Carry( 	730	),
		Cout=> Carry( 	731	),
		S=> E(	708	));
				
	U732	: Soma_AMA3_1 PORT MAP(
		A=> C(	764	),
		B=>E(	679	),
		Cin=> Carry( 	731	),
		Cout=> Carry( 	732	),
		S=> E(	709	));
				
	U733	: Soma_AMA3_1 PORT MAP(
		A=> C(	765	),
		B=>E(	680	),
		Cin=> Carry( 	732	),
		Cout=> Carry( 	733	),
		S=> E(	710	));
				
	U734	: Soma_AMA3_1 PORT MAP(
		A=> C(	766	),
		B=>E(	681	),
		Cin=> Carry( 	733	),
		Cout=> Carry( 	734	),
		S=> E(	711	));
				
	U735	: Soma_AMA3_1 PORT MAP(
		A=> C(	767	),
		B=>Carry(	703	),
		Cin=> Carry( 	734	),
		Cout=> Carry( 	735	),
		S=> E(	712	));
		------		
				
	U736	: Soma_AMA3_1 PORT MAP(
		A=> C(	768	),
		B=>E(	682	),
		Cin =>  '0'	,
		Cout=> Carry( 	736	),
		S=> R(	24	));
				
	U737	: Soma_AMA3_1 PORT MAP(
		A=> C(	769	),
		B=>E(	683	),
		Cin=> Carry( 	736	),
		Cout=> Carry( 	737	),
		S=> E(	713	));
				
	U738	: Soma_AMA3_1 PORT MAP(
		A=> C(	770	),
		B=>E(	684	),
		Cin=> Carry( 	737	),
		Cout=> Carry( 	738	),
		S=> E(	714	));
				
	U739	: Soma_AMA3_1 PORT MAP(
		A=> C(	771	),
		B=>E(	685	),
		Cin=> Carry( 	738	),
		Cout=> Carry( 	739	),
		S=> E(	715	));
				
	U740	: Soma_AMA3_1 PORT MAP(
		A=> C(	772	),
		B=>E(	686	),
		Cin=> Carry( 	739	),
		Cout=> Carry( 	740	),
		S=> E(	716	));
				
	U741	: Soma_AMA3_1 PORT MAP(
		A=> C(	773	),
		B=>E(	687	),
		Cin=> Carry( 	740	),
		Cout=> Carry( 	741	),
		S=> E(	717	));
				
	U742	: Soma_AMA3_1 PORT MAP(
		A=> C(	774	),
		B=>E(	688	),
		Cin=> Carry( 	741	),
		Cout=> Carry( 	742	),
		S=> E(	718	));
				
	U743	: Soma_AMA3_1 PORT MAP(
		A=> C(	775	),
		B=>E(	689	),
		Cin=> Carry( 	742	),
		Cout=> Carry( 	743	),
		S=> E(	719	));
				
	U744	: Soma_AMA3_1 PORT MAP(
		A=> C(	776	),
		B=>E(	690	),
		Cin=> Carry( 	743	),
		Cout=> Carry( 	744	),
		S=> E(	720	));
				
	U745	: Soma_AMA3_1 PORT MAP(
		A=> C(	777	),
		B=>E(	691	),
		Cin=> Carry( 	744	),
		Cout=> Carry( 	745	),
		S=> E(	721	));
				
	U746	: Soma_AMA3_1 PORT MAP(
		A=> C(	778	),
		B=>E(	692	),
		Cin=> Carry( 	745	),
		Cout=> Carry( 	746	),
		S=> E(	722	));
				
	U747	: Soma_AMA3_1 PORT MAP(
		A=> C(	779	),
		B=>E(	693	),
		Cin=> Carry( 	746	),
		Cout=> Carry( 	747	),
		S=> E(	723	));
				
	U748	: Soma_AMA3_1 PORT MAP(
		A=> C(	780	),
		B=>E(	694	),
		Cin=> Carry( 	747	),
		Cout=> Carry( 	748	),
		S=> E(	724	));
				
	U749	: Soma_AMA3_1 PORT MAP(
		A=> C(	781	),
		B=>E(	695	),
		Cin=> Carry( 	748	),
		Cout=> Carry( 	749	),
		S=> E(	725	));
				
	U750	: Soma_AMA3_1 PORT MAP(
		A=> C(	782	),
		B=>E(	696	),
		Cin=> Carry( 	749	),
		Cout=> Carry( 	750	),
		S=> E(	726	));
				
	U751	: Soma_AMA3_1 PORT MAP(
		A=> C(	783	),
		B=>E(	697	),
		Cin=> Carry( 	750	),
		Cout=> Carry( 	751	),
		S=> E(	727	));
				
	U752	: Soma_AMA3_1 PORT MAP(
		A=> C(	784	),
		B=>E(	698	),
		Cin=> Carry( 	751	),
		Cout=> Carry( 	752	),
		S=> E(	728	));
				
	U753	: Soma_AMA3_1 PORT MAP(
		A=> C(	785	),
		B=>E(	699	),
		Cin=> Carry( 	752	),
		Cout=> Carry( 	753	),
		S=> E(	729	));
				
	U754	: Soma_AMA3_1 PORT MAP(
		A=> C(	786	),
		B=>E(	700	),
		Cin=> Carry( 	753	),
		Cout=> Carry( 	754	),
		S=> E(	730	));
				
	U755	: Soma_AMA3_1 PORT MAP(
		A=> C(	787	),
		B=>E(	701	),
		Cin=> Carry( 	754	),
		Cout=> Carry( 	755	),
		S=> E(	731	));
				
	U756	: Soma_AMA3_1 PORT MAP(
		A=> C(	788	),
		B=>E(	702	),
		Cin=> Carry( 	755	),
		Cout=> Carry( 	756	),
		S=> E(	732	));
				
	U757	: Soma_AMA3_1 PORT MAP(
		A=> C(	789	),
		B=>E(	703	),
		Cin=> Carry( 	756	),
		Cout=> Carry( 	757	),
		S=> E(	733	));
				
	U758	: Soma_AMA3_1 PORT MAP(
		A=> C(	790	),
		B=>E(	704	),
		Cin=> Carry( 	757	),
		Cout=> Carry( 	758	),
		S=> E(	734	));
				
	U759	: Soma_AMA3_1 PORT MAP(
		A=> C(	791	),
		B=>E(	705	),
		Cin=> Carry( 	758	),
		Cout=> Carry( 	759	),
		S=> E(	735	));
				
	U760	: Soma_AMA3_1 PORT MAP(
		A=> C(	792	),
		B=>E(	706	),
		Cin=> Carry( 	759	),
		Cout=> Carry( 	760	),
		S=> E(	736	));
				
	U761	: Soma_AMA3_1 PORT MAP(
		A=> C(	793	),
		B=>E(	707	),
		Cin=> Carry( 	760	),
		Cout=> Carry( 	761	),
		S=> E(	737	));
				
	U762	: Soma_AMA3_1 PORT MAP(
		A=> C(	794	),
		B=>E(	708	),
		Cin=> Carry( 	761	),
		Cout=> Carry( 	762	),
		S=> E(	738	));
				
	U763	: Soma_AMA3_1 PORT MAP(
		A=> C(	795	),
		B=>E(	709	),
		Cin=> Carry( 	762	),
		Cout=> Carry( 	763	),
		S=> E(	739	));
				
	U764	: Soma_AMA3_1 PORT MAP(
		A=> C(	796	),
		B=>E(	710	),
		Cin=> Carry( 	763	),
		Cout=> Carry( 	764	),
		S=> E(	740	));
				
	U765	: Soma_AMA3_1 PORT MAP(
		A=> C(	797	),
		B=>E(	711	),
		Cin=> Carry( 	764	),
		Cout=> Carry( 	765	),
		S=> E(	741	));
			
	U766	: Soma_AMA3_1 PORT MAP(
		A=> C(	798	),
		B=>E(	712	),
		Cin=> Carry( 	765	),
		Cout=> Carry( 	766	),
		S=> E(	742	));
				
	U767	: Soma_AMA3_1 PORT MAP(
		A=> C(	799	),
		B=>Carry(	735	),
		Cin=> Carry( 	766	),
		Cout=> Carry( 	767	),
		S=> E(	743	));
		------		
				
	U768	: Soma_AMA3_1 PORT MAP(
		A=> C(	800	),
		B=>E(	713	),
		Cin =>  '0'	,
		Cout=> Carry( 	768	),
		S=> R(	25	));
				
	U769	: Soma_AMA3_1 PORT MAP(
		A=> C(	801	),
		B=>E(	714	),
		Cin=> Carry( 	768	),
		Cout=> Carry( 	769	),
		S=> E(	744	));
				
	U770	: Soma_AMA3_1 PORT MAP(
		A=> C(	802	),
		B=>E(	715	),
		Cin=> Carry( 	769	),
		Cout=> Carry( 	770	),
		S=> E(	745	));
				
	U771	: Soma_AMA3_1 PORT MAP(
		A=> C(	803	),
		B=>E(	716	),
		Cin=> Carry( 	770	),
		Cout=> Carry( 	771	),
		S=> E(	746	));
				
	U772	: Soma_AMA3_1 PORT MAP(
		A=> C(	804	),
		B=>E(	717	),
		Cin=> Carry( 	771	),
		Cout=> Carry( 	772	),
		S=> E(	747	));
				
	U773	: Soma_AMA3_1 PORT MAP(
		A=> C(	805	),
		B=>E(	718	),
		Cin=> Carry( 	772	),
		Cout=> Carry( 	773	),
		S=> E(	748	));
				
	U774	: Soma_AMA3_1 PORT MAP(
		A=> C(	806	),
		B=>E(	719	),
		Cin=> Carry( 	773	),
		Cout=> Carry( 	774	),
		S=> E(	749	));
				
	U775	: Soma_AMA3_1 PORT MAP(
		A=> C(	807	),
		B=>E(	720	),
		Cin=> Carry( 	774	),
		Cout=> Carry( 	775	),
		S=> E(	750	));
				
	U776	: Soma_AMA3_1 PORT MAP(
		A=> C(	808	),
		B=>E(	721	),
		Cin=> Carry( 	775	),
		Cout=> Carry( 	776	),
		S=> E(	751	));
				
	U777	: Soma_AMA3_1 PORT MAP(
		A=> C(	809	),
		B=>E(	722	),
		Cin=> Carry( 	776	),
		Cout=> Carry( 	777	),
		S=> E(	752	));
				
	U778	: Soma_AMA3_1 PORT MAP(
		A=> C(	810	),
		B=>E(	723	),
		Cin=> Carry( 	777	),
		Cout=> Carry( 	778	),
		S=> E(	753	));
				
	U779	: Soma_AMA3_1 PORT MAP(
		A=> C(	811	),
		B=>E(	724	),
		Cin=> Carry( 	778	),
		Cout=> Carry( 	779	),
		S=> E(	754	));
				
	U780	: Soma_AMA3_1 PORT MAP(
		A=> C(	812	),
		B=>E(	725	),
		Cin=> Carry( 	779	),
		Cout=> Carry( 	780	),
		S=> E(	755	));
				
	U781	: Soma_AMA3_1 PORT MAP(
		A=> C(	813	),
		B=>E(	726	),
		Cin=> Carry( 	780	),
		Cout=> Carry( 	781	),
		S=> E(	756	));
				
	U782	: Soma_AMA3_1 PORT MAP(
		A=> C(	814	),
		B=>E(	727	),
		Cin=> Carry( 	781	),
		Cout=> Carry( 	782	),
		S=> E(	757	));
				
	U783	: Soma_AMA3_1 PORT MAP(
		A=> C(	815	),
		B=>E(	728	),
		Cin=> Carry( 	782	),
		Cout=> Carry( 	783	),
		S=> E(	758	));
				
	U784	: Soma_AMA3_1 PORT MAP(
		A=> C(	816	),
		B=>E(	729	),
		Cin=> Carry( 	783	),
		Cout=> Carry( 	784	),
		S=> E(	759	));
				
	U785	: Soma_AMA3_1 PORT MAP(
		A=> C(	817	),
		B=>E(	730	),
		Cin=> Carry( 	784	),
		Cout=> Carry( 	785	),
		S=> E(	760	));
				
	U786	: Soma_AMA3_1 PORT MAP(
		A=> C(	818	),
		B=>E(	731	),
		Cin=> Carry( 	785	),
		Cout=> Carry( 	786	),
		S=> E(	761	));
				
	U787	: Soma_AMA3_1 PORT MAP(
		A=> C(	819	),
		B=>E(	732	),
		Cin=> Carry( 	786	),
		Cout=> Carry( 	787	),
		S=> E(	762	));
				
	U788	: Soma_AMA3_1 PORT MAP(
		A=> C(	820	),
		B=>E(	733	),
		Cin=> Carry( 	787	),
		Cout=> Carry( 	788	),
		S=> E(	763	));
				
	U789	: Soma_AMA3_1 PORT MAP(
		A=> C(	821	),
		B=>E(	734	),
		Cin=> Carry( 	788	),
		Cout=> Carry( 	789	),
		S=> E(	764	));
				
	U790	: Soma_AMA3_1 PORT MAP(
		A=> C(	822	),
		B=>E(	735	),
		Cin=> Carry( 	789	),
		Cout=> Carry( 	790	),
		S=> E(	765	));
				
	U791	: Soma_AMA3_1 PORT MAP(
		A=> C(	823	),
		B=>E(	736	),
		Cin=> Carry( 	790	),
		Cout=> Carry( 	791	),
		S=> E(	766	));
				
	U792	: Soma_AMA3_1 PORT MAP(
		A=> C(	824	),
		B=>E(	737	),
		Cin=> Carry( 	791	),
		Cout=> Carry( 	792	),
		S=> E(	767	));
				
	U793	: Soma_AMA3_1 PORT MAP(
		A=> C(	825	),
		B=>E(	738	),
		Cin=> Carry( 	792	),
		Cout=> Carry( 	793	),
		S=> E(	768	));
				
	U794	: Soma_AMA3_1 PORT MAP(
		A=> C(	826	),
		B=>E(	739	),
		Cin=> Carry( 	793	),
		Cout=> Carry( 	794	),
		S=> E(	769	));
				
	U795	: Soma_AMA3_1 PORT MAP(
		A=> C(	827	),
		B=>E(	740	),
		Cin=> Carry( 	794	),
		Cout=> Carry( 	795	),
		S=> E(	770	));
				
	U796	: Soma_AMA3_1 PORT MAP(
		A=> C(	828	),
		B=>E(	741	),
		Cin=> Carry( 	795	),
		Cout=> Carry( 	796	),
		S=> E(	771	));
				
	U797	: Soma_AMA3_1 PORT MAP(
		A=> C(	829	),
		B=>E(	742	),
		Cin=> Carry( 	796	),
		Cout=> Carry( 	797	),
		S=> E(	772	));
				
	U798	: Soma_AMA3_1 PORT MAP(
		A=> C(	830	),
		B=>E(	743	),
		Cin=> Carry( 	797	),
		Cout=> Carry( 	798	),
		S=> E(	773	));
				
	U799	: Soma_AMA3_1 PORT MAP(
		A=> C(	831	),
		B=>Carry(	767	),
		Cin=> Carry( 	798	),
		Cout=> Carry( 	799	),
		S=> E(	774	));
		------		
				
	U800	: Soma_AMA3_1 PORT MAP(
		A=> C(	832	),
		B=>E(	744	),
		Cin =>  '0'	,
		Cout=> Carry( 	800	),
		S=> R(	26	));
				
	U801	: Soma_AMA3_1 PORT MAP(
		A=> C(	833	),
		B=>E(	745	),
		Cin=> Carry( 	800	),
		Cout=> Carry( 	801	),
		S=> E(	775	));
				
	U802	: Soma_AMA3_1 PORT MAP(
		A=> C(	834	),
		B=>E(	746	),
		Cin=> Carry( 	801	),
		Cout=> Carry( 	802	),
		S=> E(	776	));
				
	U803	: Soma_AMA3_1 PORT MAP(
		A=> C(	835	),
		B=>E(	747	),
		Cin=> Carry( 	802	),
		Cout=> Carry( 	803	),
		S=> E(	777	));
				
	U804	: Soma_AMA3_1 PORT MAP(
		A=> C(	836	),
		B=>E(	748	),
		Cin=> Carry( 	803	),
		Cout=> Carry( 	804	),
		S=> E(	778	));
				
	U805	: Soma_AMA3_1 PORT MAP(
		A=> C(	837	),
		B=>E(	749	),
		Cin=> Carry( 	804	),
		Cout=> Carry( 	805	),
		S=> E(	779	));
				
	U806	: Soma_AMA3_1 PORT MAP(
		A=> C(	838	),
		B=>E(	750	),
		Cin=> Carry( 	805	),
		Cout=> Carry( 	806	),
		S=> E(	780	));
				
	U807	: Soma_AMA3_1 PORT MAP(
		A=> C(	839	),
		B=>E(	751	),
		Cin=> Carry( 	806	),
		Cout=> Carry( 	807	),
		S=> E(	781	));
				
	U808	: Soma_AMA3_1 PORT MAP(
		A=> C(	840	),
		B=>E(	752	),
		Cin=> Carry( 	807	),
		Cout=> Carry( 	808	),
		S=> E(	782	));
				
	U809	: Soma_AMA3_1 PORT MAP(
		A=> C(	841	),
		B=>E(	753	),
		Cin=> Carry( 	808	),
		Cout=> Carry( 	809	),
		S=> E(	783	));
				
	U810	: Soma_AMA3_1 PORT MAP(
		A=> C(	842	),
		B=>E(	754	),
		Cin=> Carry( 	809	),
		Cout=> Carry( 	810	),
		S=> E(	784	));
				
	U811	: Soma_AMA3_1 PORT MAP(
		A=> C(	843	),
		B=>E(	755	),
		Cin=> Carry( 	810	),
		Cout=> Carry( 	811	),
		S=> E(	785	));
				
	U812	: Soma_AMA3_1 PORT MAP(
		A=> C(	844	),
		B=>E(	756	),
		Cin=> Carry( 	811	),
		Cout=> Carry( 	812	),
		S=> E(	786	));
				
	U813	: Soma_AMA3_1 PORT MAP(
		A=> C(	845	),
		B=>E(	757	),
		Cin=> Carry( 	812	),
		Cout=> Carry( 	813	),
		S=> E(	787	));
				
	U814	: Soma_AMA3_1 PORT MAP(
		A=> C(	846	),
		B=>E(	758	),
		Cin=> Carry( 	813	),
		Cout=> Carry( 	814	),
		S=> E(	788	));
				
	U815	: Soma_AMA3_1 PORT MAP(
		A=> C(	847	),
		B=>E(	759	),
		Cin=> Carry( 	814	),
		Cout=> Carry( 	815	),
		S=> E(	789	));
				
	U816	: Soma_AMA3_1 PORT MAP(
		A=> C(	848	),
		B=>E(	760	),
		Cin=> Carry( 	815	),
		Cout=> Carry( 	816	),
		S=> E(	790	));
				
	U817	: Soma_AMA3_1 PORT MAP(
		A=> C(	849	),
		B=>E(	761	),
		Cin=> Carry( 	816	),
		Cout=> Carry( 	817	),
		S=> E(	791	));
				
	U818	: Soma_AMA3_1 PORT MAP(
		A=> C(	850	),
		B=>E(	762	),
		Cin=> Carry( 	817	),
		Cout=> Carry( 	818	),
		S=> E(	792	));
				
	U819	: Soma_AMA3_1 PORT MAP(
		A=> C(	851	),
		B=>E(	763	),
		Cin=> Carry( 	818	),
		Cout=> Carry( 	819	),
		S=> E(	793	));
				
	U820	: Soma_AMA3_1 PORT MAP(
		A=> C(	852	),
		B=>E(	764	),
		Cin=> Carry( 	819	),
		Cout=> Carry( 	820	),
		S=> E(	794	));
				
	U821	: Soma_AMA3_1 PORT MAP(
		A=> C(	853	),
		B=>E(	765	),
		Cin=> Carry( 	820	),
		Cout=> Carry( 	821	),
		S=> E(	795	));
				
	U822	: Soma_AMA3_1 PORT MAP(
		A=> C(	854	),
		B=>E(	766	),
		Cin=> Carry( 	821	),
		Cout=> Carry( 	822	),
		S=> E(	796	));
				
	U823	: Soma_AMA3_1 PORT MAP(
		A=> C(	855	),
		B=>E(	767	),
		Cin=> Carry( 	822	),
		Cout=> Carry( 	823	),
		S=> E(	797	));
				
	U824	: Soma_AMA3_1 PORT MAP(
		A=> C(	856	),
		B=>E(	768	),
		Cin=> Carry( 	823	),
		Cout=> Carry( 	824	),
		S=> E(	798	));
				
	U825	: Soma_AMA3_1 PORT MAP(
		A=> C(	857	),
		B=>E(	769	),
		Cin=> Carry( 	824	),
		Cout=> Carry( 	825	),
		S=> E(	799	));
				
	U826	: Soma_AMA3_1 PORT MAP(
		A=> C(	858	),
		B=>E(	770	),
		Cin=> Carry( 	825	),
		Cout=> Carry( 	826	),
		S=> E(	800	));
				
	U827	: Soma_AMA3_1 PORT MAP(
		A=> C(	859	),
		B=>E(	771	),
		Cin=> Carry( 	826	),
		Cout=> Carry( 	827	),
		S=> E(	801	));
				
	U828	: Soma_AMA3_1 PORT MAP(
		A=> C(	860	),
		B=>E(	772	),
		Cin=> Carry( 	827	),
		Cout=> Carry( 	828	),
		S=> E(	802	));
				
	U829	: Soma_AMA3_1 PORT MAP(
		A=> C(	861	),
		B=>E(	773	),
		Cin=> Carry( 	828	),
		Cout=> Carry( 	829	),
		S=> E(	803	));
				
	U830	: Soma_AMA3_1 PORT MAP(
		A=> C(	862	),
		B=>E(	774	),
		Cin=> Carry( 	829	),
		Cout=> Carry( 	830	),
		S=> E(	804	));
				
	U831	: Soma_AMA3_1 PORT MAP(
		A=> C(	863	),
		B=>Carry(	799	),
		Cin=> Carry( 	830	),
		Cout=> Carry( 	831	),
		S=> E(	805	));
		------		
				
	U832	: Soma_AMA3_1 PORT MAP(
		A=> C(	864	),
		B=>E(	775	),
		Cin =>  '0'	,
		Cout=> Carry( 	832	),
		S=> R(	27	));
				
	U833	: Soma_AMA3_1 PORT MAP(
		A=> C(	865	),
		B=>E(	776	),
		Cin=> Carry( 	832	),
		Cout=> Carry( 	833	),
		S=> E(	806	));
				
	U834	: Soma_AMA3_1 PORT MAP(
		A=> C(	866	),
		B=>E(	777	),
		Cin=> Carry( 	833	),
		Cout=> Carry( 	834	),
		S=> E(	807	));
				
	U835	: Soma_AMA3_1 PORT MAP(
		A=> C(	867	),
		B=>E(	778	),
		Cin=> Carry( 	834	),
		Cout=> Carry( 	835	),
		S=> E(	808	));
				
	U836	: Soma_AMA3_1 PORT MAP(
		A=> C(	868	),
		B=>E(	779	),
		Cin=> Carry( 	835	),
		Cout=> Carry( 	836	),
		S=> E(	809	));
				
	U837	: Soma_AMA3_1 PORT MAP(
		A=> C(	869	),
		B=>E(	780	),
		Cin=> Carry( 	836	),
		Cout=> Carry( 	837	),
		S=> E(	810	));
				
	U838	: Soma_AMA3_1 PORT MAP(
		A=> C(	870	),
		B=>E(	781	),
		Cin=> Carry( 	837	),
		Cout=> Carry( 	838	),
		S=> E(	811	));
				
	U839	: Soma_AMA3_1 PORT MAP(
		A=> C(	871	),
		B=>E(	782	),
		Cin=> Carry( 	838	),
		Cout=> Carry( 	839	),
		S=> E(	812	));
				
	U840	: Soma_AMA3_1 PORT MAP(
		A=> C(	872	),
		B=>E(	783	),
		Cin=> Carry( 	839	),
		Cout=> Carry( 	840	),
		S=> E(	813	));
				
	U841	: Soma_AMA3_1 PORT MAP(
		A=> C(	873	),
		B=>E(	784	),
		Cin=> Carry( 	840	),
		Cout=> Carry( 	841	),
		S=> E(	814	));
				
	U842	: Soma_AMA3_1 PORT MAP(
		A=> C(	874	),
		B=>E(	785	),
		Cin=> Carry( 	841	),
		Cout=> Carry( 	842	),
		S=> E(	815	));
				
	U843	: Soma_AMA3_1 PORT MAP(
		A=> C(	875	),
		B=>E(	786	),
		Cin=> Carry( 	842	),
		Cout=> Carry( 	843	),
		S=> E(	816	));
				
	U844	: Soma_AMA3_1 PORT MAP(
		A=> C(	876	),
		B=>E(	787	),
		Cin=> Carry( 	843	),
		Cout=> Carry( 	844	),
		S=> E(	817	));
				
	U845	: Soma_AMA3_1 PORT MAP(
		A=> C(	877	),
		B=>E(	788	),
		Cin=> Carry( 	844	),
		Cout=> Carry( 	845	),
		S=> E(	818	));
				
	U846	: Soma_AMA3_1 PORT MAP(
		A=> C(	878	),
		B=>E(	789	),
		Cin=> Carry( 	845	),
		Cout=> Carry( 	846	),
		S=> E(	819	));
				
	U847	: Soma_AMA3_1 PORT MAP(
		A=> C(	879	),
		B=>E(	790	),
		Cin=> Carry( 	846	),
		Cout=> Carry( 	847	),
		S=> E(	820	));
				
	U848	: Soma_AMA3_1 PORT MAP(
		A=> C(	880	),
		B=>E(	791	),
		Cin=> Carry( 	847	),
		Cout=> Carry( 	848	),
		S=> E(	821	));
				
	U849	: Soma_AMA3_1 PORT MAP(
		A=> C(	881	),
		B=>E(	792	),
		Cin=> Carry( 	848	),
		Cout=> Carry( 	849	),
		S=> E(	822	));
				
	U850	: Soma_AMA3_1 PORT MAP(
		A=> C(	882	),
		B=>E(	793	),
		Cin=> Carry( 	849	),
		Cout=> Carry( 	850	),
		S=> E(	823	));
				
	U851	: Soma_AMA3_1 PORT MAP(
		A=> C(	883	),
		B=>E(	794	),
		Cin=> Carry( 	850	),
		Cout=> Carry( 	851	),
		S=> E(	824	));
				
	U852	: Soma_AMA3_1 PORT MAP(
		A=> C(	884	),
		B=>E(	795	),
		Cin=> Carry( 	851	),
		Cout=> Carry( 	852	),
		S=> E(	825	));
				
	U853	: Soma_AMA3_1 PORT MAP(
		A=> C(	885	),
		B=>E(	796	),
		Cin=> Carry( 	852	),
		Cout=> Carry( 	853	),
		S=> E(	826	));
				
	U854	: Soma_AMA3_1 PORT MAP(
		A=> C(	886	),
		B=>E(	797	),
		Cin=> Carry( 	853	),
		Cout=> Carry( 	854	),
		S=> E(	827	));
				
	U855	: Soma_AMA3_1 PORT MAP(
		A=> C(	887	),
		B=>E(	798	),
		Cin=> Carry( 	854	),
		Cout=> Carry( 	855	),
		S=> E(	828	));
				
	U856	: Soma_AMA3_1 PORT MAP(
		A=> C(	888	),
		B=>E(	799	),
		Cin=> Carry( 	855	),
		Cout=> Carry( 	856	),
		S=> E(	829	));
				
	U857	: Soma_AMA3_1 PORT MAP(
		A=> C(	889	),
		B=>E(	800	),
		Cin=> Carry( 	856	),
		Cout=> Carry( 	857	),
		S=> E(	830	));
				
	U858	: Soma_AMA3_1 PORT MAP(
		A=> C(	890	),
		B=>E(	801	),
		Cin=> Carry( 	857	),
		Cout=> Carry( 	858	),
		S=> E(	831	));
				
	U859	: Soma_AMA3_1 PORT MAP(
		A=> C(	891	),
		B=>E(	802	),
		Cin=> Carry( 	858	),
		Cout=> Carry( 	859	),
		S=> E(	832	));
				
	U860	: Soma_AMA3_1 PORT MAP(
		A=> C(	892	),
		B=>E(	803	),
		Cin=> Carry( 	859	),
		Cout=> Carry( 	860	),
		S=> E(	833	));
				
	U861	: Soma_AMA3_1 PORT MAP(
		A=> C(	893	),
		B=>E(	804	),
		Cin=> Carry( 	860	),
		Cout=> Carry( 	861	),
		S=> E(	834	));
				
	U862	: Soma_AMA3_1 PORT MAP(
		A=> C(	894	),
		B=>E(	805	),
		Cin=> Carry( 	861	),
		Cout=> Carry( 	862	),
		S=> E(	835	));
				
	U863	: Soma_AMA3_1 PORT MAP(
		A=> C(	895	),
		B=>Carry(	831	),
		Cin=> Carry( 	862	),
		Cout=> Carry( 	863	),
		S=> E(	836	));
		------		
				
	U864	: Soma_AMA3_1 PORT MAP(
		A=> C(	896	),
		B=>E(	806	),
		Cin =>  '0'	,
		Cout=> Carry( 	864	),
		S=> R(	28	));
				
	U865	: Soma_AMA3_1 PORT MAP(
		A=> C(	897	),
		B=>E(	807	),
		Cin=> Carry( 	864	),
		Cout=> Carry( 	865	),
		S=> E(	837	));
				
	U866	: Soma_AMA3_1 PORT MAP(
		A=> C(	898	),
		B=>E(	808	),
		Cin=> Carry( 	865	),
		Cout=> Carry( 	866	),
		S=> E(	838	));
				
	U867	: Soma_AMA3_1 PORT MAP(
		A=> C(	899	),
		B=>E(	809	),
		Cin=> Carry( 	866	),
		Cout=> Carry( 	867	),
		S=> E(	839	));
				
	U868	: Soma_AMA3_1 PORT MAP(
		A=> C(	900	),
		B=>E(	810	),
		Cin=> Carry( 	867	),
		Cout=> Carry( 	868	),
		S=> E(	840	));
				
	U869	: Soma_AMA3_1 PORT MAP(
		A=> C(	901	),
		B=>E(	811	),
		Cin=> Carry( 	868	),
		Cout=> Carry( 	869	),
		S=> E(	841	));
				
	U870	: Soma_AMA3_1 PORT MAP(
		A=> C(	902	),
		B=>E(	812	),
		Cin=> Carry( 	869	),
		Cout=> Carry( 	870	),
		S=> E(	842	));
				
	U871	: Soma_AMA3_1 PORT MAP(
		A=> C(	903	),
		B=>E(	813	),
		Cin=> Carry( 	870	),
		Cout=> Carry( 	871	),
		S=> E(	843	));
				
	U872	: Soma_AMA3_1 PORT MAP(
		A=> C(	904	),
		B=>E(	814	),
		Cin=> Carry( 	871	),
		Cout=> Carry( 	872	),
		S=> E(	844	));
				
	U873	: Soma_AMA3_1 PORT MAP(
		A=> C(	905	),
		B=>E(	815	),
		Cin=> Carry( 	872	),
		Cout=> Carry( 	873	),
		S=> E(	845	));
				
	U874	: Soma_AMA3_1 PORT MAP(
		A=> C(	906	),
		B=>E(	816	),
		Cin=> Carry( 	873	),
		Cout=> Carry( 	874	),
		S=> E(	846	));
				
	U875	: Soma_AMA3_1 PORT MAP(
		A=> C(	907	),
		B=>E(	817	),
		Cin=> Carry( 	874	),
		Cout=> Carry( 	875	),
		S=> E(	847	));
				
	U876	: Soma_AMA3_1 PORT MAP(
		A=> C(	908	),
		B=>E(	818	),
		Cin=> Carry( 	875	),
		Cout=> Carry( 	876	),
		S=> E(	848	));
				
	U877	: Soma_AMA3_1 PORT MAP(
		A=> C(	909	),
		B=>E(	819	),
		Cin=> Carry( 	876	),
		Cout=> Carry( 	877	),
		S=> E(	849	));
				
	U878	: Soma_AMA3_1 PORT MAP(
		A=> C(	910	),
		B=>E(	820	),
		Cin=> Carry( 	877	),
		Cout=> Carry( 	878	),
		S=> E(	850	));
				
	U879	: Soma_AMA3_1 PORT MAP(
		A=> C(	911	),
		B=>E(	821	),
		Cin=> Carry( 	878	),
		Cout=> Carry( 	879	),
		S=> E(	851	));
				
	U880	: Soma_AMA3_1 PORT MAP(
		A=> C(	912	),
		B=>E(	822	),
		Cin=> Carry( 	879	),
		Cout=> Carry( 	880	),
		S=> E(	852	));
				
	U881	: Soma_AMA3_1 PORT MAP(
		A=> C(	913	),
		B=>E(	823	),
		Cin=> Carry( 	880	),
		Cout=> Carry( 	881	),
		S=> E(	853	));
				
	U882	: Soma_AMA3_1 PORT MAP(
		A=> C(	914	),
		B=>E(	824	),
		Cin=> Carry( 	881	),
		Cout=> Carry( 	882	),
		S=> E(	854	));
				
	U883	: Soma_AMA3_1 PORT MAP(
		A=> C(	915	),
		B=>E(	825	),
		Cin=> Carry( 	882	),
		Cout=> Carry( 	883	),
		S=> E(	855	));
				
	U884	: Soma_AMA3_1 PORT MAP(
		A=> C(	916	),
		B=>E(	826	),
		Cin=> Carry( 	883	),
		Cout=> Carry( 	884	),
		S=> E(	856	));
				
	U885	: Soma_AMA3_1 PORT MAP(
		A=> C(	917	),
		B=>E(	827	),
		Cin=> Carry( 	884	),
		Cout=> Carry( 	885	),
		S=> E(	857	));
				
	U886	: Soma_AMA3_1 PORT MAP(
		A=> C(	918	),
		B=>E(	828	),
		Cin=> Carry( 	885	),
		Cout=> Carry( 	886	),
		S=> E(	858	));
				
	U887	: Soma_AMA3_1 PORT MAP(
		A=> C(	919	),
		B=>E(	829	),
		Cin=> Carry( 	886	),
		Cout=> Carry( 	887	),
		S=> E(	859	));
				
	U888	: Soma_AMA3_1 PORT MAP(
		A=> C(	920	),
		B=>E(	830	),
		Cin=> Carry( 	887	),
		Cout=> Carry( 	888	),
		S=> E(	860	));
				
	U889	: Soma_AMA3_1 PORT MAP(
		A=> C(	921	),
		B=>E(	831	),
		Cin=> Carry( 	888	),
		Cout=> Carry( 	889	),
		S=> E(	861	));
				
	U890	: Soma_AMA3_1 PORT MAP(
		A=> C(	922	),
		B=>E(	832	),
		Cin=> Carry( 	889	),
		Cout=> Carry( 	890	),
		S=> E(	862	));
				
	U891	: Soma_AMA3_1 PORT MAP(
		A=> C(	923	),
		B=>E(	833	),
		Cin=> Carry( 	890	),
		Cout=> Carry( 	891	),
		S=> E(	863	));
				
	U892	: Soma_AMA3_1 PORT MAP(
		A=> C(	924	),
		B=>E(	834	),
		Cin=> Carry( 	891	),
		Cout=> Carry( 	892	),
		S=> E(	864	));
				
	U893	: Soma_AMA3_1 PORT MAP(
		A=> C(	925	),
		B=>E(	835	),
		Cin=> Carry( 	892	),
		Cout=> Carry( 	893	),
		S=> E(	865	));
				
	U894	: Soma_AMA3_1 PORT MAP(
		A=> C(	926	),
		B=>E(	836	),
		Cin=> Carry( 	893	),
		Cout=> Carry( 	894	),
		S=> E(	866	));
				
	U895	: Soma_AMA3_1 PORT MAP(
		A=> C(	927	),
		B=>Carry(	863	),
		Cin=> Carry( 	894	),
		Cout=> Carry( 	895	),
		S=> E(	867	));
		------		
				
	U896	: Soma_AMA3_1 PORT MAP(
		A=> C(	928	),
		B=>E(	837	),
		Cin =>  '0'	,
		Cout=> Carry( 	896	),
		S=> R(	29	));
				
	U897	: Soma_AMA3_1 PORT MAP(
		A=> C(	929	),
		B=>E(	838	),
		Cin=> Carry( 	896	),
		Cout=> Carry( 	897	),
		S=> E(	868	));
				
	U898	: Soma_AMA3_1 PORT MAP(
		A=> C(	930	),
		B=>E(	839	),
		Cin=> Carry( 	897	),
		Cout=> Carry( 	898	),
		S=> E(	869	));
				
	U899	: Soma_AMA3_1 PORT MAP(
		A=> C(	931	),
		B=>E(	840	),
		Cin=> Carry( 	898	),
		Cout=> Carry( 	899	),
		S=> E(	870	));
				
	U900	: Soma_AMA3_1 PORT MAP(
		A=> C(	932	),
		B=>E(	841	),
		Cin=> Carry( 	899	),
		Cout=> Carry( 	900	),
		S=> E(	871	));
				
	U901	: Soma_AMA3_1 PORT MAP(
		A=> C(	933	),
		B=>E(	842	),
		Cin=> Carry( 	900	),
		Cout=> Carry( 	901	),
		S=> E(	872	));
				
	U902	: Soma_AMA3_1 PORT MAP(
		A=> C(	934	),
		B=>E(	843	),
		Cin=> Carry( 	901	),
		Cout=> Carry( 	902	),
		S=> E(	873	));
				
	U903	: Soma_AMA3_1 PORT MAP(
		A=> C(	935	),
		B=>E(	844	),
		Cin=> Carry( 	902	),
		Cout=> Carry( 	903	),
		S=> E(	874	));
				
	U904	: Soma_AMA3_1 PORT MAP(
		A=> C(	936	),
		B=>E(	845	),
		Cin=> Carry( 	903	),
		Cout=> Carry( 	904	),
		S=> E(	875	));
				
	U905	: Soma_AMA3_1 PORT MAP(
		A=> C(	937	),
		B=>E(	846	),
		Cin=> Carry( 	904	),
		Cout=> Carry( 	905	),
		S=> E(	876	));
				
	U906	: Soma_AMA3_1 PORT MAP(
		A=> C(	938	),
		B=>E(	847	),
		Cin=> Carry( 	905	),
		Cout=> Carry( 	906	),
		S=> E(	877	));
				
	U907	: Soma_AMA3_1 PORT MAP(
		A=> C(	939	),
		B=>E(	848	),
		Cin=> Carry( 	906	),
		Cout=> Carry( 	907	),
		S=> E(	878	));
				
	U908	: Soma_AMA3_1 PORT MAP(
		A=> C(	940	),
		B=>E(	849	),
		Cin=> Carry( 	907	),
		Cout=> Carry( 	908	),
		S=> E(	879	));
				
	U909	: Soma_AMA3_1 PORT MAP(
		A=> C(	941	),
		B=>E(	850	),
		Cin=> Carry( 	908	),
		Cout=> Carry( 	909	),
		S=> E(	880	));
				
	U910	: Soma_AMA3_1 PORT MAP(
		A=> C(	942	),
		B=>E(	851	),
		Cin=> Carry( 	909	),
		Cout=> Carry( 	910	),
		S=> E(	881	));
				
	U911	: Soma_AMA3_1 PORT MAP(
		A=> C(	943	),
		B=>E(	852	),
		Cin=> Carry( 	910	),
		Cout=> Carry( 	911	),
		S=> E(	882	));
				
	U912	: Soma_AMA3_1 PORT MAP(
		A=> C(	944	),
		B=>E(	853	),
		Cin=> Carry( 	911	),
		Cout=> Carry( 	912	),
		S=> E(	883	));
				
	U913	: Soma_AMA3_1 PORT MAP(
		A=> C(	945	),
		B=>E(	854	),
		Cin=> Carry( 	912	),
		Cout=> Carry( 	913	),
		S=> E(	884	));
				
	U914	: Soma_AMA3_1 PORT MAP(
		A=> C(	946	),
		B=>E(	855	),
		Cin=> Carry( 	913	),
		Cout=> Carry( 	914	),
		S=> E(	885	));
				
	U915	: Soma_AMA3_1 PORT MAP(
		A=> C(	947	),
		B=>E(	856	),
		Cin=> Carry( 	914	),
		Cout=> Carry( 	915	),
		S=> E(	886	));
				
	U916	: Soma_AMA3_1 PORT MAP(
		A=> C(	948	),
		B=>E(	857	),
		Cin=> Carry( 	915	),
		Cout=> Carry( 	916	),
		S=> E(	887	));
				
	U917	: Soma_AMA3_1 PORT MAP(
		A=> C(	949	),
		B=>E(	858	),
		Cin=> Carry( 	916	),
		Cout=> Carry( 	917	),
		S=> E(	888	));
				
	U918	: Soma_AMA3_1 PORT MAP(
		A=> C(	950	),
		B=>E(	859	),
		Cin=> Carry( 	917	),
		Cout=> Carry( 	918	),
		S=> E(	889	));
				
	U919	: Soma_AMA3_1 PORT MAP(
		A=> C(	951	),
		B=>E(	860	),
		Cin=> Carry( 	918	),
		Cout=> Carry( 	919	),
		S=> E(	890	));
				
	U920	: Soma_AMA3_1 PORT MAP(
		A=> C(	952	),
		B=>E(	861	),
		Cin=> Carry( 	919	),
		Cout=> Carry( 	920	),
		S=> E(	891	));
				
	U921	: Soma_AMA3_1 PORT MAP(
		A=> C(	953	),
		B=>E(	862	),
		Cin=> Carry( 	920	),
		Cout=> Carry( 	921	),
		S=> E(	892	));
				
	U922	: Soma_AMA3_1 PORT MAP(
		A=> C(	954	),
		B=>E(	863	),
		Cin=> Carry( 	921	),
		Cout=> Carry( 	922	),
		S=> E(	893	));
				
	U923	: Soma_AMA3_1 PORT MAP(
		A=> C(	955	),
		B=>E(	864	),
		Cin=> Carry( 	922	),
		Cout=> Carry( 	923	),
		S=> E(	894	));
				
	U924	: Soma_AMA3_1 PORT MAP(
		A=> C(	956	),
		B=>E(	865	),
		Cin=> Carry( 	923	),
		Cout=> Carry( 	924	),
		S=> E(	895	));
				
	U925	: Soma_AMA3_1 PORT MAP(
		A=> C(	957	),
		B=>E(	866	),
		Cin=> Carry( 	924	),
		Cout=> Carry( 	925	),
		S=> E(	896	));
				
	U926	: Soma_AMA3_1 PORT MAP(
		A=> C(	958	),
		B=>E(	867	),
		Cin=> Carry( 	925	),
		Cout=> Carry( 	926	),
		S=> E(	897	));
				
	U927	: Soma_AMA3_1 PORT MAP(
		A=> C(	959	),
		B=>Carry(	895	),
		Cin=> Carry( 	926	),
		Cout=> Carry( 	927	),
		S=> E(	898	));
		------		
				
	U928	: Soma_AMA3_1 PORT MAP(
		A=> C(	960	),
		B=>E(	868	),
		Cin =>  '0'	,
		Cout=> Carry( 	928	),
		S=> R(	30	));
				
	U929	: Soma_AMA3_1 PORT MAP(
		A=> C(	961	),
		B=>E(	869	),
		Cin=> Carry( 	928	),
		Cout=> Carry( 	929	),
		S=> E(	899	));
				
	U930	: Soma_AMA3_1 PORT MAP(
		A=> C(	962	),
		B=>E(	870	),
		Cin=> Carry( 	929	),
		Cout=> Carry( 	930	),
		S=> E(	900	));
				
	U931	: Soma_AMA3_1 PORT MAP(
		A=> C(	963	),
		B=>E(	871	),
		Cin=> Carry( 	930	),
		Cout=> Carry( 	931	),
		S=> E(	901	));
				
	U932	: Soma_AMA3_1 PORT MAP(
		A=> C(	964	),
		B=>E(	872	),
		Cin=> Carry( 	931	),
		Cout=> Carry( 	932	),
		S=> E(	902	));
				
	U933	: Soma_AMA3_1 PORT MAP(
		A=> C(	965	),
		B=>E(	873	),
		Cin=> Carry( 	932	),
		Cout=> Carry( 	933	),
		S=> E(	903	));
				
	U934	: Soma_AMA3_1 PORT MAP(
		A=> C(	966	),
		B=>E(	874	),
		Cin=> Carry( 	933	),
		Cout=> Carry( 	934	),
		S=> E(	904	));
				
	U935	: Soma_AMA3_1 PORT MAP(
		A=> C(	967	),
		B=>E(	875	),
		Cin=> Carry( 	934	),
		Cout=> Carry( 	935	),
		S=> E(	905	));
				
	U936	: Soma_AMA3_1 PORT MAP(
		A=> C(	968	),
		B=>E(	876	),
		Cin=> Carry( 	935	),
		Cout=> Carry( 	936	),
		S=> E(	906	));
				
	U937	: Soma_AMA3_1 PORT MAP(
		A=> C(	969	),
		B=>E(	877	),
		Cin=> Carry( 	936	),
		Cout=> Carry( 	937	),
		S=> E(	907	));
				
	U938	: Soma_AMA3_1 PORT MAP(
		A=> C(	970	),
		B=>E(	878	),
		Cin=> Carry( 	937	),
		Cout=> Carry( 	938	),
		S=> E(	908	));
				
	U939	: Soma_AMA3_1 PORT MAP(
		A=> C(	971	),
		B=>E(	879	),
		Cin=> Carry( 	938	),
		Cout=> Carry( 	939	),
		S=> E(	909	));
				
	U940	: Soma_AMA3_1 PORT MAP(
		A=> C(	972	),
		B=>E(	880	),
		Cin=> Carry( 	939	),
		Cout=> Carry( 	940	),
		S=> E(	910	));
				
	U941	: Soma_AMA3_1 PORT MAP(
		A=> C(	973	),
		B=>E(	881	),
		Cin=> Carry( 	940	),
		Cout=> Carry( 	941	),
		S=> E(	911	));
				
	U942	: Soma_AMA3_1 PORT MAP(
		A=> C(	974	),
		B=>E(	882	),
		Cin=> Carry( 	941	),
		Cout=> Carry( 	942	),
		S=> E(	912	));
				
	U943	: Soma_AMA3_1 PORT MAP(
		A=> C(	975	),
		B=>E(	883	),
		Cin=> Carry( 	942	),
		Cout=> Carry( 	943	),
		S=> E(	913	));
				
	U944	: Soma_AMA3_1 PORT MAP(
		A=> C(	976	),
		B=>E(	884	),
		Cin=> Carry( 	943	),
		Cout=> Carry( 	944	),
		S=> E(	914	));
				
	U945	: Soma_AMA3_1 PORT MAP(
		A=> C(	977	),
		B=>E(	885	),
		Cin=> Carry( 	944	),
		Cout=> Carry( 	945	),
		S=> E(	915	));
				
	U946	: Soma_AMA3_1 PORT MAP(
		A=> C(	978	),
		B=>E(	886	),
		Cin=> Carry( 	945	),
		Cout=> Carry( 	946	),
		S=> E(	916	));
				
	U947	: Soma_AMA3_1 PORT MAP(
		A=> C(	979	),
		B=>E(	887	),
		Cin=> Carry( 	946	),
		Cout=> Carry( 	947	),
		S=> E(	917	));
				
	U948	: Soma_AMA3_1 PORT MAP(
		A=> C(	980	),
		B=>E(	888	),
		Cin=> Carry( 	947	),
		Cout=> Carry( 	948	),
		S=> E(	918	));
				
	U949	: Soma_AMA3_1 PORT MAP(
		A=> C(	981	),
		B=>E(	889	),
		Cin=> Carry( 	948	),
		Cout=> Carry( 	949	),
		S=> E(	919	));
				
	U950	: Soma_AMA3_1 PORT MAP(
		A=> C(	982	),
		B=>E(	890	),
		Cin=> Carry( 	949	),
		Cout=> Carry( 	950	),
		S=> E(	920	));
				
	U951	: Soma_AMA3_1 PORT MAP(
		A=> C(	983	),
		B=>E(	891	),
		Cin=> Carry( 	950	),
		Cout=> Carry( 	951	),
		S=> E(	921	));
				
	U952	: Soma_AMA3_1 PORT MAP(
		A=> C(	984	),
		B=>E(	892	),
		Cin=> Carry( 	951	),
		Cout=> Carry( 	952	),
		S=> E(	922	));
				
	U953	: Soma_AMA3_1 PORT MAP(
		A=> C(	985	),
		B=>E(	893	),
		Cin=> Carry( 	952	),
		Cout=> Carry( 	953	),
		S=> E(	923	));
				
	U954	: Soma_AMA3_1 PORT MAP(
		A=> C(	986	),
		B=>E(	894	),
		Cin=> Carry( 	953	),
		Cout=> Carry( 	954	),
		S=> E(	924	));
				
	U955	: Soma_AMA3_1 PORT MAP(
		A=> C(	987	),
		B=>E(	895	),
		Cin=> Carry( 	954	),
		Cout=> Carry( 	955	),
		S=> E(	925	));
				
	U956	: Soma_AMA3_1 PORT MAP(
		A=> C(	988	),
		B=>E(	896	),
		Cin=> Carry( 	955	),
		Cout=> Carry( 	956	),
		S=> E(	926	));
				
	U957	: Soma_AMA3_1 PORT MAP(
		A=> C(	989	),
		B=>E(	897	),
		Cin=> Carry( 	956	),
		Cout=> Carry( 	957	),
		S=> E(	927	));
				
	U958	: Soma_AMA3_1 PORT MAP(
		A=> C(	990	),
		B=>E(	898	),
		Cin=> Carry( 	957	),
		Cout=> Carry( 	958	),
		S=> E(	928	));
				
	U959	: Soma_AMA3_1 PORT MAP(
		A=> C(	991	),
		B=>Carry(	927	),
		Cin=> Carry( 	958	),
		Cout=> Carry( 	959	),
		S=> E(	929	));
		------		
				
					
	U960	: Soma_AMA3_1 PORT MAP(
		A=> C(	992	),
		B=>E(	899	),
		Cin =>  '0'	,
		Cout=> Carry( 	960	),
		S=> R(	31	));
				
	U961	: Soma_AMA3_1 PORT MAP(
		A=> C(	993	),
		B=>E(	900	),
		Cin=> Carry( 	960	),
		Cout=> Carry( 	961	),
		S=> R(	32	));
				
	U962	: Soma_AMA3_1 PORT MAP(
		A=> C(	994	),
		B=>E(	901	),
		Cin=> Carry( 	961	),
		Cout=> Carry( 	962	),
		S=> R(	33	));
				
	U963	: Soma_AMA3_1 PORT MAP(
		A=> C(	995	),
		B=>E(	902	),
		Cin=> Carry( 	962	),
		Cout=> Carry( 	963	),
		S=> R(	34	));
				
	U964	: Soma_AMA3_1 PORT MAP(
		A=> C(	996	),
		B=>E(	903	),
		Cin=> Carry( 	963	),
		Cout=> Carry( 	964	),
		S=> R(	35	));
				
	U965	: Soma_AMA3_1 PORT MAP(
		A=> C(	997	),
		B=>E(	904	),
		Cin=> Carry( 	964	),
		Cout=> Carry( 	965	),
		S=> R(	36	));
				
	U966	: Soma_AMA3_1 PORT MAP(
		A=> C(	998	),
		B=>E(	905	),
		Cin=> Carry( 	965	),
		Cout=> Carry( 	966	),
		S=> R(	37	));
				
	U967	: Soma_AMA3_1 PORT MAP(
		A=> C(	999	),
		B=>E(	906	),
		Cin=> Carry( 	966	),
		Cout=> Carry( 	967	),
		S=> R(	38	));
				
	U968	: Soma_AMA3_1 PORT MAP(
		A=> C(	1000	),
		B=>E(	907	),
		Cin=> Carry( 	967	),
		Cout=> Carry( 	968	),
		S=> R(	39	));
				
	U969	: Soma_AMA3_1 PORT MAP(
		A=> C(	1001	),
		B=>E(	908	),
		Cin=> Carry( 	968	),
		Cout=> Carry( 	969	),
		S=> R(	40	));
				
	U970	: Soma_AMA3_1 PORT MAP(
		A=> C(	1002	),
		B=>E(	909	),
		Cin=> Carry( 	969	),
		Cout=> Carry( 	970	),
		S=> R(	41	));
				
	U971	: Soma_AMA3_1 PORT MAP(
		A=> C(	1003	),
		B=>E(	910	),
		Cin=> Carry( 	970	),
		Cout=> Carry( 	971	),
		S=> R(	42	));
				
	U972	: Soma_AMA3_1 PORT MAP(
		A=> C(	1004	),
		B=>E(	911	),
		Cin=> Carry( 	971	),
		Cout=> Carry( 	972	),
		S=> R(	43	));
				
	U973	: Soma_AMA3_1 PORT MAP(
		A=> C(	1005	),
		B=>E(	912	),
		Cin=> Carry( 	972	),
		Cout=> Carry( 	973	),
		S=> R(	44	));
				
	U974	: Soma_AMA3_1 PORT MAP(
		A=> C(	1006	),
		B=>E(	913	),
		Cin=> Carry( 	973	),
		Cout=> Carry( 	974	),
		S=> R(	45	));
				
	U975	: Soma_AMA3_1 PORT MAP(
		A=> C(	1007	),
		B=>E(	914	),
		Cin=> Carry( 	974	),
		Cout=> Carry( 	975	),
		S=> R(	46	));
				
	U976	: Soma_AMA3_1 PORT MAP(
		A=> C(	1008	),
		B=>E(	915	),
		Cin=> Carry( 	975	),
		Cout=> Carry( 	976	),
		S=> R(	47	));
				
	U977	: Soma_AMA3_1 PORT MAP(
		A=> C(	1009	),
		B=>E(	916	),
		Cin=> Carry( 	976	),
		Cout=> Carry( 	977	),
		S=> R(	48	));
				
	U978	: Soma_AMA3_1 PORT MAP(
		A=> C(	1010	),
		B=>E(	917	),
		Cin=> Carry( 	977	),
		Cout=> Carry( 	978	),
		S=> R(	49	));
				
	U979	: Soma_AMA3_1 PORT MAP(
		A=> C(	1011	),
		B=>E(	918	),
		Cin=> Carry( 	978	),
		Cout=> Carry( 	979	),
		S=> R(	50	));
				
	U980	: Soma_AMA3_1 PORT MAP(
		A=> C(	1012	),
		B=>E(	919	),
		Cin=> Carry( 	979	),
		Cout=> Carry( 	980	),
		S=> R(	51	));
				
	U981	: Soma_AMA3_1 PORT MAP(
		A=> C(	1013	),
		B=>E(	920	),
		Cin=> Carry( 	980	),
		Cout=> Carry( 	981	),
		S=> R(	52	));
				
	U982	: Soma_AMA3_1 PORT MAP(
		A=> C(	1014	),
		B=>E(	921	),
		Cin=> Carry( 	981	),
		Cout=> Carry( 	982	),
		S=> R(	53	));
				
	U983	: Soma_AMA3_1 PORT MAP(
		A=> C(	1015	),
		B=>E(	922	),
		Cin=> Carry( 	982	),
		Cout=> Carry( 	983	),
		S=> R(	54	));
				
	U984	: Soma_AMA3_1 PORT MAP(
		A=> C(	1016	),
		B=>E(	923	),
		Cin=> Carry( 	983	),
		Cout=> Carry( 	984	),
		S=> R(	55	));
				
	U985	: Soma_AMA3_1 PORT MAP(
		A=> C(	1017	),
		B=>E(	924	),
		Cin=> Carry( 	984	),
		Cout=> Carry( 	985	),
		S=> R(	56	));
				
	U986	: Soma_AMA3_1 PORT MAP(
		A=> C(	1018	),
		B=>E(	925	),
		Cin=> Carry( 	985	),
		Cout=> Carry( 	986	),
		S=> R(	57	));
				
	U987	: Soma_AMA3_1 PORT MAP(
		A=> C(	1019	),
		B=>E(	926	),
		Cin=> Carry( 	986	),
		Cout=> Carry( 	987	),
		S=> R(	58	));
				
	U988	: Soma_AMA3_1 PORT MAP(
		A=> C(	1020	),
		B=>E(	927	),
		Cin=> Carry( 	987	),
		Cout=> Carry( 	988	),
		S=> R(	59	));
				
	U989	: Soma_AMA3_1 PORT MAP(
		A=> C(	1021	),
		B=>E(	928	),
		Cin=> Carry( 	988	),
		Cout=> Carry( 	989	),
		S=> R(	60	));
				
	U990	: Soma_AMA3_1 PORT MAP(
		A=> C(	1022	),
		B=>E(	929	),
		Cin=> Carry( 	989	),
		Cout=> Carry( 	990	),
		S=> R(	61	));
				
	U991	: Soma_AMA3_1 PORT MAP(
		A=> C(	1023	),
		B=>Carry(	959	),
		Cin=> Carry( 	990	),
		Cout=> R( 	63	),
		S=> R(	62	));
		------		


   
end Mult32;
