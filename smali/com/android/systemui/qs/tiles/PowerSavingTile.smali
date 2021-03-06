.class public Lcom/android/systemui/qs/tiles/PowerSavingTile;
.super Lcom/android/systemui/qs/QSTile;
.source "PowerSavingTile.java"


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
.field private static final ACTION_OPEN_BATTERY:Ljava/lang/String; = "com.samsung.android.sm.ACTION_BATTERY"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final isNPSMsupported:Z

.field private final mNPSMDisable:Lcom/android/systemui/qs/SecureSetting;

.field private final mNPSMSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private final mNPSMTriSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mNPowerSavingEnabled:Z

.field private final mPSMTriSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mPowerSavingEnabled:Z

.field private final mSetting:Lcom/android/systemui/qs/GlobalSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/systemui/qs/tiles/PowerSavingTile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 6
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 60
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mPowerSavingEnabled:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mNPowerSavingEnabled:Z

    .line 71
    new-instance v0, Lcom/android/systemui/qs/tiles/PowerSavingTile$1;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v5, "low_power"

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/android/systemui/qs/tiles/PowerSavingTile$1;-><init>(Lcom/android/systemui/qs/tiles/PowerSavingTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mPowerSavingEnabled:Z

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->isNetworkPowerSavingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->isNPSMsupported:Z

    .line 82
    new-instance v0, Lcom/android/systemui/qs/tiles/PowerSavingTile$2;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v5, "low_power_npsm"

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/android/systemui/qs/tiles/PowerSavingTile$2;-><init>(Lcom/android/systemui/qs/tiles/PowerSavingTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mNPSMSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mNPSMSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mNPowerSavingEnabled:Z

    .line 91
    new-instance v0, Lcom/android/systemui/qs/tiles/PowerSavingTile$3;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "sm_connectivity_disable"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/PowerSavingTile$3;-><init>(Lcom/android/systemui/qs/tiles/PowerSavingTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mNPSMDisable:Lcom/android/systemui/qs/SecureSetting;

    .line 97
    new-instance v0, Lcom/android/systemui/qs/tiles/PowerSavingTile$4;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "low_power_trigger_level"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/PowerSavingTile$4;-><init>(Lcom/android/systemui/qs/tiles/PowerSavingTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mPSMTriSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 102
    new-instance v0, Lcom/android/systemui/qs/tiles/PowerSavingTile$5;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "low_power_trigger_level_npsm"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/PowerSavingTile$5;-><init>(Lcom/android/systemui/qs/tiles/PowerSavingTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mNPSMTriSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 107
    return-void

    :cond_0
    move v0, v2

    .line 79
    goto :goto_0

    :cond_1
    move v1, v2

    .line 90
    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/PowerSavingTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/PowerSavingTile;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mPowerSavingEnabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/PowerSavingTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/PowerSavingTile;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mPowerSavingEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/PowerSavingTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/PowerSavingTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/tiles/PowerSavingTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/PowerSavingTile;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mNPowerSavingEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/PowerSavingTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/PowerSavingTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private hasPackage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 211
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    .line 214
    .local v1, "hasPkg":Z
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 219
    :goto_0
    return v1

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 215
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private isNetworkPowerSavingEnabled()Z
    .locals 1

    .prologue
    .line 204
    const-string v0, "com.sec.EnhancedDataManagement"

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->hasPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sec.NetworkPowerSaving"

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->hasPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/GlobalSetting;->setValue(I)V

    .line 178
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNPSMEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/GlobalSetting;->setValue(I)V

    .line 182
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mNPSMSetting:Lcom/android/systemui/qs/GlobalSetting;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/GlobalSetting;->setValue(I)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mNPSMDisable:Lcom/android/systemui/qs/SecureSetting;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->setValue(I)V

    .line 184
    if-eqz p1, :cond_3

    .line 185
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mNPSMTriSetting:Lcom/android/systemui/qs/GlobalSetting;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mPSMTriSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->setValue(I)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mPSMTriSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/GlobalSetting;->setValue(I)V

    .line 191
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 181
    goto :goto_0

    :cond_1
    move v0, v2

    .line 182
    goto :goto_1

    :cond_2
    move v1, v2

    .line 183
    goto :goto_2

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mPSMTriSetting:Lcom/android/systemui/qs/GlobalSetting;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mNPSMTriSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->setValue(I)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mNPSMTriSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/GlobalSetting;->setValue(I)V

    goto :goto_3
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->makeContentDescription(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 173
    const/16 v0, 0x19c

    return v0
.end method

.method protected handleClick()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    sget-object v3, Lcom/android/systemui/qs/tiles/PowerSavingTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleClick : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v0, v5, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->refreshState(Ljava/lang/Object;)V

    .line 130
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mPowerSavingEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->isNPSMsupported:Z

    if-eqz v0, :cond_3

    .line 131
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mNPowerSavingEnabled:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->setNPSMEnabled(Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    .line 133
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mPowerSavingEnabled:Z

    if-nez v0, :cond_4

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method protected handleLongClick()V
    .locals 5

    .prologue
    .line 139
    sget-object v3, Lcom/android/systemui/qs/tiles/PowerSavingTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleLongClick : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mNPowerSavingEnabled:Z

    if-eqz v2, :cond_1

    .line 143
    const-string v2, "com.samsung.android.sm.ACTION_DATA_MANAGE_BATTERY"

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->startActivityDismissingKeyguard(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.sm.ACTION_BATTERY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "com.samsung.android.sm"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 148
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_2

    .line 149
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    goto :goto_0

    .line 151
    :cond_2
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$GenericPowerSavingModeActivity"

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->startActivityDismissingKeyguard(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 158
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 159
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 160
    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 161
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mNPowerSavingEnabled:Z

    if-eqz v1, :cond_2

    .line 162
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d02c7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 163
    const v1, 0x7f02036c

    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 168
    :goto_1
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->makeContentDescription(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 169
    return-void

    .line 158
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mPowerSavingEnabled:Z

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 165
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d02c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 166
    const v1, 0x7f020370

    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 112
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->isNPSMsupported:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mNPSMSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 114
    :cond_0
    return-void
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

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
