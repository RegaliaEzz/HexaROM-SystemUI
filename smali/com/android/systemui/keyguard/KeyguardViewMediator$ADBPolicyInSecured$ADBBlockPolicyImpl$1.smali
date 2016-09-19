.class Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;

.field final synthetic val$this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;)V
    .locals 0

    .prologue
    .line 2866
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl$1;->this$2:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl$1;->val$this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 2876
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2877
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 2878
    const-string v1, "connected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2879
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl$1;->this$2:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->mIsUsbAlreadyConnected:Z
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->access$6000(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2880
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl$1;->this$2:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;

    const/4 v2, 0x1

    # setter for: Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->mIsUsbAlreadyConnected:Z
    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->access$6002(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;Z)Z

    .line 2882
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl$1;->this$2:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl$1;->this$2:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2883
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl$1;->this$2:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl$1;->this$2:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->isAdbEnabled()Z
    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->access$6200(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;)Z

    move-result v2

    # setter for: Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->mNeedReenableAdbAfterUnlock:Z
    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->access$6102(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2884
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl$1;->this$2:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->setAdbModeEnabled(Z)V
    invoke-static {v1, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->access$6300(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;Z)V

    .line 2892
    :cond_0
    :goto_0
    return-void

    .line 2889
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl$1;->this$2:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;

    # setter for: Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->mIsUsbAlreadyConnected:Z
    invoke-static {v1, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->access$6002(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;Z)Z

    goto :goto_0
.end method
