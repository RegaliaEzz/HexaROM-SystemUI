.class Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MobilePhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;ILandroid/os/Looper;)V
    .locals 0
    .param p2, "subId"    # I
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2951
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 2952
    invoke-direct {p0, p2, p3}, Landroid/telephony/PhoneStateListener;-><init>(ILandroid/os/Looper;)V

    .line 2953
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 3029
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->callState:I

    .line 3032
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    # invokes: Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$100(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    .line 3033
    return-void
.end method

.method public onCarrierNetworkChange(Z)V
    .locals 3
    .param p1, "active"    # Z

    .prologue
    .line 3020
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCarrierNetworkChange: active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    .line 3023
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    # invokes: Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$100(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    .line 3024
    return-void
.end method

.method public onDataActivity(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 3014
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataActivity: direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    .line 3016
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 2999
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    # getter for: Lcom/android/systemui/statusbar/policy/MobileSignalController;->mBootDataSvcAcquired:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$700(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3003
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "!@Boot: Data SVC is acquired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/statusbar/policy/MobileSignalController;->mBootDataSvcAcquired:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$702(Lcom/android/systemui/statusbar/policy/MobileSignalController;Z)Z

    .line 3007
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    # setter for: Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$802(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I

    .line 3008
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    # setter for: Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$602(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I

    .line 3009
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    # invokes: Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$100(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    .line 3010
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 2965
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceStateChanged voiceState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dataState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    # getter for: Lcom/android/systemui/statusbar/policy/MobileSignalController;->mBootVoiceSvcAcquired:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$300(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2969
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string v2, "!@Boot: Voice SVC is acquired"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2970
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    const/4 v2, 0x1

    # setter for: Lcom/android/systemui/statusbar/policy/MobileSignalController;->mBootVoiceSvcAcquired:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$302(Lcom/android/systemui/statusbar/policy/MobileSignalController;Z)Z

    .line 2974
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    # setter for: Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$402(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 2976
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUsePSStateCombinedSignal:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    # invokes: Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalIcon()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$500(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2977
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceRegState:I

    .line 2978
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataRegState:I

    .line 2982
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_CbChannelNb4DisplayInStatusBar"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2985
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.mms.CB_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2986
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2990
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    # getter for: Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$400(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2991
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    # getter for: Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$400(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v2

    # setter for: Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$602(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I

    .line 2992
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceStateChanged mDataNetType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    # getter for: Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$600(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    # invokes: Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$100(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    .line 2995
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 2957
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthsChanged signalStrength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    # setter for: Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$202(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 2960
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    # invokes: Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$100(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    .line 2961
    return-void

    .line 2957
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " level="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
