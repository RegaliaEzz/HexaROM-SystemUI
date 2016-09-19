.class Lcom/android/systemui/keyguard/KeyguardViewMediator$7;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .prologue
    .line 1937
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1940
    const-string v6, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1941
    const-string v6, "seq"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1942
    .local v4, "sequence":I
    const-string v6, "KeyguardViewMediator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received DELAYED_KEYGUARD_ACTION with seq = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mDelayedShowingSequence = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v8}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v7

    .line 1945
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v6

    if-ne v6, v4, :cond_0

    .line 1946
    sget-boolean v6, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v6, :cond_3

    .line 1947
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v8, 0x0

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->setSwipeLockShowingLocked(Z)V
    invoke-static {v6, v8}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$500(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    .line 1948
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1949
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v8, 0x0

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v8}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1100(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 1964
    :cond_0
    :goto_0
    monitor-exit v7

    .line 2072
    .end local v4    # "sequence":I
    :cond_1
    :goto_1
    return-void

    .line 1953
    .restart local v4    # "sequence":I
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->onSdpLocked()V
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1956
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1957
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1964
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1961
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v8, 0x0

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v8}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1100(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1967
    .end local v4    # "sequence":I
    :cond_4
    const-string v6, "com.android.samsungtest.DISABLE_KEYGUARD_FACTORY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1968
    const-string v6, "KeyguardViewMediator"

    const-string v7, "received DISABLE_KEYGUARD_FACTORY_ACTION!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->isFactoryMode()Z
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1970
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v6, v10}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone(Z)V

    goto :goto_1

    .line 1974
    :cond_5
    const-string v6, "ACTION_CDMA_PINPUK_REQUIRE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1975
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1976
    const-string v6, "KeyguardViewMediator"

    const-string v7, "ACTION_CDMA_PINPUK_REQUIRE"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    invoke-static {v10}, Lcom/android/keyguard/util/MultiSimUtils;->setPINPUKRequest(Z)V

    .line 1978
    invoke-static {v8}, Lcom/android/keyguard/util/MultiSimUtils;->setPINPUKSlot(I)V

    .line 1979
    const-string v6, "SIMCARD"

    const-string v7, "FROM"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1980
    invoke-static {v9}, Lcom/android/keyguard/util/MultiSimUtils;->setPINPUKRequestMode(I)V

    .line 1984
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1985
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v11}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1100(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_1

    .line 1982
    :cond_6
    invoke-static {v10}, Lcom/android/keyguard/util/MultiSimUtils;->setPINPUKRequestMode(I)V

    goto :goto_2

    .line 1987
    :cond_7
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_1

    .line 1990
    :cond_8
    const-string v6, "ACTION_GSM_PINPUK_REQUIRE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1991
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1992
    const-string v6, "KeyguardViewMediator"

    const-string v7, "ACTION_GSM_PINPUK_REQUIRE"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    invoke-static {v10}, Lcom/android/keyguard/util/MultiSimUtils;->setPINPUKRequest(Z)V

    .line 1994
    invoke-static {v10}, Lcom/android/keyguard/util/MultiSimUtils;->setPINPUKSlot(I)V

    .line 1995
    const-string v6, "SIMCARD"

    const-string v7, "FROM"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1996
    invoke-static {v9}, Lcom/android/keyguard/util/MultiSimUtils;->setPINPUKRequestMode(I)V

    .line 2000
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 2001
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v11}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1100(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1998
    :cond_9
    invoke-static {v10}, Lcom/android/keyguard/util/MultiSimUtils;->setPINPUKRequestMode(I)V

    goto :goto_3

    .line 2003
    :cond_a
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_1

    .line 2006
    :cond_b
    const-string v6, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2008
    const-string v6, "KeyguardViewMediator"

    const-string v7, "CARRIER_FLPP_LOCKED_ACTION intent is received."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->updateCarrierLockPlus(I)Z

    move-result v1

    .line 2010
    .local v1, "enableLock":Z
    if-eqz v1, :cond_d

    .line 2011
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 2012
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v11}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1100(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 2017
    :goto_4
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_1

    .line 2014
    :cond_c
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 2015
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_4

    .line 2019
    :cond_d
    const-string v6, "KeyguardViewMediator"

    const-string v7, "CarrierLockPlus isn\'t enabled"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2021
    .end local v1    # "enableLock":Z
    :cond_e
    const-string v6, "com.sec.android.FindingLostPhonePlus.CANCEL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2023
    const-string v6, "KeyguardViewMediator"

    const-string v7, "CARRIER_FLPP_UNLOCKED_ACTION intent is received."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 2025
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->updateCarrierLockPlus(I)Z

    move-result v1

    .line 2026
    .restart local v1    # "enableLock":Z
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    .line 2027
    .local v2, "isSecure":Z
    if-nez v1, :cond_10

    .line 2028
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(ILjava/lang/String;)V

    .line 2029
    if-nez v2, :cond_f

    .line 2030
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v6, v10}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone(Z)V

    goto/16 :goto_1

    .line 2032
    :cond_f
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 2033
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_1

    .line 2036
    :cond_10
    const-string v6, "KeyguardViewMediator"

    const-string v7, "CarrierLockPlus is enabled"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2038
    .end local v1    # "enableLock":Z
    .end local v2    # "isSecure":Z
    :cond_11
    const-string v6, "com.samsung.internal.policy.impl.Keyguard.PCW_LOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 2039
    const-string v6, "KeyguardViewMediator"

    const-string v7, "FMM_SAMSUNG_LOCKED_ACTION intent is received."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 2041
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v11}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1100(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 2046
    :goto_5
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_1

    .line 2043
    :cond_12
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 2044
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_5

    .line 2047
    :cond_13
    const-string v6, "com.samsung.internal.policy.impl.Keyguard.PCW_UNLOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 2048
    const-string v6, "KeyguardViewMediator"

    const-string v7, "FMM_SAMSUNG_UNLOCKED_ACTION intent is received."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 2050
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v6, v10}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone(Z)V

    goto/16 :goto_1

    .line 2051
    :cond_14
    const-string v6, "com.samsung.ucs.ucsservice.stateblocked"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 2052
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->checkUCMKeyguardStatus()Z
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2053
    const-string v6, "persist.keyguard.ucs.csname"

    const-string v7, "none"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2054
    .local v3, "keyguardCSName":Ljava/lang/String;
    const-string v6, "UCS_CSNAME"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2055
    .local v0, "changePlugincsname":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2056
    const-string v6, "KeyguardViewMediator"

    const-string v7, "com.samsung.ucs.ucsservice.stateblocked intent!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v6, v6, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setUCMPUKCardState(Z)V

    .line 2058
    const-string v6, "UCS_STATE"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 2059
    .local v5, "ucmState":I
    const-string v6, "KeyguardViewMediator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UCM state -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 2061
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v11}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1100(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 2063
    :cond_15
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_1

    .line 2068
    .end local v0    # "changePlugincsname":Ljava/lang/String;
    .end local v3    # "keyguardCSName":Ljava/lang/String;
    .end local v5    # "ucmState":I
    :cond_16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2069
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->userActivityTimeoutChanged()V

    goto/16 :goto_1
.end method
