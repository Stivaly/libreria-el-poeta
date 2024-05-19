
CREATE DATABASE elpoetabd;
USE elpoetabd;

CREATE TABLE perfil (
    id_perfil INT PRIMARY KEY AUTO_INCREMENT,
    nombre_perfil VARCHAR(255)
);

CREATE TABLE pais (
    id_pais INT PRIMARY KEY AUTO_INCREMENT,
    pais VARCHAR(255),
    latitud DECIMAL,
    longitud DECIMAL
);

CREATE TABLE autor (
    id_autor INT PRIMARY KEY AUTO_INCREMENT,
    autor_genero VARCHAR(255),
    nombre_autor VARCHAR(255),
    autor_rating_promedio DECIMAL,
    cantidad_rating_autor INT,
    cantidad_comentarios INT,
    id_pais INT,
    FOREIGN KEY (id_pais) REFERENCES pais(id_pais)
);

CREATE TABLE editorial (
    id_editorial INT PRIMARY KEY AUTO_INCREMENT,
    editorial VARCHAR(255)
);

CREATE TABLE idioma (
    id_idioma INT PRIMARY KEY AUTO_INCREMENT,
    idioma VARCHAR(255)
);

CREATE TABLE libro (
    id_libro INT PRIMARY KEY AUTO_INCREMENT,
    libro_nombre VARCHAR(255),
    libro_numpaginas INT,
    libro_rating_promedio DECIMAL,
    libro_fecha_publicacion DATE,
    id_editorial INT,
    libro_review_counts INT,
    id_autor INT,
    id_idioma INT,
    FOREIGN KEY (id_editorial) REFERENCES editorial(id_editorial),
    FOREIGN KEY (id_autor) REFERENCES autor(id_autor),
    FOREIGN KEY (id_idioma) REFERENCES idioma(id_idioma)
);


CREATE TABLE region (
    id_region INT PRIMARY KEY AUTO_INCREMENT,
    region VARCHAR(255),
    id_pais INT,
    FOREIGN KEY (id_pais) REFERENCES pais(id_pais)
);

CREATE TABLE ciudad (
    id_ciudad INT PRIMARY KEY AUTO_INCREMENT,
    nombre INT,
    id_region INT,
    FOREIGN KEY (id_region) REFERENCES region(id_region)
);

CREATE TABLE comuna (
    id_comuna INT PRIMARY KEY AUTO_INCREMENT,
    nombre INT,
    id_region INT,
    id_ciudad INT,
    FOREIGN KEY (id_region) REFERENCES region(id_region),
    FOREIGN KEY (id_ciudad) REFERENCES ciudad(id_ciudad)
);

CREATE TABLE bodega (
    id_bodega INT PRIMARY KEY AUTO_INCREMENT,
    nombre INT,
    calle VARCHAR(255),
    id_libro INT,
    cantidad INT,
    id_region INT,
    id_ciudad INT,
    id_comuna INT,
    FOREIGN KEY (id_libro) REFERENCES libro(id_libro),
    FOREIGN KEY (id_region) REFERENCES region(id_region),
    FOREIGN KEY (id_ciudad) REFERENCES ciudad(id_ciudad),
    FOREIGN KEY (id_comuna) REFERENCES comuna(id_comuna)
);

CREATE TABLE usuario (
    rut_usuario INT PRIMARY KEY,
    codigo_verificador INT,
    nombre_usuario VARCHAR(255),
    correo VARCHAR(255),
    contraseña VARCHAR(255),
    id_region INT,
    id_ciudad INT,
    id_comuna INT,
    FOREIGN KEY (id_region) REFERENCES region(id_region),
    FOREIGN KEY (id_ciudad) REFERENCES ciudad(id_ciudad),
    FOREIGN KEY (id_comuna) REFERENCES comuna(id_comuna)
);

CREATE TABLE Movimiento (
    id_movimiento INT PRIMARY KEY AUTO_INCREMENT,
    id_libro INT,
    tipo_movimiento VARCHAR(255),
    cantidad INT,
    fecha_movimiento DATETIME,
    rut_usuario INT,
    id_bodega_origen INT,
    id_bodega_destino INT,
    FOREIGN KEY (id_libro) REFERENCES libro(id_libro),
    FOREIGN KEY (rut_usuario) REFERENCES usuario(rut_usuario),
    FOREIGN KEY (id_bodega_origen) REFERENCES bodega(id_bodega),
    FOREIGN KEY (id_bodega_destino) REFERENCES bodega(id_bodega)
);

ALTER TABLE libro
ADD COLUMN libro_ISBN varchar(60);