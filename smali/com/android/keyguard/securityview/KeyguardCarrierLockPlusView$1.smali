.class Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardCarrierLockPlusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "action":Ljava/lang/String;
    const-string v1, "KeyguardCarrierLockPlusView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v1, "com.sec.android.CarrierLock.DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->access$000(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 127
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->access$100(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const-string v1, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->setCarrierLockPlusInfo()V
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->access$200(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)V

    goto :goto_0
.end method
