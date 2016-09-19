.class public Lcom/android/systemui/statusbar/policy/EthernetSignalController;
.super Lcom/android/systemui/statusbar/policy/SignalController;
.source "EthernetSignalController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/EthernetSignalController$1;,
        Lcom/android/systemui/statusbar/policy/EthernetSignalController$EthernetHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/SignalController",
        "<",
        "Lcom/android/systemui/statusbar/policy/SignalController$State;",
        "Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private mEthernetChannel:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbackHandler"    # Lcom/android/systemui/statusbar/policy/CallbackHandler;
    .param p3, "networkController"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 45
    const-string v1, "EthernetSignalController"

    const/4 v3, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 47
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    const-string v1, "Ethernet Icons"

    sget-object v2, Lcom/android/systemui/statusbar/policy/EthernetIcons;->ETHERNET_ICONS:[[I

    const/4 v3, 0x0

    check-cast v3, [[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->ETHERNET_CONNECTION_VALUES:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->ETHERNET_CONNECTION_VALUES:[I

    const/4 v12, 0x0

    aget v9, v9, v12

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iput-object v0, v11, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v0, v10, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 54
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/EthernetSignalController;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mEthernetChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method


# virtual methods
.method public cleanState()Lcom/android/systemui/statusbar/policy/SignalController$State;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalController$State;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/SignalController$State;-><init>()V

    return-object v0
.end method

.method getActivityIcon()I
    .locals 2

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "activityIcon":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    if-eqz v1, :cond_1

    .line 112
    const v0, 0x7f02055a

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    if-eqz v1, :cond_2

    .line 114
    const v0, 0x7f020553

    goto :goto_0

    .line 115
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    if-eqz v1, :cond_3

    .line 116
    const v0, 0x7f020565

    goto :goto_0

    .line 118
    :cond_3
    const v0, 0x7f02055f

    goto :goto_0
.end method

.method public notifyListeners()V
    .locals 5

    .prologue
    .line 75
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    .line 76
    .local v1, "ethernetVisible":Z
    const-string v2, "0"

    const-string v3, "net.smart_switch.disabled"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    const/4 v1, 0x0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->getContentDescription()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "contentDescription":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->getCurrentIconId()I

    move-result v4

    invoke-direct {v3, v1, v4, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->getActivityIcon()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V

    .line 92
    return-void
.end method

.method setActivity(I)V
    .locals 5
    .param p1, "ethernetActivity"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 101
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    if-eq p1, v4, :cond_0

    if-ne p1, v2, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    if-eq p1, v4, :cond_1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->notifyListenersIfNecessary()V

    .line 106
    return-void

    :cond_3
    move v0, v1

    .line 101
    goto :goto_0
.end method

.method public updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V
    .locals 5
    .param p1, "connectedTransports"    # Ljava/util/BitSet;
    .param p2, "validatedTransports"    # Ljava/util/BitSet;

    .prologue
    .line 58
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mTransportType:I

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    .line 60
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-eqz v3, :cond_0

    .line 61
    new-instance v2, Lcom/android/systemui/statusbar/policy/EthernetSignalController$EthernetHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/policy/EthernetSignalController$EthernetHandler;-><init>(Lcom/android/systemui/statusbar/policy/EthernetSignalController;Lcom/android/systemui/statusbar/policy/EthernetSignalController$1;)V

    .line 62
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mEthernetChannel:Lcom/android/internal/util/AsyncChannel;

    .line 63
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mContext:Landroid/content/Context;

    const-string v4, "ethernet"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/EthernetManager;

    .line 64
    .local v0, "ethernetManager":Landroid/net/EthernetManager;
    invoke-virtual {v0}, Landroid/net/EthernetManager;->getEthernetServiceMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 65
    .local v1, "ethernetMessenger":Landroid/os/Messenger;
    if-eqz v1, :cond_0

    .line 66
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mEthernetChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 70
    .end local v0    # "ethernetManager":Landroid/net/EthernetManager;
    .end local v1    # "ethernetMessenger":Landroid/os/Messenger;
    .end local v2    # "handler":Landroid/os/Handler;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/SignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    .line 71
    return-void
.end method
