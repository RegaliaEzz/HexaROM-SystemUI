.class public abstract Lcom/android/keyguard/KeyguardAbsKeyInputView;
.super Landroid/widget/LinearLayout;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardAbsKeyInputView$7;,
        Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;
    }
.end annotation


# instance fields
.field private mBackupPINButton:Landroid/widget/Button;

.field private mBounceInterpolator:Landroid/view/animation/Interpolator;

.field protected mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCurrentMobileKeyboard:I

.field private mDismissing:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field protected mEcaView:Landroid/view/View;

.field protected mEnableHaptics:Z

.field private mEntry:Ljava/lang/String;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mForgotPatternButton:Landroid/widget/Button;

.field public mIsAccountExist:Z

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mMobileKeyboard:Z

.field protected mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mPrivateModeOn:Z

.field protected mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field protected mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

.field private mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field protected final mSupportMobileKeyboard:Z

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mVibraterService:Landroid/os/SystemVibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 157
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 104
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPrivateModeOn:Z

    .line 105
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 125
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMobileKeyboard:Z

    .line 126
    iput v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCurrentMobileKeyboard:I

    .line 132
    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 293
    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEntry:Ljava/lang/String;

    .line 159
    const-string v0, "enterprise_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCurrentMobileKeyboard:I

    .line 166
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSupportMobileKeyboard:Z

    .line 167
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSupportMobileKeyboard:Z

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMobileKeyboard:Z

    .line 170
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardAbsKeyInputView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->displayFailedAnimation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardAbsKeyInputView;Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;
    .param p1, "x1"    # Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->updateFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private displayFailedAnimation(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3f733333    # 0.95f

    .line 641
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 662
    :goto_0
    return-void

    .line 643
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 644
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, -0x3e380000    # -25.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardAbsKeyInputView$6;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView$6;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private updateFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V
    .locals 4
    .param p1, "mode"    # Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 729
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mForgotPatternButton:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBackupPINButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 734
    sget-object v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$7;->$SwitchMap$com$android$keyguard$EmergencyCarrierArea$FooterMode:[I

    invoke-virtual {p1}, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 736
    :pswitch_0
    const-string v0, "KeyguardAbsKeyInputView"

    const-string v1, "mode normal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 738
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 741
    :pswitch_1
    const-string v0, "KeyguardAbsKeyInputView"

    const-string v1, "mode ForgotLockPattern"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 743
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 744
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 746
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 749
    :pswitch_2
    const-string v0, "KeyguardAbsKeyInputView"

    const-string v1, "mode BackupPIN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 751
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 754
    :pswitch_3
    const-string v0, "KeyguardAbsKeyInputView"

    const-string v1, "mode SamsungAccount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 756
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 734
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public checkAccountExist(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 724
    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;Landroid/accounts/AccountManager;Lcom/android/keyguard/KeyguardAbsKeyInputView$1;)V

    .line 725
    .local v0, "accountAnalyzer":Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->start()V

    .line 726
    return-void
.end method

.method protected disableDevicePermanently()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 766
    const-string v0, "KeyguardAbsKeyInputView"

    const-string v2, "disableDevicePermanently start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const/4 v0, 0x5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v2, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " has exceeded number of authentication failure limit"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 776
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    .line 777
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    const v3, 0x1040b53

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 779
    return-void
.end method

.method public doHapticKeyClick()V
    .locals 2

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    if-eqz v0, :cond_0

    .line 634
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->performHapticFeedback(II)Z

    .line 638
    :cond_0
    return-void
.end method

.method protected abstract getPasswordText()Ljava/lang/String;
.end method

.method protected abstract getPasswordTextViewId()I
.end method

.method protected abstract getPromtReasonStringRes(I)I
.end method

.method protected getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 291
    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_password:I

    return v0
.end method

.method protected handleAttemptLockout(J)V
    .locals 11
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 458
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    .line 459
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    sget-object v1, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->Normal:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyCarrierArea;->resizeFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V

    .line 461
    :cond_0
    sget-object v0, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->Normal:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->updateFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V

    .line 462
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v6

    .line 463
    .local v6, "isAutoWipe":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 465
    .local v8, "elapsedRealtime":J
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 469
    :cond_1
    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;

    sub-long v2, p1, v8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;JJZ)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 539
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 556
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSupportMobileKeyboard:Z

    if-eqz v0, :cond_0

    .line 176
    iget v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCurrentMobileKeyboard:I

    iget v1, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-eq v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMobileKeyboard:Z

    .line 178
    iget v0, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCurrentMobileKeyboard:I

    .line 179
    const-string v0, "KeyguardAbsKeyInputView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConfigurationChange mCurrentMobileKeyboard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCurrentMobileKeyboard:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 181
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetState()V

    .line 184
    :cond_0
    return-void
.end method

.method public onEmergencyButtonClickedWhenInCall()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    .line 283
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 233
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 234
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 235
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportSamsungAccountAuth()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->checkAccountExist(Landroid/content/Context;)V

    .line 238
    :cond_0
    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    .line 239
    sget v1, Lcom/android/keyguard/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/EmergencyCarrierArea;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    .line 241
    sget v1, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    .line 242
    .local v0, "button":Lcom/android/keyguard/EmergencyButton;
    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {v0, p0}, Lcom/android/keyguard/EmergencyButton;->setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V

    .line 244
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isDirectCallToEcc()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordTextViewId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyButton;->setPasswordEntryView(Landroid/view/View;)V

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x10c000d

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 250
    new-instance v1, Lcom/android/keyguard/util/BounceInterpolator;

    invoke-direct {v1}, Lcom/android/keyguard/util/BounceInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    .line 253
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "db_private_box_enabled"

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPrivateModeOn:Z

    .line 255
    new-instance v1, Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 256
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 258
    sget v1, Lcom/android/keyguard/R$id;->forgot_password_button:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mForgotPatternButton:Landroid/widget/Button;

    .line 259
    sget v1, Lcom/android/keyguard/R$id;->backup_pin_button:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBackupPINButton:Landroid/widget/Button;

    .line 260
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mForgotPatternButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 261
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mForgotPatternButton:Landroid/widget/Button;

    sget v2, Lcom/android/keyguard/R$string;->kg_forgot_spass_button_text:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 262
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mForgotPatternButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBackupPINButton:Landroid/widget/Button;

    if-eqz v1, :cond_3

    .line 270
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBackupPINButton:Landroid/widget/Button;

    sget v2, Lcom/android/keyguard/R$string;->kg_lockscreen_backup_pin_button_text:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 271
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBackupPINButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemVibrator;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mVibraterService:Landroid/os/SystemVibrator;

    .line 278
    return-void

    :cond_4
    move v1, v3

    .line 253
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onUserInput()V

    .line 551
    const/4 v0, 0x0

    return v0
.end method

.method protected onPasswordChecked(ZIZ)V
    .locals 24
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I
    .param p3, "isValidPassword"    # Z

    .prologue
    .line 348
    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportUnpackMode()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 349
    :cond_0
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDismissing:Z

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v19

    if-lez v19, :cond_1

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v13

    .line 354
    .local v13, "mDPM":Landroid/app/admin/DevicePolicyManager;
    const/16 v19, 0x0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v17

    .line 355
    .local v17, "quality":I
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v15

    .line 356
    .local v15, "minLength":I
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v14

    .line 357
    .local v14, "maxLength":I
    new-instance v12, Landroid/content/Intent;

    const-string v19, "android.app.action.CHANGE_DEVICE_PASSWORD"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    .local v12, "it":Landroid/content/Intent;
    const-string v19, "com.android.settings"

    const-string v20, "com.android.settings.ChooseLockPassword"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const-string v19, "lockscreen.password_type"

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    const-string v19, "lockscreen.password_min"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 361
    const-string v19, "lockscreen.password_max"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    const-string v19, "lockscreen.password_old"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEntry:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    const-string v19, "confirm_credentials"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 364
    const-string v19, "isRecovery"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 365
    const/high16 v19, 0x10000000

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 366
    const/high16 v19, 0x400000

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 367
    const/high16 v19, 0x800000

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 369
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v19

    sget-object v20, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v12    # "it":Landroid/content/Intent;
    .end local v13    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v14    # "maxLength":I
    .end local v15    # "minLength":I
    .end local v17    # "quality":I
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isGSIMLog()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(I)Z

    move-result v11

    .line 377
    .local v11, "isFingerPrintActivated":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 378
    if-eqz v11, :cond_5

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "LSPF"

    sget-object v21, Lcom/android/keyguard/util/KeyguardStatusUtils;->REPORT_APP_STATUS_SURVEY:Ljava/lang/String;

    invoke-static/range {v19 .. v21}, Lcom/android/keyguard/util/KeyguardStatusUtils;->insertGSIMLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    .end local v11    # "isFingerPrintActivated":Z
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-interface/range {v19 .. v20}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 397
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v19

    if-eqz v19, :cond_3

    if-eqz p1, :cond_3

    .line 398
    new-instance v7, Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 399
    .local v7, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v7}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentUserID()I

    move-result v19

    if-nez v19, :cond_3

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEntry:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 406
    .end local v7    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    :cond_3
    sget v19, Lcom/android/keyguard/R$id;->key_enter_text:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 408
    .local v16, "okButton":Landroid/widget/TextView;
    if-eqz v16, :cond_4

    .line 409
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->clearFocus()V

    .line 410
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->clearAccessibilityFocus()V

    .line 411
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->invalidate()V

    .line 448
    .end local v16    # "okButton":Landroid/widget/TextView;
    :cond_4
    :goto_2
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(Z)V

    .line 449
    return-void

    .line 370
    .restart local v12    # "it":Landroid/content/Intent;
    .restart local v13    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .restart local v14    # "maxLength":I
    .restart local v15    # "minLength":I
    .restart local v17    # "quality":I
    :catch_0
    move-exception v10

    .line 371
    .local v10, "e":Landroid/content/ActivityNotFoundException;
    const-string v19, "KeyguardAbsKeyInputView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Can\'t find the component "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 381
    .end local v10    # "e":Landroid/content/ActivityNotFoundException;
    .end local v12    # "it":Landroid/content/Intent;
    .end local v13    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v14    # "maxLength":I
    .end local v15    # "minLength":I
    .end local v17    # "quality":I
    .restart local v11    # "isFingerPrintActivated":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "LSPN"

    sget-object v21, Lcom/android/keyguard/util/KeyguardStatusUtils;->REPORT_APP_STATUS_SURVEY:Ljava/lang/String;

    invoke-static/range {v19 .. v21}, Lcom/android/keyguard/util/KeyguardStatusUtils;->insertGSIMLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 383
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 384
    if-eqz v11, :cond_7

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "LSWF"

    sget-object v21, Lcom/android/keyguard/util/KeyguardStatusUtils;->REPORT_APP_STATUS_SURVEY:Ljava/lang/String;

    invoke-static/range {v19 .. v21}, Lcom/android/keyguard/util/KeyguardStatusUtils;->insertGSIMLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 387
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "LSWN"

    sget-object v21, Lcom/android/keyguard/util/KeyguardStatusUtils;->REPORT_APP_STATUS_SURVEY:Ljava/lang/String;

    invoke-static/range {v19 .. v21}, Lcom/android/keyguard/util/KeyguardStatusUtils;->insertGSIMLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 388
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "LSBN"

    sget-object v21, Lcom/android/keyguard/util/KeyguardStatusUtils;->REPORT_APP_STATUS_SURVEY:Ljava/lang/String;

    invoke-static/range {v19 .. v21}, Lcom/android/keyguard/util/KeyguardStatusUtils;->insertGSIMLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 415
    .end local v11    # "isFingerPrintActivated":Z
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPrivateModeOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEntry:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v19, v0

    sget-object v23, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_a

    sget-object v19, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    :goto_3
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v23

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v19

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->checkPrivateModePassword(Ljava/lang/String;Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;I)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget v20, Lcom/android/keyguard/R$string;->kg_private_mode_available_message:I

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/keyguard/KeyguardConstants;->PRIVATE_MODE_ON_INTENT:Landroid/content/Intent;

    new-instance v21, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v22

    invoke-direct/range {v21 .. v22}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-interface/range {v19 .. v20}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto/16 :goto_2

    .line 415
    :cond_a
    sget-object v19, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Password:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    goto :goto_3

    .line 422
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mVibraterService:Landroid/os/SystemVibrator;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x64

    sget-object v22, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual/range {v19 .. v22}, Landroid/os/SystemVibrator;->vibrate(JLandroid/os/SystemVibrator$MagnitudeType;)V

    .line 425
    :cond_c
    if-eqz p3, :cond_10

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v6

    .line 428
    .local v6, "attempts":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/keyguard/KeyguardSecurityCallback;->getRemainingAttemptsBeforeWipe()I

    move-result v18

    .line 429
    .local v18, "remainingAttemptsBeforeWipe":I
    const/16 v19, 0x5

    move/from16 v0, v19

    if-eq v6, v0, :cond_d

    const/16 v19, 0x9

    move/from16 v0, v19

    if-le v6, v0, :cond_e

    :cond_d
    if-eqz v18, :cond_e

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(I)J

    move-result-wide v8

    .line 432
    .local v8, "deadline":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V

    goto/16 :goto_2

    .line 434
    .end local v8    # "deadline":J
    :cond_e
    const/16 v19, 0x5

    move/from16 v0, v19

    if-le v6, v0, :cond_f

    if-lez v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v19

    if-eqz v19, :cond_f

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    move-result v20

    sget v21, Lcom/android/keyguard/R$string;->kg_n_attempts_remaining:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/keyguard/KeyguardSecurityCallback;->getRemainingAttemptsBeforeWipe()I

    move-result v22

    const/16 v23, 0x1

    invoke-virtual/range {v19 .. v23}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IIIZ)V

    .line 440
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->displayFailedAnimation(Landroid/view/View;)V

    goto/16 :goto_2

    .line 438
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    move-result v20

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ)V

    goto :goto_4

    .line 443
    .end local v6    # "attempts":I
    .end local v18    # "remainingAttemptsBeforeWipe":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    move-result v20

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->displayFailedAnimation(Landroid/view/View;)V

    goto/16 :goto_2
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 561
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 563
    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 567
    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 569
    :cond_1
    return-void
.end method

.method public onResume(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    .line 574
    return-void
.end method

.method protected onUserInput()V
    .locals 3

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 546
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 200
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDismissing:Z

    .line 201
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(Z)V

    .line 203
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->disableDevicePermanently()V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 209
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v2

    if-nez v2, :cond_2

    .line 210
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V

    goto :goto_0

    .line 212
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetState()V

    .line 213
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mIsAccountExist:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportSamsungAccountAuth()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 216
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/EmergencyCarrierArea;

    sget-object v3, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->SamsungAccountOnly:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/EmergencyCarrierArea;->resizeFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V

    .line 217
    :cond_3
    sget-object v2, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->SamsungAccountOnly:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->updateFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V

    goto :goto_0
.end method

.method protected abstract resetPasswordText(Z)V
.end method

.method protected abstract resetState()V
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 189
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 194
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    .line 195
    return-void
.end method

.method protected abstract setPasswordEntryEnabled(Z)V
.end method

.method protected abstract setPasswordEntryInputEnabled(Z)V
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setNextMessageColor(I)V

    .line 626
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 627
    return-void
.end method

.method public showPromptReason(I)V
    .locals 14
    .param p1, "reason"    # I

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 583
    if-eqz p1, :cond_5

    .line 584
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v2

    .line 586
    .local v2, "deadline":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 621
    .end local v2    # "deadline":J
    :cond_0
    :goto_0
    return-void

    .line 590
    .restart local v2    # "deadline":J
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPromtReasonStringRes(I)I

    move-result v4

    .line 591
    .local v4, "promtReasonStringRes":I
    if-eqz v4, :cond_0

    .line 592
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    .line 593
    .local v0, "attempts":I
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->getRemainingAttemptsBeforeWipe()I

    move-result v5

    .line 594
    .local v5, "remainingAttemptsBeforeWipe":I
    const/4 v1, 0x0

    .line 595
    .local v1, "promptStr":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v6, v13}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    .line 596
    const/4 v6, 0x2

    if-ne p1, v6, :cond_2

    .line 597
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    new-array v7, v12, [Ljava/lang/Object;

    const/16 v8, 0x18

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 601
    :goto_1
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0xa

    if-le v0, v6, :cond_4

    if-lez v5, :cond_4

    .line 603
    if-ne v5, v12, :cond_3

    .line 604
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/keyguard/R$string;->kg_1_attempt_remaining:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v12}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 599
    :cond_2
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 607
    :cond_3
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/keyguard/R$string;->kg_n_attempts_remaining:I

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v12}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 612
    :cond_4
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v6, v1, v12}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 616
    .end local v0    # "attempts":I
    .end local v1    # "promptStr":Ljava/lang/String;
    .end local v2    # "deadline":J
    .end local v4    # "promtReasonStringRes":I
    .end local v5    # "remainingAttemptsBeforeWipe":I
    :cond_5
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 617
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v6, v13}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    goto/16 :goto_0

    .line 619
    :cond_6
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const/16 v7, 0x1388

    invoke-virtual {v6, v7}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    goto/16 :goto_0
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 762
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 295
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDismissing:Z

    if-eqz v1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    const-string v1, "KeyguardAbsKeyInputView"

    const-string v2, "verifyPasswordAndUnlock"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 300
    const-string v1, "KeyguardAbsKeyInputView"

    const-string v2, "CCMode is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    const-string v2, "User authentication is blocked by CC mode since it detects the device has been tampered"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 306
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEntry:Ljava/lang/String;

    .line 307
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 308
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v1, :cond_3

    .line 309
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 312
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEntry:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_4

    .line 315
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 316
    invoke-virtual {p0, v3, v3, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPasswordChecked(ZIZ)V

    goto :goto_0

    .line 320
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEntry:Ljava/lang/String;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    new-instance v4, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 335
    new-instance v0, Landroid/lsm/LockedStatePasswordWrapper;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/lsm/LockedStatePasswordWrapper;-><init>(Landroid/content/Context;)V

    .line 337
    .local v0, "lsw":Landroid/lsm/LockedStatePasswordWrapper;
    invoke-virtual {v0}, Landroid/lsm/LockedStatePasswordWrapper;->getCurrentUserID()I

    move-result v1

    if-nez v1, :cond_5

    .line 338
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEntry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/lsm/LockedStatePasswordWrapper;->setPassword(Ljava/lang/String;)I

    .line 343
    :cond_5
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEntry:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->clear()V

    goto :goto_0
.end method
