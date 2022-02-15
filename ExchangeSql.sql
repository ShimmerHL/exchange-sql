create table Details(
	id														int    not null primary key auto_increment,
	GiftUnique					     varchar(30) not null unique,
	CarouselPictures1				varchar(255) not null,
	CarouselPictures2				varchar(255),
	CarouselPictures3				varchar(255),
	CarouselPictures4				varchar(255),
	CarouselPictures5				varchar(255),
	Specification1					varchar(255),
	Specification2					varchar(255),
	Specification3					varchar(255),
	Specification4					varchar(255),
	Specification5					varchar(255),
	IntroduceImg1						varchar(255),
	IntroduceImg2						varchar(255),
	IntroduceImg3						varchar(255),
	IntroduceImg4						varchar(255),
	IntroduceImg5						varchar(255),
	BusinessName						varchar(255) not null,
	CommodityFunllName			varchar(255) not null,
	CommodityName						varchar(255) not null,
	Frequency								int					not null,
	Remaining							int	not null,
	Thumbnail							varchar(255) not null,
	Registration					varchar(255) not null,
	Label									varchar(255) not null,
	Exist									int					 not null,
	foreign key(GiftUnique) references CustomGifts(GiftUnique),
	foreign key(Registration) references EnterpriseUserLogin(Registration)
)

create table CheckDetails(
	OrderUnique   		varchar(30) not null  primary key unique,
	LogisticsStatus		int ,
	StateTime					datetime not null,
	Receiver					varchar(255) not null,
	Phone							varchar(11) not null,
	RegionAndAddress	varchar(255) not null,
	CommodityFunllName varchar(255) not null,
	Thumbnail				varchar(255) not null,
	BusinessName		varchar(255) not null,
	RedemptionCode	varchar(30) not null unique,
	OrderTime				datetime not null,
	GiftUnique			varchar(255) not null,
	Useropenid			varchar(255) not null,
	StatusInformation		 varchar(255) not null,

	foreign key(RedemptionCode) references RedemptionCode(RedemptionCode),
	foreign key(GiftUnique) references CustomGifts(GiftUnique),
	foreign key(Useropenid) references WeChatUserLogin(Useropenid)
)

create table TotalGifts(
	GiftUnique varchar(30) not null  unique,
	CommodityFunllName varchar(255) not null,
	Thumbnail varchar(255) not null,
	BusinessName varchar(255) not null,
	Registration varchar(18) not null unique,

	foreign key(GiftUnique) references CustomGifts(GiftUnique),
	foreign key(Registration) references EnterpriseUserLogin(Registration)

)

create table WeChatUserLogin(
	UserName varchar(16) not null unique,
	Useropenid varchar(255) not null  primary key unique,
	Sex int,
	Email  varchar(255),
	Phone varchar(11),
	DateBirth date

)

create table EnterpriseUserLogin(
	Registration varchar(255) not null  primary key unique,
	Password varchar(16) not null ,
	StateCode varchar(255)
 
)

create table CustomGifts(
	GiftUnique					 varchar(30) not null  primary key unique,
	CarouselPictures1			varchar(255) not null, 
	CarouselPictures2			varchar(255),
	CarouselPictures3			varchar(255),
	CarouselPictures4			varchar(255),
	CarouselPictures5			varchar(255),
	Specification1			varchar(255),
	Specification2			varchar(255),
	Specification3			varchar(255),
	Specification4			varchar(255),
	Specification5			varchar(255),
	IntroduceImg1			varchar(255),
	IntroduceImg2			varchar(255),
	IntroduceImg3			varchar(255),
	IntroduceImg4			varchar(255),
	IntroduceImg5			varchar(255),
	BusinessName			varchar(255) not null,
	CommodityFunllName  varchar(255) not null,
	CommodityName  varchar(255) not null,
	Registration   varchar(255) not null,
	Label  varchar(255) not null,
	GiftNumber int not null,
	foreign key(Registration) references EnterpriseUserLogin(Registration)
)

create table RedemptionCode(
	GiftUnique			varchar(30) not null,
	RedemptionCode  varchar(30) not null unique,
	Used						int  not null,
	foreign key(GiftUnique) references CustomGifts(GiftUnique)
	
)












