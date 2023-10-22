CREATE DATABASE tcc WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';

ALTER DATABASE tcc OWNER TO postgres;

\connect tcc

--
-- TOC entry 848 (class 1247 OID 24579)
-- Name: ativo_inativo; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public.ativo_inativo AS smallint NOT NULL DEFAULT 0
	CONSTRAINT chk_ativo_inativo CHECK ((VALUE = ANY (ARRAY[0, 1])));


ALTER DOMAIN public.ativo_inativo OWNER TO postgres;

--
-- TOC entry 3394 (class 0 OID 0)
-- Dependencies: 848
-- Name: DOMAIN ativo_inativo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON DOMAIN public.ativo_inativo IS '0 - Inativo; 1 - Ativo';


--
-- TOC entry 865 (class 1247 OID 49174)
-- Name: natureza_movimentacao; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public.natureza_movimentacao AS character(1) NOT NULL DEFAULT 'C'::bpchar;


ALTER DOMAIN public.natureza_movimentacao OWNER TO postgres;

--
-- TOC entry 871 (class 1247 OID 49188)
-- Name: status_campanha; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public.status_campanha AS smallint NOT NULL DEFAULT 0
	CONSTRAINT chk_status_campanha CHECK ((VALUE = ANY (ARRAY[0, 1])));


ALTER DOMAIN public.status_campanha OWNER TO postgres;

--
-- TOC entry 3395 (class 0 OID 0)
-- Dependencies: 871
-- Name: DOMAIN status_campanha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON DOMAIN public.status_campanha IS '0 - Ativa; 1 - concluída';


--
-- TOC entry 861 (class 1247 OID 49171)
-- Name: tipo_movimentacao; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public.tipo_movimentacao AS smallint NOT NULL DEFAULT 0
	CONSTRAINT chk_tipo_movimentacao CHECK ((VALUE = ANY (ARRAY[0, 1, 2, 3])));


ALTER DOMAIN public.tipo_movimentacao OWNER TO postgres;

--
-- TOC entry 3396 (class 0 OID 0)
-- Dependencies: 861
-- Name: DOMAIN tipo_movimentacao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON DOMAIN public.tipo_movimentacao IS '0 - Padrão; 1 - Campanha; 2 - Dízimos; 3 - Ofertas';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 219 (class 1259 OID 32829)
-- Name: campanhas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.campanhas (
    id bigint NOT NULL,
    descricao character varying(100) NOT NULL,
    dtinicio date,
    dtfinal date,
    vlralvo numeric(20,4) DEFAULT 0 NOT NULL,
    observacao character varying(299),
    creation_date timestamp without time zone DEFAULT now(),
    deleted_date timestamp without time zone,
    last_update timestamp without time zone,
    status public.status_campanha,
    CONSTRAINT campanhas_vlralvo_check CHECK ((vlralvo >= 0.0))
);


ALTER TABLE public.campanhas OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 32828)
-- Name: campanhas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.campanhas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.campanhas_id_seq OWNER TO postgres;

--
-- TOC entry 3397 (class 0 OID 0)
-- Dependencies: 218
-- Name: campanhas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.campanhas_id_seq OWNED BY public.campanhas.id;


--
-- TOC entry 223 (class 1259 OID 57353)
-- Name: igrejas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.igrejas (
    id bigint NOT NULL,
    nome character varying(200) NOT NULL,
    cnpj character varying(18),
    status public.ativo_inativo,
    cep character varying(10),
    numero character varying(10),
    logradouro character varying(150),
    creation_date timestamp without time zone DEFAULT now(),
    deleted_date timestamp without time zone,
    last_update timestamp without time zone
);


ALTER TABLE public.igrejas OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 57352)
-- Name: igrejas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.igrejas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.igrejas_id_seq OWNER TO postgres;

--
-- TOC entry 3398 (class 0 OID 0)
-- Dependencies: 222
-- Name: igrejas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.igrejas_id_seq OWNED BY public.igrejas.id;


--
-- TOC entry 217 (class 1259 OID 32779)
-- Name: membros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.membros (
    id bigint NOT NULL,
    nome character varying(100) NOT NULL,
    email character varying(70),
    telefone character varying(12),
    dtingresso date,
    cargo character varying(50),
    creation_date timestamp without time zone DEFAULT now(),
    deleted_date timestamp without time zone,
    last_update timestamp without time zone,
    status public.ativo_inativo
);


ALTER TABLE public.membros OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 32778)
-- Name: membros_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.membros_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.membros_id_seq OWNER TO postgres;

--
-- TOC entry 3399 (class 0 OID 0)
-- Dependencies: 216
-- Name: membros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.membros_id_seq OWNED BY public.membros.id;


--
-- TOC entry 221 (class 1259 OID 49176)
-- Name: movimentacoes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movimentacoes (
    id bigint NOT NULL,
    descricao character varying(100) NOT NULL,
    dtfato date,
    competencia character varying(10),
    natureza "char",
    tipo public.tipo_movimentacao,
    valor numeric(20,4) DEFAULT 0,
    creation_date timestamp without time zone DEFAULT now(),
    deleted_date timestamp without time zone,
    last_update timestamp without time zone,
    observacao character varying(300),
    idmembro bigint,
    idcampanha bigint,
    CONSTRAINT movimentacoes_natureza_check CHECK ((natureza = ANY (ARRAY['C'::"char", 'D'::"char"]))),
    CONSTRAINT movimentacoes_valor_check CHECK ((valor >= 0.0))
);


ALTER TABLE public.movimentacoes OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 49175)
-- Name: movimentacoes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.movimentacoes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movimentacoes_id_seq OWNER TO postgres;

--
-- TOC entry 3400 (class 0 OID 0)
-- Dependencies: 220
-- Name: movimentacoes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.movimentacoes_id_seq OWNED BY public.movimentacoes.id;


--
-- TOC entry 215 (class 1259 OID 24607)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id bigint NOT NULL,
    name character varying(70) NOT NULL,
    email character varying(70) NOT NULL,
    username character varying(70) NOT NULL,
    password character varying(70) NOT NULL,
    idacesso bigint,
    status public.ativo_inativo,
    creation_date timestamp without time zone DEFAULT now(),
    last_update timestamp without time zone,
    deleted_date timestamp without time zone
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 24606)
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_id_seq OWNER TO postgres;

--
-- TOC entry 3401 (class 0 OID 0)
-- Dependencies: 214
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- TOC entry 224 (class 1259 OID 73729)
-- Name: vw_lista_meses; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.vw_lista_meses AS
 WITH cte_lista_meses AS (
         SELECT months.idmonth,
            (months.description)::character varying AS description
           FROM ( 
              VALUES 
              (1,'Janeiro'::text), 
              (2,'Fevereiro'::text), 
              (3,'Março'::text), 
              (4,'Abril'::text),
              (5,'Maio'::text),
              (6,'Junho'::text),
              (7,'Julho'::text),
              (8,'Agosto'::text),
              (9,'Setembro'::text),
              (10,'Outubro'::text),
              (11,'Novembro'::text),
              (12,'Dezembro'::text)
          ) months(idmonth, description)
        )
 SELECT cte_lista_meses.idmonth,
    cte_lista_meses.description
   FROM cte_lista_meses;


ALTER TABLE public.vw_lista_meses OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 73739)
-- Name: vw_report_transaction; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.vw_report_transaction AS
 WITH cte_desc AS (
         SELECT descmovimentacoes.id,
            descmovimentacoes.description
           FROM ( 
            VALUES (0,'Padrão'::text), 
                   (1,'Campanhas'::text), 
                   (2,'Dízimos'::text), 
                   (3,'Ofertas'::text)
            ) descmovimentacoes(id, description)
        ), cte_movimentacoes AS (
         SELECT
                CASE
                    WHEN ((m.tipo)::smallint = ANY (ARRAY[1, 2, 3])) THEN c.description
                    ELSE concat(m.descricao, ' - ', to_char((m.dtfato)::timestamp with time zone, 'DD/MM/YYYY'::text))
                END AS descricao,
            to_char((m.dtfato)::timestamp with time zone, 'MM/YYYY'::text) AS competencia,
            m.tipo,
            abs(m.valor) AS valor,
            m.natureza,
                CASE
                    WHEN ((m.tipo)::smallint = ANY (ARRAY[1, 2, 3])) THEN date_trunc('month'::text, (m.dtfato)::timestamp with time zone)
                    ELSE (m.dtfato)::timestamp with time zone
                END AS dtfato,
                CASE
                    WHEN ((m.tipo)::smallint = ANY (ARRAY[1, 2, 3])) THEN 0
                    ELSE 1
                END AS forder
           FROM (public.movimentacoes m
             JOIN cte_desc c ON (((m.tipo)::smallint = c.id)))
          WHERE (m.deleted_date IS NULL)
        )
 SELECT (
        CASE
            WHEN (cte_movimentacoes.forder = 0) THEN concat(cte_movimentacoes.descricao, ' (', (count(cte_movimentacoes.descricao))::character varying, ')')
            ELSE cte_movimentacoes.descricao
        END)::character varying(150) AS descricao,
    (cte_movimentacoes.competencia)::character varying(10) AS competencia,
    cte_movimentacoes.tipo,
    cte_movimentacoes.natureza,
    (cte_movimentacoes.dtfato)::date AS dtfato,
    sum(
        CASE
            WHEN (cte_movimentacoes.natureza = 'D'::"char") THEN (cte_movimentacoes.valor * ('-1'::integer)::numeric)
            ELSE cte_movimentacoes.valor
        END) AS valor,
    count(cte_movimentacoes.descricao) AS ocorrencias,
    EXTRACT(month FROM cte_movimentacoes.dtfato) AS nummonth,
    EXTRACT(year FROM cte_movimentacoes.dtfato) AS numyear,
    cte_movimentacoes.forder
   FROM cte_movimentacoes
  GROUP BY 
    cte_movimentacoes.descricao, 
    cte_movimentacoes.competencia, 
    cte_movimentacoes.tipo,
    cte_movimentacoes.natureza,
    cte_movimentacoes.forder,
    cte_movimentacoes.dtfato;


ALTER TABLE public.vw_report_transaction OWNER TO postgres;

--
-- TOC entry 3220 (class 2604 OID 32832)
-- Name: campanhas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.campanhas ALTER COLUMN id SET DEFAULT nextval('public.campanhas_id_seq'::regclass);


--
-- TOC entry 3226 (class 2604 OID 57356)
-- Name: igrejas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.igrejas ALTER COLUMN id SET DEFAULT nextval('public.igrejas_id_seq'::regclass);


--
-- TOC entry 3218 (class 2604 OID 32782)
-- Name: membros id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.membros ALTER COLUMN id SET DEFAULT nextval('public.membros_id_seq'::regclass);


--
-- TOC entry 3223 (class 2604 OID 49179)
-- Name: movimentacoes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movimentacoes ALTER COLUMN id SET DEFAULT nextval('public.movimentacoes_id_seq'::regclass);


--
-- TOC entry 3216 (class 2604 OID 24610)
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- TOC entry 3241 (class 2606 OID 49185)
-- Name: movimentacoes movimentacoes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movimentacoes
    ADD CONSTRAINT movimentacoes_pkey PRIMARY KEY (id);


--
-- TOC entry 3238 (class 2606 OID 32837)
-- Name: campanhas pk_campanhas; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.campanhas
    ADD CONSTRAINT pk_campanhas PRIMARY KEY (id);


--
-- TOC entry 3243 (class 2606 OID 57359)
-- Name: igrejas pk_igrejas; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.igrejas
    ADD CONSTRAINT pk_igrejas PRIMARY KEY (id);


--
-- TOC entry 3236 (class 2606 OID 32785)
-- Name: membros pk_membros; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.membros
    ADD CONSTRAINT pk_membros PRIMARY KEY (id);


--
-- TOC entry 3233 (class 2606 OID 24613)
-- Name: usuarios pk_usuarios; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT pk_usuarios PRIMARY KEY (id);


--
-- TOC entry 3234 (class 1259 OID 32786)
-- Name: idx_membros_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_membros_id ON public.membros USING btree (id);


--
-- TOC entry 3239 (class 1259 OID 49186)
-- Name: idx_movimentacoes_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_movimentacoes_id ON public.movimentacoes USING btree (id);


--
-- TOC entry 3231 (class 1259 OID 24614)
-- Name: idx_usuarios_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_usuarios_id ON public.usuarios USING btree (id);
