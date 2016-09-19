.class Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;
.super Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBNonPolicyImpl;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ADBBlockPolicyImpl"
.end annotation


# instance fields
.field private mIsUsbAlreadyConnected:Z

.field private mNeedReenableAdbAfterUnlock:Z

.field private mUSBConnectionReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;)V
    .locals 4

    .prologue
    .line 2865
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBNonPolicyImpl;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;Lcom/android/systemui/keyguard/KeyguardViewMediator$1;)V

    .line 2863
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->mIsUsbAlreadyConnected:Z

    .line 2866
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->mUSBConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 2895
    iget-object v0, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->mUSBConnectionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2897
    return-void
.end method

.method static synthetic access$6000(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;

    .prologue
    .line 2860
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->mIsUsbAlreadyConnected:Z

    return v0
.end method

.method static synthetic access$6002(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 2860
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->mIsUsbAlreadyConnected:Z

    return p1
.end method

.method static synthetic access$6102(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 2860
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->mNeedReenableAdbAfterUnlock:Z

    return p1
.end method

.method static synthetic access$6200(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;

    .prologue
    .line 2860
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->isAdbEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 2860
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->setAdbModeEnabled(Z)V

    return-void
.end method

.method private isAdbEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2912
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;

    iget-object v2, v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v2, v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private setAdbModeEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 2917
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2926
    :cond_0
    :goto_0
    return-void

    .line 2921
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->isAdbEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2923
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method handleDismiss()V
    .locals 1

    .prologue
    .line 2901
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->mNeedReenableAdbAfterUnlock:Z

    if-eqz v0, :cond_0

    .line 2902
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->setAdbModeEnabled(Z)V

    .line 2903
    :cond_0
    return-void
.end method

.method handleKeyguardDone()V
    .locals 1

    .prologue
    .line 2907
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->mNeedReenableAdbAfterUnlock:Z

    if-eqz v0, :cond_0

    .line 2908
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->setAdbModeEnabled(Z)V

    .line 2909
    :cond_0
    return-void
.end method
