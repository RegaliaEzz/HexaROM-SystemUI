.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 4116
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    .line 4118
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "PhoneStatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4119
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4120
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4121
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->getSendingUserId()I

    move-result v8

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCurrentProfile(I)Z
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4122
    const/4 v2, 0x0

    .line 4123
    .local v2, "flags":I
    const-string v7, "reason"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4124
    .local v5, "reason":Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v7, "recentapps"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4125
    or-int/lit8 v2, v2, 0x2

    .line 4127
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 4225
    .end local v2    # "flags":I
    .end local v5    # "reason":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 4147
    :cond_3
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4148
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const-string v8, "level"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)I

    .line 4149
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    if-eqz v7, :cond_2

    .line 4150
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->updateBatteryTextLevel(I)V

    goto :goto_0

    .line 4155
    :cond_4
    const-string v7, "com.samsung.systemui.statusbar.OPERATOR_LOGO_UPDATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4156
    const-string v7, "BOTH"

    sget-object v8, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4157
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->updateOperatorLogoVisibility()V

    .line 4158
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateOperatorLogoVisibility()V

    goto :goto_0

    .line 4159
    :cond_5
    const-string v7, "HOME"

    sget-object v8, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4160
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->updateOperatorLogoVisibility()V

    goto :goto_0

    .line 4161
    :cond_6
    const-string v7, "LOCK"

    sget-object v8, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4162
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateOperatorLogoVisibility()V

    goto :goto_0

    .line 4167
    :cond_7
    const-string v7, "samsung.intent.action.knoxcustom.SET_QUICK_PANEL_ITEMS"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 4168
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v7, :cond_8

    const-string v7, "PhoneStatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4169
    :cond_8
    const-string v7, "items"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4170
    .local v6, "tiles":Ljava/lang/String;
    const-string v7, "active"

    const/16 v8, 0xa

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4171
    .local v1, "activeTiles":I
    if-eqz v6, :cond_2

    .line 4172
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v7, :cond_9

    const-string v7, "PhoneStatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " tiles"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4173
    :cond_9
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v8

    invoke-virtual {v8, v6, v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles(Ljava/lang/String;I)Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 4174
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/systemui/qs/QSPanel;->setQsTileLine(Z)I

    goto/16 :goto_0

    .line 4179
    .end local v1    # "activeTiles":I
    .end local v6    # "tiles":Ljava/lang/String;
    :cond_a
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 4182
    :cond_b
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 4183
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateMultisimPrefferedSlotVisibility()V

    .line 4185
    :cond_c
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mShowDataUsageInQuickPanel:Z

    if-eqz v7, :cond_2

    .line 4186
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateShowDataUsageVisibility()Z

    goto/16 :goto_0

    .line 4190
    :cond_d
    const-string v7, "com.samsung.pen.INSERT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 4191
    const-string v7, "penInsert"

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 4192
    .local v3, "penInsert":Z
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDeviceInteractive:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v3, :cond_2

    .line 4193
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userActivity()V

    goto/16 :goto_0

    .line 4198
    .end local v3    # "penInsert":Z
    :cond_e
    const-string v7, "com.sec.knox.keyguard.show"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 4199
    const-string v7, "personaId"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 4200
    .local v4, "personaId":I
    const/16 v7, 0x64

    if-lt v4, v7, :cond_2

    const/16 v7, 0xc8

    if-gt v4, v7, :cond_2

    .line 4201
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const-string v8, "isShown"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKnoxKeyguardShown:Z
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6402(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    goto/16 :goto_0

    .line 4206
    .end local v4    # "personaId":I
    :cond_f
    const-string v7, "com.sec.aecmonitor.ONE_CYCLE_FINISH"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4207
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v7

    if-nez v7, :cond_10

    .line 4208
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandNotificationsPanel()V

    .line 4211
    :cond_10
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;)V

    const-wide/16 v10, 0x12c

    invoke-virtual {v7, v8, v10, v11}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
