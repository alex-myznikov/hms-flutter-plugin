/*
    Copyright 2020-2022. Huawei Technologies Co., Ltd. All rights reserved.

    Licensed under the Apache License, Version 2.0 (the "License")
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

class ReportPolicyType {
  static const String ON_SCHEDULED_TIME_POLICY = "ON_SCHEDULED_TIME_POLICY";

  static const String ON_APP_LAUNCH_POLICY = "ON_APP_LAUNCH_POLICY";

  static const String ON_MOVE_BACKGROUND_POLICY = "ON_MOVE_BACKGROUND_POLICY";

  static const String ON_CACHE_THRESHOLD_POLICY = "ON_CACHE_THRESHOLD_POLICY";
}

class HAUserProfileType {
  static const USERLEVEL = "user_level";
}

// Huawei Analytics Event Types
class HAEventType {
  static const String CREATEPAYMENTINFO = "\$CreatePaymentInfo";

  static const String ADDPRODUCT2CART = "\$AddProduct2Cart";

  static const String ADDPRODUCT2WISHLIST = "\$AddProduct2WishList";

  static const String STARTAPP = "\$StartApp";

  static const String STARTCHECKOUT = "\$StartCheckout";

  static const String VIEWCAMPAIGN = "\$ViewCampaign";

  static const String VIEWCHECKOUTSTEP = "\$ViewCheckoutStep";

  static const String WINVIRTUALCOIN = "\$WinVirtualCoin";

  static const String COMPLETEPURCHASE = "\$CompletePurchase";

  static const String OBTAINLEADS = "\$ObtainLeads";

  static const String JOINUSERGROUP = "\$JoinUserGroup";

  static const String COMPLETELEVEL = "\$CompleteLevel";

  static const String STARTLEVEL = "\$StartLevel";

  static const String UPGRADELEVEL = "\$UpgradeLevel";

  static const String SIGNIN = "\$SignIn";

  static const String SIGNOUT = "\$SignOut";

  static const String SUBMITSCORE = "\$SubmitScore";

  static const String CREATEORDER = "\$CreateOrder";

  static const String REFUNDORDER = "\$RefundOrder";

  static const String DELPRODUCTFROMCART = "\$DelProductFromCart";

  static const String SEARCH = "\$Search";

  static const String VIEWCONTENT = "\$ViewContent";

  static const String UPDATECHECKOUTOPTION = "\$UpdateCheckoutOption";

  static const String SHARECONTENT = "\$ShareContent";

  static const String REGISTERACCOUNT = "\$RegisterAccount";

  static const String CONSUMEVIRTUALCOIN = "\$ConsumeVirtualCoin";

  static const String STARTTUTORIAL = "\$StartTutorial";

  static const String COMPLETETUTORIAL = "\$CompleteTutorial";

  static const String OBTAINACHIEVEMENT = "\$ObtainAchievement";

  static const String VIEWPRODUCT = "\$ViewProduct";

  static const String VIEWPRODUCTLIST = "\$ViewProductList";

  static const String VIEWSEARCHRESULT = "\$ViewSearchResult";

  static const String UPDATEMEMBERSHIPLEVEL = "\$UpdateMembershipLevel";

  static const String FILTRATEPRODUCT = "\$FiltrateProduct";

  static const String VIEWCATEGORY = "\$ViewCategory";

  static const String UPDATEORDER = "\$UpdateOrder";

  static const String CANCELORDER = "\$CancelOrder";

  static const String COMPLETEORDER = "\$CompleteOrder";

  static const String CANCELCHECKOUT = "\$CancelCheckout";

  static const String OBTAINVOUCHER = "\$ObtainVoucher";

  static const String CONTACTCUSTOMSERVICE = "\$ContactCustomService";

  static const String RATE = "\$Rate";

  static const String INVITE = "\$Invite";

  static const String NOVICEGUIDESTART = "\$NoviceGuideStart";

  static const String NOVICEGUIDEEND = "\$NoviceGuideEnd";

  static const String STARTGAME = "\$StartGame";

  static const String ENDGAME = "\$EndGame";

  static const String WINPROPS = "\$WinProps";

  static const String CONSUMEPROPS = "\$ConsumeProps";

  static const String ADDFRIEND = "\$AddFriend";

  static const String ADDBLACKLIST = "\$AddBlacklist";

  static const String VIEWFRIENDLIST = "\$ViewFriendList";

  static const String QUITUSERGROUP = "\$QuitUserGroup";

  static const String CREATEUSERGROUP = "\$CreateUserGroup";

  static const String DISBANDUSERGROUP = "\$DisbandUserGroup";

  static const String UPGRADEUSERGROUP = "\$UpgradeUserGroup";

  static const String VIEWUSERGROUP = "\$ViewUserGroup";

  static const String JOINTEAM = "\$JoinTeam";

  static const String SENDMESSAGE = "\$SendMessage";

  static const String LEARNSKILL = "\$LearnSkill";

  static const String USESKILL = "\$UseSkill";

  static const String GETEQUIPMENT = "\$GetEquipment";

  static const String LOSEEQUIPMENT = "\$LoseEquipment";

  static const String ENHANCEEQUIPMENT = "\$EnhanceEquipment";

  static const String SWITCHCLASS = "\$SwitchClass";

  static const String ACCEPTTASK = "\$AcceptTask";

  static const String FINISHTASK = "\$FinishTask";

  static const String ATTENDACTIVITY = "\$AttendActivity";

  static const String FINISHCUTSCENE = "\$FinishCutscene";

  static const String SKIPCUTSCENE = "\$SkipCutscene";

  static const String GETPET = "\$GetPet";

  static const String LOSEPET = "\$LosePet";

  static const String ENHANCEPET = "\$EnhancePet";

  static const String GETMOUNT = "\$GetMount";

  static const String LOSEMOUNT = "\$LoseMount";

  static const String ENHANCEMOUNT = "\$EnhanceMount";

  static const String CREATEROLE = "\$CreateRole";

  static const String SIGNINROLE = "\$SignInRole";

  static const String SIGNOUTROLE = "\$SignOutRole";

  static const String STARTBATTLE = "\$StartBattle";

  static const String ENDBATTLE = "\$EndBattle";

  static const String STARTDUNGEON = "\$StartDungeon";

  static const String FINISHDUNGEON = "\$FinishDungeon";

  static const String VIEWPACKAGE = "\$ViewPackage";

  static const String REDEEM = "\$Redeem";

  static const String MODIFYSETTING = "\$ModifySetting";

  static const String WATCHVIDEO = "\$WatchVideo";

  static const String CLICKMESSAGE = "\$ClickMessage";

  static const String DRAWCARD = "\$DrawCard";

  static const String VIEWCARDLIST = "\$ViewCardList";

  static const String BINDACCOUNT = "\$BindAccount";

  static const String STARTEXERCISE = "\$StartExercise";

  static const String ENDEXERCISE = "\$EndExercise";

  static const String STARTPLAYMEDIA = "\$StartPlayMedia";

  static const String ENDPLAYMEDIA = "\$EndPlayMedia";

  static const String STARTEXAMINE = "\$StartExamine";

  static const String ENDEXAMINE = "\$EndExamine";

  static const String CHECKIN = "\$CheckIn";

  static const String COMPENSATION = "\$Compensation";

  static const String POST = "\$Post";

  static const String SHAREAPP = "\$ShareApp";

  static const String IMPROVEINFORMATION = "\$ImproveInformation";

  static const String VIEWHOUSELIST = "\$ViewHouseList";

  static const String VIEWHOUSEDETAIL = "\$ViewHouseDetail";

  static const String EXCHANGEGOODS = "\$ExchangeGoods";

  static const String BINDDEVICE = "\$BindDevice";

  static const String UNBINDDEVICE = "\$UnBindDevice";

  static const String RESERVEMAINTENANCE = "\$ReserveMaintenance";

  static const String DEVICEMISSINGREPORT = "\$DeviceMissingReport";
}

// Huawei Analytics Parameter Types
class HAParamType {
  static const String ACHIEVEMENTID = "\$AchievementId";

  static const String STORENAME = "\$StoreName";

  static const String ROLENAME = "\$RoleName";

  static const String OPTION = "\$Option";

  static const String STEP = "\$Step";

  static const String CONTENTTYPE = "\$ContentType";

  static const String VOUCHER = "\$Voucher";

  static const String CURRNAME = "\$CurrName";

  static const String DESTINATION = "\$Destination";

  static const String ENDDATE = "\$EndDate";

  static const String FLIGHTNO = "\$FlightNo";

  static const String USERGROUPID = "\$UserGroupId";

  static const String POSITIONID = "\$PositionId";

  static const String BRAND = "\$Brand";

  static const String CATEGORY = "\$Category";

  static const String PRODUCTID = "\$ProductId";

  static const String PRODUCTLIST = "\$ProductList";

  static const String PRODUCTNAME = "\$ProductName";

  static const String PRODUCTFEATURE = "\$ProductFeature";

  static const String LEVELID = "\$LevelId";

  static const String LEVELNAME = "\$LevelName";

  static const String PLACE = "\$Place";

  static const String CHANNEL = "\$Channel";

  static const String BOOKINGDAYS = "\$BookingDays";

  static const String PASSENGERSNUMBER = "\$PassengersNumber";

  static const String BOOKINGROOMS = "\$BookingRooms";

  static const String ORIGINATINGPLACE = "\$OriginatingPlace";

  static const String PRICE = "\$Price";

  static const String QUANTITY = "\$Quantity";

  static const String SCORE = "\$Score";

  static const String SEARCHKEYWORDS = "\$SearchKeywords";

  static const String SHIPPING = "\$Shipping";

  static const String BEGINDATE = "\$BeginDate";

  static const String RESULT = "\$Result";

  static const String TAXFEE = "\$TaxFee";

  static const String KEYWORDS = "\$Keywords";

  static const String TRANSACTIONID = "\$TransactionId";

  static const String CLASS = "\$Class";

  static const String REVENUE = "\$Revenue";

  static const String VIRTUALCURRNAME = "\$VirtualCurrName";

  static const String CLICKID = "\$ClickId";

  static const String PROMOTIONNAME = "\$PromotionName";

  static const String CONTENT = "\$Content";

  static const String EXTENDPARAM = "\$ExtendParam";

  static const String MATERIALNAME = "\$MaterialName";

  static const String MATERIALSLOT = "\$MaterialSlot";

  static const String PLACEID = "\$PlaceId";

  static const String MEDIUM = "\$Medium";

  static const String SOURCE = "\$Source";

  static const String ACOUNTTYPE = "\$AcountType";

  static const String REGISTMETHOD = "\$RegistMeth";

  static const String EVTRESULT = "\$EvtResult";

  static const String PREVLEVEL = "\$PrevLevel";

  static const String CURRVLEVEL = "\$CurrvLevel";

  static const String REASON = "\$Reason";

  static const String VOUCHERS = "\$Vouchers";

  static const String MATERIALSLOTTYPE = "\$MaterialSlotType";

  static const String LISTID = "\$ListId";

  static const String FILTERS = "\$Filters";

  static const String SORTS = "\$Sorts";

  static const String ORDERID = "\$OrderId ";

  static const String PAYTYPE = "\$PayType";

  static const String EXPIREDATE = "\$ExpireDate";

  static const String VOUCHERTYPE = "\$VoucherType";

  static const String SERVICETYPE = "\$ServiceType";

  static const String DETAILS = "\$Details";

  static const String COMMENTTYPE = "\$CommentType";

  static const String DURATION = "\$Duration";

  static const String LEVEL = "\$Level";

  static const String PURCHASEENTRY = "\$PurchaseEntry";

  static const String PROPS = "\$Props";

  static const String ENTRY = "\$Entry";

  static const String INVITER = "\$Inviter";

  static const String VIPLEVEL = "\$VIPLevel";

  static const String FIRSTSIGNIN = "\$FirstSignIn";

  static const String DISCOUNT = "\$Discount";

  static const String FIRSTPAY = "\$FirstPay";

  static const String TASKID = "\$TaskId";

  static const String FRIENDNUMBER = "\$FriendNumber";

  static const String USERGROUPNAME = "\$UserGroupName";

  static const String USERGROUPLEVEL = "\$UserGroupLevel";

  static const String MEMBERS = "\$Members";

  static const String LEVELBEFORE = "\$LevelBefore";

  static const String MESSAGETYPE = "\$MessageType";

  static const String ROLECOMBAT = "\$RoleCombat";

  static const String ISTOPLEVEL = "\$IsTopLevel";

  static const String ROLECLASS = "\$RoleClass";

  static const String SKILLNAME = "\$SkillName";

  static const String SKILLLEVEL = "\$SkillLevel";

  static const String SKILLLEVELBEFORE = "\$SkillLevelBefore";

  static const String EQUIPMENTID = "\$EquipmentId";

  static const String EQUIPMENTNAME = "\$EquipmentName";

  static const String EQUIPMENTLEVEL = "\$EquipmentLevel";

  static const String CLASSLIMIT = "\$ClassLimit";

  static const String LEVELLIMIT = "\$LevelLimit";

  static const String ISFREE = "\$IsFree";

  static const String TOTALAFTERCHANGE = "\$TotalAfterChange";

  static const String QUALITY = "\$Quality";

  static const String ENHANCETYPE = "\$EnhanceType";

  static const String NEWCLASS = "\$NewClass";

  static const String OLDCLASS = "\$OldClass";

  static const String TASKTYPE = "\$TaskType";

  static const String TASKNAME = "\$TaskName";

  static const String REWARD = "\$Reward";

  static const String ACTIVITYTYPE = "\$ActivityType";

  static const String ACTIVITYNAME = "\$ActivityName";

  static const String CUTSCENENAME = "\$CutsceneName";

  static const String PETID = "\$PetId";

  static const String PETDEFAULTNAME = "\$PetDefaultName";

  static const String PETLEVEL = "\$PetLevel";

  static const String MOUNTID = "\$MountId";

  static const String MOUNTDEFAULTNAME = "\$MountDefaultName";

  static const String MOUNTLEVEL = "\$MountLevel";

  static const String ROLEGENDER = "\$RoleGender";

  static const String SERVER = "\$Server";

  static const String FIRSTCREATE = "\$FirstCreate";

  static const String COMBAT = "\$Combat";

  static const String BATTLETYPE = "\$BattleType";

  static const String BATTLENAME = "\$BattleName";

  static const String NUMBEROFCARDS = "\$NumberOfCards";

  static const String CARDLIST = "\$CardList";

  static const String PARTICIPANTS = "\$Participants";

  static const String DIFFICULTY = "\$Difficulty";

  static const String MVP = "\$MVP";

  static const String DAMAGE = "\$Damage";

  static const String RANKING = "\$Ranking";

  static const String DUNGEONNAME = "\$DungeonName";

  static const String WINREASON = "\$WinReason";

  static const String BALANCE = "\$Balance";

  static const String PACKAGETYPE = "\$PackageType";

  static const String AMOUNT = "\$Amount";

  static const String ITEMLIST = "\$ItemList";

  static const String GIFTTYPE = "\$GiftType";

  static const String GIFTNAME = "\$GiftName";

  static const String TYPE = "\$Type";

  static const String OLDVALUE = "\$OldValue";

  static const String NEWVALUE = "\$NewValue";

  static const String VIDEOTYPE = "\$VideoType";

  static const String VIDEONAME = "\$VideoName";

  static const String MESSAGETITLE = "\$MessageTitle";

  static const String OPERATION = "\$Operation";

  static const String NUMBEROFDRAWING = "\$NumberOfDrawing";

  static const String LEFTPULLSFORGUARANTEE = "\$LeftPullsForGuarantee";

  static const String VIPTYPE = "\$VIPType";

  static const String VIPSTATUS = "\$VIPStatus";

  static const String VIPEXPIREDATE = "\$VIPExpireDate";

  static const String ENTER = "\$Enter";

  static const String STARTDATE = "\$StartDate";

  static const String EFFECTIVETIME = "\$EffectiveTime";

  static const String NAME = "\$Name";

  static const String MODE = "\$Mode";

  static const String SUBJECT = "\$Subject";

  static const String ACCURACY = "\$Accuracy";

  static const String CONTENTLENGTH = "\$ContentLength";

  static const String REMARK = "\$Remark";

  static const String CONTENTNAME = "\$ContentName";

  static const String SECTION = "\$Section";

  static const String DAYS = "\$Days";

  static const String POSTID = "\$PostId";

  static const String INFORMATIONTYPE = "\$InformationType";

  static const String INFORMATION = "\$Information";

  static const String FEATURE = "\$Feature";

  static const String ROOMS = "\$Rooms";

  static const String SALEPRICE = "\$SalePrice";

  static const String RENTFEE = "\$RentFee";

  static const String RENTTYPE = "\$RentType";

  static const String PAGENAME = "\$PageName";

  static const String SERIES = "\$Series";

  static const String MODEL = "\$Model";

  static const String DEVICETYPE = "\$DeviceType";

  static const String DEVICENAME = "\$DeviceName";

  static const String BINDDURATION = "\$BindDuration";

  static const String DEALERNAME = "\$DealerName";

  static const String ARRIVALDATE = "\$ArrivalDate";

  static const String BUYERTYPE = "\$BuyerType";

  static const String SEAT = "\$Seat";

  static const String ENERGY = "\$Energy";

  static const String CONFIGURATION = "\$Configuration";

  static const String ISLOAN = "\$IsLoan";

  static const String LOANPRODUCTNAME = "\$LoanProductName";

  static const String LOANCHANNEL = "\$LoanChannel";

  static const String REPAYMENTMETHOD = "\$RepaymentMethod";
}
