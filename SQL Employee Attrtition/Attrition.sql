
-- Count total number of employees
select count(EmployeeCount) as No_of_employees from employees

--Count employees who left vs stayed
select Attrition, count(Attrition) as Total_employees from employees
group by Attrition

--Average age of employees
select avg(Age) as AverageAge from employees

--Average monthly income
select avg(MonthlyIncome) as AvgIncome from employees

-- Count employees by gender
select Gender, count(*) as NumberOfEmployees from employees
group by Gender

-- Count employees by department
select Department, count(*) as NumberOfEmployees from employees
group by Department

--Count employees by job role
select JobRole, count(*) as NumberOfEmployees from employees 
group by JobRole

--Count employees by education field
select EducationField, count(*) as NumberOfEmployees from employees
group by EducationField

--Attrition rate by department
select Department, sum(case when Attrition = 'Yes' then 1 else 0 end)*1.0/count(Attrition) as EmployeesLeft from employees
group by Department


--Attrition rate by job role
select JobRole, sum(case when Attrition = 'Yes' then 1 else 0 end)*100.00/count(Attrition) as EmployeeLeftPercent from employees
group by JobRole
order by EmployeeLeftPercent desc

--Average salary by department
select Department, avg(MonthlyIncome) as AvgSalary from employees
group by Department
order by AvgSalary desc


--Average salary by job role
select JobRole, avg(MonthlyIncome) as AvgSalary from employees
group by JobRole
order by AvgSalary desc


--Average age of employees who left vs stayed
select Attrition, avg(Age) as AvgAge from employees
group by Attrition
order by AvgAge

--Count of employees who did overtime vs not
select Overtime, count(*) as TotalEmployees from employees
group by Overtime

--Attrition rate for overtime vs non-overtime employees
select Overtime, sum(case when Attrition = 'Yes' then 1 else 0 end)*100.0/count(Attrition) as LeftEmployeesPercent from employees
group by Overtime

--Average experience  by attrition
select Attrition, avg(TotalWorkingYears) as AvgExperience from employees
group by Attrition

--Count employees by business travel category
select BusinessTravel, count(*)as EmployeeCount from employees
group by BusinessTravel
order by  count(*) desc


--Attrition rate by education level
select EducationField, sum(case when Attrition = 'Yes' then 1 else 0 end)*100.0/count(Attrition) as PercentageofLeftEmployee from employees
group by EducationField
order by PercentageofLeftEmployee desc

--Top 3 job roles with highest attrition rate
select top 3 JobRole,sum(case when Attrition = 'Yes' then 1 else 0 end)*100.0/count(Attrition) as PercentageofLeftEmployee from employees
group by JobRole
order by PercentageofLeftEmployee desc

--Department with highest average salary
select top 1 Department, avg(MonthlyIncome) as Salary from employees
group by Department
order by Salary desc

--Employees earning above average salary
select count(*) as 'Employees earning above Avg Salary' from employees
where MonthlyIncome >(select avg(MonthlyIncome) from employees)


--Employees with more than 5 years in current role and still working
select count(*) as 'Employees with 5 years in Current Role and Still Working' from employees
where YearsInCurrentRole > 5 and Attrition = 'No'

--Attrition rate by income groups
select case 
       when MonthlyIncome between 1000 and 5000 then '1000-5000'
       when MonthlyIncome between 5001 and 10000 then '5001-10000'
       when MonthlyIncome between 10001 and 15000 then '10001-15000'
       else '15001-20000' 
      end as IncomeBracket,
sum(case when Attrition = 'Yes' then 1 else 0 end)*100.0/count(Attrition) as 'Attrition Rate'
from employees
group by case 
       when MonthlyIncome between 1000 and 5000 then '1000-5000'
       when MonthlyIncome between 5001 and 10000 then '5001-10000'
       when MonthlyIncome between 10001 and 15000 then '10001-15000'
       else '15001-20000' 
      end 
order by 'Attrition Rate' desc

--Attrition rate by age groups (18-60)
select case
        when Age between 18 and 25 then '18-25'
        when Age between 26 and 35 then '26-35'
        when Age between 36 and 45 then '36-45'
        else '46-60'
       end as 'Age Groups',
sum(case when Attrition = 'Yes' then 1 else 0 end)*100.0/count(Attrition) as 'Attrition Rate'
from employees
group by case
         when Age between 18 and 25 then '18-25'
         when Age between 26 and 35 then '26-35'
         when Age between 36 and 45 then '36-45'
         else '46-60'
        end
order by 'Attrition Rate' desc


--Employees who switched more than 3 companies and left
select sum(case when Attrition = 'Yes' then 1 else 0 end) as NumOfEmployees from employees
where NumCompaniesWorked > 3

-- Compare attrition for different work-life balance levels
select WorkLifeBalance, sum(case when Attrition = 'Yes' then 1 else 0 end) as EmployeesLeft from employees
group by WorkLifeBalance 
order by EmployeesLeft desc

--Find average salary hike % for employees who left vs stayed
select Attrition,avg(PercentSalaryHike) as 'Average Hike%' from employees
group by Attrition