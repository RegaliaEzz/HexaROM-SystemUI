.class Lcom/android/keyguard/EmergencyButton$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "EmergencyButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/EmergencyButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/EmergencyButton;


# direct methods
.method constructor <init>(Lcom/android/keyguard/EmergencyButton;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton$1;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$1;->this$0:Lcom/android/keyguard/EmergencyButton;

    # invokes: Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V
    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->access$000(Lcom/android/keyguard/EmergencyButton;)V

    .line 103
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 1
    .param p1, "phoneState"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$1;->this$0:Lcom/android/keyguard/EmergencyButton;

    # invokes: Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V
    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->access$000(Lcom/android/keyguard/EmergencyButton;)V

    .line 126
    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 2

    .prologue
    .line 112
    const-string v0, "EmergencyButton"

    const-string v1, "onRefreshCarrierInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$1;->this$0:Lcom/android/keyguard/EmergencyButton;

    # invokes: Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V
    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->access$000(Lcom/android/keyguard/EmergencyButton;)V

    .line 114
    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$1;->this$0:Lcom/android/keyguard/EmergencyButton;

    # setter for: Lcom/android/keyguard/EmergencyButton;->mSubId:I
    invoke-static {v0, p1}, Lcom/android/keyguard/EmergencyButton;->access$102(Lcom/android/keyguard/EmergencyButton;I)I

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$1;->this$0:Lcom/android/keyguard/EmergencyButton;

    # invokes: Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V
    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->access$000(Lcom/android/keyguard/EmergencyButton;)V

    .line 121
    return-void
.end method

.method public onSystemSettingsChanged(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$1;->this$0:Lcom/android/keyguard/EmergencyButton;

    # invokes: Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V
    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->access$000(Lcom/android/keyguard/EmergencyButton;)V

    .line 108
    return-void
.end method
