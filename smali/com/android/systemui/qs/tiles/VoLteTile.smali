.class public Lcom/android/systemui/qs/tiles/VoLteTile;
.super Lcom/android/systemui/qs/QSTile;
.source "VoLteTile.java"


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

.field private static final INTENT_KEY_ICC_STATE:Ljava/lang/String; = "ss"

.field private static final TAG:Ljava/lang/String;

.field private static final VOICECALL_TYPE_CS:I = 0x1

.field private static final VOICECALL_TYPE_KEY:Ljava/lang/String; = "voicecall_type"

.field private static final VOICECALL_TYPE_VoLTE:I


# instance fields
.field private final mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mDistinguishVolteFromVowifi:Z

.field private mInitialized:Z

.field private mPhoneCnt:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTM:Landroid/telephony/TelephonyManager;

.field private final mVoLTESetting:Lcom/android/systemui/qs/SystemSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/VoLteTile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 69
    iput v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mPhoneCnt:I

    .line 70
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mDistinguishVolteFromVowifi:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mInitialized:Z

    .line 81
    new-instance v0, Lcom/android/systemui/qs/tiles/VoLteTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/VoLteTile$1;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    new-instance v0, Lcom/android/systemui/qs/tiles/VoLteTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "voicecall_type"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/VoLteTile$2;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mVoLTESetting:Lcom/android/systemui/qs/SystemSetting;

    .line 114
    new-instance v0, Lcom/android/systemui/qs/tiles/VoLteTile$3;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "airplane_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/VoLteTile$3;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 120
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/systemui/qs/tiles/VoLteTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/VoLteTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoLteTile;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/VoLteTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoLteTile;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mInitialized:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/VoLteTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoLteTile;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/VoLteTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoLteTile;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/VoLteTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoLteTile;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/VoLteTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoLteTile;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/VoLteTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoLteTile;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/VoLteTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoLteTile;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState()V

    return-void
.end method

.method private checkDistinguishVolteFromVoWifi(Ljava/lang/String;)Z
    .locals 3
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 338
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v0

    .line 342
    :cond_1
    const-string v1, "52005"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getVoLTEEnabled()Z
    .locals 4

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mVoLTESetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->isVolteSupportedOpeartor()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 239
    :goto_0
    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoLTEEnabled() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return v0

    .line 236
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getVoLteTileState()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 350
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mDisableInNonVolteSim:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->isNonVoLteSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    const/4 v0, 0x3

    .line 354
    .local v0, "ret":I
    :goto_0
    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoLteTileState() retState ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return v0

    .line 353
    .end local v0    # "ret":I
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->getVoLTEEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    if-eq v1, v0, :cond_1

    .restart local v0    # "ret":I
    :goto_1
    goto :goto_0

    .end local v0    # "ret":I
    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method

.method private isNonVoLteSim()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 227
    const-string v2, "persist.ril.ims.eutranParam"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 228
    .local v1, "param":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 229
    .local v0, "nonVolte":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 230
    sget-object v2, Lcom/android/systemui/qs/tiles/VoLteTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNonVoLteSim() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_1
    return v0
.end method

.method private isSupportVoLte()Z
    .locals 2

    .prologue
    .line 223
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isVolteSupportedOpeartor()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 271
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v1

    .line 272
    .local v1, "phoneId":I
    if-gez v1, :cond_0

    .line 273
    const/4 v1, 0x0

    .line 275
    :cond_0
    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "numeric":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->checkDistinguishVolteFromVoWifi(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mDistinguishVolteFromVowifi:Z

    .line 277
    sget-object v4, Lcom/android/systemui/qs/tiles/VoLteTile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isVolteSupportedOpeartor() numeric="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " phoneId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_3

    :cond_1
    move v2, v3

    .line 333
    :cond_2
    :goto_0
    return v2

    .line 282
    :cond_3
    const-string v4, "45416"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "45419"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 284
    const-string v4, "45400"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 286
    const-string v4, "45403"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 288
    const-string v4, "45406"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 290
    const-string v4, "45412"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "45413"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 292
    const-string v4, "45501"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "45504"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 297
    const-string v4, "46601"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "24099"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "24499"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 299
    const-string v4, "46697"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 301
    const-string v4, "46689"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 303
    const-string v4, "46692"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 305
    const-string v4, "46605"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 309
    const-string v4, "45001"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 313
    const-string v4, "52005"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 315
    const-string v4, "52001"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "52003"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "52074"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "52054"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 318
    const-string v4, "52000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "52004"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 323
    const-string v4, "52505"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 325
    const-string v4, "52596"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "52598"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "52599"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "52801"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "52501"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "52502"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 328
    const-string v4, "52503"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    .line 333
    goto/16 :goto_0
.end method

.method private showNoSimDialog(III)V
    .locals 3
    .param p1, "title"    # I
    .param p2, "msg"    # I
    .param p3, "button1"    # I

    .prologue
    .line 359
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 360
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 361
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 362
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 363
    new-instance v1, Lcom/android/systemui/qs/tiles/VoLteTile$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/VoLteTile$4;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 370
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 371
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 372
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/systemui/qs/tiles/VoLteTile$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/VoLteTile$5;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 378
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    .line 379
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 381
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/qs/tiles/VoLteTile;->makeContentDescription(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 219
    const/16 v0, 0x19f

    return v0
.end method

.method protected handleClick()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 151
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v4, v9, :cond_1

    move v1, v5

    .line 152
    .local v1, "buttonState":Z
    :goto_0
    sget-object v7, Lcom/android/systemui/qs/tiles/VoLteTile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleClick : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v4, v10, :cond_2

    .line 197
    :cond_0
    :goto_1
    return-void

    .end local v1    # "buttonState":Z
    :cond_1
    move v1, v6

    .line 151
    goto :goto_0

    .line 157
    .restart local v1    # "buttonState":Z
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tiles/VoLteTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 159
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 160
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const v5, 0x7f0d03fe

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 164
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-ne v4, v9, :cond_5

    :cond_4
    const-string v4, "LTE"

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 167
    sget-object v4, Lcom/android/systemui/qs/tiles/VoLteTile;->TAG:Ljava/lang/String;

    const-string v5, "onClick(): VoLTE disable is not allowed during volte call"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const v5, 0x7f0d0401

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 171
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->getMetricsCategory()I

    move-result v8

    if-nez v1, :cond_6

    move v4, v5

    :goto_2
    invoke-static {v7, v8, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 172
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isSimReady()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->isVolteSupportedOpeartor()Z

    move-result v4

    if-nez v4, :cond_7

    .line 174
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const v5, 0x7f0d03ff

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_6
    move v4, v6

    .line 171
    goto :goto_2

    .line 178
    :cond_7
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState(Ljava/lang/Object;)V

    .line 179
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mVoLTESetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v4

    if-ne v4, v5, :cond_8

    .line 180
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mVoLTESetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v4, v6}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 181
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tiles/VoLteTile;->manualIMSRegister(Landroid/content/Context;)V

    .line 182
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mShowVolteOnPopupOnClick:Z

    if-eqz v4, :cond_0

    .line 183
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const v5, 0x7f0d0400

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 186
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mVoLTESetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 187
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tiles/VoLteTile;->manualIMSDeregister(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 192
    :cond_9
    const v3, 0x7f0d03fc

    .line 193
    .local v3, "titleId":I
    const v2, 0x7f0d03fd

    .line 194
    .local v2, "msgId":I
    const v0, 0x104000a

    .line 195
    .local v0, "button1Id":I
    invoke-direct {p0, v3, v2, v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->showNoSimDialog(III)V

    goto/16 :goto_1
.end method

.method protected handleLongClick()V
    .locals 3

    .prologue
    .line 201
    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLongClick()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_0
    const-string v0, "com.android.phone"

    const-string v1, "com.android.phone.MobileNetworkSettings"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->startActivityDismissingKeyguard(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 209
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 210
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 211
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 212
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d02b8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 213
    const v1, 0x7f020635

    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 214
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tiles/VoLteTile;->makeContentDescription(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 215
    return-void

    .line 209
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->getVoLteTileState()I

    move-result v0

    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 57
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/VoLteTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method public manualIMSDeregister(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 244
    const/4 v1, 0x7

    invoke-static {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 246
    .local v0, "mInterfaceForGeneral":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->TAG:Ljava/lang/String;

    const-string v2, "manualIMSDeregister "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    if-eqz v0, :cond_0

    .line 249
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mDistinguishVolteFromVowifi:Z

    if-eqz v1, :cond_1

    .line 250
    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setVoLTEFeatureDisable()V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->manualDeregister()V

    goto :goto_0
.end method

.method public manualIMSRegister(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    const/4 v1, 0x7

    invoke-static {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 260
    .local v0, "mInterfaceForGeneral":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    sget-object v1, Lcom/android/systemui/qs/tiles/VoLteTile;->TAG:Ljava/lang/String;

    const-string v2, "manualIMSRegister "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    if-eqz v0, :cond_0

    .line 263
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mDistinguishVolteFromVowifi:Z

    if-eqz v1, :cond_1

    .line 264
    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setVoLTEFeatureEnable()V

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->manualRegister()V

    goto :goto_0
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    const/4 v3, 0x0

    .line 124
    if-eqz p1, :cond_1

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mDisableInNonVolteSim:Z

    if-eqz v1, :cond_0

    .line 131
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mTM:Landroid/telephony/TelephonyManager;

    .line 135
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mCM:Landroid/net/ConnectivityManager;

    .line 140
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 141
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mVoLTESetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 142
    return-void

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

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

.method public userSwitch(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mVoLTESetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setUserId(I)V

    .line 397
    return-void
.end method
