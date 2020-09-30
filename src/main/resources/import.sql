insert into usuarios(username, password, enabled, nombre, apellido, email) values('enrique','$2a$10$zDzNtURV1srujnsUWd5HseRF7yoVSgzTTJ5oxFJFI/8V88/2JpiJ2', 1, 'Enrique', 'Garcia', 'enrique@correo.com');
insert into usuarios(username, password, enabled, nombre, apellido, email) values('admin','$2a$10$OXF3ewc1TOqi84kMQWM63O5MVocNLhcSVTICfe84a1j9lz5WS6ms2', 1, 'Roberto', 'Luna', 'rober@correo.com');

insert into roles(nombre) values('ROLE_USER');
insert into roles(nombre) values('ROLE_ADMIN');

insert into usuarios_roles(usuario_id, role_id) values (1,1);
insert into usuarios_roles(usuario_id, role_id) values (2,2);
insert into usuarios_roles(usuario_id, role_id) values (2,1);
