

CREATE TABLE dim_tempo (
	id SERIAL PRIMARY KEY,
	ano INT not null
);

CREATE TABLE dim_especie (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255),
	grupo VARCHAR(255),
	familia VARCHAR(255),
	bioma VARCHAR(255),
	isPresenca_areas_protegidas VARCHAR(255),
	isPlano_conservacao VARCHAR(255)
);

CREATE TABLE dim_ameaca (
	id SERIAL PRIMARY KEY,
	categoria_ameaca VARCHAR(255),
	principal_ameaca VARCHAR(255)
);	

CREATE TABLE dim_espaco (
	id SERIAL PRIMARY KEY,
	estado VARCHAR(255)
);

CREATE TABLE especies_ameacadas_fato (
	id_dim_especie INT REFERENCES dim_especie(id),
	id_dim_ameaca INT REFERENCES dim_ameaca(id),
	id_dim_espaco INT REFERENCES dim_espaco(id),
	id_dim_tempo INT REFERENCES dim_tempo(id),
	
	quant_total_especies_ameacadas int
	
);
