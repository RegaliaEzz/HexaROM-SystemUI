.class public Lcom/android/systemui/qs/tiles/MobileDataTile;
.super Lcom/android/systemui/qs/QSTile;
.source "MobileDataTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DB_MOBILE_DATA:Ljava/lang/String; = "mobile_data"

.field private static final DB_ROAMING_DATA:Ljava/lang/String; = "data_roaming"

.field private static final MSGID_DATA_OFF:I = 0x1

.field private static final MSGID_DATA_OFF_KOR:I = 0x2

.field private static final MSGID_DATA_ON_KOR:I = 0x3

.field private static final MSGID_NO_SIM:I = 0x6

.field private static final MSGID_NULL:I = 0x0

.field private static final MSGID_ROAMING_CTC:I = 0x5

.field private static final MSGID_ROAMING_DATA_ON_KOR:I = 0x4

.field private static final NONE:I = -0x1

.field private static final SLOT0:I = 0x0

.field private static final SLOT1:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mClickedTime:J

.field private mErrorMsgId:I

.field private mIsAirPlaneMode:Z

.field private mIsDataEnabled:Z

.field private mIsRoamingDataEnabled:Z

.field private mMSimPSListner:[Landroid/telephony/PhoneStateListener;

.field private final mMobileDataSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mNewPhonId:I

.field private mPhoneCnt:I

.field private mPhoneId:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPopupMsgId:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRoamingDataSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private final mShopDemoSetting:Lcom/android/systemui/qs/SecureSetting;

.field private mTM:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 7
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 167
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 79
    iput v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneId:I

    .line 80
    iget v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneId:I

    iput v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mNewPhonId:I

    .line 82
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    .line 84
    iput v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneCnt:I

    .line 86
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsRoamingDataEnabled:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsAirPlaneMode:Z

    .line 91
    iput v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPopupMsgId:I

    .line 94
    iput v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgId:I

    .line 96
    new-instance v3, Lcom/android/systemui/qs/tiles/MobileDataTile$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$1;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 218
    new-instance v3, Lcom/android/systemui/qs/tiles/MobileDataTile$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$6;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 169
    new-instance v3, Lcom/android/systemui/qs/tiles/MobileDataTile$2;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v6, "mobile_data"

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/MobileDataTile$2;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileDataSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 180
    new-instance v3, Lcom/android/systemui/qs/tiles/MobileDataTile$3;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v6, "airplane_mode_on"

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/MobileDataTile$3;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 190
    new-instance v3, Lcom/android/systemui/qs/tiles/MobileDataTile$4;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v6, "data_roaming"

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/MobileDataTile$4;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mRoamingDataSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 201
    new-instance v3, Lcom/android/systemui/qs/tiles/MobileDataTile$5;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v6, "shopdemo"

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/MobileDataTile$5;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mShopDemoSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 209
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsAirPlaneMode:Z

    .line 210
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->getMobileDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    .line 212
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->registerPhoneStateListener()V

    .line 214
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    iput v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneId:I

    .line 215
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->updateState()V

    .line 216
    return-void

    :cond_0
    move v0, v1

    .line 209
    goto :goto_0

    .line 214
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getDefaultDataPhoneId()I

    move-result v0

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->registerPhoneStateListener()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/MobileDataTile;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(IIII)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoaming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsAirPlaneMode:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/MobileDataTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPopupMsgId:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setRoamingDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/MobileDataTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneId:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/tiles/MobileDataTile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneId:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->updateState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->unregisterPhoneStateListener()V

    return-void
.end method

.method private getDefaultDataPhoneId()I
    .locals 4

    .prologue
    .line 736
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    .line 737
    .local v0, "phoneId":I
    sget-object v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultDataReady:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    return v0
.end method

.method private getMobilDataMState()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 442
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isNoSimState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    :cond_0
    :goto_0
    return v0

    .line 446
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsAirPlaneMode:Z

    if-nez v1, :cond_0

    .line 447
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isBlockedByEdmPolicy()Z
    .locals 5

    .prologue
    .line 402
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v3, "isCellularDataAllowed"

    sget-object v4, Lcom/android/systemui/qs/tiles/MobileDataTile;->selectionArgsFalse:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isBlockedEdmUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 404
    :cond_0
    const/4 v0, 0x1

    .line 408
    .local v0, "ret":Z
    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBlockedByEdmPolicy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_1
    return v0

    .line 406
    .end local v0    # "ret":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private isDataRoaming()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 710
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseRoamingDataForKOR:Z

    if-nez v2, :cond_1

    .line 727
    :cond_0
    :goto_0
    return v3

    .line 713
    :cond_1
    const/4 v1, 0x0

    .line 714
    .local v1, "isOversea":Z
    const-string v2, "ril.currentplmn"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, "currentPlmn":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_2

    .line 716
    sget-object v2, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    const-string v4, "isDataRoaming : mTM == null "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_0

    .line 720
    :cond_2
    if-nez v0, :cond_3

    .line 721
    sget-object v2, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    const-string v4, "isDataRoaming : currentPlmn null "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 724
    :cond_3
    const-string v2, "oversea"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 725
    sget-object v2, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDataRoaming : isNetworkRoaming :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " currentplmn :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " oversea = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const/4 v2, 0x1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_1
.end method

.method private registerPhoneStateListener()V
    .locals 5

    .prologue
    .line 628
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->getNumberOfSim(Landroid/content/Context;)I

    move-result v1

    .line 629
    .local v1, "simCount":I
    sget-object v2, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerPhoneStateListener: mSimCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    .line 632
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    .line 633
    const/4 v0, 0x1

    .line 634
    .local v0, "listen":I
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mDisableMobileDataDuringVolteCall:Z

    if-eqz v2, :cond_0

    .line 635
    or-int/lit16 v0, v0, 0x800

    .line 636
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v3, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 638
    .end local v0    # "listen":I
    :cond_1
    return-void
.end method

.method private setDataRoaming(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    .line 608
    sget-object v4, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDataRoaming() enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    if-eqz p1, :cond_1

    .line 610
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mShowRoamingPopupForKOO:Z

    if-eqz v4, :cond_0

    .line 611
    const v3, 0x7f0d02c4

    .line 612
    .local v3, "title":I
    const v0, 0x104000a

    .line 613
    .local v0, "button1":I
    const/high16 v1, 0x1040000

    .line 614
    .local v1, "button2":I
    const v2, 0x7f0d0420

    .line 615
    .local v2, "msg":I
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPopupMsgId:I

    .line 616
    invoke-direct {p0, v3, v2, v0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(IIII)V

    .line 625
    .end local v0    # "button1":I
    .end local v1    # "button2":I
    .end local v2    # "msg":I
    .end local v3    # "title":I
    :goto_0
    return-void

    .line 618
    :cond_0
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    .line 619
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 620
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SKT_ROAMING_DATA_POPUP"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 623
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setRoamingDataEnabled(Z)V

    goto :goto_0
.end method

.method private setDataSlot(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 594
    return-void
.end method

.method private setMobileData(Z)V
    .locals 10
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 459
    sget-object v7, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMobileData() enabled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mShowMobileDataOffPopup:Z

    if-nez v7, :cond_0

    if-nez p1, :cond_0

    .line 461
    sget-object v6, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    const-string v7, "NOT Show MobileData Off-popup"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileDataEnabled(Z)V

    .line 530
    :goto_0
    return-void

    .line 466
    :cond_0
    const v5, 0x7f0d0412

    .line 467
    .local v5, "title":I
    const v0, 0x104000a

    .line 468
    .local v0, "button1":I
    const/high16 v1, 0x1040000

    .line 469
    .local v1, "button2":I
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mShow1stRoamingPopupForCTC:Z

    if-eqz v7, :cond_5

    .line 470
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "EverPoppedUp"

    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 471
    .local v2, "checkedRoamingOn":I
    const-string v7, "true"

    const-string v8, "gsm.operator.isroaming"

    const-string v9, "false"

    invoke-static {v8, v3, v9}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "true"

    const-string v8, "gsm.operator.isroaming"

    const-string v9, "false"

    invoke-static {v8, v6, v9}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    move v3, v6

    .line 473
    .local v3, "isRoaming":Z
    :cond_2
    if-eqz p1, :cond_4

    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    .line 474
    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    .line 475
    sget-object v7, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkedRoamingOn (CTC): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "EverPoppedUp"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 479
    invoke-direct {p0, v6}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileDataEnabled(Z)V

    .line 481
    :cond_3
    const v4, 0x7f0d0417

    .line 482
    .local v4, "msg":I
    const v0, 0x7f0d0418

    .line 483
    const/4 v1, 0x0

    .line 484
    const/4 v6, 0x5

    iput v6, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPopupMsgId:I

    .line 485
    invoke-direct {p0, v5, v4, v0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(IIII)V

    goto :goto_0

    .line 487
    .end local v4    # "msg":I
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileDataEnabled(Z)V

    goto :goto_0

    .line 489
    .end local v2    # "checkedRoamingOn":I
    .end local v3    # "isRoaming":Z
    :cond_5
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseRoamingDataForKOR:Z

    if-eqz v7, :cond_9

    .line 490
    if-nez p1, :cond_7

    .line 491
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPopupMsgId:I

    .line 492
    const v0, 0x7f0d043f

    .line 494
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mShowMobileDataPopupForLgt:Z

    if-eqz v6, :cond_6

    .line 495
    const v4, 0x7f0d041a

    .line 505
    .restart local v4    # "msg":I
    :goto_1
    invoke-direct {p0, v5, v4, v0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(IIII)V

    goto/16 :goto_0

    .line 497
    .end local v4    # "msg":I
    :cond_6
    const v4, 0x7f0d0419

    .restart local v4    # "msg":I
    goto :goto_1

    .line 499
    .end local v4    # "msg":I
    :cond_7
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPopupMsgId:I

    .line 500
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mShowMobileDataPopupForLgt:Z

    if-eqz v6, :cond_8

    .line 501
    const v4, 0x7f0d041c

    .restart local v4    # "msg":I
    goto :goto_1

    .line 503
    .end local v4    # "msg":I
    :cond_8
    const v4, 0x7f0d041b

    .restart local v4    # "msg":I
    goto :goto_1

    .line 507
    .end local v4    # "msg":I
    :cond_9
    if-eqz p1, :cond_a

    .line 508
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileDataEnabled(Z)V

    goto/16 :goto_0

    .line 510
    :cond_a
    const v5, 0x7f0d0412

    .line 511
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mShowMobileDataPopupForVZW:Z

    if-eqz v7, :cond_c

    .line 512
    const v5, 0x7f0d0413

    .line 513
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/statusbar/DeviceState;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/statusbar/DeviceState;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 514
    const v4, 0x7f0d041e

    .line 524
    .restart local v4    # "msg":I
    :goto_2
    const v0, 0x7f0d043f

    .line 525
    const/high16 v1, 0x1040000

    .line 526
    iput v6, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPopupMsgId:I

    .line 527
    invoke-direct {p0, v5, v4, v0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(IIII)V

    goto/16 :goto_0

    .line 516
    .end local v4    # "msg":I
    :cond_b
    const v4, 0x7f0d041d

    .restart local v4    # "msg":I
    goto :goto_2

    .line 521
    .end local v4    # "msg":I
    :cond_c
    const v4, 0x7f0d0414

    .restart local v4    # "msg":I
    goto :goto_2
.end method

.method private setMobileDataEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 533
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_0

    .line 534
    sget-object v2, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    const-string v3, "MSIM : setMobileDataEnabled : mTM = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :goto_0
    return-void

    .line 545
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 547
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 548
    .local v1, "useSubID":[I
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v0

    .line 549
    .local v0, "subId":I
    sget-object v2, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSIM : setMobileDataEnabled :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 551
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 562
    .end local v0    # "subId":I
    .end local v1    # "useSubID":[I
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    goto :goto_0

    .line 553
    .restart local v0    # "subId":I
    .restart local v1    # "useSubID":[I
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v0

    .line 554
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_1

    .line 556
    .end local v0    # "subId":I
    .end local v1    # "useSubID":[I
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoaming()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 557
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setRoamingDataEnabled(Z)V

    goto :goto_1

    .line 559
    :cond_3
    sget-object v2, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMobileDataEnabled() enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_1
.end method

.method private setMobileDataEnabledMultiSlot(IZ)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "enabled"    # Z

    .prologue
    const/4 v4, 0x0

    .line 566
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 567
    .local v0, "useSubID":[I
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 568
    sget-object v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    const-string v2, "setMobileDataEnabledMultiSlot : mTM = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :goto_0
    return-void

    .line 571
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 573
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 574
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_0

    .line 576
    :cond_1
    if-eqz v0, :cond_3

    .line 577
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 578
    aget v1, v0, v4

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 579
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 584
    :goto_1
    sget-object v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMobileDataEnabledMultiSlot enabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iput p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneId:I

    goto :goto_0

    .line 581
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 582
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    aget v2, v0, v4

    invoke-virtual {v1, v2, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_1

    .line 587
    :cond_3
    sget-object v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "useSubID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setRoamingDataEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 597
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mRoamingDataSetting:Lcom/android/systemui/qs/GlobalSetting;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/GlobalSetting;->setValue(I)V

    .line 599
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowRoamingToastForLGT:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 600
    new-instance v0, Landroid/content/Intent;

    const-string v1, "kr.co.uplus.RESTRICT_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 601
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ENABLED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 602
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 603
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0421

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 605
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 597
    goto :goto_0
.end method

.method private showPopupDialog(IIII)V
    .locals 3
    .param p1, "title"    # I
    .param p2, "msg"    # I
    .param p3, "button1"    # I
    .param p4, "button2"    # I

    .prologue
    .line 663
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 664
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 665
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 666
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 667
    new-instance v1, Lcom/android/systemui/qs/tiles/MobileDataTile$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$7;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 687
    if-eqz p4, :cond_1

    .line 688
    new-instance v1, Lcom/android/systemui/qs/tiles/MobileDataTile$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$8;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 696
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 697
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 698
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/systemui/qs/tiles/MobileDataTile$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$9;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 704
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    .line 705
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 707
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    return-void
.end method

.method private unregisterPhoneStateListener()V
    .locals 3

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 644
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 647
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->getMobileDataEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    .line 648
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 654
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isNoSimState()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_1

    .line 655
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    .line 660
    :goto_0
    return-void

    .line 657
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsAirPlaneMode:Z

    if-nez v2, :cond_2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 659
    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsAirPlaneMode:Z

    if-nez v2, :cond_4

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 3

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->makeContentDescription(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActionMsgOnCover()Ljava/lang/String;
    .locals 3

    .prologue
    .line 808
    iget v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 809
    const-string v1, ""

    .line 813
    :goto_0
    return-object v1

    .line 812
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, "message":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public getActionTypeOnCover()I
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x3

    .line 756
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v7, "isCellularDataAllowed"

    sget-object v8, Lcom/android/systemui/qs/tiles/MobileDataTile;->selectionArgsFalse:[Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isBlockedEdmUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 758
    :cond_0
    const v4, 0x1040b7e

    iput v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgId:I

    .line 803
    :cond_1
    :goto_0
    return v1

    .line 763
    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsAirPlaneMode:Z

    if-eqz v5, :cond_3

    .line 764
    const v4, 0x7f0d038e

    iput v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgId:I

    goto :goto_0

    .line 768
    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SIM_CHECK"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    .line 770
    .local v3, "isSupportSimCheck":Z
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isSimReady()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v3, :cond_4

    .line 774
    const v4, 0x7f0d03fd

    iput v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgId:I

    goto :goto_0

    .line 780
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/DeviceState;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/DeviceState;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 781
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    const-string v6, "volte"

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 782
    const v4, 0x7f0d0416

    iput v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgId:I

    goto :goto_0

    .line 788
    :cond_5
    const/4 v1, 0x2

    .line 789
    .local v1, "coverAction":I
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mShow1stRoamingPopupForCTC:Z

    if-eqz v5, :cond_8

    .line 790
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "EverPoppedUp"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 791
    .local v0, "checkedRoamingOn":I
    const-string v5, "true"

    const-string v6, "gsm.operator.isroaming"

    const-string v7, "false"

    invoke-static {v6, v2, v7}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "true"

    const-string v6, "gsm.operator.isroaming"

    const-string v7, "false"

    invoke-static {v6, v4, v7}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move v2, v4

    .line 794
    .local v2, "isRoaming":Z
    :cond_7
    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 795
    const/4 v1, 0x1

    goto :goto_0

    .line 798
    .end local v0    # "checkedRoamingOn":I
    .end local v2    # "isRoaming":Z
    :cond_8
    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    if-eqz v4, :cond_9

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mShowMobileDataOffPopup:Z

    if-nez v4, :cond_a

    :cond_9
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mUseRoamingDataForKOR:Z

    if-eqz v4, :cond_1

    .line 799
    :cond_a
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 454
    const/16 v0, 0x199

    return v0
.end method

.method protected handleClick()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 276
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v7, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v7, v7, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v7, v8, :cond_1

    move v4, v8

    .line 277
    .local v4, "state":Z
    :goto_0
    sget-object v10, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleClick : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v7, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v7, v7, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 287
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v7, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 369
    :cond_0
    :goto_1
    return-void

    .end local v4    # "state":Z
    :cond_1
    move v4, v9

    .line 276
    goto :goto_0

    .line 290
    .restart local v4    # "state":Z
    :cond_2
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    .line 291
    if-nez v4, :cond_5

    move v7, v8

    :goto_2
    invoke-direct {p0, v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileData(Z)V

    .line 294
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mShopDemoSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v7}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v7

    if-eq v7, v8, :cond_4

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mDisableInLDUDevice:Z

    if-eqz v7, :cond_6

    .line 295
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 296
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v10, 0x7f0d0425

    new-array v8, v8, [Ljava/lang/Object;

    const v11, 0x7f0d0412

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v3, v10, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_5
    move v7, v9

    .line 291
    goto :goto_2

    .line 304
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v7, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v7, v7, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v7, v12, :cond_0

    .line 308
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mShowMobileDataPopupForVZW:Z

    if-eqz v7, :cond_7

    .line 309
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/statusbar/DeviceState;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    const-string v10, "volte"

    invoke-virtual {v7, v10}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 311
    sget-object v8, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MobileData change is NOT allowed during volteCall : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v7, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v7, v7, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0416

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 317
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isBlockedByEdmPolicy()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 318
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 319
    .local v6, "toastAlert":Landroid/widget/Toast;
    const v7, 0x1040b7e

    invoke-virtual {v6, v7}, Landroid/widget/Toast;->setText(I)V

    .line 320
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 324
    .end local v6    # "toastAlert":Landroid/widget/Toast;
    :cond_8
    iget-boolean v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsAirPlaneMode:Z

    if-eqz v7, :cond_9

    .line 328
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0415

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 334
    :cond_9
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getMetricsCategory()I

    move-result v11

    if-nez v4, :cond_a

    move v7, v8

    :goto_3
    invoke-static {v10, v11, v7}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 335
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    .line 336
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isSimReady()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 337
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoaming()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 338
    iget-boolean v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    if-nez v7, :cond_b

    :goto_4
    invoke-direct {p0, v8}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setDataRoaming(Z)V

    goto/16 :goto_1

    :cond_a
    move v7, v9

    .line 334
    goto :goto_3

    :cond_b
    move v8, v9

    .line 338
    goto :goto_4

    .line 357
    :cond_c
    iget-boolean v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    if-nez v7, :cond_d

    :goto_5
    invoke-direct {p0, v8}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileData(Z)V

    goto/16 :goto_1

    :cond_d
    move v8, v9

    goto :goto_5

    .line 362
    :cond_e
    const v5, 0x7f0d03fc

    .line 363
    .local v5, "title":I
    const v2, 0x7f0d03fd

    .line 364
    .local v2, "msg":I
    const v0, 0x104000a

    .line 365
    .local v0, "button1":I
    const/4 v1, 0x0

    .line 366
    .local v1, "button2":I
    const/4 v7, 0x6

    iput v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPopupMsgId:I

    .line 367
    invoke-direct {p0, v5, v2, v0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(IIII)V

    goto/16 :goto_1
.end method

.method protected handleLongClick()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 373
    sget-object v2, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLongClick()"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mShopDemoSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v1

    if-eq v1, v4, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mDisableInLDUDevice:Z

    if-eqz v1, :cond_2

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 377
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0425

    new-array v3, v4, [Ljava/lang/Object;

    const v4, 0x7f0d0412

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 398
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_1
    :goto_0
    return-void

    .line 385
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isBlockedByEdmPolicy()Z

    move-result v1

    if-nez v1, :cond_1

    .line 386
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsAirPlaneMode:Z

    if-eqz v1, :cond_3

    .line 387
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0415

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    goto :goto_0

    .line 391
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoaming()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 392
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mIsLGTQsSettingAct:Z

    if-eqz v1, :cond_4

    .line 393
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$GlobalRoamingSettingsActivity"

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->startActivityDismissingKeyguard(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :cond_4
    const-string v1, "com.samsung.settings.T_ROAMING_SETTINGS"

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->startActivityDismissingKeyguard(Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_5
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->startActivityDismissingKeyguard(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 414
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 415
    .local v0, "value":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mShopDemoSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v1

    if-eq v1, v2, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mDisableInLDUDevice:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x3

    .end local v0    # "value":I
    :cond_1
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 416
    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 417
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoaming()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 418
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d02c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 436
    :goto_1
    const v1, 0x7f020364

    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 437
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->makeContentDescription(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 438
    return-void

    .line 414
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getMobilDataMState()I

    move-result v0

    goto :goto_0

    .line 420
    .end local p2    # "arg":Ljava/lang/Object;
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d02c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 57
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 271
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    const/4 v3, 0x0

    .line 239
    if-eqz p1, :cond_2

    .line 240
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 241
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseRoamingDataForKOR:Z

    if-eqz v1, :cond_0

    .line 250
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    :cond_0
    const-string v1, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v1, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v1, "android.net.conn.MOBILE_DATA_ENABLE_POPUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 262
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 263
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileDataSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 264
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseRoamingDataForKOR:Z

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mRoamingDataSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mShopDemoSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 267
    return-void

    .line 259
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
