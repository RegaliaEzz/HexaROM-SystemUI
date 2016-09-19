.class final Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerNotificationWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method private constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    .prologue
    .line 2032
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;Lcom/android/systemui/power/PowerNotificationWarnings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;
    .param p2, "x1"    # Lcom/android/systemui/power/PowerNotificationWarnings$1;

    .prologue
    .line 2032
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 6

    .prologue
    .line 2035
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2036
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "PNW.batterySettings"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2037
    const-string v0, "PNW.startSaver"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2038
    const-string v0, "PNW.stopSaver"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2039
    const-string v0, "PNW.dismissedWarning"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2041
    const-string v0, "com.samsung.systemui.power.action.ACTION_BATTERY_LOW_CLOSE_BUTTON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2042
    const-string v0, "com.samsung.systemui.power.action.ACTION_BATTERY_OVER_HEAT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2043
    const-string v0, "com.samsung.systemui.power.action.ACTION_BATTERY_SAFE_MODE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2044
    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2045
    const-string v0, "PNW.stopNPSM"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2047
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$200(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.STATUS_BAR_SERVICE"

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1400(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/Handler;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2049
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 2053
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2054
    .local v0, "action":Ljava/lang/String;
    const-string v3, "PowerUI.Notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    const-string v3, "PNW.batterySettings"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2056
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # invokes: Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarningNotification()V
    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$2600(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 2059
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$2500(Lcom/android/systemui/power/PowerNotificationWarnings;)I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 2116
    :cond_0
    :goto_0
    return-void

    .line 2065
    :cond_1
    :try_start_0
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseGEDBatterySetting:Z

    if-eqz v3, :cond_2

    .line 2066
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$200(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$2700(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2069
    :catch_0
    move-exception v1

    .line 2070
    .local v1, "exception":Landroid/content/ActivityNotFoundException;
    const-string v3, "PowerUI.Notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showPowersavingmodeNotice : Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2068
    .end local v1    # "exception":Landroid/content/ActivityNotFoundException;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$200(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mSmartManagerBatterySettings:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$2800(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2074
    :cond_3
    const-string v3, "PNW.startSaver"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2076
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # invokes: Lcom/android/systemui/power/PowerNotificationWarnings;->showStartSaverConfirmation()V
    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$2900(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto :goto_0

    .line 2077
    :cond_4
    const-string v3, "PNW.stopSaver"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2078
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # invokes: Lcom/android/systemui/power/PowerNotificationWarnings;->dismissSaverNotification()V
    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$3000(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 2080
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # invokes: Lcom/android/systemui/power/PowerNotificationWarnings;->setSaverMode(Z)V
    invoke-static {v3, v6}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$3100(Lcom/android/systemui/power/PowerNotificationWarnings;Z)V

    goto :goto_0

    .line 2081
    :cond_5
    const-string v3, "PNW.dismissedWarning"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2083
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # setter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z
    invoke-static {v3, v6}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$3202(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z

    .line 2084
    const-string v3, "PowerUI.Notification"

    const-string v4, "Low battery noti is dismissed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2088
    :cond_6
    const-string v3, "com.samsung.systemui.power.action.ACTION_BATTERY_LOW_CLOSE_BUTTON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2089
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # invokes: Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarningNotification()V
    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$2600(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto/16 :goto_0

    .line 2093
    :cond_7
    const-string v3, "com.samsung.systemui.power.action.ACTION_BATTERY_OVER_HEAT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2094
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # invokes: Lcom/android/systemui/power/PowerNotificationWarnings;->showOverHeatPopUp()V
    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$3300(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto/16 :goto_0

    .line 2098
    :cond_8
    const-string v3, "com.samsung.systemui.power.action.ACTION_BATTERY_SAFE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2099
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # invokes: Lcom/android/systemui/power/PowerNotificationWarnings;->showSafeModePopUp()V
    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$3400(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto/16 :goto_0

    .line 2103
    :cond_9
    const-string v3, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2104
    const-string v3, "reason"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2106
    .local v2, "reason":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_a

    .line 2107
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # setter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I
    invoke-static {v3, v7}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$2502(Lcom/android/systemui/power/PowerNotificationWarnings;I)I

    goto/16 :goto_0

    .line 2108
    :cond_a
    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 2109
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # setter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I
    invoke-static {v3, v6}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$2502(Lcom/android/systemui/power/PowerNotificationWarnings;I)I

    goto/16 :goto_0

    .line 2110
    .end local v2    # "reason":I
    :cond_b
    const-string v3, "PNW.stopNPSM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2111
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # invokes: Lcom/android/systemui/power/PowerNotificationWarnings;->dismissSaverNotification()V
    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$3000(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 2112
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # invokes: Lcom/android/systemui/power/PowerNotificationWarnings;->setNPSMode(Z)V
    invoke-static {v3, v6}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$3500(Lcom/android/systemui/power/PowerNotificationWarnings;Z)V

    goto/16 :goto_0
.end method
