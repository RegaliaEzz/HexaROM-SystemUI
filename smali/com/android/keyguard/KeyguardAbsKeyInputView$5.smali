.class Lcom/android/keyguard/KeyguardAbsKeyInputView$5;
.super Landroid/os/CountDownTimer;
.source "KeyguardAbsKeyInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

.field final synthetic val$isAutoWipe:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;JJZ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iput-boolean p6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->val$isAutoWipe:Z

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    # getter for: Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$300(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    # getter for: Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$400(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mIsAccountExist:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportSamsungAccountAuth()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    sget-object v1, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->SamsungAccountOnly:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyCarrierArea;->resizeFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    sget-object v1, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->SamsungAccountOnly:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    # invokes: Lcom/android/keyguard/KeyguardAbsKeyInputView;->updateFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$500(Lcom/android/keyguard/KeyguardAbsKeyInputView;Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V

    .line 535
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 536
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetState()V

    .line 537
    return-void
.end method

.method public onTick(J)V
    .locals 11
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0x3c

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 473
    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    long-to-int v3, v4

    .line 474
    .local v3, "secondsRemaining":I
    div-int/lit8 v1, v3, 0x3c

    .line 475
    .local v1, "minutesRemaining":I
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    # getter for: Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$200(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    .line 476
    .local v0, "attemps":I
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->getRemainingAttemptsBeforeWipe()I

    move-result v2

    .line 478
    .local v2, "remainingAttemptsBeforeWipe":I
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->val$isAutoWipe:Z

    if-eqz v4, :cond_7

    if-lez v2, :cond_7

    const/4 v4, 0x5

    if-ge v2, v4, :cond_7

    .line 479
    if-ne v2, v8, :cond_3

    .line 480
    if-le v3, v6, :cond_0

    .line 481
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v5, Lcom/android/keyguard/R$string;->kg_remained_1_attempt_countdown_mins_with_auto_wipe:I

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    add-int/lit8 v7, v1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v8, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ[Ljava/lang/Object;)V

    .line 521
    :goto_0
    return-void

    .line 483
    :cond_0
    if-ne v3, v6, :cond_1

    .line 484
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v5, Lcom/android/keyguard/R$string;->kg_remained_1_attempt_countdown_1_min_with_auto_wipe:I

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v8, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ[Ljava/lang/Object;)V

    goto :goto_0

    .line 486
    :cond_1
    if-le v3, v8, :cond_2

    .line 487
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v5, Lcom/android/keyguard/R$string;->kg_remained_1_attempt_countdown_secs_with_auto_wipe:I

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v8, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ[Ljava/lang/Object;)V

    goto :goto_0

    .line 490
    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v5, Lcom/android/keyguard/R$string;->kg_remained_1_attempt_countdown_1_sec_with_auto_wipe:I

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v8, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ[Ljava/lang/Object;)V

    goto :goto_0

    .line 494
    :cond_3
    if-le v3, v6, :cond_4

    .line 495
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v5, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown_mins_with_auto_wipe:I

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    add-int/lit8 v7, v1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v8, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ[Ljava/lang/Object;)V

    goto :goto_0

    .line 497
    :cond_4
    if-ne v3, v6, :cond_5

    .line 498
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v5, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown_1_min_with_auto_wipe:I

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v8, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ[Ljava/lang/Object;)V

    goto :goto_0

    .line 500
    :cond_5
    if-le v3, v8, :cond_6

    .line 501
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v5, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown_secs_with_auto_wipe:I

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v8, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 504
    :cond_6
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v5, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown_1_sec_with_auto_wipe:I

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v8, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 508
    :cond_7
    if-ne v3, v6, :cond_8

    .line 509
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v5, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown_min:I

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v8, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 511
    :cond_8
    if-le v3, v6, :cond_9

    .line 512
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v5, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown_mins:I

    new-array v6, v8, [Ljava/lang/Object;

    add-int/lit8 v7, v1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v8, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 514
    :cond_9
    if-le v3, v8, :cond_a

    .line 515
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v5, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown:I

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v8, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 518
    :cond_a
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v5, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempt_countdown:I

    invoke-virtual {v4, v5, v8}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ)V

    goto/16 :goto_0
.end method
