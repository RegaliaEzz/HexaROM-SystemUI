.class public Lcom/android/keyguard/EmergencyButton;
.super Lcom/android/keyguard/status/KeyguardButton;
.source "EmergencyButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;
    }
.end annotation


# static fields
.field private static final INTENT_EMERGENCY_DIAL:Landroid/content/Intent;

.field private static final INTENT_EMERGENCY_LIST:Landroid/content/Intent;


# instance fields
.field private mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

.field private final mEnableEmergencyCallWhileSimLocked:Z

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mIsVoiceCapable:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordEntry:Landroid/view/View;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x14800000

    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/EmergencyButton;->INTENT_EMERGENCY_DIAL:Landroid/content/Intent;

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.phone.EmergencyDialer.LIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/EmergencyButton;->INTENT_EMERGENCY_LIST:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/EmergencyButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/status/KeyguardButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/EmergencyButton;->mSubId:I

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntry:Landroid/view/View;

    .line 97
    new-instance v0, Lcom/android/keyguard/EmergencyButton$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$1;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mIsVoiceCapable:Z

    .line 148
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mEnableEmergencyCallWhileSimLocked:Z

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/EmergencyButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/EmergencyButton;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/keyguard/EmergencyButton;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/EmergencyButton;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/keyguard/EmergencyButton;->mSubId:I

    return p1
.end method

.method private callToEmergencyLine(Ljava/lang/String;)V
    .locals 5
    .param p1, "emergencyNumber"    # Ljava/lang/String;

    .prologue
    .line 353
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 355
    const/high16 v2, 0x14800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 359
    :try_start_0
    const-string v2, "EmergencyButton"

    const-string v3, "callToEmergencyLine"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "EmergencyButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find the component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getTelecommManager()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private isInCall()Z
    .locals 1

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    return v0
.end method

.method private isVisibleCarrierEmergencyCallButton()Z
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 307
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    .line 308
    .local v8, "simState":I
    if-ne v8, v10, :cond_0

    .line 309
    const-string v9, "EmergencyButton"

    const-string v11, "TelephonyManager.SIM_STATE_ABSENT"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 349
    :goto_0
    return v9

    .line 311
    :cond_0
    if-nez v8, :cond_1

    .line 312
    const-string v9, "EmergencyButton"

    const-string v12, "TelephonyManager.SIM_STATE_UNKNOWN"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v9, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v9

    if-nez v9, :cond_9

    move v9, v10

    goto :goto_0

    .line 314
    :cond_1
    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isUseSKTSimText()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "ril.simtype"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const/16 v9, 0x13

    const-string v12, "ril.simtype"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v9, v12, :cond_2

    move v9, v10

    .line 318
    goto :goto_0

    .line 319
    :cond_2
    const/4 v9, 0x7

    if-ne v8, v9, :cond_3

    .line 320
    const-string v9, "EmergencyButton"

    const-string v12, "TelephonyManager.SIM_STATE_PERM_DISABLED"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v9, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v9

    if-eqz v9, :cond_9

    move v9, v10

    .line 322
    goto :goto_0

    .line 324
    :cond_3
    const/4 v2, 0x0

    .line 325
    .local v2, "isLimitSvc":Z
    iget-object v9, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isAirplaneModeOn()Z

    move-result v1

    .line 326
    .local v1, "isAirplaneModeOn":Z
    iget-object v9, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    iget-object v9, v9, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    iget v12, p0, Lcom/android/keyguard/EmergencyButton;->mSubId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 327
    const-string v9, "ril.skt.network_regist"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 328
    .local v4, "ril":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "Idle"

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v12, -0x1

    if-le v9, v12, :cond_5

    .line 329
    const-string v9, ";"

    const/4 v12, 0x4

    invoke-virtual {v4, v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 330
    .local v7, "rtsValues":[Ljava/lang/String;
    const/4 v9, 0x2

    aget-object v9, v7, v9

    const-string v12, "CS"

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "csValue":[Ljava/lang/String;
    aget-object v9, v0, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 332
    .local v5, "rtsCsValue":I
    const/4 v9, 0x3

    aget-object v9, v7, v9

    const-string v12, "PS"

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 333
    .local v3, "psValue":[Ljava/lang/String;
    aget-object v9, v3, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 335
    .local v6, "rtsPsValue":I
    iget-object v9, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    iget-object v9, v9, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    iget v12, p0, Lcom/android/keyguard/EmergencyButton;->mSubId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v9

    if-nez v9, :cond_4

    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    .line 337
    :cond_4
    const-string v9, "EmergencyButton"

    const-string v12, "LIMITED SERVICE"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v2, 0x1

    .line 345
    .end local v0    # "csValue":[Ljava/lang/String;
    .end local v3    # "psValue":[Ljava/lang/String;
    .end local v4    # "ril":Ljava/lang/String;
    .end local v5    # "rtsCsValue":I
    .end local v6    # "rtsPsValue":I
    .end local v7    # "rtsValues":[Ljava/lang/String;
    :cond_5
    :goto_1
    if-nez v2, :cond_6

    if-eqz v1, :cond_8

    :cond_6
    move v9, v10

    goto/16 :goto_0

    .line 343
    :cond_7
    const-string v9, "EmergencyButton"

    const-string v12, "Can\'t find Service States"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 346
    :cond_8
    const-string v9, "EmergencyButton"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can\'t match sim state, simState : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v11

    .line 347
    goto/16 :goto_0

    .end local v1    # "isAirplaneModeOn":Z
    .end local v2    # "isLimitSvc":Z
    :cond_9
    move v9, v11

    .line 349
    goto/16 :goto_0
.end method

.method private launchEmergencyDialler()V
    .locals 6

    .prologue
    .line 292
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->moveToEmergencyCallList()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/EmergencyButton;->INTENT_EMERGENCY_LIST:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 304
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/EmergencyButton;->INTENT_EMERGENCY_DIAL:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "EmergencyButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find the component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resumeCall()V
    .locals 2

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 380
    return-void
.end method

.method private updateEmergencyCallButton()V
    .locals 7

    .prologue
    .line 231
    const/4 v4, 0x0

    .line 232
    .local v4, "visible":Z
    iget-boolean v5, p0, Lcom/android/keyguard/EmergencyButton;->mIsVoiceCapable:Z

    if-eqz v5, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 235
    const/4 v4, 0x1

    .line 263
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isKORUsimText()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 267
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isVisibleCarrierEmergencyCallButton()Z

    move-result v4

    .line 270
    :cond_3
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isOutOfService()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->disableEmergencyCallWhenOffline()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 271
    const/4 v4, 0x0

    .line 274
    :cond_4
    if-eqz v4, :cond_a

    .line 275
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/keyguard/EmergencyButton;->setVisibility(I)V

    .line 278
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 279
    const v3, 0x104027c

    .line 283
    .local v3, "textId":I
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/keyguard/EmergencyButton;->setText(I)V

    .line 287
    .end local v3    # "textId":I
    :goto_2
    return-void

    .line 238
    :cond_5
    const/4 v0, 0x0

    .line 239
    .local v0, "knoxCustomLockScreenState":I
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v1

    .line 240
    .local v1, "knoxCustomSystemManager":Landroid/app/enterprise/knoxcustom/SystemManager;
    if-eqz v1, :cond_6

    .line 241
    invoke-virtual {v1}, Landroid/app/enterprise/knoxcustom/SystemManager;->getLockScreenHiddenItems()I

    move-result v0

    .line 243
    :cond_6
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_7

    .line 244
    const-string v5, "EmergencyButton"

    const-string v6, "KnoxCustom: Emergency Button is not visible"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v4, 0x0

    goto :goto_0

    .line 248
    :cond_7
    iget-object v5, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinVoiceSecure()Z

    move-result v2

    .line 250
    .local v2, "simLocked":Z
    if-eqz v2, :cond_8

    .line 252
    iget-boolean v4, p0, Lcom/android/keyguard/EmergencyButton;->mEnableEmergencyCallWhileSimLocked:Z

    goto :goto_0

    .line 255
    :cond_8
    iget-object v5, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    goto :goto_0

    .line 281
    .end local v0    # "knoxCustomLockScreenState":I
    .end local v1    # "knoxCustomSystemManager":Landroid/app/enterprise/knoxcustom/SystemManager;
    .end local v2    # "simLocked":Z
    :cond_9
    sget v3, Lcom/android/keyguard/R$string;->kg_lockscreen_emergency_call_button_text:I

    .restart local v3    # "textId":I
    goto :goto_1

    .line 285
    .end local v3    # "textId":I
    :cond_a
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/keyguard/EmergencyButton;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Lcom/android/keyguard/status/KeyguardButton;->onAttachedToWindow()V

    .line 155
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 156
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/android/keyguard/status/KeyguardButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 180
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    .line 181
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 161
    invoke-super {p0}, Lcom/android/keyguard/status/KeyguardButton;->onDetachedFromWindow()V

    .line 162
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Lcom/android/keyguard/status/KeyguardButton;->onFinishInflate()V

    .line 167
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 168
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    .line 169
    new-instance v0, Lcom/android/keyguard/EmergencyButton$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$2;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    .line 175
    return-void
.end method

.method public setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    .line 373
    return-void
.end method

.method public setPasswordEntryView(Landroid/view/View;)V
    .locals 0
    .param p1, "passwordEntry"    # Landroid/view/View;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntry:Landroid/view/View;

    .line 368
    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 187
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const/16 v4, 0xc8

    invoke-static {v3, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 190
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 192
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->stopLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 197
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->resumeCall()V

    .line 198
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    if-eqz v3, :cond_0

    .line 199
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    invoke-interface {v3}, Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;->onEmergencyButtonClickedWhenInCall()V

    .line 228
    :cond_0
    :goto_1
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "EmergencyButton"

    const-string v4, "Failed to stop app pinning"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    .line 205
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isDirectCallToEcc()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntry:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 206
    const-string v1, ""

    .line 208
    .local v1, "emergencyNumber":Ljava/lang/String;
    :try_start_1
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntry:Landroid/view/View;

    instance-of v3, v3, Lcom/android/keyguard/PasswordTextView;

    if-eqz v3, :cond_3

    .line 209
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntry:Landroid/view/View;

    check-cast v3, Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v3}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 218
    :cond_2
    :goto_2
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 219
    invoke-direct {p0, v1}, Lcom/android/keyguard/EmergencyButton;->callToEmergencyLine(Ljava/lang/String;)V

    goto :goto_1

    .line 210
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntry:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 211
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntry:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 212
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntry:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/EditText;

    if-eqz v3, :cond_2

    .line 213
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntry:Landroid/view/View;

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_2

    .line 215
    :catch_1
    move-exception v2

    .line 216
    .local v2, "ex":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_2

    .line 221
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_5
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->launchEmergencyDialler()V

    goto :goto_1

    .line 225
    .end local v1    # "emergencyNumber":Ljava/lang/String;
    :cond_6
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->launchEmergencyDialler()V

    goto :goto_1
.end method
