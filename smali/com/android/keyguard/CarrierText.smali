.class public Lcom/android/keyguard/CarrierText;
.super Landroid/widget/TextView;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CarrierText$2;,
        Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;,
        Lcom/android/keyguard/CarrierText$StatusMode;
    }
.end annotation


# static fields
.field private static mCarrierTextForSimState:[Ljava/lang/CharSequence;

.field private static mPlmn:[Ljava/lang/CharSequence;

.field private static mSeparator:Ljava/lang/CharSequence;

.field private static mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field private static mSpn:[Ljava/lang/CharSequence;

.field private static tele:Landroid/telephony/TelephonyManager;


# instance fields
.field private KnoxCustom_mOperatorLogoView:Z

.field private currentSimNumber:I

.field private insertedMultiSim:Z

.field private isAirplaneMode:Z

.field private isMultiSIMState:Z

.field private it:Landroid/content/Intent;

.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsEmergencyCallCapable:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mNumPhones:I

.field private mSimstate_1:Ljava/lang/String;

.field private mSimstate_2:Ljava/lang/String;

.field private mSpnUpdatePhoneID_0:Landroid/content/Intent;

.field private mSpnUpdatePhoneID_1:Landroid/content/Intent;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 172
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    iput-boolean v4, p0, Lcom/android/keyguard/CarrierText;->KnoxCustom_mOperatorLogoView:Z

    .line 93
    const-string v2, ""

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mSimstate_1:Ljava/lang/String;

    .line 94
    const-string v2, ""

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mSimstate_2:Ljava/lang/String;

    .line 99
    new-instance v2, Lcom/android/keyguard/CarrierText$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/CarrierText$1;-><init>(Lcom/android/keyguard/CarrierText;)V

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/CarrierText;->mIsEmergencyCallCapable:Z

    .line 175
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isDataOnlyDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    iput-boolean v4, p0, Lcom/android/keyguard/CarrierText;->mIsEmergencyCallCapable:Z

    .line 178
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/R$styleable;->CarrierText:[I

    invoke-virtual {v2, p2, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 181
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v2, Lcom/android/keyguard/R$styleable;->CarrierText_allCaps:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 183
    .local v1, "useAllCaps":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    new-instance v2, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;

    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;-><init>(Lcom/android/keyguard/CarrierText;Landroid/content/Context;Z)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/CarrierText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 187
    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 188
    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->initialize()V

    .line 189
    return-void

    .line 183
    .end local v1    # "useAllCaps":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method static synthetic access$000(Lcom/android/keyguard/CarrierText;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/CarrierText;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->updateAllSlot()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/CarrierText;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/CarrierText;

    .prologue
    .line 64
    iget v0, p0, Lcom/android/keyguard/CarrierText;->mNumPhones:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/CarrierText;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/CarrierText;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/android/keyguard/CarrierText;->mNumPhones:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/keyguard/CarrierText;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/CarrierText;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/keyguard/CarrierText;->isMultiSIMState:Z

    return p1
.end method

.method static synthetic access$300()[Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method private static concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "plmn"    # Ljava/lang/CharSequence;
    .param p1, "spn"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 706
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    move v0, v2

    .line 707
    .local v0, "plmnValid":Z
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    move v1, v2

    .line 708
    .local v1, "spnValid":Z
    :goto_1
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isUSCPLMN()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    .line 709
    :cond_0
    if-eqz v0, :cond_1

    const-string v2, "USCC"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 710
    const-string p0, "U.S. Cellular"

    .line 711
    :cond_1
    if-eqz v1, :cond_2

    const-string v2, "USCC"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 712
    const-string p1, "U.S. Cellular"

    .line 714
    :cond_2
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isUseKDDISimText()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v0, :cond_3

    if-eqz v1, :cond_5

    .line 715
    :cond_3
    if-eqz v0, :cond_4

    const-string v2, "KDDI"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 716
    const-string p0, "au"

    .line 717
    :cond_4
    if-eqz v1, :cond_5

    const-string v2, "KDDI"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 718
    const-string p1, "au"

    .line 720
    :cond_5
    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    .line 721
    const-string v2, "KeyguardCarrierText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "concatenate : plmn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", spn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isKORUsimText()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 734
    .end local p0    # "plmn":Ljava/lang/CharSequence;
    :cond_6
    :goto_2
    return-object p0

    .end local v0    # "plmnValid":Z
    .end local v1    # "spnValid":Z
    .restart local p0    # "plmn":Ljava/lang/CharSequence;
    :cond_7
    move v0, v3

    .line 706
    goto :goto_0

    .restart local v0    # "plmnValid":Z
    :cond_8
    move v1, v3

    .line 707
    goto :goto_1

    .line 725
    .restart local v1    # "spnValid":Z
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 727
    :cond_a
    if-eqz v0, :cond_b

    .line 728
    const-string v2, "KeyguardCarrierText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "concatenate : plmn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 730
    :cond_b
    if-eqz v1, :cond_c

    .line 731
    const-string v2, "KeyguardCarrierText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "concatenate : spn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, p1

    .line 732
    goto :goto_2

    .line 734
    :cond_c
    const-string p0, ""

    goto :goto_2
.end method

.method private convertStringToState(Ljava/lang/String;)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 846
    if-nez p1, :cond_0

    .line 847
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 875
    :goto_0
    return-object v0

    .line 848
    :cond_0
    const-string v0, "UNKNOWN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 849
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 850
    :cond_1
    const-string v0, "ABSENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 851
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 852
    :cond_2
    const-string v0, "PIN_REQUIRED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 853
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 854
    :cond_3
    const-string v0, "PUK_REQUIRED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 855
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 856
    :cond_4
    const-string v0, "NETWORK_LOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 857
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 858
    :cond_5
    const-string v0, "READY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 859
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 860
    :cond_6
    const-string v0, "NOT_READY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 861
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 862
    :cond_7
    const-string v0, "PERM_DISABLED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 863
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 864
    :cond_8
    const-string v0, "CARD_IO_ERROR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 865
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 866
    :cond_9
    const-string v0, "PERSO_LOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 867
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 868
    :cond_a
    const-string v0, "NETWORK_SUBSET_LOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 869
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 870
    :cond_b
    const-string v0, "SIM_SERVICE_PROVIDER_LOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 871
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_0

    .line 872
    :cond_c
    const-string v0, "DETECTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 873
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->DETECTED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_0

    .line 875
    :cond_d
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_0
.end method

.method public static getPhoneId(I)I
    .locals 4
    .param p0, "subId"    # I

    .prologue
    .line 773
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 774
    .local v0, "phoneIdLocal":I
    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 776
    :cond_0
    const-string v1, "KeyguardCarrierText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneId():  phoneId error case  phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const/4 v0, 0x0

    .line 779
    .end local v0    # "phoneIdLocal":I
    :cond_1
    return v0
.end method

.method private getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;
    .locals 4
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 667
    if-nez p1, :cond_0

    .line 668
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    .line 702
    :goto_0
    return-object v1

    .line 671
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 677
    .local v0, "missingAndNotProvisioned":Z
    :goto_1
    if-eqz v0, :cond_2

    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 678
    :cond_2
    const-string v1, "KeyguardCarrierText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStatusForIccState :  SIM state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    sget-object v1, Lcom/android/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 701
    const-string v1, "KeyguardCarrierText"

    const-string v2, "getStatusForIccState :  SIM state = Not Exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 671
    .end local v0    # "missingAndNotProvisioned":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 681
    .restart local v0    # "missingAndNotProvisioned":Z
    :pswitch_0
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 683
    :pswitch_1
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 685
    :pswitch_2
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->PersoLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 687
    :pswitch_3
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 689
    :pswitch_4
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 691
    :pswitch_5
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 693
    :pswitch_6
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 695
    :pswitch_7
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 697
    :pswitch_8
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimIOError:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 699
    :pswitch_9
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 679
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private initialize()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 192
    new-array v0, v1, [Ljava/lang/CharSequence;

    sput-object v0, Lcom/android/keyguard/CarrierText;->mPlmn:[Ljava/lang/CharSequence;

    .line 193
    new-array v0, v1, [Ljava/lang/CharSequence;

    sput-object v0, Lcom/android/keyguard/CarrierText;->mSpn:[Ljava/lang/CharSequence;

    .line 194
    new-array v0, v1, [Lcom/android/internal/telephony/IccCardConstants$State;

    sput-object v0, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 195
    new-array v0, v1, [Ljava/lang/CharSequence;

    sput-object v0, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    .line 196
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/CarrierText;->mNumPhones:I

    .line 197
    return-void
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "simMessage"    # Ljava/lang/CharSequence;
    .param p2, "emergencyCallMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 655
    const-string v0, "KeyguardCarrierText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeCarrierStringOnEmergencyCapable :  mIsEmergencyCallCapable:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/CarrierText;->mIsEmergencyCallCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mIsEmergencyCallCapable:Z

    if-eqz v0, :cond_0

    .line 657
    invoke-static {p1, p2}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 659
    .end local p1    # "simMessage":Ljava/lang/CharSequence;
    :cond_0
    return-object p1
.end method

.method private updateAllSlot()V
    .locals 2

    .prologue
    .line 217
    const-string v0, "KeyguardCarrierText"

    const-string v1, "updateAllSlot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->updateIntentData()V

    .line 219
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mSpnUpdatePhoneID_0:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mSpnUpdatePhoneID_0:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->updateCarrierText(Landroid/content/Intent;)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mSpnUpdatePhoneID_1:Landroid/content/Intent;

    if-eqz v0, :cond_1

    const-string v0, "ABSENT"

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mSimstate_2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mSpnUpdatePhoneID_1:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->updateCarrierText(Landroid/content/Intent;)V

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mSpnUpdatePhoneID_0:Landroid/content/Intent;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mSpnUpdatePhoneID_1:Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->updateCarrierText(Landroid/content/Intent;)V

    .line 225
    :cond_2
    return-void
.end method

.method private updateIntentData()V
    .locals 6

    .prologue
    .line 200
    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->plmnIntent:Landroid/content/Intent;

    .line 201
    .local v0, "it":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 202
    const-string v3, "subscription"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 203
    .local v2, "subId":I
    invoke-static {v2}, Lcom/android/keyguard/CarrierText;->getPhoneId(I)I

    move-result v1

    .line 205
    .local v1, "phoneId":I
    if-nez v1, :cond_2

    .line 206
    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mSpnUpdatePhoneID_0:Landroid/content/Intent;

    .line 209
    :cond_0
    :goto_0
    const-string v3, "KeyguardCarrierText"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIntentData(): isMultiSIMState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/CarrierText;->isMultiSIMState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "subId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " phoneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "plmn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "plmn"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SPN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "spn"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v1    # "phoneId":I
    .end local v2    # "subId":I
    :cond_1
    return-void

    .line 207
    .restart local v1    # "phoneId":I
    .restart local v2    # "subId":I
    :cond_2
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 208
    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mSpnUpdatePhoneID_1:Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method protected getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "plmn"    # Ljava/lang/CharSequence;
    .param p3, "spn"    # Ljava/lang/CharSequence;

    .prologue
    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, "carrierText":Ljava/lang/CharSequence;
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;

    move-result-object v1

    .line 571
    .local v1, "status":Lcom/android/keyguard/CarrierText$StatusMode;
    sget-object v2, Lcom/android/keyguard/CarrierText$2;->$SwitchMap$com$android$keyguard$CarrierText$StatusMode:[I

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 645
    :cond_0
    :goto_0
    const-string v2, "KeyguardCarrierText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCarrierTextForSimState :  SIM state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "carrierText: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return-object v0

    .line 573
    :pswitch_0
    invoke-static {p2, p3}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 574
    goto :goto_0

    .line 577
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/keyguard/CarrierText;->isMultiSIMState:Z

    if-eqz v2, :cond_1

    .line 578
    move-object v0, p2

    goto :goto_0

    .line 580
    :cond_1
    const-string v0, ""

    .line 581
    goto :goto_0

    .line 584
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_network_locked_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 586
    goto :goto_0

    .line 589
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_perso_locked_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 591
    goto :goto_0

    .line 598
    :pswitch_4
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->useCdmaCardText()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 599
    move-object v0, p2

    goto :goto_0

    .line 601
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_missing_sim_message_short:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 604
    goto :goto_0

    .line 607
    :pswitch_5
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isKORUsimText()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 608
    const/4 v0, 0x0

    goto :goto_0

    .line 610
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_permanent_disabled_sim_message_short:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 613
    goto :goto_0

    .line 616
    :pswitch_6
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isKORUsimText()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 617
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_missing_sim_message_short:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 620
    :cond_4
    invoke-static {p2, p3}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 622
    goto/16 :goto_0

    .line 625
    :pswitch_7
    invoke-static {p2, p3}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 626
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isKORUsimText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 627
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_pin_locked_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 633
    :pswitch_8
    invoke-static {p2, p3}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 634
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isKORUsimText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_puk_locked_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 641
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104028f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 571
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public getNumberOfActiveSim()I
    .locals 2

    .prologue
    .line 739
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 740
    .local v0, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v0, :cond_0

    .line 741
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 743
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOperatorLogoView()Z
    .locals 1

    .prologue
    .line 841
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierText;->KnoxCustom_mOperatorLogoView:Z

    return v0
.end method

.method protected getReadySimCount()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 747
    const/4 v0, 0x0

    .line 748
    .local v0, "count":I
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 749
    .local v1, "phone_on":[I
    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone1_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v5

    .line 750
    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone2_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v6

    .line 751
    const/4 v2, 0x0

    .local v2, "sub":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 752
    aget v3, v1, v2

    if-ne v3, v6, :cond_0

    .line 753
    add-int/lit8 v0, v0, 0x1

    .line 751
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 756
    :cond_1
    return v0
.end method

.method protected isReadySimSlot(I)Z
    .locals 5
    .param p1, "slotNum"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 760
    if-le p1, v3, :cond_1

    if-gez p1, :cond_1

    .line 768
    :cond_0
    :goto_0
    return v1

    .line 762
    :cond_1
    new-array v0, v3, [I

    .line 763
    .local v0, "phone_on":[I
    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone1_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v1

    .line 764
    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone2_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    .line 765
    aget v3, v0, p1

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 766
    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 521
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 523
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSPRPLMN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/android/keyguard/CarrierText;->tele:Landroid/telephony/TelephonyManager;

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 531
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 537
    :goto_0
    return-void

    .line 534
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 535
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 549
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 550
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isWiFiOnlyDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    const-string v0, "KeyguardCarrierText"

    const-string v1, "onConfigurationChanged: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->updateCarrierText(Landroid/content/Intent;)V

    .line 555
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 544
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 545
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 513
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 514
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->keyguard_network_name_separator:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    .line 515
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 516
    .local v0, "shouldMarquee":Z
    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setSelected(Z)V

    .line 517
    return-void
.end method

.method protected updateCarrierText(Landroid/content/Intent;)V
    .locals 27
    .param p1, "updateDataIntent"    # Landroid/content/Intent;

    .prologue
    .line 230
    const/4 v9, 0x0

    .line 231
    .local v9, "knoxCustomLockScreenState":I
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v10

    .line 232
    .local v10, "knoxCustomSystemManager":Landroid/app/enterprise/knoxcustom/SystemManager;
    if-eqz v10, :cond_0

    .line 233
    invoke-virtual {v10}, Landroid/app/enterprise/knoxcustom/SystemManager;->getLockScreenHiddenItems()I

    move-result v9

    .line 235
    :cond_0
    and-int/lit8 v21, v9, 0x4

    if-eqz v21, :cond_2

    .line 236
    const/16 v21, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    .line 295
    :goto_0
    :pswitch_0
    const/4 v4, 0x1

    .line 296
    .local v4, "allSimsMissing":Z
    const/4 v6, 0x0

    .line 297
    .local v6, "displayText":Ljava/lang/CharSequence;
    const-string v5, ""

    .line 298
    .local v5, "displayRJIText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/CarrierText;->isAirplaneMode:Z

    .line 301
    const-string v21, "KeyguardCarrierText"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "updateCarrierText(): isMultiSIMState: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/CarrierText;->isMultiSIMState:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    if-eqz p1, :cond_b

    .line 305
    const-string v21, "KeyguardCarrierText"

    const-string v22, "updateDate All slot"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/CarrierText;->it:Landroid/content/Intent;

    .line 311
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->it:Landroid/content/Intent;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->it:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "subscription"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 313
    .local v19, "subId":I
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/CarrierText;->getPhoneId(I)I

    move-result v13

    .line 314
    .local v13, "phoneId":I
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/keyguard/CarrierText;->currentSimNumber:I

    .line 316
    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mSimstate_1:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/keyguard/CarrierText;->convertStringToState(Ljava/lang/String;)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v23

    aput-object v23, v21, v22

    .line 317
    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mSimstate_2:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/keyguard/CarrierText;->convertStringToState(Ljava/lang/String;)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v23

    aput-object v23, v21, v22

    .line 318
    const-string v21, "KeyguardCarrierText"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mSimState[0]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v21, "KeyguardCarrierText"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mSimState[1]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/CarrierText;->currentSimNumber:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 322
    const-string v21, "KeyguardCarrierText"

    const-string v22, "SIM state UNKNOWN cancel updateCarrierText"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    .end local v13    # "phoneId":I
    .end local v19    # "subId":I
    :cond_1
    :goto_2
    return-void

    .line 239
    .end local v4    # "allSimsMissing":Z
    .end local v5    # "displayRJIText":Ljava/lang/String;
    .end local v6    # "displayText":Ljava/lang/CharSequence;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->hideCarrierTextInfo(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 240
    const/16 v21, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    .line 247
    :cond_3
    :goto_3
    const-string v21, "gsm.sim.state"

    const-string v22, "ABSENT,ABSENT"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 248
    .local v12, "mSimstateProp":Ljava/lang/String;
    const/16 v17, 0x0

    .line 249
    .local v17, "simStates":[Ljava/lang/String;
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_6

    .line 250
    const-string v21, ","

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 255
    :goto_4
    const/4 v11, 0x0

    .line 256
    .local v11, "length":I
    if-eqz v17, :cond_4

    .line 257
    move-object/from16 v0, v17

    array-length v11, v0

    .line 259
    :cond_4
    const-string v21, ""

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/CarrierText;->mSimstate_1:Ljava/lang/String;

    .line 260
    const-string v21, ""

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/CarrierText;->mSimstate_2:Ljava/lang/String;

    .line 261
    packed-switch v11, :pswitch_data_0

    .line 275
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->isReadySimSlot(I)Z

    move-result v21

    if-eqz v21, :cond_9

    const/16 v21, 0x0

    aget-object v21, v17, v21

    :goto_5
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/CarrierText;->mSimstate_1:Ljava/lang/String;

    .line 276
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->isReadySimSlot(I)Z

    move-result v21

    if-eqz v21, :cond_a

    const/16 v21, 0x1

    aget-object v21, v17, v21

    :goto_6
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/CarrierText;->mSimstate_2:Ljava/lang/String;

    goto/16 :goto_0

    .line 242
    .end local v11    # "length":I
    .end local v12    # "mSimstateProp":Ljava/lang/String;
    .end local v17    # "simStates":[Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getOperatorLogoView()Z

    move-result v21

    if-nez v21, :cond_3

    .line 243
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    goto :goto_3

    .line 252
    .restart local v12    # "mSimstateProp":Ljava/lang/String;
    .restart local v17    # "simStates":[Ljava/lang/String;
    :cond_6
    const-string v21, "KeyguardCarrierText"

    const-string v22, "SystemProperties get Error happen"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 266
    .restart local v11    # "length":I
    :pswitch_1
    const/16 v21, 0x0

    aget-object v21, v17, v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/CarrierText;->mSimstate_1:Ljava/lang/String;

    .line 267
    const-string v21, "ABSENT"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/CarrierText;->mSimstate_2:Ljava/lang/String;

    goto/16 :goto_0

    .line 270
    :pswitch_2
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->isReadySimSlot(I)Z

    move-result v21

    if-eqz v21, :cond_7

    const/16 v21, 0x0

    aget-object v21, v17, v21

    :goto_7
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/CarrierText;->mSimstate_1:Ljava/lang/String;

    .line 271
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->isReadySimSlot(I)Z

    move-result v21

    if-eqz v21, :cond_8

    const/16 v21, 0x1

    aget-object v21, v17, v21

    :goto_8
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/CarrierText;->mSimstate_2:Ljava/lang/String;

    goto/16 :goto_0

    .line 270
    :cond_7
    const-string v21, "ABSENT"

    goto :goto_7

    .line 271
    :cond_8
    const-string v21, "ABSENT"

    goto :goto_8

    .line 275
    :cond_9
    const-string v21, "ABSENT"

    goto :goto_5

    .line 276
    :cond_a
    const-string v21, "ABSENT"

    goto :goto_6

    .line 308
    .end local v11    # "length":I
    .end local v12    # "mSimstateProp":Ljava/lang/String;
    .end local v17    # "simStates":[Ljava/lang/String;
    .restart local v4    # "allSimsMissing":Z
    .restart local v5    # "displayRJIText":Ljava/lang/String;
    .restart local v6    # "displayText":Ljava/lang/CharSequence;
    :cond_b
    const-string v21, "KeyguardCarrierText"

    const-string v22, "updateDate slot by SubID"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->updateIntentData()V

    goto/16 :goto_1

    .line 325
    .restart local v13    # "phoneId":I
    .restart local v19    # "subId":I
    :cond_c
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSPRPLMN()Z

    move-result v21

    if-eqz v21, :cond_18

    .line 326
    sget-object v21, Lcom/android/keyguard/CarrierText;->mPlmn:[Ljava/lang/CharSequence;

    sget-object v22, Lcom/android/keyguard/CarrierText;->tele:Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v21, v13

    .line 355
    :goto_9
    sget-object v21, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    sget-object v22, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v22, v22, v13

    sget-object v23, Lcom/android/keyguard/CarrierText;->mPlmn:[Ljava/lang/CharSequence;

    aget-object v23, v23, v13

    sget-object v24, Lcom/android/keyguard/CarrierText;->mSpn:[Ljava/lang/CharSequence;

    aget-object v24, v24, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/CarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v22

    aput-object v22, v21, v13

    .line 358
    const-string v21, "KeyguardCarrierText"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Handling "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/CarrierText;->currentSimNumber:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " , carrierTextForSimState = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/CarrierText;->currentSimNumber:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-object v21, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    if-eqz v21, :cond_d

    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/CarrierText;->currentSimNumber:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/IccCardConstants$State;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_d

    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/CarrierText;->currentSimNumber:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/IccCardConstants$State;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_d

    .line 363
    const/4 v4, 0x0

    .line 364
    sget-object v21, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/CarrierText;->currentSimNumber:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    invoke-static {v6, v0}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 366
    const-string v21, "KeyguardCarrierText"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Result :  displayText = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " , carrierTextForSimState = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/CarrierText;->currentSimNumber:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/CarrierText;->isAirplaneMode:Z

    move/from16 v21, v0

    if-eqz v21, :cond_e

    .line 370
    const-string v22, "Jio WiFi"

    sget-object v21, Lcom/android/keyguard/CarrierText;->mPlmn:[Ljava/lang/CharSequence;

    aget-object v21, v21, v13

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 371
    sget-object v21, Lcom/android/keyguard/CarrierText;->mPlmn:[Ljava/lang/CharSequence;

    aget-object v5, v21, v13

    .end local v5    # "displayRJIText":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 376
    .end local v13    # "phoneId":I
    .end local v19    # "subId":I
    .restart local v5    # "displayRJIText":Ljava/lang/String;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getNumberOfActiveSim()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getReadySimCount()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1e

    const/16 v21, 0x1

    :goto_a
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/CarrierText;->insertedMultiSim:Z

    .line 377
    const-string v21, "KeyguardCarrierText"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "updateCarrierText insertedMultiSim = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/CarrierText;->insertedMultiSim:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/CarrierText;->insertedMultiSim:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f

    sget-object v21, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_f

    sget-object v21, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    const/16 v22, 0x1

    aget-object v21, v21, v22

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_f

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isRTL(Landroid/content/Context;)Z

    move-result v8

    .line 383
    .local v8, "isRTL":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v22

    sget v23, Lcom/android/keyguard/R$string;->msim_carrier_text_format:I

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    sget-object v26, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    if-eqz v8, :cond_1f

    const/16 v21, 0x1

    :goto_b
    aget-object v21, v26, v21

    aput-object v21, v24, v25

    const/16 v25, 0x1

    sget-object v26, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    if-eqz v8, :cond_20

    const/16 v21, 0x0

    :goto_c
    aget-object v21, v26, v21

    aput-object v21, v24, v25

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 386
    const-string v21, "KeyguardCarrierText"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "updateCarrierText(insertedMultiSim(true) displayText = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    .end local v8    # "isRTL":Z
    :cond_f
    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/CarrierText;->currentSimNumber:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_14

    .line 392
    const-string v21, "KeyguardCarrierText"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "updateCarrierText State: Absent SIM Number = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/CarrierText;->currentSimNumber:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/16 v19, 0x0

    .line 409
    .restart local v19    # "subId":I
    const/4 v13, 0x0

    .line 410
    .restart local v13    # "phoneId":I
    const-string v18, ""

    .line 411
    .local v18, "spn":Ljava/lang/String;
    const-string v14, ""

    .line 412
    .local v14, "plmn":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v21

    const v22, 0x104028e

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .line 414
    .local v20, "text":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v21

    const/16 v22, 0x0

    new-instance v23, Landroid/content/IntentFilter;

    const-string v24, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct/range {v23 .. v24}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v7

    .line 416
    .local v7, "i":Landroid/content/Intent;
    if-eqz v7, :cond_13

    .line 419
    const-string v21, "showSpn"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 420
    .local v16, "showSpn":Z
    const-string v21, "showPlmn"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 422
    .local v15, "showPlmn":Z
    if-eqz v16, :cond_10

    .line 423
    const-string v21, "spn"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 425
    :cond_10
    if-eqz v15, :cond_11

    .line 426
    const-string v21, "plmn"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 427
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSPRPLMN()Z

    move-result v21

    if-eqz v21, :cond_11

    .line 428
    sget-object v21, Lcom/android/keyguard/CarrierText;->tele:Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v14

    .line 431
    :cond_11
    const-string v21, "subscription"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 432
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/CarrierText;->getPhoneId(I)I

    move-result v13

    .line 433
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_12

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 435
    const-string v21, "KeyguardCarrierText"

    const-string v22, "sim Absent anf plmn = null , spn = null state"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_12
    const-string v21, "KeyguardCarrierText"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Getting plmn/spn sticky brdcst for Absent case "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "showPlmn: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "showSpn: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " phoneId:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " subId:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    move-object/from16 v0, v18

    invoke-static {v14, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_21

    .line 442
    move-object/from16 v20, v14

    .line 448
    .end local v15    # "showPlmn":Z
    .end local v16    # "showSpn":Z
    :cond_13
    :goto_d
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->blockCarrierTextWhenSimNotReady()Z

    move-result v21

    if-eqz v21, :cond_22

    .line 449
    const-string v6, ""

    .line 486
    :goto_e
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isKORUsimText()Z

    move-result v21

    if-eqz v21, :cond_14

    .line 487
    const/4 v6, 0x0

    .line 491
    .end local v7    # "i":Landroid/content/Intent;
    .end local v13    # "phoneId":I
    .end local v14    # "plmn":Ljava/lang/String;
    .end local v18    # "spn":Ljava/lang/String;
    .end local v19    # "subId":I
    .end local v20    # "text":Ljava/lang/CharSequence;
    :cond_14
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->useCdmaCardText()Z

    move-result v21

    if-eqz v21, :cond_16

    .line 492
    sget-object v21, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_15

    sget-object v21, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    const/16 v22, 0x1

    aget-object v21, v21, v22

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_2c

    .line 493
    :cond_15
    sget-object v21, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_2b

    sget-object v21, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    const/16 v22, 0x1

    aget-object v6, v21, v22

    .line 503
    :cond_16
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_17

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v21

    sget v22, Lcom/android/keyguard/R$string;->flight_mode:I

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 507
    :cond_17
    const-string v21, "KeyguardCarrierText"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "setText :  displayText = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 328
    .restart local v13    # "phoneId":I
    .restart local v19    # "subId":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->it:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "showSpn"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 329
    .restart local v16    # "showSpn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->it:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "showPlmn"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 330
    .restart local v15    # "showPlmn":Z
    sget-object v21, Lcom/android/keyguard/CarrierText;->mSpn:[Ljava/lang/CharSequence;

    const-string v22, ""

    aput-object v22, v21, v13

    .line 331
    sget-object v21, Lcom/android/keyguard/CarrierText;->mPlmn:[Ljava/lang/CharSequence;

    const-string v22, ""

    aput-object v22, v21, v13

    .line 332
    if-eqz v16, :cond_19

    .line 333
    sget-object v21, Lcom/android/keyguard/CarrierText;->mSpn:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->it:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string v23, "spn"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v21, v13

    .line 335
    :cond_19
    if-eqz v15, :cond_1a

    .line 336
    sget-object v21, Lcom/android/keyguard/CarrierText;->mPlmn:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->it:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string v23, "plmn"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v21, v13

    .line 338
    :cond_1a
    sget-object v21, Lcom/android/keyguard/CarrierText;->mPlmn:[Ljava/lang/CharSequence;

    aget-object v21, v21, v13

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_1b

    sget-object v21, Lcom/android/keyguard/CarrierText;->mSpn:[Ljava/lang/CharSequence;

    aget-object v21, v21, v13

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_1b

    .line 341
    const-string v21, "KeyguardCarrierText"

    const-string v22, "plmn and spn is empty"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_1b
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->disappearDefaultPLMN()Z

    move-result v21

    if-eqz v21, :cond_1d

    .line 344
    sget-object v21, Lcom/android/keyguard/CarrierText;->mPlmn:[Ljava/lang/CharSequence;

    aget-object v21, v21, v13

    if-eqz v21, :cond_1c

    sget-object v21, Lcom/android/keyguard/CarrierText;->mPlmn:[Ljava/lang/CharSequence;

    aget-object v21, v21, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x1040276

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1c

    .line 346
    sget-object v21, Lcom/android/keyguard/CarrierText;->mPlmn:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    sget v23, Lcom/android/keyguard/R$string;->kg_default_carrier_text_searching:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v21, v13

    .line 347
    :cond_1c
    sget-object v21, Lcom/android/keyguard/CarrierText;->mSpn:[Ljava/lang/CharSequence;

    aget-object v21, v21, v13

    if-eqz v21, :cond_1d

    sget-object v21, Lcom/android/keyguard/CarrierText;->mSpn:[Ljava/lang/CharSequence;

    aget-object v21, v21, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x1040276

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1d

    .line 349
    sget-object v21, Lcom/android/keyguard/CarrierText;->mSpn:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    sget v23, Lcom/android/keyguard/R$string;->kg_default_carrier_text_searching:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v21, v13

    .line 352
    :cond_1d
    const-string v21, "KeyguardCarrierText"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Getting plmn/spn sticky brdcst  mPlmn:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/keyguard/CarrierText;->mPlmn:[Ljava/lang/CharSequence;

    aget-object v23, v23, v13

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " / mSpn: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/keyguard/CarrierText;->mSpn:[Ljava/lang/CharSequence;

    aget-object v23, v23, v13

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " phoneId:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " subId:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " showPlmn: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " showSpn:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 376
    .end local v13    # "phoneId":I
    .end local v15    # "showPlmn":Z
    .end local v16    # "showSpn":Z
    .end local v19    # "subId":I
    :cond_1e
    const/16 v21, 0x0

    goto/16 :goto_a

    .line 383
    .restart local v8    # "isRTL":Z
    :cond_1f
    const/16 v21, 0x0

    goto/16 :goto_b

    :cond_20
    const/16 v21, 0x1

    goto/16 :goto_c

    .line 444
    .end local v8    # "isRTL":Z
    .restart local v7    # "i":Landroid/content/Intent;
    .restart local v13    # "phoneId":I
    .restart local v14    # "plmn":Ljava/lang/String;
    .restart local v15    # "showPlmn":Z
    .restart local v16    # "showSpn":Z
    .restart local v18    # "spn":Ljava/lang/String;
    .restart local v19    # "subId":I
    .restart local v20    # "text":Ljava/lang/CharSequence;
    :cond_21
    move-object/from16 v0, v18

    invoke-static {v14, v0}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v20

    goto/16 :goto_d

    .line 451
    .end local v15    # "showPlmn":Z
    .end local v16    # "showSpn":Z
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/CarrierText;->isMultiSIMState:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2a

    .line 453
    const-string v21, "KeyguardCarrierText"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "sim Absent happen when isMultiSIMState on mSimState[0]: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " mSimState[1] "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_23

    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_26

    :cond_23
    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x1

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_24

    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x1

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_26

    .line 458
    :cond_24
    if-nez v13, :cond_25

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v21

    sget v22, Lcom/android/keyguard/R$string;->kg_missing_sim_message_short:I

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    goto/16 :goto_e

    .line 462
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v21

    sget v22, Lcom/android/keyguard/R$string;->kg_missing_sim_message_short:I

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    sget-object v22, Lcom/android/keyguard/CarrierText;->mPlmn:[Ljava/lang/CharSequence;

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    goto/16 :goto_e

    .line 468
    :cond_26
    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_27

    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_28

    :cond_27
    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x1

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_28

    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x1

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_28

    .line 471
    sget-object v21, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    const/16 v22, 0x1

    aget-object v6, v21, v22

    goto/16 :goto_e

    .line 474
    :cond_28
    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_1

    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_1

    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x1

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_29

    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x1

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 477
    :cond_29
    sget-object v21, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    const/16 v22, 0x0

    aget-object v6, v21, v22

    goto/16 :goto_e

    .line 483
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v21

    sget v22, Lcom/android/keyguard/R$string;->kg_missing_sim_message_short:I

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    goto/16 :goto_e

    .line 493
    .end local v7    # "i":Landroid/content/Intent;
    .end local v13    # "phoneId":I
    .end local v14    # "plmn":Ljava/lang/String;
    .end local v18    # "spn":Ljava/lang/String;
    .end local v19    # "subId":I
    .end local v20    # "text":Ljava/lang/CharSequence;
    :cond_2b
    sget-object v21, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    const/16 v22, 0x0

    aget-object v6, v21, v22

    goto/16 :goto_f

    .line 497
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v21

    sget v22, Lcom/android/keyguard/R$string;->msim_carrier_text_format:I

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    sget-object v25, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    const/16 v26, 0x0

    aget-object v25, v25, v26

    aput-object v25, v23, v24

    const/16 v24, 0x1

    sget-object v25, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    const/16 v26, 0x1

    aget-object v25, v25, v26

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_f

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
