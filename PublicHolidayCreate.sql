IF EXISTS(SELECT TOP 1 1 FROM sysobjects WHERE name like 'PublicHoliday')
BEGIN
	DROP TABLE PublicHoliday
END
GO

CREATE TABLE PublicHoliday (
	RowId INT IDENTITY PRIMARY KEY,
	Name VARCHAR(50),
	[Description] VARCHAR(4000),
	DateValue DATETIME
	)
GO

-- 2012 New year's day
INSERT INTO PublicHoliday 
(
	Name,[Description],DateValue
)
VALUES 
(
	'New Year''s Day', 'First day of the year', '2012-01-01'
)

-- 2012 New year's day
INSERT INTO PublicHoliday 
(
	Name,[Description],DateValue
)
VALUES 
(
	'Public holiday', 'The Public Holidays Act (Act No 36 of 1994 [PDF]) determines whenever any public holiday falls on a Sunday, the Monday following on it shall be a public holiday.', '2012-01-02'
)

-- 2012 Human Rights Day
INSERT INTO PublicHoliday 
(
	Name,[Description],DateValue
)
VALUES 
(
	'Human Rights Day', '[Human Rights Day]

The Bill of Rights contained in the Constitution is the cornerstone of democracy in South Africa.

The Constitution provides for the establishment of the South African Human Rights Commission (SAHRC). The aim of the Commission is to promote respect for human rights, promote the protection, development and attainment of human rights, and to monitor and assess the observance of human rights in SA. The SAHRC was launched on 21 March 1996, 35 years after the fateful events of 21 March 1960 when demonstrators in Sharpeville were gunned down by police.

The Native Laws Amendment Act of 1952 extended Government control over the movement of Africans to urban areas and abolished the use of the Pass Book (a document which Africans were required to carry on them to ‘prove’ that they were allowed to enter a ‘white area’) in favour of a reference book which had to be carried at all times by all Africans.

Failure to produce the reference book on demand by the police, was a punishable offence. The Pan Africanist Congress (PAC) proposed an anti-Pass campaign to start on 21 March 1960. All African men were to take part in the campaign without their passes and present themselves for arrest.

Campaigners gathered at police stations in townships near Johannesburg where they were dispersed by police. At the Sharpeville police station a scuffle broke out. Part of a wire fence was trampled, allowing the crowd to move forward. The police opened fire, apparently without having been given a prior order to do so. Sixty-nine people were killed and 180 wounded.

In apartheid South Africa this day became known as Sharpeville Day and although not part of the official calendar of public holidays the event was commemorated among anti-apartheid movements.', '2012-03-21'
)

-- Good Friday
INSERT INTO PublicHoliday 
(
	Name,[Description],DateValue
)
VALUES 
(
	'Good Friday', 'Good Friday (Friday before Easter Sunday)', '2012-04-06'
)

-- Family Day
INSERT INTO PublicHoliday 
(
	Name,[Description],DateValue
)
VALUES 
(
	'Family Day', 'Family Day (Monday after Easter Sunday)', '2012-04-09'
)

-- Freedom Day
INSERT INTO PublicHoliday 
(
	Name,[Description],DateValue
)
VALUES 
(
	'Freedom Day', 'Freedom Day', '2012-04-27'
)

-- Workers Day
INSERT INTO PublicHoliday 
(
	Name,[Description],DateValue
)
VALUES 
(
	'Workers Day', 'Workers Day', '2012-05-01'
)

-- Youth Day
INSERT INTO PublicHoliday 
(
	Name,[Description],DateValue
)
VALUES 
(
	'Youth Day', 'Youth Day', '2012-06-16'
)

--  National Women's Day 
INSERT INTO PublicHoliday 
(
	Name,[Description],DateValue
)
VALUES 
(
	' National Women''s Day ', ' National Women''s Day ', '2012-08-09'
)

--  Heritage Day 
INSERT INTO PublicHoliday 
(
	Name,[Description],DateValue
)
VALUES 
(
	'Heritage Day', 'Heritage Day ', '2012-09-24'
)

GO

select *
from 
	PublicHoliday