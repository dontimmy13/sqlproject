SELECT*
FROM PortfolioProject..CovidDeaths
WHERE continent is NOT NULL
ORDER BY 3,4

--SELECT*
--FROM PortfolioProject..CovidVaccinations
--ORDER BY 3,4


--selecting the column/data i'll be using

SELECT location,date,total_cases,new_cases,total_deaths,population
FROM PortfolioProject..CovidDeaths
WHERE continent is NOT NULL
order by 1,2

--Total Cases vs Total Deaths
--likelihood of dying if you have covid in nigeria
SELECT location,date,total_cases,total_deaths,(total_deaths/total_cases)*100 as Deathpercentage
FROM PortfolioProject..CovidDeaths
WHERE location like '%nigeria%'
AND continent is NOT NULL
order by 1,2

--Total Cases vs Population
--The percentage of population with covid
SELECT location,date,population,total_cases,(total_cases/population)*100 as PopulationPercentageInfected
FROM PortfolioProject..CovidDeaths
WHERE location like '%nigeria%'
AND continent is NOT NULL
order by 1,2


--countries with highest infection rate compared to population
SELECT location,population,MAX(total_cases) as Highestinfectioncount,MAX((total_cases/population))*100 as PopulationPercentageInfected
FROM PortfolioProject..CovidDeaths
WHERE continent is NOT NULL
GROUP BY location,population
order by PopulationPercentageInfected DESC

--countries with the highest death count per population
SELECT location,MAX(CAST(total_deaths AS INT)) as TotalDeathCounts
FROM PortfolioProject..CovidDeaths
WHERE continent is NOT NULL
GROUP BY location
order by TotalDeathCounts DESC

--breaking it down by continent
SELECT continent,MAX(CAST(total_deaths AS INT)) as TotalDeathCounts
FROM PortfolioProject..CovidDeaths
WHERE continent is NOT NULL
GROUP BY continent
order by TotalDeathCounts DESC


--showing continents with the highest death count
SELECT continent,MAX(CAST(total_deaths AS INT)) as TotalDeathCounts
FROM PortfolioProject..CovidDeaths
WHERE continent is NOT NULL
GROUP BY continent
order by TotalDeathCounts DESC

--GLOBAL NUMBERS
SELECT SUM(new_cases) as Total_Cases,SUM(CAST(new_deaths AS INT))as Total_Deaths,SUM(CAST(new_deaths AS INT))/SUM(new_cases)*100 as Deathpercentage
FROM PortfolioProject..CovidDeaths
WHERE continent is NOT NULL
order by 1,2


--looking at Total Population vs vaccinations
SELECT dea.continent,dea.location,dea.date,dea.population,vac.new_vaccinations,SUM(CAST(vac.new_vaccinations as INT))OVER(PARTITION by dea.location,dea.date)as RollingPeopleVaccinated
FROM PortfolioProject..CovidDeaths dea
JOIN PortfolioProject..CovidVaccinations vac
	on dea.location=vac.location
	and dea.date=vac.date
where dea.continent is not null
order by 2,3


--USE CTE
With PopvsVac(Continent,Location,Date,Population,New_Vaccinations,RollingPeopleVaccinated)
as
(
SELECT dea.continent,dea.location,dea.date,dea.population,vac.new_vaccinations,SUM(CAST(vac.new_vaccinations as INT))OVER(PARTITION by dea.location,dea.date)as RollingPeopleVaccinated
FROM PortfolioProject..CovidDeaths dea
JOIN PortfolioProject..CovidVaccinations vac
	on dea.location=vac.location
	and dea.date=vac.date
where dea.continent is not null

)
SELECT*,(RollingPeopleVaccinated/Population)*100
FROM PopvsVac

