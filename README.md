# sqlPerfonmanceTest-C5

## Project description.
In this project, you will find a detailed explanation of how the data was analyzed, cleaned, and organized, through the creation of related tables, the relational model, and the normalization process.
In this proyect i use sql how database engine.

## Explanation of the normalization process.
First, for normalization (f1), I cleaned the data by converting it to lowercase and correcting duplicate entries, ensuring that all data is standardized so there are no duplicates or redundancies (different ways of writing the same thing). Additionally, for the service type, I standardized it to “preventive” and “corrective,” since “installation” is part of “preventive” and “repair” is part of “corrective.”

For steps F2 and F3, I created the various tables, such as riwi_cities, riwi_clients, riwi_technicians, riwi_servicetype, riwi_branches, riwi_equipment_categories, riwi_equipments, and riwi_orders. This approach separates the columns that do not directly depend on the primary key of the orders table and ensures data integrity.

    • Problems Encountered.
          • Customers registered multiple times.
          • Technicians with duplicate names.
          • Equipment registered with different descriptions.
          • Duplicate services.
          • Locations with inconsistent information.
          • Cities spelled in different ways.


## Database structure.

```sql
-- 1. Crear tablas independientes (Dimensiones base)
CREATE TABLE riwi_cities (
    id SMALLINT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE riwi_clients (
    id INT PRIMARY KEY,
    name VARCHAR(150) NOT NULL
);

CREATE TABLE riwi_technicians (
    id SMALLINT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL
);

CREATE TABLE riwi_servicetype (
    id SMALLINT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE riwi_branches (
    id SMALLINT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE riwi_equipment_categories (
    id SMALLINT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- 2. Crear tablas con dependencias intermedias
CREATE TABLE riwi_equipments (
    id INT PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    id_equipment_category SMALLINT,
    FOREIGN KEY (id_equipment_category) REFERENCES riwi_equipment_categories(id)
);

-- 3. Crear tabla central (Órdenes)
CREATE TABLE riwi_orders (
    workorder VARCHAR(100) PRIMARY KEY,
    id_client INT,
    id_equipments INT,
    id_branch SMALLINT,
    id_city SMALLINT,
    id_technician SMALLINT,
    id_servicetype SMALLINT,
    servicedate DATE,
    hours SMALLINT,
    cost DECIMAL(10,2),
    
    FOREIGN KEY (id_client) REFERENCES riwi_clients(id),
    FOREIGN KEY (id_equipments) REFERENCES riwi_equipments(id),
    FOREIGN KEY (id_branch) REFERENCES riwi_branches(id),
    FOREIGN KEY (id_city) REFERENCES riwi_cities(id),
    FOREIGN KEY (id_technician) REFERENCES riwi_technicians(id),
    FOREIGN KEY (id_servicetype) REFERENCES riwi_servicetype(id)
);
```



## 👨‍💻 Author

- GitHub: **[Cristian Ronaldo Albor Parra](https://github.com/crapdev)**
- Clan: **Cumbia**
- Mail: **calborparra@gmail.com**
  
## 📄 License

This project was created for educational purposes and personal learning.
