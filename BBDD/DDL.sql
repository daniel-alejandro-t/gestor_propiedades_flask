-- Crear tabla de Usuarios
CREATE TABLE Usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    hash_contraseña VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

-- Crear tabla de Roles
CREATE TABLE Roles (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) UNIQUE NOT NULL
);

-- Crear tabla de relación UsuariosRoles
CREATE TABLE UsuariosRoles (
    usuarioId INT REFERENCES Usuarios(id),
    rolId INT REFERENCES Roles(id),
    PRIMARY KEY (usuarioId, rolId)
);

-- Crear tabla de Anuncios
CREATE TABLE Anuncios (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    descripcion TEXT,
    fecha_creacion DATE DEFAULT CURRENT_DATE,
    usuarioId INT REFERENCES Usuarios(id)
);

-- Crear tabla de Pagos
CREATE TABLE Pagos (
    id SERIAL PRIMARY KEY,
    monto DECIMAL(10, 2) NOT NULL,
    fecha_pago DATE DEFAULT CURRENT_DATE,
    descripcion TEXT,
    usuarioId INT REFERENCES Usuarios(id)
);

-- Insertar roles predeterminados
INSERT INTO Roles (nombre) VALUES ('administrador'), ('vecino');
