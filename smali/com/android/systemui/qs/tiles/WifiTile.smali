.class public Lcom/android/systemui/qs/tiles/WifiTile;
.super Lcom/android/systemui/qs/QSTile;
.source "WifiTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;,
        Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;,
        Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXTRA_CALLED_DIALOG:Ljava/lang/String; = "called_dialog"

.field private static final WIFI_DIALOG_CANCEL_ACTION:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

.field private static final WIFI_DIALOG_ENABLING_WIFI:I = 0x1

.field private static final WIFI_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

.field private mIconOff:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$MultiState;",
            ">.com/android/systemui/qs/QSTile$com/android/systemui/qs/QSTile$AnimationIcon;"
        }
    .end annotation
.end field

.field private mIconOn:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$MultiState;",
            ">.com/android/systemui/qs/QSTile$com/android/systemui/qs/QSTile$AnimationIcon;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

.field private final mStateBeforeClick:Lcom/android/systemui/qs/QSTile$MultiState;

.field private final mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 5
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 99
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/qs/QSTile$MultiState;

    .line 72
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;Lcom/android/systemui/qs/tiles/WifiTile$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    .line 75
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f02035f

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;III)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIconOn:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 76
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f02035e

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;III)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIconOff:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 82
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiTile$1;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getAccessPointController()Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    .line 102
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;Lcom/android/systemui/qs/tiles/WifiTile$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    .line 103
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiTile;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiTile;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    return-object v0
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiTile;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/WifiTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->refreshState()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$Host;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$Host;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/WifiTile;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile;->getWiFiState(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiTile;->DEBUG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private getWiFiState(I)I
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 598
    packed-switch p1, :pswitch_data_0

    .line 613
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 600
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 606
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 610
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 598
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private isBlockedByEdmPolicy()Z
    .locals 6

    .prologue
    .line 222
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/WifiTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    const/4 v0, 0x1

    .line 233
    .local v0, "ret":Z
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBlockedByEdmPolicy : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    return v0

    .line 224
    .end local v0    # "ret":Z
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider2/WifiPolicy"

    const-string v4, "isWifiStateChangeAllowed"

    sget-object v5, Lcom/android/systemui/qs/tiles/WifiTile;->selectionArgsNull:[Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/systemui/qs/tiles/WifiTile;->isBlockedEdmUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v4, "isWifiEnabled"

    sget-object v5, Lcom/android/systemui/qs/tiles/WifiTile;->selectionArgsTrue:[Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/systemui/qs/tiles/WifiTile;->isBlockedEdmUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 226
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v1, "toastIntent":Landroid/content/Intent;
    const-string v2, "info_type"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 229
    const/4 v0, 0x1

    .line 230
    .restart local v0    # "ret":Z
    goto :goto_0

    .line 231
    .end local v0    # "ret":Z
    .end local v1    # "toastIntent":Landroid/content/Intent;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 401
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 406
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "length":I
    :cond_0
    :goto_0
    return-object p0

    .line 402
    .end local v0    # "length":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 403
    .restart local v0    # "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 404
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 3

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/qs/tiles/WifiTile;->makeContentDescription(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActionTypeOnCover()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 619
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v0, v1, :cond_0

    .line 620
    const/4 v0, 0x2

    .line 622
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 379
    const/16 v0, 0x7e

    return v0
.end method

.method public getUnlockTypeInSecure()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method protected handleClearState()V
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    sget v1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ENABLED_CHANGED:I

    sget v2, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->CONNECTED_CHANGED:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->changed:I

    .line 385
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleClearState()V

    .line 386
    return-void
.end method

.method protected handleClick()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 158
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleClick : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->isBlockedByEdmPolicy()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->isBlockedByEASPolicy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v1, v6, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v1, v5, :cond_3

    move v0, v2

    .line 171
    .local v0, "newState":Z
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v1, v5, :cond_2

    .line 172
    invoke-static {v2}, Lcom/android/systemui/wifi/WifiStatusReceiver;->enableToShowWifiPickerDialog(Z)V

    .line 173
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->TAG:Ljava/lang/String;

    const-string v2, "WifiTile to WifiStatusReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSTile$MultiState;->copyTo(Lcom/android/systemui/qs/QSTile$State;)Z

    .line 177
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->getMetricsCategory()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 178
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->handleRefreshState(Ljava/lang/Object;)V

    .line 180
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->setWifiEnabled(Z)V

    goto :goto_0

    .line 169
    .end local v0    # "newState":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public handleLongClick()V
    .locals 2

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->isBlockedByEdmPolicy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->startActivityDismissingKeyguard(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleSecondaryClick()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 185
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->canConfigWifi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    .line 211
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->setWifiEnabled(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iput v2, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 210
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/WifiTile;->showDetail(Z)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 9
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 253
    sget-boolean v4, Lcom/android/systemui/qs/tiles/WifiTile;->DEBUG:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleUpdateState arg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 256
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const v6, 0x7f0d02d0

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 259
    instance-of v4, p2, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 260
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 262
    .local v1, "value":I
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 263
    const v4, 0x7f02038a

    invoke-static {v4}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 321
    .end local v1    # "value":I
    :cond_1
    :goto_0
    iget v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v4, v3, :cond_c

    iget-object v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->secondaryLabel:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget v5, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/qs/tiles/WifiTile;->makeContentDescription(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->secondaryLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 375
    :goto_1
    return-void

    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_2
    move-object v0, p2

    .line 267
    check-cast v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    .line 268
    .local v0, "cb":Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;
    if-nez v0, :cond_3

    .line 269
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    iget-object v0, v4, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    .line 272
    :cond_3
    iget-boolean v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v4, :cond_6

    iget v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-lez v4, :cond_6

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    if-eqz v4, :cond_6

    move v2, v3

    .line 274
    .local v2, "wifiConnected":Z
    :goto_2
    iget v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->changed:I

    sget v6, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ENABLED_CHANGED:I

    and-int/2addr v4, v6

    if-lez v4, :cond_4

    .line 275
    iget-boolean v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v4, :cond_7

    move v4, v3

    :goto_3
    iput v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 278
    iget-boolean v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v4, :cond_9

    .line 279
    if-eqz v2, :cond_8

    .line 280
    iget v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    invoke-static {v4}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 281
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/WifiTile;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->secondaryLabel:Ljava/lang/String;

    .line 297
    :cond_4
    :goto_4
    iget v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->changed:I

    sget v6, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->CONNECTED_CHANGED:I

    sget v7, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ENABLED_DESC_CHANGED:I

    or-int/2addr v6, v7

    and-int/2addr v4, v6

    if-lez v4, :cond_5

    .line 298
    if-eqz v2, :cond_a

    .line 299
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/WifiTile;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->secondaryLabel:Ljava/lang/String;

    .line 300
    iput v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 301
    iget v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    invoke-static {v4}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 316
    :cond_5
    :goto_5
    iget v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->changed:I

    sget v5, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->SIGNAL_CHANGED:I

    and-int/2addr v4, v5

    if-lez v4, :cond_1

    .line 317
    if-eqz v2, :cond_1

    .line 318
    iget v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    invoke-static {v4}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto/16 :goto_0

    .line 272
    .end local v2    # "wifiConnected":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .restart local v2    # "wifiConnected":Z
    :cond_7
    move v4, v5

    .line 275
    goto :goto_3

    .line 284
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIconOn:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v4, v3}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    .line 285
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIconOn:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_4

    .line 289
    :cond_9
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIconOff:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v4, v3}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    .line 290
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIconOff:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 293
    iput-object v8, p1, Lcom/android/systemui/qs/QSTile$MultiState;->secondaryLabel:Ljava/lang/String;

    goto :goto_4

    .line 304
    :cond_a
    iput-object v8, p1, Lcom/android/systemui/qs/QSTile$MultiState;->secondaryLabel:Ljava/lang/String;

    .line 305
    iget-boolean v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-nez v4, :cond_b

    .line 306
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIconOff:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v4, v3}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    .line 307
    iput v5, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 308
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIconOff:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_5

    .line 310
    :cond_b
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIconOn:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_5

    .line 324
    .end local v0    # "cb":Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;
    .end local v2    # "wifiConnected":Z
    .end local p2    # "arg":Ljava/lang/Object;
    :cond_c
    iget-object v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/WifiTile;->makeContentDescription(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 64
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WifiTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method public isBlockedByEASPolicy()Z
    .locals 6

    .prologue
    .line 238
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 239
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    .line 240
    .local v1, "result":Z
    if-eqz v0, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 241
    :goto_0
    if-eqz v1, :cond_0

    .line 242
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBlockedByEASPolicy : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v2, "toastIntent":Landroid/content/Intent;
    const-string v3, "info_type"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 247
    .end local v2    # "toastIntent":Landroid/content/Intent;
    :cond_0
    return v1

    .line 240
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setDetailListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 133
    if-eqz p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->addAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->removeAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V

    goto :goto_0
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 117
    if-eqz p1, :cond_0

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->addSignalCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 129
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 127
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeSignalCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    goto :goto_0
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

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

.method public supportsDualTargets()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method
