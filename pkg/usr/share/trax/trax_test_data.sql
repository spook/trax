use trax;

insert into events set
  evtName  = "2011 Fire Training",
  evtStart = 20110707140000,
  evtEnd   = 20110707160000;

insert into events set
  evtName  = "2011 Haunted Mines",
  evtStart = 20110923,
  evtEnd   = 20111106;

insert into events set
  evtName  = "2012 Haunted Mines",
  evtStart = 20120101,
  evtEnd   = 20121231;


insert into roles set rolName = "Founder",      rolId=1;
insert into roles set rolName = "Producer",     rolId=2;
insert into roles set rolName = "Director",     rolId=3;
insert into roles set rolName = "Construction", rolId=4;
insert into roles set rolName = "Acting";
insert into roles set rolName = "Makeup";
insert into roles set rolName = "Ticketing";
insert into roles set rolName = "Security";
insert into roles set rolName = "Parking";
insert into roles set rolName = "Firewatch";
insert into roles set rolName = "Fireman";
insert into roles set rolName = "Medic";
insert into roles set rolName = "Tech";
insert into roles set rolName = "Scenic";
insert into roles set rolName = "Finance";
insert into roles set rolName = "Marketing";
insert into roles set rolName = "Photographer";
insert into roles set rolName = "VC";
insert into roles set rolName = "SFX";
insert into roles set rolName = "Bookkeeper";
insert into roles set rolName = "Contractor";
insert into roles set rolName = "Vendor";
insert into roles set rolName = "Concessions";
insert into roles set rolName = "Museum Staff";
insert into roles set rolName = "sysadmin";

insert into users set
  usrId = 1,
  usrKey = 8581500125,
  usrLastName = "Roscio",
  usrFirstName = "Steve",
  usrEmail = "Steve@HauntedMines.org",
  usrPhone = "719-000-0000";

insert into users set
  usrId = 2,
  usrKey = 6784125,
  usrLastName = "Roscio",
  usrFirstName = "Cathy",
  usrEmail = "Cathy@HauntedMines.org",
  usrPhone = "719-000-0000";

insert into users set
  usrId = 3,
  usrKey = 98548733,
  usrLastName = "Wittwer",
  usrFirstName = "Tim",
  usrEmail = "Tim@HauntedMines.org",
  usrPhone = "719-000-0000";

insert into users set
  usrId = 4,
  usrKey = 2230125,
  usrLastName = "Sanford",
  usrFirstName = "Drew",
  usrEmail = "Drew@HauntedMines.org",
  usrPhone = "719-000-0000";

insert into users set
  usrId = 5,
  usrKey = 1500125,
  usrLastName = "Dougherty",
  usrFirstName = "Frank",
  usrEmail = "Frank@HauntedMines.org",
  usrPhone = "719-000-0000";

insert into users set
  usrId = 6,
  usrKey = 112248733,
  usrLastName = "Burbidge",
  usrFirstName = "Troy",
  usrEmail = "Troy@HauntedMines.org",
  usrPhone = "719-000-0000";

insert into users set
  usrId = 7,
  usrKey = 8222733,
  usrLastName = "Thrash",
  usrFirstName = "Sandy",
  usrEmail = "Sandy@HauntedMines.org",
  usrPhone = "719-599-0909";

insert into users set
  usrId = 8,
  usrKey = 4433733,
  usrLastName = "Novotny",
  usrFirstName = "Tara",
  usrEmail = "Tara@HauntedMines.org",
  usrPhone = "719-000-0000";

insert into btmacs set usrId=1, btmAddr="57:A7:22:AD:33:63",  btmComment="Steve LG Phone";
insert into btmacs set usrId=1, btmAddr="00:24:33:37:38:3D",  btmComment="Steve laptop Xena";
insert into btmacs set usrId=1, btmAddr="00:13:72:23:1D:2F",  btmComment="EM227 Emerson Earpiece";
insert into btmacs set usrId=7, btmAddr="00:2d:ee:7e:b3:29",  btmComment="Cathy Touchpad";
insert into btmacs set usrId=2, btmAddr="00:35:37:3A:73:C6",  btmComment="Cathy Blackberry";
insert into btmacs set usrId=1, btmAddr="00:00:00:00:00:00",  btmComment="Bogus does not exist #0";
insert into btmacs set usrId=1, btmAddr="00:00:00:00:00:01",  btmComment="Bogus does not exist #1";
insert into btmacs set usrId=1, btmAddr="00:00:00:00:00:02",  btmComment="Bogus does not exist #2";
insert into btmacs set usrId=1, btmAddr="00:00:00:00:00:03",  btmComment="Bogus does not exist #3";
insert into btmacs set usrId=1, btmAddr="00:00:00:00:00:04",  btmComment="Bogus does not exist #4";
insert into btmacs set usrId=1, btmAddr="00:00:00:00:00:05",  btmComment="Bogus does not exist #5";
insert into btmacs set usrId=1, btmAddr="00:00:00:00:00:06",  btmComment="Bogus does not exist #6";
insert into btmacs set usrId=1, btmAddr="00:00:00:00:00:07",  btmComment="Bogus does not exist #7";
insert into btmacs set usrId=8, btmAddr="1d:45:83:55:55:71",  btmComment="Tara Verizon Droid";

insert into communityServiceAgency set csaId=1, csaName="None - Just tell me my hours";
insert into communityServiceAgency set csaId=2, csaName="Front Range Community Service", csaType="Court-ordered";
insert into communityServiceAgency set csaId=3, csaName="National Honor Society", csaType="school";
insert into communityServiceAgency set csaId=4, csaName="School Required Service", csaType="school";

