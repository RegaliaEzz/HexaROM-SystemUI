.class Lcom/android/keyguard/CarrierText$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/CarrierText;


# direct methods
.method constructor <init>(Lcom/android/keyguard/CarrierText;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceProvisioned()V
    .locals 2

    .prologue
    .line 145
    const-string v0, "KeyguardCarrierText"

    const-string v1, "onDeviceProvisioned: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->updateCarrierText(Landroid/content/Intent;)V

    .line 147
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setSelected(Z)V

    .line 125
    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 2

    .prologue
    .line 102
    const-string v0, "KeyguardCarrierText"

    const-string v1, "onRefreshCarrierInfo: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    # invokes: Lcom/android/keyguard/CarrierText;->updateAllSlot()V
    invoke-static {v0}, Lcom/android/keyguard/CarrierText;->access$000(Lcom/android/keyguard/CarrierText;)V

    .line 104
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setSelected(Z)V

    .line 133
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setSelected(Z)V

    .line 137
    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 6
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    const-string v0, "KeyguardCarrierText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimStateChanged simState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    # setter for: Lcom/android/keyguard/CarrierText;->mNumPhones:I
    invoke-static {v0, v1}, Lcom/android/keyguard/CarrierText;->access$102(Lcom/android/keyguard/CarrierText;I)I

    .line 110
    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    # getter for: Lcom/android/keyguard/CarrierText;->mNumPhones:I
    invoke-static {v0}, Lcom/android/keyguard/CarrierText;->access$100(Lcom/android/keyguard/CarrierText;)I

    move-result v0

    if-le v0, v4, :cond_0

    const/4 v0, -0x1

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    # getter for: Lcom/android/keyguard/CarrierText;->mNumPhones:I
    invoke-static {v0}, Lcom/android/keyguard/CarrierText;->access$100(Lcom/android/keyguard/CarrierText;)I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    # setter for: Lcom/android/keyguard/CarrierText;->isMultiSIMState:Z
    invoke-static {v0, v4}, Lcom/android/keyguard/CarrierText;->access$202(Lcom/android/keyguard/CarrierText;Z)Z

    .line 112
    const-string v0, "KeyguardCarrierText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimStateChanged simState2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    # getter for: Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {}, Lcom/android/keyguard/CarrierText;->access$300()[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    aput-object p3, v0, p2

    .line 114
    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/CarrierText;->updateCarrierText(Landroid/content/Intent;)V

    .line 121
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    # setter for: Lcom/android/keyguard/CarrierText;->isMultiSIMState:Z
    invoke-static {v0, v3}, Lcom/android/keyguard/CarrierText;->access$202(Lcom/android/keyguard/CarrierText;Z)Z

    .line 117
    const-string v0, "KeyguardCarrierText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimStateChanged simState3: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    # getter for: Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {}, Lcom/android/keyguard/CarrierText;->access$300()[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    aput-object p3, v0, v3

    .line 119
    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/CarrierText;->updateCarrierText(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onStartedWakingUp()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setSelected(Z)V

    .line 129
    return-void
.end method
