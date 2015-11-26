drop database if exists trax;
create database trax;
use trax;

# Users - staff members
create table users (
    usrId int not null unique auto_increment primary key,
    usrKey int,
    usrLastName varchar(64),
    usrFirstName varchar(64),
    usrEmail varchar(255),
    usrAddr1 varchar(64),
    usrAddr2 varchar(64),
    usrZip varchar(16),
    usrPhone varchar(32),
    usrPassMd5 varchar(32),
    usrTSize enum ("Unknown", "XS", "S", "M", "L", "XL", "XXL") default "Unknown",
    usrComment varchar(255)
    );

# Roles
create table roles (
    rolId int not null unique auto_increment primary key,
    rolName varchar(32)
    );

# Users to Roles
create table usr2rol (
    usrId int,
    rolId int,
    u2rFrom date comment "Start date for this role",
    u2rThru date comment "End date for this role",
    u2rLevel int comment "0=no level, 1=novice, 2=journeyman or assistant, 3=master or manager"
);

# Community Service Agencies - for volunteer time reporting
create table communityServiceAgency (
    csaId int not null unique auto_increment primary key,
    csaName varchar(255),
    csaType enum ("None", "School", "Employeer", "Court-ordered", "Other") default "None",
    csaLetterFormat varchar(255)
    );

# Users signed up for community service reporting - service letter generation
create table usr2csv (
    usrId int,
    csvId int,
    u2cFrom date,
    u2cThru date
    );

# Stations
create table station (
    stnId int not null unique auto_increment primary key,
    stnName varchar(255) default "" unique,
    stnType set ("Keyed", "BlueTooth", "CardSwipe", "Barcode", "Punch")
    );

# Presence records - "blips on the radar" - from in/out scans, btpresence detects, etc
create table blips (
    blipTime timestamp default now(),
    usrId int,
    stnId int,
    stnType enum ("Keyed", "BlueTooth", "CardSwipe", "Barcode", "Punch") comment "how blip detected",
    blipHint enum ("none", "in", "out") default "none" not null
    );

# Timecard records
create table timecards (
    usrId int,
    tcdInTime datetime,
    stnIdIn int,
    tcdInUser int,
    tcdOutTime datetime,
    stnIdOut int,
    tcdOutUser int,
    tcdOverrideDuration time,
    tcdOverrideUser int comment "Supervisor giving this override"
#    tcdFactor decimal(4,2),
#    tcdFactorUser int
    );

### TODO: howz these relate to seasons?  For example: the 2011 season, with X, Y, and Z events...?
### TODO: what about how it relates to the schedule/calendar?
# Events
create table events (
    evtName varchar(32),
    evtStart datetime,
    evtEnd datetime
    );

### TODO:  Derive mailing lists and subscriptions from roles?
# Mailing lists
create table mlist (
    mlsId int not null unique auto_increment primary key,
    mlsList varchar(32),
    mlsName varchar(128)
    );

# Mail list subscriptions - mlist to users
create table subscriptions (
    mlsId int,
    usrId int
    );

# Bluetooth MAC addresses that we scan for, to detect staffers
create table btmacs (
    usrId int,
    btmAddr char(17) not null unique primary key,
    btmComment varchar(255)
    );

# WiFi 802.11 MAC addresses that we scan for, to detect staffers
create table wifimacs (
    usrId int,
    wifiAddr char(17) not null unique primary key,
    wifiComment varchar(255)
    );

# Pictures of users
create table pictures (
    usrId int,
    picType enum ("primary", "costume", "other"),
    picPath varchar(255) comment "Location of photo on filesystem"
    );


# Configs - these should be in the server config file!
### n/a : ALTER TABLE transactions AUTO_INCREMENT = 7403; # Pick something!
#SET GLOBAL server_id=3;                 # Use station number where the server is at
#SET GLOBAL auto_increment_increment=13;  # Must be at least the number of stations, and then some
#SET GLOBAL auto_increment_offset=3;     # Use station number

# Initial setup
#  Note: the first GRANT USAGE is just so the DROP USER will not fail.
grant usage on *.* to 'trax'@'localhost';
grant usage on *.* to 'trax'@'%';
drop user 'trax'@'localhost';
drop user 'trax'@'%';
create user 'trax'@'localhost' identified by "password123";
create user 'trax'@'%' identified by "password123";
grant all on trax.* to 'trax'@'localhost';
grant all on trax.* to 'trax'@'%';

