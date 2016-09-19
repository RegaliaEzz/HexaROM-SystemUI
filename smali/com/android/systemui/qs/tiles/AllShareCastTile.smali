.class public Lcom/android/systemui/qs/tiles/AllShareCastTile;
.super Lcom/android/systemui/qs/QSTile;
.source "AllShareCastTile.java"


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
.field private static final TAG:Ljava/lang/String; = "AllShareCastTile"

.field private static final WIFIDISPLAY_PICKERDIALOG:Ljava/lang/String; = "com.android.settings.wfd.WfdPickerDialog"


# instance fields
.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 193
    new-instance v0, Lcom/android/systemui/qs/tiles/AllShareCastTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/AllShareCastTile$3;-><init>(Lcom/android/systemui/qs/tiles/AllShareCastTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    new-instance v0, Lcom/android/systemui/qs/tiles/AllShareCastTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "wifi_display_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/AllShareCastTile$1;-><init>(Lcom/android/systemui/qs/tiles/AllShareCastTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v1, Lcom/android/systemui/qs/tiles/AllShareCastTile$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/AllShareCastTile$2;-><init>(Lcom/android/systemui/qs/tiles/AllShareCastTile;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/ExtendedDisplayListener;Landroid/os/Handler;)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/AllShareCastTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AllShareCastTile;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->refreshState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/AllShareCastTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AllShareCastTile;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->refreshState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/AllShareCastTile;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AllShareCastTile;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/AllShareCastTile;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AllShareCastTile;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplayStatus;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/AllShareCastTile;)Landroid/hardware/display/DisplayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AllShareCastTile;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/AllShareCastTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AllShareCastTile;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->refreshState()V

    return-void
.end method

.method private disconnectDLNA()V
    .locals 5

    .prologue
    .line 259
    const-string v2, "AllShareCastTile"

    const-string v3, "disconnectDLNA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.screensharing.DLNA_DISCONNECTION_REQUEST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getDLNADeviceUid()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "uid":Ljava/lang/String;
    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 265
    const-string v2, "AllShareCastTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send Intent DLNA_DISCONNECTION_REQUEST : uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void
.end method

.method private hasPendingDialogs()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 269
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    if-eq v1, v0, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 274
    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private insertLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 286
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.screensharing.LOGGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v1, "feature"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v1, "extra"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 291
    return-void
.end method

.method private isActivityOnTop(Ljava/lang/String;)Z
    .locals 6
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 230
    .local v1, "am":Landroid/app/ActivityManager;
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 231
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v0, :cond_1

    .line 232
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 233
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "className":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 235
    const-string v4, "AllShareCastTile"

    const-string v5, "WfdSettings already exist."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v4, 0x1

    .line 241
    .end local v2    # "className":Ljava/lang/String;
    .end local v3    # "i":I
    :goto_1
    return v4

    .line 232
    .restart local v2    # "className":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 240
    .end local v2    # "className":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_1
    const-string v4, "AllShareCastTile"

    const-string v5, "There is no WfdSettings."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isKnoxMode()Z
    .locals 5

    .prologue
    .line 278
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    const-string v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 279
    .local v0, "pManager":Landroid/os/PersonaManager;
    invoke-virtual {v0}, Landroid/os/PersonaManager;->getFocusedUser()I

    move-result v1

    .line 280
    .local v1, "userId":I
    const-string v2, "AllShareCastTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isKnoxMode userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    const/16 v2, 0xc8

    if-gt v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private requestPopup(I)V
    .locals 5
    .param p1, "cause"    # I

    .prologue
    .line 245
    const-string v2, "AllShareCastTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestPopup cause = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.LAUNCH_WFD_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v1, "intent":Landroid/content/Intent;
    const v2, 0x10808000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 248
    const-string v2, "cause"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "AllShareCastTile"

    const-string v3, "startActivity failed"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private showPickerDialog()V
    .locals 4

    .prologue
    .line 209
    const-string v2, "com.android.settings.wfd.WfdPickerDialog"

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->isActivityOnTop(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 212
    const-string v2, "show_dialog_once"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 213
    const-string v2, "tag_write_if_success"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 214
    const-string v2, "more_actions_knox_state"

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->isKnoxMode()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 215
    const/high16 v2, 0x14800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 218
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 219
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AllShareCastTile"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->makeContentDescription(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActionTypeOnCover()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 305
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v0, v1, :cond_0

    .line 306
    const/4 v0, 0x2

    .line 308
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 177
    const/16 v0, 0x195

    return v0
.end method

.method public getUnlockTypeInSecure()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public handleClick()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x2

    .line 99
    const-string v5, "AllShareCastTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleClick : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v2, v8, :cond_0

    .line 107
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v2, v7, :cond_2

    move v1, v3

    .line 110
    .local v1, "newState":Z
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->getMetricsCategory()I

    move-result v5

    invoke-static {v2, v5, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 112
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v2, v7, :cond_3

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->showPickerDialog()V

    .line 133
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 134
    const-string v2, "AllShareCastTile"

    const-string v3, "mDevicePolicyManager.getAllowWifi false"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "newState":Z
    :cond_2
    move v1, v4

    .line 109
    goto :goto_1

    .line 116
    .restart local v1    # "newState":Z
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v2

    if-ne v2, v7, :cond_4

    .line 117
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->disableWifiDisplay()V

    .line 120
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getActiveDLNAState()I

    move-result v0

    .line 121
    .local v0, "activeDLNAState":I
    if-eq v0, v8, :cond_5

    if-ne v0, v3, :cond_6

    .line 123
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->disconnectDLNA()V

    .line 126
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/GlobalSetting;->setValue(I)V

    .line 127
    const-string v2, "DCON"

    const-string v3, "QIC_PAN"

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 138
    .end local v0    # "activeDLNAState":I
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    goto :goto_0
.end method

.method protected handleLongClick()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->handleLongClick()V

    .line 144
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 158
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 159
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 165
    :goto_0
    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 167
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0d02d6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 171
    const v0, 0x7f020379

    invoke-static {v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 172
    iget-object v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->makeContentDescription(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 173
    return-void

    .line 161
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v2

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->isDLNADeviceConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 53
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 183
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 184
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 191
    return-void

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mState:Lcom/android/systemui/qs/QSTile$State;

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
