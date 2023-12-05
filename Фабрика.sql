CREATE DATABASE Variant5_Fabrika_VovchokGleb_P46;
GO
USE Variant5_Fabrika_VovchokGleb_P46;
CREATE TABLE Modeli(
model_id integer not null primary key,
 model_date datetime, 
 model_name varchar(180), 
 model_price integer, 
);
GO
USE Variant5_Fabrika_VovchokGleb_P46;
CREATE TABLE Clients(
client_id integer not null primary key,
 client_name varchar(180), 
);
GO
USE Variant5_Fabrika_VovchokGleb_P46;
CREATE TABLE Tovari(
tovar_id integer not null primary key,
 basedon_model_id integer,
 tovar_name varchar(180), 
 tovar_price integer, 
);
GO
USE Variant5_Fabrika_VovchokGleb_P46;
CREATE TABLE Prodazhi(
prodazha_id integer not null primary key,
tovar_id integer,
 prodazha_date datetime, 
 client_id integer,
 prodazha_price integer, 
);
GO
ALTER TABLE Tovari ADD constraint FK_Tovar_Model FOREIGN KEY (basedon_model_id) references Modeli(model_id);
ALTER TABLE Prodazhi ADD constraint FK_Tovar_Tovar FOREIGN KEY (tovar_id)  references Tovari(tovar_id);
ALTER TABLE Prodazhi ADD constraint FK_Client_client FOREIGN KEY (client_id) references Clients(client_id);
GO
