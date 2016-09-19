.class final Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SoundPathControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$1;

    .prologue
    .line 460
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;-><init>(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 462
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 463
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    const-string v1, "android.samsung.media.action.AUDIO_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 465
    const-string v1, "android.bluetooth.device.action.ALIAS_CHANGED "

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 466
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0, v2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 467
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x2

    .line 475
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "action":Ljava/lang/String;
    const-string v7, "SoundPathController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string v7, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 480
    const-string v7, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 481
    .local v6, "stream":I
    const-string v7, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 483
    .local v2, "devices":I
    const-string v7, "android.media.EXTRA_VOLUME_STREAM_MUSIC_ADDRESS"

    const-string v8, ""

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 484
    .local v1, "address":Ljava/lang/String;
    const-string v7, "SoundPathController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " stream use 0x "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mStream:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$800(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 486
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveDevice:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$900(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)I

    move-result v5

    .line 487
    .local v5, "oldActiveDevice":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveAddress:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$1000(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)Ljava/lang/String;

    move-result-object v4

    .line 488
    .local v4, "oldActiveAddress":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveDevice:I
    invoke-static {v7, v2}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$902(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;I)I

    .line 489
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveAddress:Ljava/lang/String;
    invoke-static {v7, v1}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$1002(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 490
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveDevice:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$900(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)I

    move-result v7

    if-ne v5, v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveAddress:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$1000(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 491
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->updateList()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)V

    .line 492
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$700(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;->sendEmptyMessage(I)Z

    .line 506
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "devices":I
    .end local v4    # "oldActiveAddress":Ljava/lang/String;
    .end local v5    # "oldActiveDevice":I
    .end local v6    # "stream":I
    :cond_1
    :goto_0
    return-void

    .line 496
    :cond_2
    const-string v7, "android.samsung.media.action.AUDIO_MODE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 497
    const-string v7, "android.samsung.media.extra.AUDIO_MODE"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 498
    .local v3, "mode":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mAudioMode:I
    invoke-static {v7, v3}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$1102(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;I)I

    .line 499
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->updateStreamAndActiveDevice()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$1200(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)V

    .line 500
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->updateList()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)V

    .line 501
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$700(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 503
    .end local v3    # "mode":I
    :cond_3
    const-string v7, "android.bluetooth.device.action.ALIAS_CHANGED "

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 504
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$700(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
