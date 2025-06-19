CREATE DATABASE IF NOT EXISTS covid_analysis;
USE covid_analysis;

CREATE TABLE covid_data (
    date DATE,
    location VARCHAR(100),
    total_cases BIGINT,
    new_cases INT,
    total_deaths BIGINT,
    new_deaths INT,
    population BIGINT
);
