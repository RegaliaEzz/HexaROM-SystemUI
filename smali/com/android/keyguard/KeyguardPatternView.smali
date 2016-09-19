.class public Lcom/android/keyguard/KeyguardPatternView;
.super Landroid/widget/LinearLayout;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/android/settingslib/animation/AppearAnimationCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardPatternView$8;,
        Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;,
        Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;,
        Lcom/android/keyguard/KeyguardPatternView$OneHandMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;",
        "Lcom/android/keyguard/KeyguardSecurityView;",
        "Lcom/android/settingslib/animation/AppearAnimationCreator",
        "<",
        "Lcom/android/internal/widget/LockPatternView$CellState;",
        ">;"
    }
.end annotation


# instance fields
.field private mBackupPINButton:Landroid/widget/Button;

.field private mBounceInterpolator:Landroid/view/animation/Interpolator;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field private mContainer:Landroid/view/ViewGroup;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCurrentMobileKeyboardState:I

.field private mDisappearYTranslation:I

.field private mEcaView:Landroid/view/View;

.field private mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

.field private mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mForgotPatternButton:Landroid/widget/Button;

.field private mIsAccountExist:Z

.field private mIsTactileFeedbackEnabled:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLastFooterMode:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

.field private mLastPokeTime:J

.field private mLeftArrowImage:Landroid/widget/ImageButton;

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

.field private mOnehandClickLitener:Landroid/view/View$OnClickListener;

.field private mOnehandLockPattern:Landroid/view/View;

.field private mPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mPrivateModeOn:Z

.field private mRightArrowImage:Landroid/widget/ImageButton;

.field private mRightPressed:Z

.field private mSecPatternArea:Landroid/view/View;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

.field private final mSupportMobileKeyboard:Z

.field private mTempRect:Landroid/graphics/Rect;

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVibraterService:Landroid/os/SystemVibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 131
    iput v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mCurrentMobileKeyboardState:I

    .line 139
    const-wide/16 v0, -0x1b58

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 144
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternView$1;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 150
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    .line 158
    sget-object v0, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->Normal:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastFooterMode:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    .line 160
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mPrivateModeOn:Z

    .line 163
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternView$2;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 924
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternView$7;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandClickLitener:Landroid/view/View$OnClickListener;

    .line 197
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 199
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCurrentMobileKeyboardState:I

    .line 200
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSupportMobileKeyboard:Z

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/SecLockPatternView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardPatternView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPattern:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/keyguard/KeyguardPatternView;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mPattern:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardPatternView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPrivateModeOn:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->disableDevicePermanently()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardPatternView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsTactileFeedbackEnabled:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardPatternView;)Landroid/os/SystemVibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mVibraterService:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/keyguard/KeyguardPatternView;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # J

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/keyguard/KeyguardPatternView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsAccountExist:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/keyguard/KeyguardPatternView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsAccountExist:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/keyguard/KeyguardPatternView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCurrentMobileKeyboardState:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/keyguard/KeyguardPatternView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/keyguard/KeyguardPatternView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->setInputViewVisible(Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/keyguard/KeyguardPatternView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V

    return-void
.end method

.method static synthetic access$4302(Lcom/android/keyguard/KeyguardPatternView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightPressed:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardPatternView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->displayFailedAnimation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->setOnehandPatternView()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardPatternView;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method private checkAccountExist(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 857
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;-><init>(Lcom/android/keyguard/KeyguardPatternView;Landroid/accounts/AccountManager;Lcom/android/keyguard/KeyguardPatternView$1;)V

    .line 858
    .local v0, "accountAnalyzer":Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->start()V

    .line 859
    return-void
.end method

.method private disableDevicePermanently()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 898
    const-string v0, "SecurityPatternView"

    const-string v1, "disableDevicePermanently start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/SecLockPatternView;->disableInput()V

    .line 900
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/SecLockPatternView;->clearPattern()V

    .line 901
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/SecLockPatternView;->setEnabled(Z)V

    .line 902
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->setInputViewVisible(Z)V

    .line 903
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    const v2, 0x1040b53

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 904
    return-void
.end method

.method private displayDefaultSecurityMessage()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 400
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    .line 401
    .local v0, "attempts":I
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->getRemainingAttemptsBeforeWipe()I

    move-result v2

    .line 403
    .local v2, "remainingAttemptsBeforeWipe":I
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 404
    const v1, 0x1040b53

    .line 420
    .local v1, "msgId":I
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xa

    if-le v0, v3, :cond_5

    if-lez v2, :cond_5

    .line 422
    if-ne v2, v7, :cond_4

    .line 423
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$string;->kg_1_attempt_remaining:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 432
    :goto_1
    return-void

    .line 405
    .end local v1    # "msgId":I
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->isDismissActionExist()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 406
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprint()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 408
    sget v1, Lcom/android/keyguard/R$string;->kg_fingerprints_pattern_bouncer_instructions:I

    .restart local v1    # "msgId":I
    goto :goto_0

    .line 410
    .end local v1    # "msgId":I
    :cond_1
    sget v1, Lcom/android/keyguard/R$string;->kg_pattern_bouncer_instructions:I

    .restart local v1    # "msgId":I
    goto :goto_0

    .line 413
    .end local v1    # "msgId":I
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprint()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 415
    sget v1, Lcom/android/keyguard/R$string;->kg_fingerprints_pattern_instructions:I

    .restart local v1    # "msgId":I
    goto :goto_0

    .line 417
    .end local v1    # "msgId":I
    :cond_3
    sget v1, Lcom/android/keyguard/R$string;->kg_pattern_instructions:I

    .restart local v1    # "msgId":I
    goto/16 :goto_0

    .line 426
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v4, Lcom/android/keyguard/R$string;->kg_n_attempts_remaining:I

    invoke-virtual {v3, v1, v4, v2, v7}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IIIZ)V

    goto :goto_1

    .line 430
    :cond_5
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v3, v1, v7}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ)V

    goto :goto_1
.end method

.method private displayFailedAnimation(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3f733333    # 0.95f

    .line 874
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 895
    :goto_0
    return-void

    .line 876
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 877
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

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardPatternView$6;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardPatternView$6;-><init>(Lcom/android/keyguard/KeyguardPatternView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private handleAttemptLockout(J)V
    .locals 11
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    const/4 v1, 0x0

    .line 568
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/SecLockPatternView;->clearPattern()V

    .line 569
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SecLockPatternView;->setEnabled(Z)V

    .line 570
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->setInputViewVisible(Z)V

    .line 571
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    sget-object v1, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->Normal:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyCarrierArea;->resizeFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V

    .line 573
    :cond_0
    sget-object v0, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->Normal:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V

    .line 574
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v6

    .line 575
    .local v6, "isAutoWipe":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 576
    .local v8, "elapsedRealtime":J
    const-string v0, "SecurityPatternView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAttemptLockout() elapsedRealtimeDeadline: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$5;

    sub-long v2, p1, v8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardPatternView$5;-><init>(Lcom/android/keyguard/KeyguardPatternView;JJZ)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPatternView$5;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 683
    return-void
.end method

.method private initOnehandPatternView()V
    .locals 3

    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isOnehandMode(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 943
    sget v0, Lcom/android/keyguard/R$id;->onehand_lockpattern:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/view/View;

    .line 944
    sget v0, Lcom/android/keyguard/R$id;->lockPatternView:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    .line 945
    sget v0, Lcom/android/keyguard/R$id;->onehand_left_arrow_pattern:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    .line 946
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandClickLitener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 948
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->keyguard_accessibility_one_hand_operation_left_handed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 951
    :cond_0
    sget v0, Lcom/android/keyguard/R$id;->onehand_right_arrow_pattern:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    .line 952
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 953
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandClickLitener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 954
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->keyguard_accessibility_one_hand_operation_right_handed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 959
    :cond_1
    return-void
.end method

.method private isTactileFeedbackEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 907
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "VIB_FEEDBACK_MAGNITUDE"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V
    .locals 4
    .param p1, "mode"    # Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 996
    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Left:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    if-ne p1, v1, :cond_3

    .line 997
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 998
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1000
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 1001
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1003
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1004
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1005
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const v1, 0x800003

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1006
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_one_hand_pattern_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 1007
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 1008
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1025
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    :goto_0
    return-void

    .line 1010
    :cond_3
    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Right:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    if-ne p1, v1, :cond_2

    .line 1011
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    .line 1012
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1014
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_5

    .line 1015
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1017
    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1018
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1019
    .restart local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    const v1, 0x800005

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1020
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 1021
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_one_hand_pattern_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 1022
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setInputViewVisible(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 920
    :goto_0
    return-void

    .line 916
    :cond_0
    if-eqz p1, :cond_1

    .line 917
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 919
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private setOnehandPatternView()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 962
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v3, v4}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isOnehandMode(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 963
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isEasyOneHandRunning(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 964
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v3, :cond_0

    .line 965
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 967
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v3, :cond_1

    .line 968
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 970
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 971
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 972
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x51

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 973
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 975
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 976
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 977
    .restart local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 978
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 979
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 980
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 993
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    :goto_0
    return-void

    .line 984
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "onehand_direction"

    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_4

    :goto_1
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightPressed:Z

    .line 986
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightPressed:Z

    if-eqz v1, :cond_5

    .line 987
    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Right:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 984
    goto :goto_1

    .line 989
    :cond_5
    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Left:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V

    goto :goto_0
.end method

.method private updateFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V
    .locals 4
    .param p1, "mode"    # Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 293
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastFooterMode:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    .line 294
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 300
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportBackupPin()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->BackupPIN:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    if-ne p1, v0, :cond_2

    .line 301
    sget-object p1, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->Normal:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    .line 305
    :cond_2
    sget-object v0, Lcom/android/keyguard/KeyguardPatternView$8;->$SwitchMap$com$android$keyguard$EmergencyCarrierArea$FooterMode:[I

    invoke-virtual {p1}, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 307
    :pswitch_0
    const-string v0, "SecurityPatternView"

    const-string v1, "mode normal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 312
    :pswitch_1
    const-string v0, "SecurityPatternView"

    const-string v1, "mode ForgotLockPattern"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportBackupPin()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 315
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 317
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 320
    :pswitch_2
    const-string v0, "SecurityPatternView"

    const-string v1, "mode BackupPIN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public createAnimation(Lcom/android/internal/widget/LockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "animatedCell"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "delay"    # J
    .param p4, "duration"    # J
    .param p6, "translationY"    # F
    .param p7, "appearing"    # Z
    .param p8, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p9, "finishListener"    # Ljava/lang/Runnable;

    .prologue
    .line 866
    return-void
.end method

.method public bridge synthetic createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 10
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # F
    .param p7, "x4"    # Z
    .param p8, "x5"    # Landroid/view/animation/Interpolator;
    .param p9, "x6"    # Ljava/lang/Runnable;

    .prologue
    .line 78
    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/LockPatternView$CellState;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/keyguard/KeyguardPatternView;->createAnimation(Lcom/android/internal/widget/LockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 870
    const/4 v0, 0x0

    return v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 687
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 330
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 331
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSupportMobileKeyboard:Z

    if-eqz v0, :cond_0

    .line 332
    iget v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCurrentMobileKeyboardState:I

    iget v1, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-eq v0, v1, :cond_0

    .line 333
    iget v0, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCurrentMobileKeyboardState:I

    .line 334
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 335
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    .line 338
    :cond_0
    return-void
.end method

.method public onEmergencyButtonClickedWhenInCall()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    .line 344
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 216
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 217
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_5

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 220
    sget v0, Lcom/android/keyguard/R$id;->lockPatternView:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/SecLockPatternView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    .line 221
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/SecLockPatternView;->setSaveEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    new-instance v3, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;-><init>(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$1;)V

    invoke-virtual {v0, v3}, Lcom/android/keyguard/SecLockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 223
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 226
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isTactileFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsTactileFeedbackEnabled:Z

    .line 227
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mVibraterService:Landroid/os/SystemVibrator;

    .line 231
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/keyguard/SecLockPatternView;->setInStealthMode(Z)V

    .line 235
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/keyguard/SecLockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 237
    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    .line 240
    sget v0, Lcom/android/keyguard/R$id;->forgot_password_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    .line 241
    sget v0, Lcom/android/keyguard/R$id;->backup_pin_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    .line 242
    sget v0, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 243
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    sget v3, Lcom/android/keyguard/R$string;->kg_forgot_spass_button_text:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 245
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/keyguard/KeyguardPatternView$3;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardPatternView$3;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    sget v3, Lcom/android/keyguard/R$string;->kg_lockscreen_backup_pin_button_text:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 254
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/keyguard/KeyguardPatternView$4;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardPatternView$4;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    :cond_1
    sget v0, Lcom/android/keyguard/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    .line 263
    sget v0, Lcom/android/keyguard/R$id;->container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContainer:Landroid/view/ViewGroup;

    .line 266
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/EmergencyButton;->setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V

    .line 271
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->initOnehandPatternView()V

    .line 272
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->setOnehandPatternView()V

    .line 275
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 276
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->disableDevicePermanently()V

    .line 279
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x10c000d

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 281
    new-instance v0, Lcom/android/keyguard/util/BounceInterpolator;

    invoke-direct {v0}, Lcom/android/keyguard/util/BounceInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    .line 283
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "db_private_box_enabled"

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_7

    :goto_2
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mPrivateModeOn:Z

    .line 287
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportSamsungAccountAuth()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 288
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->checkAccountExist(Landroid/content/Context;)V

    .line 290
    :cond_4
    return-void

    .line 217
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 231
    goto/16 :goto_1

    :cond_7
    move v1, v2

    .line 283
    goto :goto_2
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 692
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 694
    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 698
    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 700
    :cond_1
    return-void
.end method

.method public onResume(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->reset()V

    .line 705
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 348
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 351
    .local v2, "result":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    sub-long v0, v4, v6

    .line 352
    .local v0, "elapsed":J
    if-eqz v2, :cond_0

    const-wide/16 v4, 0x1af4

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 353
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 355
    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 356
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v5}, Lcom/android/keyguard/KeyguardPatternView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 357
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 358
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v4, p1}, Lcom/android/keyguard/SecLockPatternView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 359
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 360
    return v2

    :cond_2
    move v2, v3

    .line 358
    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 366
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mPattern:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mPattern:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 368
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 370
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->disableDevicePermanently()V

    .line 379
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 381
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 382
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    .line 396
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->setOnehandPatternView()V

    .line 397
    return-void

    .line 372
    .end local v0    # "deadline":J
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v2}, Lcom/android/keyguard/SecLockPatternView;->enableInput()V

    .line 373
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/SecLockPatternView;->setEnabled(Z)V

    .line 374
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v2}, Lcom/android/keyguard/SecLockPatternView;->clearPattern()V

    .line 375
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardPatternView;->setInputViewVisible(Z)V

    goto :goto_0

    .line 384
    .restart local v0    # "deadline":J
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    .line 385
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    .line 386
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsAccountExist:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportSamsungAccountAuth()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 387
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/EmergencyCarrierArea;

    sget-object v3, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/EmergencyCarrierArea;->resizeFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V

    .line 388
    sget-object v2, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V

    goto :goto_1

    .line 390
    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/EmergencyCarrierArea;

    sget-object v3, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->BackupPIN:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/EmergencyCarrierArea;->resizeFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V

    .line 391
    sget-object v2, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->BackupPIN:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V

    goto :goto_1
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 207
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 212
    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setNextMessageColor(I)V

    .line 765
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 766
    return-void
.end method

.method public showPromptReason(I)V
    .locals 13
    .param p1, "reason"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 714
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    .line 715
    .local v0, "attempts":I
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->getRemainingAttemptsBeforeWipe()I

    move-result v4

    .line 716
    .local v4, "remainingAttemptsBeforeWipe":I
    const/4 v1, 0x0

    .line 717
    .local v1, "promptStr":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 745
    :goto_0
    if-eqz v1, :cond_0

    .line 746
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0xa

    if-le v0, v5, :cond_3

    if-lez v4, :cond_3

    .line 748
    if-ne v4, v11, :cond_2

    .line 749
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/keyguard/R$string;->kg_1_attempt_remaining:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v11}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 760
    :cond_0
    :goto_1
    return-void

    .line 719
    :pswitch_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v2

    .line 721
    .local v2, "deadline":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gtz v5, :cond_0

    .line 725
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v5, v12}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    .line 726
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 727
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$string;->kg_fingerprints_pattern_unabled_instructions:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 729
    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$string;->kg_prompt_reason_restart_pattern:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 730
    goto :goto_0

    .line 732
    .end local v2    # "deadline":J
    :pswitch_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v5, v12}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    .line 733
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$string;->kg_strong_auth_prompt_reason_timeout_pattern:I

    new-array v7, v11, [Ljava/lang/Object;

    const/16 v8, 0x18

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 735
    goto/16 :goto_0

    .line 737
    :pswitch_2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$string;->kg_prompt_reason_timeout_pattern:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 738
    goto/16 :goto_0

    .line 740
    :pswitch_3
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const/16 v6, 0x1388

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    goto/16 :goto_0

    .line 752
    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/keyguard/R$string;->kg_n_attempts_remaining:I

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v10}, Lcom/android/keyguard/KeyguardSecurityCallback;->getRemainingAttemptsBeforeWipe()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v11}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_1

    .line 757
    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v5, v1, v11}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_1

    .line 717
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startAppearAnimation()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 770
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->setAlpha(F)V

    .line 771
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->setTranslationY(F)V

    .line 772
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 777
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 4
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/SecLockPatternView;->clearPattern()V

    .line 782
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearYTranslation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 788
    const/4 v0, 0x1

    return v0
.end method
