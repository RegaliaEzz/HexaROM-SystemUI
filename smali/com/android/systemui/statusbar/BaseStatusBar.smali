.class public abstract Lcom/android/systemui/statusbar/BaseStatusBar;
.super Lcom/android/systemui/SystemUI;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/systemui/RecentsComponent$Callbacks;
.implements Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;
.implements Lcom/android/systemui/statusbar/NotificationData$Environment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/BaseStatusBar$17;,
        Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;,
        Lcom/android/systemui/statusbar/BaseStatusBar$H;,
        Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;,
        Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final ENABLE_CHILD_NOTIFICATIONS:Z

.field protected static final KNOX_DEBUG:Z

.field private static final mExportDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mImportDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mIsNavigationBarHidden:Z

.field public static mIsStatusBarHidden:Z

.field protected static final mKnoxInLockMode:Landroid/util/SparseBooleanArray;

.field protected static final mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

.field private static final mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field containerObserver:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;",
            ">;"
        }
    .end annotation
.end field

.field protected mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mActivated:Z

.field private final mAllUsersReceiver:Landroid/content/BroadcastReceiver;

.field protected mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected mBouncerShowing:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field protected final mCurrentProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentUserId:I

.field protected mDeviceInteractive:Z

.field protected mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisioned:Z

.field protected mDisableNotificationAlerts:Z

.field protected mDismissView:Lcom/android/systemui/statusbar/DismissView;

.field protected mDisplay:Landroid/view/Display;

.field protected mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field protected mEmergencyModeActivated:Z

.field protected mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

.field private mFastOutLinearIn:Landroid/animation/TimeInterpolator;

.field private mFontScale:F

.field protected mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field protected mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

.field protected mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field protected mHeadsUpTicker:Z

.field private mIsLandscapeNow:Z

.field protected mIsQsEditPanelOpened:Z

.field protected mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

.field protected mLayoutDirection:I

.field private mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

.field private mLocale:Ljava/util/Locale;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenKnoxMode:Z

.field private mLockscreenPublicMode:Z

.field private final mLockscreenSettingsObserver:Landroid/database/ContentObserver;

.field protected mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mNotificationClicker:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

.field private mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field protected mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field private mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

.field private final mNotificationListener:Landroid/service/notification/NotificationListenerService;

.field public mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field protected mPanelRevealedByUser:Z

.field private final mPersonaLaunchReceiver:Landroid/content/BroadcastReceiver;

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mPm:Landroid/os/PersonaManager;

.field mPowerManager:Landroid/os/PowerManager;

.field protected mPreviousState:I

.field protected mQuickConnectSoundPathView:Lcom/android/systemui/qs/QuickConnectSoundPathView;

.field private final mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mRecents:Lcom/android/systemui/RecentsComponent;

.field protected mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

.field protected mRowMaxHeight:I

.field protected mRowMinHeight:I

.field public mScreen:Lcom/samsung/android/dualscreen/DualScreen;

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field protected mShowLockscreenNotifications:Z

.field protected mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field protected mState:I

.field protected mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field protected mUseHeadsUp:Z

.field private mUserManager:Landroid/os/UserManager;

.field private final mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

.field protected mVisible:Z

.field private mVisibleToUser:Z

.field protected mWindowManager:Landroid/view/WindowManager;

.field protected mWindowManagerService:Landroid/view/IWindowManager;

.field protected mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 162
    const-string v0, "StatusBar"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    .line 168
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "debug.child_notifs"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    .line 299
    const-string v0, "eng"

    const-string v2, "ro.build.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    .line 314
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 316
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 318
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 319
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 321
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    .line 322
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    .line 839
    sput-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    .line 840
    sput-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNavigationBarHidden:Z

    return-void

    :cond_0
    move v0, v1

    .line 168
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    .line 200
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 205
    iput v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 206
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 208
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 212
    iput-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 224
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUseHeadsUp:Z

    .line 225
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpTicker:Z

    .line 226
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisableNotificationAlerts:Z

    .line 236
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    .line 237
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 260
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPanelRevealedByUser:Z

    .line 290
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mActivated:Z

    .line 304
    iput-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    .line 324
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->containerObserver:Landroid/util/SparseArray;

    .line 325
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mEmergencyModeActivated:Z

    .line 327
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenKnoxMode:Z

    .line 331
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsLandscapeNow:Z

    .line 831
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/BaseStatusBar$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationClicker:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    .line 837
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsQsEditPanelOpened:Z

    .line 860
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 877
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$2;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    .line 888
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$3;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 1011
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$4;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPersonaLaunchReceiver:Landroid/content/BroadcastReceiver;

    .line 1036
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$5;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1105
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$6;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAllUsersReceiver:Landroid/content/BroadcastReceiver;

    .line 1119
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$7;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 1177
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$8;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    .line 1980
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$15;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$15;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 3424
    iput-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3425
    iput-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPersonaManager:Landroid/os/PersonaManager;

    return-void
.end method

.method private FlipFontSwitched()V
    .locals 4

    .prologue
    .line 4010
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 4016
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 4017
    .local v2, "config":Landroid/content/res/Configuration;
    iget v1, v2, Landroid/content/res/Configuration;->FlipFont:I

    .line 4018
    .local v1, "before":I
    iget v3, v2, Landroid/content/res/Configuration;->FlipFont:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 4019
    iget v3, v2, Landroid/content/res/Configuration;->FlipFont:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/content/res/Configuration;->FlipFont:I

    .line 4023
    :goto_0
    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 4026
    .end local v1    # "before":I
    .end local v2    # "config":Landroid/content/res/Configuration;
    :goto_1
    return-void

    .line 4021
    .restart local v1    # "before":I
    .restart local v2    # "config":Landroid/content/res/Configuration;
    :cond_0
    iget v3, v2, Landroid/content/res/Configuration;->FlipFont:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/content/res/Configuration;->FlipFont:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4024
    .end local v1    # "before":I
    .end local v2    # "config":Landroid/content/res/Configuration;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/BaseStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$1000()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/BaseStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$1100()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->startAppNotificationSettingsActivity(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/content/Intent;ILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 157
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/BaseStatusBar;->startAppOwnNotificationSettingsActivity(Landroid/content/Intent;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/animation/TimeInterpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/BaseStatusBar;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # I

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->knoxContainerInLockMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/os/PersonaManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$400()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCurrentProfilesCache()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->FlipFontSwitched()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/BaseStatusBar;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # I

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->registerPersonaObserver(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method private alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z
    .locals 1
    .param p1, "oldEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "newNotification"    # Landroid/app/Notification;

    .prologue
    .line 3809
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 26
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 1719
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->inflateGuts()V

    .line 1720
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v20

    .line 1721
    .local v20, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(I)Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 1723
    .local v19, "pmUser":Landroid/content/pm/PackageManager;
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(Ljava/lang/Object;)V

    .line 1724
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v12

    .line 1725
    .local v12, "guts":Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v17

    .line 1726
    .local v17, "pkg":Ljava/lang/String;
    move-object/from16 v10, v17

    .line 1727
    .local v10, "appname":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1729
    .local v18, "pkgicon":Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .line 1730
    .local v9, "applicationIcon":Landroid/graphics/drawable/Drawable;
    const/4 v7, -0x1

    .line 1732
    .local v7, "appUid":I
    const/16 v22, 0x2200

    :try_start_0
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    .line 1735
    .local v13, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v13, :cond_0

    .line 1736
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1737
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 1738
    iget v7, v13, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1748
    .end local v13    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v22

    sget-object v23, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual/range {v22 .. v23}, Landroid/os/PersonaManager$KnoxContainerVersion;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    const/4 v15, 0x1

    .line 1750
    .local v15, "isKnox2_3_0":Z
    :goto_1
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v22

    sget-object v23, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_1:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual/range {v22 .. v23}, Landroid/os/PersonaManager$KnoxContainerVersion;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    const/16 v16, 0x1

    .line 1753
    .local v16, "isKnox2_3_1":Z
    :goto_2
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/UserHandle;

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v24

    invoke-direct/range {v23 .. v24}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1764
    :goto_3
    if-eqz v12, :cond_2

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v22

    if-eqz v22, :cond_1

    if-nez v15, :cond_2

    if-nez v16, :cond_2

    .line 1765
    :cond_1
    const v22, 0x1020006

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1769
    :cond_2
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_6

    .line 1770
    const v22, 0x7f0e018e

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/DateTimeView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 1777
    :goto_4
    const v22, 0x7f0e018d

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1778
    const v22, 0x7f0e0191

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 1779
    .local v21, "settingsButton":Landroid/view/View;
    const v22, 0x7f0e0190

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1781
    .local v4, "appSettingsButton":Landroid/view/View;
    if-ltz v7, :cond_8

    .line 1782
    move v8, v7

    .line 1783
    .local v8, "appUidF":I
    new-instance v22, Lcom/android/systemui/statusbar/BaseStatusBar$11;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v8}, Lcom/android/systemui/statusbar/BaseStatusBar$11;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;I)V

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1790
    new-instance v22, Landroid/content/Intent;

    const-string v23, "android.intent.action.MAIN"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v23, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 1794
    .local v6, "appSettingsQueryIntent":Landroid/content/Intent;
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 1795
    .local v14, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_7

    .line 1796
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0d0276

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v10, v24, v25

    invoke-virtual/range {v22 .. v24}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1802
    new-instance v23, Landroid/content/Intent;

    move-object/from16 v0, v23

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 1804
    .local v5, "appSettingsLaunchIntent":Landroid/content/Intent;
    new-instance v22, Lcom/android/systemui/statusbar/BaseStatusBar$12;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v5, v2, v8}, Lcom/android/systemui/statusbar/BaseStatusBar$12;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/content/Intent;Landroid/service/notification/StatusBarNotification;I)V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1821
    .end local v5    # "appSettingsLaunchIntent":Landroid/content/Intent;
    .end local v6    # "appSettingsQueryIntent":Landroid/content/Intent;
    .end local v8    # "appUidF":I
    .end local v14    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_5
    return-void

    .line 1740
    .end local v4    # "appSettingsButton":Landroid/view/View;
    .end local v15    # "isKnox2_3_0":Z
    .end local v16    # "isKnox2_3_1":Z
    .end local v21    # "settingsButton":Landroid/view/View;
    :catch_0
    move-exception v11

    .line 1742
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    goto/16 :goto_0

    .line 1748
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1750
    .restart local v15    # "isKnox2_3_0":Z
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1757
    .restart local v16    # "isKnox2_3_1":Z
    :cond_5
    move-object/from16 v9, v18

    goto/16 :goto_3

    .line 1772
    :cond_6
    const v22, 0x7f0e018e

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/DateTimeView;

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/DateTimeView;->setTime(J)V

    goto/16 :goto_4

    .line 1814
    .restart local v4    # "appSettingsButton":Landroid/view/View;
    .restart local v6    # "appSettingsQueryIntent":Landroid/content/Intent;
    .restart local v8    # "appUidF":I
    .restart local v14    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v21    # "settingsButton":Landroid/view/View;
    :cond_7
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1817
    .end local v6    # "appSettingsQueryIntent":Landroid/content/Intent;
    .end local v8    # "appUidF":I
    .end local v14    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_8
    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 1818
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 2761
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 2762
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2770
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .local v1, "canvas":Landroid/graphics/Canvas;
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 2765
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2766
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2767
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2768
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private getKnoxName(I)Ljava/lang/String;
    .locals 2
    .param p1, "personaID"    # I

    .prologue
    .line 2774
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    .line 2775
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    .line 2778
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/os/PersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPersonaManager()Landroid/os/PersonaManager;
    .locals 2

    .prologue
    .line 3433
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    .line 3434
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPersonaManager:Landroid/os/PersonaManager;

    .line 3436
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPersonaManager:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private getPolicy(ILjava/lang/String;I)Z
    .locals 11
    .param p1, "userId"    # I
    .param p2, "policyProperty"    # Ljava/lang/String;
    .param p3, "policyArray"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 353
    const-string v1, "true"

    .line 354
    .local v1, "TRUE":Ljava/lang/String;
    const-string v0, "false"

    .line 356
    .local v0, "FALSE":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v6

    if-nez v6, :cond_1

    move v8, v7

    .line 410
    :cond_0
    :goto_0
    return v8

    .line 362
    :cond_1
    const/4 v2, 0x0

    .line 363
    .local v2, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    .line 368
    :sswitch_0
    sget-object v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 382
    :goto_1
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 383
    .local v5, "policy":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 385
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-nez v6, :cond_2

    .line 386
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v9, "persona"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PersonaManager;

    iput-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    .line 388
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-eqz v6, :cond_0

    .line 391
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    const-string v9, "persona_policy"

    invoke-virtual {v6, v9}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaPolicyManager;

    .line 393
    .local v4, "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    if-eqz v4, :cond_0

    .line 396
    const-string v6, "Notifications"

    invoke-virtual {v4, p1, v6, p2}, Landroid/os/PersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 400
    const-string v6, "true"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "false"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 401
    :cond_3
    invoke-virtual {v2, p1, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .end local v4    # "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    :cond_4
    :goto_2
    sget-boolean v6, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v6, :cond_5

    .line 409
    const-string v6, "KnoxNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPolicy: policy value returned = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_5
    const-string v6, "true"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v7

    :goto_3
    move v8, v6

    goto :goto_0

    .line 365
    .end local v5    # "policy":Ljava/lang/String;
    :sswitch_1
    sget-object v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 366
    goto :goto_1

    .line 371
    :sswitch_2
    sget-object v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 372
    goto :goto_1

    .line 375
    :sswitch_3
    sget-object v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 376
    goto :goto_1

    .line 403
    .restart local v5    # "policy":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 404
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "KnoxNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPolicy: threw an exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6
    move v6, v8

    .line 410
    goto :goto_3

    .line 363
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private hideExistingBadgeOfBigContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "bigContentViewLocal"    # Landroid/view/View;

    .prologue
    .line 2689
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_0

    .line 2690
    const-string v1, "KnoxNotification"

    const-string v2, "----- Inside hideExistingBadgeOfBigContentView -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    :cond_0
    const v1, 0x102043c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2697
    .local v0, "badgeLarge":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 2699
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2700
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_1

    .line 2701
    const-string v1, "KnoxNotification"

    const-string v2, "----- hideExistingBadgeOfBigContentView: Hiding badgeLarge  -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Z)V

    .line 2713
    return-void
.end method

.method private hideExistingBadgeOfContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Z)V
    .locals 5
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "contentViewLocal"    # Landroid/view/View;
    .param p3, "publicOrPrivate"    # Z

    .prologue
    const/16 v4, 0x8

    .line 2651
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_0

    .line 2652
    const-string v2, "KnoxNotification"

    const-string v3, "----- Inside hideExistingBadgeOfContentView -----"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    :cond_0
    const v2, 0x102044c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2659
    .local v0, "badgeLine2":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 2661
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2662
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_1

    .line 2663
    const-string v2, "KnoxNotification"

    const-string v3, "----- hideExistingBadgeOfContentView: Hiding badgeLine2  -----"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    :cond_1
    const v2, 0x102044f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2670
    .local v1, "badgeLine3":Landroid/widget/ImageView;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 2672
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2673
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_2

    .line 2674
    const-string v2, "KnoxNotification"

    const-string v3, "----- hideExistingBadgeOfContentView: Hiding badgeLine3  -----"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    :cond_2
    return-void
.end method

.method private isForceSanitizationRequired(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 10
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 702
    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 703
    .local v4, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    .line 704
    .local v5, "userId":I
    const/4 v0, 0x0

    .line 709
    .local v0, "bReturn":Z
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget-object v1, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 711
    .local v1, "contentView":Landroid/widget/RemoteViews;
    sget-boolean v8, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v8, :cond_0

    .line 712
    const-string v8, "KnoxNotification"

    const-string v9, "----- Our attached knox_content_view is found -----"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getContentView()Landroid/view/View;

    move-result-object v8

    const v9, 0x1020439

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_4

    .line 718
    :cond_1
    sget-boolean v8, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v8, :cond_2

    .line 719
    const-string v8, "KnoxNotification"

    const-string v9, "----- Application provided RemoteView, so forcing sanitization -----"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_2
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v8

    sget-object v9, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v8, v9}, Landroid/os/PersonaManager$KnoxContainerVersion;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v2, v6

    .line 724
    .local v2, "isKnox2_3_0":Z
    :goto_0
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v8

    sget-object v9, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_1:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v8, v9}, Landroid/os/PersonaManager$KnoxContainerVersion;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v3, v6

    .line 726
    .local v3, "isKnox2_3_1":Z
    :goto_1
    if-nez v2, :cond_3

    if-eqz v3, :cond_7

    .line 727
    :cond_3
    iget v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    if-eq v5, v6, :cond_4

    .line 728
    const/4 v0, 0x1

    .line 737
    .end local v2    # "isKnox2_3_0":Z
    .end local v3    # "isKnox2_3_1":Z
    :cond_4
    :goto_2
    return v0

    :cond_5
    move v2, v7

    .line 722
    goto :goto_0

    .restart local v2    # "isKnox2_3_0":Z
    :cond_6
    move v3, v7

    .line 724
    goto :goto_1

    .line 733
    .restart local v3    # "isKnox2_3_1":Z
    :cond_7
    const/4 v0, 0x1

    goto :goto_2
.end method

.method protected static isPersona(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 847
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-gt p0, v0, :cond_0

    .line 848
    const/4 v0, 0x1

    .line 850
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPersonaInKioskMode(I)Z
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 344
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 345
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSharedDeviceKeyguardOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3439
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPersonaManager()Landroid/os/PersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v1, v0}, Landroid/os/PersonaManager;->getKeyguardShowState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3440
    const/4 v0, 0x1

    .line 3442
    :cond_0
    return v0
.end method

.method private knoxContainerInLockMode(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 817
    invoke-static {p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 818
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KnoxNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get KnoxInLockMode for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_0
    :goto_0
    return v1

    .line 821
    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    .line 822
    .local v0, "index":I
    if-gez v0, :cond_2

    .line 823
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KnoxNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get KnoxInLockMode for container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 826
    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get KnoxInLockMode for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    goto :goto_0
.end method

.method private logUpdate(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)V
    .locals 6
    .param p1, "oldEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "n"    # Landroid/app/Notification;

    .prologue
    .line 3576
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 3577
    .local v0, "oldNotification":Landroid/service/notification/StatusBarNotification;
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "old notification: when="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-wide v4, v3, Landroid/app/Notification;->when:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ongoing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expanded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contentView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bigContentView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " publicView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rowParent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new notification: when="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p2, Landroid/app/Notification;->when:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ongoing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contentView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bigContentView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " publicView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3589
    return-void
.end method

.method private registerPersonaObserver(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 799
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->containerObserver:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 800
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/content/Context;II)V

    .line 801
    .local v0, "observer":Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->containerObserver:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 802
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register container observer for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    .end local v0    # "observer":Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;
    :cond_0
    return-void
.end method

.method private reimposeBadgeAtBottomRight(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;)Landroid/widget/RemoteViews;
    .locals 9
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "remoteViewType"    # Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    .prologue
    const v8, 0x7f0e0149

    .line 2721
    const-string v5, "KnoxNotification"

    const-string v6, "----- Inside reimposeBadgeAtBottomRight -----"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 2724
    .local v2, "notification":Landroid/app/Notification;
    const/4 v3, 0x0

    .line 2725
    .local v3, "notificationContentView":Landroid/widget/RemoteViews;
    sget-object v5, Lcom/android/systemui/statusbar/BaseStatusBar$17;->$SwitchMap$com$android$systemui$statusbar$BaseStatusBar$RemoteViewType:[I

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 2740
    :goto_0
    const/4 v1, 0x0

    .line 2741
    .local v1, "contentView":Landroid/widget/RemoteViews;
    if-eqz v3, :cond_1

    .line 2742
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2744
    .local v4, "profileDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_0

    .line 2757
    .end local v3    # "notificationContentView":Landroid/widget/RemoteViews;
    .end local v4    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v3

    .line 2727
    .end local v1    # "contentView":Landroid/widget/RemoteViews;
    .restart local v3    # "notificationContentView":Landroid/widget/RemoteViews;
    :pswitch_0
    iget-object v5, v2, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v3, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2728
    goto :goto_0

    .line 2730
    :pswitch_1
    iget-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2731
    goto :goto_0

    .line 2733
    :pswitch_2
    iget-object v3, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 2734
    goto :goto_0

    .line 2736
    :pswitch_3
    iget-object v3, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 2747
    .restart local v1    # "contentView":Landroid/widget/RemoteViews;
    .restart local v4    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    new-instance v1, Landroid/widget/RemoteViews;

    .end local v1    # "contentView":Landroid/widget/RemoteViews;
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f04003b

    invoke-direct {v1, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2750
    .restart local v1    # "contentView":Landroid/widget/RemoteViews;
    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2751
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const v5, 0x7f0e014a

    invoke-virtual {v1, v5, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2752
    invoke-virtual {v1, v8}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 2754
    invoke-virtual {v1, v8, v3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 2755
    const-string v5, "KnoxNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "----- returning contentView = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v3, v1

    .line 2757
    goto :goto_1

    .line 2725
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1970
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1972
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1976
    :cond_0
    :goto_0
    return-void

    .line 1973
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private shouldApplyInPlace(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z
    .locals 20
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "n"    # Landroid/app/Notification;

    .prologue
    .line 3596
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 3598
    .local v11, "oldNotification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v9, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3599
    .local v9, "oldContentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3600
    .local v4, "contentView":Landroid/widget/RemoteViews;
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v8, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 3601
    .local v8, "oldBigContentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 3602
    .local v2, "bigContentView":Landroid/widget/RemoteViews;
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 3604
    .local v10, "oldHeadsUpContentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 3605
    .local v6, "headsUpContentView":Landroid/widget/RemoteViews;
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v13, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 3606
    .local v13, "oldPublicNotification":Landroid/app/Notification;
    if-eqz v13, :cond_c

    iget-object v12, v13, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3608
    .local v12, "oldPublicContentView":Landroid/widget/RemoteViews;
    :goto_0
    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 3609
    .local v15, "publicNotification":Landroid/app/Notification;
    if-eqz v15, :cond_d

    iget-object v14, v15, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3611
    .local v14, "publicContentView":Landroid/widget/RemoteViews;
    :goto_1
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v17

    .line 3613
    .local v17, "userId":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getContentView()Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_e

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_e

    invoke-virtual {v9}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_e

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual {v9}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    :cond_0
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-virtual {v9}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v18

    const v19, 0x7f04003b

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    :cond_1
    invoke-virtual {v9}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v18

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    :cond_2
    const/4 v5, 0x1

    .line 3619
    .local v5, "contentsUnchanged":Z
    :goto_2
    if-nez v8, :cond_3

    if-eqz v2, :cond_6

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_f

    if-eqz v8, :cond_f

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_f

    invoke-virtual {v8}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_f

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v18

    if-nez v18, :cond_4

    invoke-virtual {v8}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    :cond_4
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-virtual {v8}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v18

    const v19, 0x7f04003b

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    :cond_5
    invoke-virtual {v8}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v18

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    :cond_6
    const/4 v3, 0x1

    .line 3626
    .local v3, "bigContentsUnchanged":Z
    :goto_3
    if-nez v10, :cond_7

    if-eqz v6, :cond_9

    :cond_7
    if-eqz v10, :cond_10

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_10

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_10

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v18

    const v19, 0x7f04003b

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    :cond_8
    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v18

    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    :cond_9
    const/4 v7, 0x1

    .line 3633
    .local v7, "headsUpContentsUnchanged":Z
    :goto_4
    if-nez v12, :cond_a

    if-eqz v14, :cond_b

    :cond_a
    if-eqz v12, :cond_11

    if-eqz v14, :cond_11

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_11

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_11

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v18

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    :cond_b
    const/16 v16, 0x1

    .line 3640
    .local v16, "publicUnchanged":Z
    :goto_5
    if-eqz v5, :cond_12

    if-eqz v3, :cond_12

    if-eqz v7, :cond_12

    if-eqz v16, :cond_12

    const/16 v18, 0x1

    :goto_6
    return v18

    .line 3606
    .end local v3    # "bigContentsUnchanged":Z
    .end local v5    # "contentsUnchanged":Z
    .end local v7    # "headsUpContentsUnchanged":Z
    .end local v12    # "oldPublicContentView":Landroid/widget/RemoteViews;
    .end local v14    # "publicContentView":Landroid/widget/RemoteViews;
    .end local v15    # "publicNotification":Landroid/app/Notification;
    .end local v16    # "publicUnchanged":Z
    .end local v17    # "userId":I
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 3609
    .restart local v12    # "oldPublicContentView":Landroid/widget/RemoteViews;
    .restart local v15    # "publicNotification":Landroid/app/Notification;
    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 3613
    .restart local v14    # "publicContentView":Landroid/widget/RemoteViews;
    .restart local v17    # "userId":I
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 3619
    .restart local v5    # "contentsUnchanged":Z
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 3626
    .restart local v3    # "bigContentsUnchanged":Z
    :cond_10
    const/4 v7, 0x0

    goto :goto_4

    .line 3633
    .restart local v7    # "headsUpContentsUnchanged":Z
    :cond_11
    const/16 v16, 0x0

    goto :goto_5

    .line 3640
    .restart local v16    # "publicUnchanged":Z
    :cond_12
    const/16 v18, 0x0

    goto :goto_6
.end method

.method private shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 3405
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startAppNotificationSettingsActivity(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appUid"    # I

    .prologue
    .line 1680
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1681
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "app_package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1682
    const-string v1, "app_uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1683
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->startNotificationGutsIntent(Landroid/content/Intent;I)V

    .line 1684
    return-void
.end method

.method private startAppOwnNotificationSettingsActivity(Landroid/content/Intent;ILjava/lang/String;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "notificationId"    # I
    .param p3, "notificationTag"    # Ljava/lang/String;
    .param p4, "appUid"    # I

    .prologue
    .line 1673
    const-string v0, "notification_id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1674
    const-string v0, "notification_tag"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1675
    invoke-direct {p0, p1, p4}, Lcom/android/systemui/statusbar/BaseStatusBar;->startNotificationGutsIntent(Landroid/content/Intent;I)V

    .line 1676
    return-void
.end method

.method private startNotificationGutsIntent(Landroid/content/Intent;I)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "appUid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1687
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v6

    .line 1689
    .local v6, "keyguardShowing":Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoveredState()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldUnlock(Z)V

    .line 1690
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(IZ)V

    .line 1691
    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$10;

    invoke-direct {v1, p0, v6, p2, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$10;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ZILandroid/content/Intent;)V

    const/4 v2, 0x0

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;ZZZ)V

    .line 1716
    return-void

    :cond_0
    move v0, v3

    .line 1689
    goto :goto_0
.end method

.method private unregisterPersonaObserver(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 807
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->containerObserver:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;

    .line 808
    .local v0, "observer":Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;
    if-eqz v0, :cond_0

    .line 809
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;->unregisterPersonaObserver()V

    .line 810
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregister container observer for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_0
    return-void
.end method

.method private updateCurrentProfilesCache()V
    .locals 5

    .prologue
    .line 1264
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1265
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1266
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    if-eqz v2, :cond_0

    .line 1267
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1268
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1271
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1272
    return-void
.end method

.method private updateKnoxNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V
    .locals 11
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "isHeadsUp"    # Z

    .prologue
    .line 3730
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getKnoxContentView()Landroid/view/View;

    move-result-object v9

    .line 3731
    .local v9, "knoxViewLocal":Landroid/view/View;
    if-eqz v9, :cond_0

    .line 3732
    const v1, 0x1020006

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 3735
    .local v7, "icon":Landroid/widget/ImageView;
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->icon:I

    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->iconLevel:I

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->number:I

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 3742
    .local v0, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3743
    .local v8, "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3744
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    invoke-virtual {v1, v8}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3745
    const v1, 0x1080600

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3747
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 3749
    .local v10, "padding":I
    invoke-virtual {v7, v10, v10, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 3752
    .end local v0    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v7    # "icon":Landroid/widget/ImageView;
    .end local v8    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v10    # "padding":I
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3753
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getContentView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Z)V

    .line 3754
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3755
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfBigContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    .line 3756
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3758
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Z)V

    .line 3761
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSensitiveTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    .line 3762
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getKnoxContentView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSanitizedTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    .line 3763
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getKnoxContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationTitleForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Landroid/view/View;)V

    .line 3766
    :cond_3
    return-void
.end method

.method private updateNotificationTitleForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Landroid/view/View;)V
    .locals 10
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "knoxViewLocal"    # Landroid/view/View;
    .param p3, "publicViewLocal"    # Landroid/view/View;

    .prologue
    const v8, 0x1020016

    .line 2585
    if-eqz p2, :cond_4

    .line 2586
    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2587
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2590
    .local v5, "title":Landroid/widget/TextView;
    move-object v6, v2

    .line 2592
    .local v6, "titleString":Ljava/lang/String;
    :try_start_0
    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(I)Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2594
    .local v3, "pmUser":Landroid/content/pm/PackageManager;
    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2596
    .local v1, "label":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 2597
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2600
    :cond_0
    if-eqz v2, :cond_2

    const-string v7, "com.samsung.android.email.provider"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2601
    sget-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v7, :cond_1

    .line 2602
    const-string v7, "KnoxNotification"

    const-string v8, "----- updateNotificationTitleForKnox: EmailProvider found -----"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    :cond_1
    if-eqz p3, :cond_2

    .line 2609
    const v7, 0x7f0e0086

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2611
    .local v4, "publicTitle":Landroid/widget/TextView;
    if-eqz v4, :cond_5

    .line 2612
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2633
    .end local v1    # "label":Ljava/lang/CharSequence;
    .end local v3    # "pmUser":Landroid/content/pm/PackageManager;
    .end local v4    # "publicTitle":Landroid/widget/TextView;
    :cond_2
    :goto_0
    sget-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v7, :cond_3

    .line 2634
    const-string v7, "KnoxNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "----- updateNotificationTitleForKnox: titleString - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -----"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    :cond_3
    if-eqz v5, :cond_4

    .line 2638
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2641
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v5    # "title":Landroid/widget/TextView;
    .end local v6    # "titleString":Ljava/lang/String;
    :cond_4
    return-void

    .line 2614
    .restart local v1    # "label":Ljava/lang/CharSequence;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "pmUser":Landroid/content/pm/PackageManager;
    .restart local v4    # "publicTitle":Landroid/widget/TextView;
    .restart local v5    # "title":Landroid/widget/TextView;
    .restart local v6    # "titleString":Ljava/lang/String;
    :cond_5
    const v7, 0x1020016

    :try_start_1
    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "publicTitle":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 2616
    .restart local v4    # "publicTitle":Landroid/widget/TextView;
    if-eqz v4, :cond_6

    .line 2617
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 2619
    :cond_6
    sget-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v7, :cond_2

    .line 2620
    const-string v7, "KnoxNotification"

    const-string v8, "----- updateNotificationTitleForKnox: did not find title view -----"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2627
    .end local v1    # "label":Ljava/lang/CharSequence;
    .end local v3    # "pmUser":Landroid/content/pm/PackageManager;
    .end local v4    # "publicTitle":Landroid/widget/TextView;
    :catch_0
    move-exception v0

    .line 2628
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v7, :cond_2

    .line 2629
    const-string v7, "KnoxNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateNotificationTitleForKnox: threw an exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V
    .locals 9
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "isHeadsUp"    # Z

    .prologue
    .line 3686
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v1, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3687
    .local v1, "contentView":Landroid/widget/RemoteViews;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v0, v6, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 3688
    .local v0, "bigContentView":Landroid/widget/RemoteViews;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v3, v6, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 3689
    .local v3, "headsUpContentView":Landroid/widget/RemoteViews;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v5, v6, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 3690
    .local v5, "publicVersion":Landroid/app/Notification;
    if-eqz v5, :cond_4

    iget-object v4, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3694
    .local v4, "publicContentView":Landroid/widget/RemoteViews;
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getContentView()Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v1, v6, v7, v8}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 3695
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 3696
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v6}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v0, v6, v7, v8}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 3700
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getHeadsUpContentView()Landroid/view/View;

    move-result-object v2

    .line 3701
    .local v2, "headsUpChild":Landroid/view/View;
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 3702
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v6}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v3, v6, v2, v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 3705
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 3706
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v6}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v4, v6, v7, v8}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 3712
    :cond_2
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    invoke-static {v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3714
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateKnoxNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V

    .line 3718
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationClicker:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v7, p2}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->register(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    .line 3720
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 3721
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyContentUpdated()V

    .line 3722
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetHeight()V

    .line 3723
    return-void

    .line 3690
    .end local v2    # "headsUpChild":Landroid/view/View;
    .end local v4    # "publicContentView":Landroid/widget/RemoteViews;
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private updateSanitizedTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V
    .locals 9
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "knoxViewLocal"    # Landroid/view/View;

    .prologue
    const v8, 0x7f0d033e

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2541
    if-eqz p2, :cond_0

    .line 2542
    const v4, 0x1020083

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2544
    .local v3, "text":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 2545
    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    .line 2546
    .local v2, "personaId":I
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->getKnoxName(I)Ljava/lang/String;

    move-result-object v0

    .line 2547
    .local v0, "knoxName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2548
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "KNOX"

    aput-object v6, v5, v7

    invoke-virtual {v4, v8, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2572
    .end local v0    # "knoxName":Ljava/lang/String;
    .end local v2    # "personaId":I
    .end local v3    # "text":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 2550
    .restart local v0    # "knoxName":Ljava/lang/String;
    .restart local v2    # "personaId":I
    .restart local v3    # "text":Landroid/widget/TextView;
    :cond_1
    const/4 v1, 0x0

    .line 2551
    .local v1, "myKnoxName":Ljava/lang/String;
    const-string v4, "KNOX"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2552
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    const-string v5, "com.sec.knox.switchknoxI"

    invoke-virtual {v4, v5, v2}, Landroid/os/PersonaManager;->getKnoxNameChanged(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2553
    if-nez v1, :cond_2

    .line 2554
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    const-string v5, "com.sec.knox.bridge/com.sec.knox.bridge.activity.SwitchB2BActivity"

    invoke-virtual {v4, v5, v2}, Landroid/os/PersonaManager;->getKnoxNameChanged(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2561
    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    .line 2563
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-virtual {v4, v8, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2556
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    const-string v5, "com.sec.knox.switchknoxII"

    invoke-virtual {v4, v5, v2}, Landroid/os/PersonaManager;->getKnoxNameChanged(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2557
    if-nez v1, :cond_2

    .line 2558
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    const-string v5, "com.sec.knox.bridge/com.sec.knox.bridge.activity.SwitchB2BActivity2"

    invoke-virtual {v4, v5, v2}, Landroid/os/PersonaManager;->getKnoxNameChanged(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2567
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v4, v8, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSensitiveTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "publicViewLocal"    # Landroid/view/View;

    .prologue
    .line 2575
    if-eqz p2, :cond_0

    .line 2576
    const v1, 0x7f0e0195

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2577
    .local v0, "text":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 2578
    const v1, 0x7f0d033c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2581
    .end local v0    # "text":Landroid/widget/TextView;
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
.end method

.method protected addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 3232
    if-nez p1, :cond_0

    .line 3238
    :goto_0
    return-void

    .line 3236
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 3237
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    goto :goto_0
.end method

.method public animateCollapsePanels(IZ)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "force"    # Z

    .prologue
    .line 3085
    return-void
.end method

.method public animateCollapsePanels(IZZ)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "force"    # Z
    .param p3, "delayed"    # Z

    .prologue
    .line 3088
    return-void
.end method

.method protected applyColorsAndBackgrounds(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 6
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const v3, 0x1020439

    const/16 v5, 0x15

    const/4 v1, 0x1

    .line 1635
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1642
    :cond_1
    iget v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_2

    iget v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    if-ge v2, v5, :cond_2

    .line 1644
    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    .line 1645
    iput-boolean v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    .line 1658
    :cond_2
    :goto_0
    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v2, :cond_3

    .line 1659
    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const v3, 0x7f0e0059

    iget v4, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    if-ge v4, v5, :cond_6

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(ILjava/lang/Object;)V

    .line 1661
    :cond_3
    return-void

    .line 1649
    :cond_4
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v0, v2, Landroid/app/Notification;->color:I

    .line 1650
    .local v0, "color":I
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1651
    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v0, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0081

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .end local v0    # "color":I
    :cond_5
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTintColor(I)V

    goto :goto_0

    .line 1659
    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public applyEDMPolicy()V
    .locals 0

    .prologue
    .line 4029
    return-void
.end method

.method public cancelPreloadRecentApps()V
    .locals 2

    .prologue
    .line 1946
    const/16 v0, 0x3ff

    .line 1947
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1948
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1949
    return-void
.end method

.method protected cancelPreloadingRecents()V
    .locals 1

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 2030
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->cancelPreloadingRecents()V

    .line 2032
    :cond_0
    return-void
.end method

.method public clearNotificationEffects()V
    .locals 1

    .prologue
    .line 3152
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->clearNotificationEffects()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3156
    :goto_0
    return-void

    .line 3153
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected abstract createAndAddWindows()V
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1

    .prologue
    .line 1966
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method protected createIcon(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 10
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v9, 0x0

    .line 3206
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    .line 3207
    .local v8, "n":Landroid/app/Notification;
    new-instance v7, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v1, v2, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 3209
    .local v7, "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3211
    invoke-virtual {v8}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 3212
    .local v3, "smallIcon":Landroid/graphics/drawable/Icon;
    if-nez v3, :cond_1

    .line 3213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No small icon in notification from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v9

    .line 3228
    .end local v7    # "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_0
    :goto_0
    return-object v7

    .line 3217
    .restart local v7    # "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_1
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v4, v8, Landroid/app/Notification;->iconLevel:I

    iget v5, v8, Landroid/app/Notification;->number:I

    iget-object v6, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 3224
    .local v0, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t create icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v9

    .line 3226
    goto :goto_0
.end method

.method protected createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 6
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v2, 0x0

    .line 3187
    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 3188
    const-string v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createNotificationViews(notification="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3190
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->createIcon(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v1

    .line 3191
    .local v1, "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    if-nez v1, :cond_2

    move-object v0, v2

    .line 3201
    :cond_1
    :goto_0
    return-object v0

    .line 3196
    :cond_2
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 3197
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    move-object v0, v2

    .line 3199
    goto :goto_0
.end method

.method public destroy()V
    .locals 6

    .prologue
    .line 3879
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3882
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3884
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPersonaLaunchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3886
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->containerObserver:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3888
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3889
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->containerObserver:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3890
    .local v2, "userId":I
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->unregisterPersonaObserver(I)V

    .line 3891
    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "KnoxNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "counting container observer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " total size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3888
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3896
    .end local v2    # "userId":I
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3900
    :goto_1
    return-void

    .line 3897
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;ZZZ)V
    .locals 0
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "cancelAction"    # Ljava/lang/Runnable;
    .param p3, "afterKeyguardGone"    # Z
    .param p4, "fromNotification"    # Z
    .param p5, "isQSTileClicked"    # Z

    .prologue
    .line 1576
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    .line 1577
    return-void
.end method

.method public dismissPopups()V
    .locals 6

    .prologue
    .line 1894
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v4, :cond_0

    .line 1895
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 1896
    .local v1, "v":Lcom/android/systemui/statusbar/NotificationGuts;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 1898
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1915
    .end local v1    # "v":Lcom/android/systemui/statusbar/NotificationGuts;
    :cond_0
    :goto_0
    return-void

    .line 1900
    .restart local v1    # "v":Lcom/android/systemui/statusbar/NotificationGuts;
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getRight()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    .line 1901
    .local v2, "x":I
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getTop()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getActualHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 1902
    .local v3, "y":I
    int-to-float v4, v2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 1904
    .local v0, "a":Landroid/animation/Animator;
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1905
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFastOutLinearIn:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1906
    new-instance v4, Lcom/android/systemui/statusbar/BaseStatusBar$14;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$14;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1913
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public filterOutForKnoxContainer(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 14
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v13, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 477
    if-nez p1, :cond_1

    .line 587
    :cond_0
    :goto_0
    return v10

    .line 479
    :cond_1
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 480
    .local v6, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v8

    .line 481
    .local v8, "userId":I
    iget-object v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v9

    if-nez v9, :cond_b

    .line 487
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget v9, v9, Lcom/android/systemui/statusbar/NotificationData;->isKnoxKioskMode:I

    if-gez v9, :cond_3

    .line 488
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-nez v9, :cond_2

    .line 489
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v12, "persona"

    invoke-virtual {v9, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PersonaManager;

    iput-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    .line 491
    :cond_2
    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v9}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v9

    if-eqz v9, :cond_7

    move v9, v10

    :goto_1
    iput v9, v12, Lcom/android/systemui/statusbar/NotificationData;->isKnoxKioskMode:I

    .line 496
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget v9, v9, Lcom/android/systemui/statusbar/NotificationData;->isKnoxKioskMode:I

    if-ne v9, v10, :cond_4

    if-nez v8, :cond_4

    const-string v9, "com.android.incallui"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "com.android.server.telecom"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "com.samsung.android.SettingsReceiver"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "android"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "com.android.systemui"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "com.android.mms"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "com.android.settings"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "com.android.phone"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 508
    :cond_4
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget v9, v9, Lcom/android/systemui/statusbar/NotificationData;->isKnoxKioskMode:I

    if-ne v9, v10, :cond_8

    .line 509
    const/4 v1, -0x1

    .line 510
    .local v1, "kioskContainerId":I
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-nez v9, :cond_5

    .line 511
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v12, "persona"

    invoke-virtual {v9, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PersonaManager;

    iput-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    .line 512
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v9, v10}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v4

    .line 513
    .local v4, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 514
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PersonaInfo;

    iget v1, v9, Landroid/content/pm/PersonaInfo;->id:I

    .line 516
    :cond_6
    if-eq v1, v13, :cond_8

    if-nez v8, :cond_8

    const-string v9, "com.android.mms"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->knoxContainerInSuperLockMode(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 520
    sget-boolean v9, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v9, :cond_0

    .line 521
    const-string v9, "KnoxNotification"

    const-string v11, "----- filterOutForKnoxContainer:  Skipping com.android.mms notif for COM + ADMIN_LOCKED case"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "kioskContainerId":I
    .end local v4    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_7
    move v9, v11

    .line 491
    goto/16 :goto_1

    .line 529
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenKnoxMode()Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_9
    if-eqz v3, :cond_a

    const-string v9, "com.sec.knox.switcher"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    move v11, v10

    :cond_a
    move v10, v11

    goto/16 :goto_0

    .line 538
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenKnoxMode()Z

    move-result v0

    .line 540
    .local v0, "isLockScreen":Z
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->visibility:I

    if-ne v9, v13, :cond_c

    if-nez v0, :cond_0

    .line 547
    :cond_c
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->knoxContainerInSuperLockMode(I)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v9

    if-eqz v9, :cond_d

    if-eqz v3, :cond_d

    const-string v9, "com.android.settings"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 552
    :cond_d
    invoke-virtual {p0, p1, v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKnoxNotificationSanitizeNeeded(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 554
    iget v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    or-int/lit8 v9, v9, 0x8

    iput v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    .line 555
    iget v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    and-int/lit8 v9, v9, -0x4

    iput v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    .line 557
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "|"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 558
    .local v2, "mapKey":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v9, v9, Lcom/android/systemui/statusbar/NotificationData;->mSanitizingToCollapse:Landroid/util/ArrayMap;

    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 559
    .local v7, "tEnt":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v7, :cond_f

    .line 560
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v9, v9, Lcom/android/systemui/statusbar/NotificationData;->mSanitizingToCollapse:Landroid/util/ArrayMap;

    invoke-virtual {v9, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    :goto_2
    iget-boolean v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    if-nez v9, :cond_e

    .line 571
    invoke-virtual {p0, p1, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->sanitizePendingIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 573
    .local v5, "pi":Landroid/app/PendingIntent;
    iget-object v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iput-object v5, v9, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 574
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationClicker:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v12, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9, v10, v12}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->register(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    .end local v2    # "mapKey":Ljava/lang/String;
    .end local v5    # "pi":Landroid/app/PendingIntent;
    .end local v7    # "tEnt":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_e
    :goto_3
    move v10, v11

    .line 587
    goto/16 :goto_0

    .line 561
    .restart local v2    # "mapKey":Ljava/lang/String;
    .restart local v7    # "tEnt":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_f
    iget-object v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v12, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_2

    .line 579
    .end local v2    # "mapKey":Ljava/lang/String;
    .end local v7    # "tEnt":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_10
    iget-boolean v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    if-ne v9, v10, :cond_11

    .line 580
    iget-object v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    const/4 v10, 0x0

    iput-object v10, v9, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 581
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationClicker:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v12, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9, v10, v12}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->register(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    .line 584
    :cond_11
    iget v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    or-int/lit8 v9, v9, 0x3

    iput v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    .line 585
    iget v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    and-int/lit8 v9, v9, -0x9

    iput v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    goto :goto_3
.end method

.method public getCurrentMediaNotificationKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1558
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentUserId()I
    .locals 1

    .prologue
    .line 795
    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    return v0
.end method

.method public getGroupManager()Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
    .locals 1

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-object v0
.end method

.method protected getMaxCoverNotifications()I
    .locals 1

    .prologue
    .line 3250
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract getMaxKeyguardNotifications()I
.end method

.method protected getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;
    .locals 1

    .prologue
    .line 1824
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$13;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method protected getPackageManagerForUser(I)Landroid/content/pm/PackageManager;
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 3907
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 3909
    .local v0, "contextForUser":Landroid/content/Context;
    if-ltz p1, :cond_0

    .line 3913
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3921
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    return-object v1

    .line 3917
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected abstract getStatusBarView()Landroid/view/View;
.end method

.method handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 8
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 3167
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 3169
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    move-object v6, p2

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3174
    :goto_0
    return-void

    .line 3171
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected handleVisibleToUserChanged(Z)V
    .locals 5
    .param p1, "visibleToUser"    # Z

    .prologue
    const/4 v0, 0x1

    .line 3124
    if-eqz p1, :cond_4

    .line 3125
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v2

    .line 3126
    .local v2, "pinnedHeadsUp":Z
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    if-eq v3, v0, :cond_1

    :cond_0
    if-nez v2, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPanelRevealedByUser:Z

    if-eqz v3, :cond_2

    .line 3131
    .local v0, "clearNotificationEffects":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3132
    .local v1, "notificationLoad":I
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPanelFullyCollapsed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3133
    const/4 v1, 0x1

    .line 3137
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v3, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(ZI)V

    .line 3138
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPanelRevealedByUser:Z

    .line 3145
    .end local v0    # "clearNotificationEffects":Z
    .end local v1    # "notificationLoad":I
    .end local v2    # "pinnedHeadsUp":Z
    :goto_2
    return-void

    .line 3126
    .restart local v2    # "pinnedHeadsUp":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 3135
    .restart local v0    # "clearNotificationEffects":Z
    .restart local v1    # "notificationLoad":I
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v4, "note_load"

    invoke-static {v3, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 3142
    .end local v0    # "clearNotificationEffects":Z
    .end local v1    # "notificationLoad":I
    .end local v2    # "pinnedHeadsUp":Z
    :catch_0
    move-exception v3

    goto :goto_2

    .line 3140
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v3}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelHidden()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public hideRecentApps(ZZ)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1926
    const/16 v0, 0x3fc

    .line 1927
    .local v0, "msg":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1928
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    if-eqz p1, :cond_0

    move v3, v1

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v4, v0, v3, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1930
    return-void

    :cond_0
    move v3, v2

    .line 1928
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected hideRecents(ZZ)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 2011
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/RecentsComponent;->hideRecents(ZZ)V

    .line 2013
    :cond_0
    return-void
.end method

.method protected inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 54
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 2154
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(I)Landroid/content/pm/PackageManager;

    move-result-object v38

    .line 2157
    .local v38, "pmUser":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRowMaxHeight:I

    move/from16 v34, v0

    .line 2158
    .local v34, "maxHeight":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v45, v0

    .line 2161
    .local v45, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v45 .. v45}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2162
    invoke-virtual/range {v45 .. v45}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->PRIVATE_CONTENT_VIEW:Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->reimposeBadgeAtBottomRight(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;)Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2164
    invoke-virtual/range {v45 .. v45}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->BIG_CONTENT_VIEW:Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->reimposeBadgeAtBottomRight(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;)Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, v7, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 2166
    invoke-virtual/range {v45 .. v45}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->HEADSUP_CONTENT_VIEW:Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->reimposeBadgeAtBottomRight(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;)Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, v7, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 2171
    :cond_0
    invoke-virtual/range {v45 .. v45}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v0, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v17, v0

    .line 2172
    .local v17, "contentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v45 .. v45}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v13, v7, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 2173
    .local v13, "bigContentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v45 .. v45}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v0, v7, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    .line 2175
    .local v26, "headsUpContentView":Landroid/widget/RemoteViews;
    if-nez v17, :cond_1

    .line 2176
    const/4 v7, 0x0

    .line 2536
    :goto_0
    return v7

    .line 2179
    :cond_1
    sget-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 2180
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "publicNotification: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v45 .. v45}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget-object v9, v9, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    :cond_2
    invoke-virtual/range {v45 .. v45}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v0, v7, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    move-object/from16 v42, v0

    .line 2186
    .local v42, "publicNotification":Landroid/app/Notification;
    invoke-virtual/range {v45 .. v45}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v42, :cond_3

    .line 2187
    invoke-virtual/range {v45 .. v45}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    sget-object v8, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->PUBLIC_CONTENT_VIEW:Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->reimposeBadgeAtBottomRight(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;)Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2196
    :cond_3
    const/16 v25, 0x0

    .line 2197
    .local v25, "hasUserChangedExpansion":Z
    const/16 v51, 0x0

    .line 2198
    .local v51, "userExpanded":Z
    const/16 v52, 0x0

    .line 2200
    .local v52, "userLocked":Z
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v7, :cond_1d

    .line 2201
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v44, v0

    .line 2202
    .local v44, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual/range {v44 .. v44}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasUserChangedExpansion()Z

    move-result v25

    .line 2203
    invoke-virtual/range {v44 .. v44}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserExpanded()Z

    move-result v51

    .line 2204
    invoke-virtual/range {v44 .. v44}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v52

    .line 2205
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->reset()V

    .line 2206
    if-eqz v25, :cond_4

    .line 2207
    move-object/from16 v0, v44

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 2219
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->workAroundBadLayerDrawableOpacity(Landroid/view/View;)V

    .line 2220
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;

    move-result-object v53

    .line 2221
    .local v53, "vetoButton":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0220

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2227
    invoke-virtual/range {v44 .. v44}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v15

    .line 2228
    .local v15, "contentContainer":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual/range {v44 .. v44}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v16

    .line 2230
    .local v16, "contentContainerPublic":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual/range {v44 .. v44}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getKnoxLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v24

    .line 2233
    .local v24, "expandedKnox":Lcom/android/systemui/statusbar/NotificationContentView;
    const/high16 v7, 0x60000

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDescendantFocusability(I)V

    .line 2235
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationClicker:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v7, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->register(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    .line 2238
    const/16 v18, 0x0

    .line 2239
    .local v18, "contentViewLocal":Landroid/view/View;
    const/4 v14, 0x0

    .line 2240
    .local v14, "bigContentViewLocal":Landroid/view/View;
    const/16 v27, 0x0

    .line 2242
    .local v27, "headsUpContentViewLocal":Landroid/view/View;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v15, v8}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v18

    .line 2246
    if-eqz v13, :cond_5

    .line 2247
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v13, v7, v15, v8}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v14

    .line 2252
    :cond_5
    if-eqz v26, :cond_6

    .line 2253
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v15, v8}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v27

    .line 2265
    :cond_6
    if-eqz v18, :cond_8

    .line 2268
    invoke-virtual/range {v45 .. v45}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2269
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Z)V

    .line 2272
    :cond_7
    const/4 v7, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 2273
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 2275
    :cond_8
    if-eqz v14, :cond_a

    .line 2277
    invoke-virtual/range {v45 .. v45}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2278
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfBigContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    .line 2281
    :cond_9
    const/4 v7, 0x1

    invoke-virtual {v14, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 2282
    invoke-virtual {v15, v14}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    .line 2284
    :cond_a
    if-eqz v27, :cond_b

    .line 2285
    const/4 v7, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 2286
    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    .line 2290
    :cond_b
    const/16 v43, 0x0

    .line 2291
    .local v43, "publicViewLocal":Landroid/view/View;
    if-eqz v42, :cond_d

    .line 2293
    :try_start_1
    move-object/from16 v0, v42

    iget-object v7, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, v45

    invoke-virtual {v0, v8}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v16

    invoke-virtual {v7, v8, v0, v9}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v43

    .line 2297
    if-eqz v43, :cond_d

    .line 2299
    invoke-virtual/range {v45 .. v45}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2300
    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Z)V

    .line 2303
    :cond_c
    const/4 v7, 0x1

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 2304
    move-object/from16 v0, v16

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2316
    :cond_d
    :goto_2
    :try_start_2
    invoke-virtual/range {v45 .. v45}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v32

    .line 2317
    .local v32, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v32

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, p1

    iput v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2322
    .end local v32    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_3
    sget-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v7, :cond_e

    .line 2323
    const-string v7, "KnoxNotification"

    const-string v8, "-----------------------BaseStatusBar--------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    const-string v7, "KnoxNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Notification - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v45 .. v45}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    const-string v7, "KnoxNotification"

    const-string v8, "-----------------------BaseStatusBar--------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    :cond_e
    const/16 v20, 0x0

    .line 2329
    .local v20, "customPublicViewLocal":Landroid/view/View;
    if-nez v43, :cond_14

    .line 2330
    invoke-virtual/range {v45 .. v45}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 2331
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f04003b

    const/4 v9, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    .line 2334
    const v7, 0x7f0e0149

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/view/ViewGroup;

    .line 2336
    .local v37, "parentPublicViewLocal":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f04004d

    const/4 v9, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v43

    .line 2339
    const/4 v7, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 2340
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 2349
    .end local v37    # "parentPublicViewLocal":Landroid/view/ViewGroup;
    :goto_4
    const-string v7, "KnoxNotification"

    const-string v8, "----- inflateViews : modified publicViewLocal -----"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    const v7, 0x7f0e0086

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v49

    check-cast v49, Landroid/widget/TextView;

    .line 2352
    .local v49, "title":Landroid/widget/TextView;
    :try_start_3
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, v49

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2358
    :goto_5
    const v7, 0x7f0e0085

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    .line 2359
    .local v28, "icon":Landroid/widget/ImageView;
    invoke-virtual/range {v45 .. v45}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_1f

    if-eqz v20, :cond_1f

    const v7, 0x7f0e014a

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    :goto_6
    check-cast v7, Landroid/widget/ImageView;

    move-object/from16 v40, v7

    check-cast v40, Landroid/widget/ImageView;

    .line 2366
    .local v40, "profileBadge":Landroid/widget/ImageView;
    new-instance v6, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget v10, v10, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget v11, v11, Landroid/app/Notification;->number:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-object v12, v12, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 2374
    .local v6, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    .line 2375
    .local v29, "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2376
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v8, 0x15

    if-ge v7, v8, :cond_f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 2378
    :cond_f
    const v7, 0x1080600

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2380
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050061

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    .line 2382
    .local v35, "padding":I
    move-object/from16 v0, v28

    move/from16 v1, v35

    move/from16 v2, v35

    move/from16 v3, v35

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 2383
    invoke-virtual/range {v45 .. v45}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget v7, v7, Landroid/app/Notification;->color:I

    if-eqz v7, :cond_10

    .line 2384
    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual/range {v45 .. v45}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v8, v8, Landroid/app/Notification;->color:I

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2389
    .end local v35    # "padding":I
    :cond_10
    if-eqz v40, :cond_11

    .line 2390
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v41

    .line 2392
    .local v41, "profileDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v41, :cond_20

    .line 2393
    invoke-virtual/range {v40 .. v41}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2394
    const/4 v7, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2400
    .end local v41    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :cond_11
    :goto_7
    const v7, 0x102009a

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    .line 2401
    .local v39, "privateTime":Landroid/view/View;
    const v7, 0x7f0e0193

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/DateTimeView;

    .line 2402
    .local v47, "time":Landroid/widget/DateTimeView;
    if-eqz v39, :cond_12

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_12

    .line 2403
    const/4 v7, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v7}, Landroid/widget/DateTimeView;->setVisibility(I)V

    .line 2404
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-wide v8, v7, Landroid/app/Notification;->when:J

    move-object/from16 v0, v47

    invoke-virtual {v0, v8, v9}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 2407
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSensitiveTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    .line 2408
    const v7, 0x7f0e0195

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v46

    check-cast v46, Landroid/widget/TextView;

    .line 2409
    .local v46, "text":Landroid/widget/TextView;
    if-eqz v46, :cond_13

    .line 2410
    const v7, 0x7f0d033c

    move-object/from16 v0, v46

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 2417
    :cond_13
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v7, v8, v9}, Landroid/app/Notification$Builder;->calculateTopPadding(Landroid/content/Context;ZF)I

    move-result v50

    .line 2420
    .local v50, "topPadding":I
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2422
    const/4 v7, 0x1

    move-object/from16 v0, p1

    iput-boolean v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    .line 2427
    .end local v6    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v28    # "icon":Landroid/widget/ImageView;
    .end local v29    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v39    # "privateTime":Landroid/view/View;
    .end local v40    # "profileBadge":Landroid/widget/ImageView;
    .end local v46    # "text":Landroid/widget/TextView;
    .end local v47    # "time":Landroid/widget/DateTimeView;
    .end local v49    # "title":Landroid/widget/TextView;
    .end local v50    # "topPadding":I
    :cond_14
    const/16 v19, 0x0

    .line 2428
    .local v19, "customKnoxViewLocal":Landroid/view/View;
    if-nez v19, :cond_1b

    .line 2429
    const/16 v33, 0x0

    .line 2430
    .local v33, "knoxViewLocal":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f04003b

    const/4 v9, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 2433
    const v7, 0x7f0e0149

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/view/ViewGroup;

    .line 2435
    .local v36, "parentKnoxViewLocal":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x10900b3

    const/4 v9, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v33

    .line 2438
    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 2439
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 2441
    const-string v7, "KnoxNotification"

    const-string v8, "----- inflateViews : modified KnoxViewLocal -----"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    const v7, 0x1020016

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v49

    check-cast v49, Landroid/widget/TextView;

    .line 2444
    .restart local v49    # "title":Landroid/widget/TextView;
    invoke-virtual/range {v45 .. v45}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_21

    if-eqz v20, :cond_21

    .end local v20    # "customPublicViewLocal":Landroid/view/View;
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationTitleForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Landroid/view/View;)V

    .line 2450
    const v7, 0x1020006

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    .line 2452
    .restart local v28    # "icon":Landroid/widget/ImageView;
    const v7, 0x7f0e014a

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    .line 2455
    .restart local v40    # "profileBadge":Landroid/widget/ImageView;
    new-instance v6, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget v10, v10, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget v11, v11, Landroid/app/Notification;->number:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-object v12, v12, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 2462
    .restart local v6    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    .line 2463
    .restart local v29    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v28, :cond_16

    .line 2464
    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2465
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v8, 0x15

    if-ge v7, v8, :cond_15

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 2467
    :cond_15
    const v7, 0x1080600

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2469
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050061

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    .line 2471
    .restart local v35    # "padding":I
    move-object/from16 v0, v28

    move/from16 v1, v35

    move/from16 v2, v35

    move/from16 v3, v35

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 2475
    .end local v35    # "padding":I
    :cond_16
    if-eqz v40, :cond_17

    .line 2476
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v41

    .line 2478
    .restart local v41    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v41, :cond_22

    .line 2479
    invoke-virtual/range {v40 .. v41}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2480
    const/4 v7, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2486
    .end local v41    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :cond_17
    :goto_9
    const v7, 0x102009a

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    .line 2487
    .restart local v39    # "privateTime":Landroid/view/View;
    if-eqz v39, :cond_19

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_19

    .line 2488
    const v7, 0x102009a

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v48

    .line 2489
    .local v48, "timeStub":Landroid/view/View;
    if-eqz v48, :cond_18

    .line 2490
    const/4 v7, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2492
    :cond_18
    const v7, 0x102009a

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/DateTimeView;

    .line 2494
    .local v21, "dateTimeView":Landroid/widget/DateTimeView;
    if-eqz v21, :cond_19

    .line 2495
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-wide v8, v7, Landroid/app/Notification;->when:J

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 2499
    .end local v21    # "dateTimeView":Landroid/widget/DateTimeView;
    .end local v48    # "timeStub":Landroid/view/View;
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSanitizedTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    .line 2501
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v7, v8, v9}, Landroid/app/Notification$Builder;->calculateTopPadding(Landroid/content/Context;ZF)I

    move-result v50

    .line 2504
    .restart local v50    # "topPadding":I
    if-eqz v49, :cond_1a

    .line 2505
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2507
    :cond_1a
    const/4 v7, 0x1

    move-object/from16 v0, p1

    iput-boolean v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    .line 2518
    .end local v6    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v28    # "icon":Landroid/widget/ImageView;
    .end local v29    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v33    # "knoxViewLocal":Landroid/view/View;
    .end local v36    # "parentKnoxViewLocal":Landroid/view/ViewGroup;
    .end local v39    # "privateTime":Landroid/view/View;
    .end local v40    # "profileBadge":Landroid/widget/ImageView;
    .end local v49    # "title":Landroid/widget/TextView;
    .end local v50    # "topPadding":I
    :cond_1b
    move-object/from16 v0, v44

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2519
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRowMinHeight:I

    move/from16 v0, v34

    invoke-virtual {v7, v8, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeightRange(II)V

    .line 2520
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V

    .line 2521
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v14, :cond_23

    const/4 v7, 0x1

    :goto_a
    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpandable(Z)V

    .line 2523
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsFullyExpanded()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setQsFullyOpened(Z)V

    .line 2525
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->applyColorsAndBackgrounds(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 2528
    if-eqz v25, :cond_1c

    .line 2531
    move-object/from16 v0, v44

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 2533
    :cond_1c
    move-object/from16 v0, v44

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 2534
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 2536
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 2211
    .end local v14    # "bigContentViewLocal":Landroid/view/View;
    .end local v15    # "contentContainer":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v16    # "contentContainerPublic":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v18    # "contentViewLocal":Landroid/view/View;
    .end local v19    # "customKnoxViewLocal":Landroid/view/View;
    .end local v24    # "expandedKnox":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v27    # "headsUpContentViewLocal":Landroid/view/View;
    .end local v43    # "publicViewLocal":Landroid/view/View;
    .end local v44    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v53    # "vetoButton":Landroid/view/View;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/LayoutInflater;

    .line 2213
    .local v31, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f0400a6

    const/4 v8, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v7, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v44

    check-cast v44, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2215
    .restart local v44    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionLogger(Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;Ljava/lang/String;)V

    .line 2216
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    goto/16 :goto_1

    .line 2259
    .end local v31    # "inflater":Landroid/view/LayoutInflater;
    .restart local v14    # "bigContentViewLocal":Landroid/view/View;
    .restart local v15    # "contentContainer":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v16    # "contentContainerPublic":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v18    # "contentViewLocal":Landroid/view/View;
    .restart local v24    # "expandedKnox":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v27    # "headsUpContentViewLocal":Landroid/view/View;
    .restart local v53    # "vetoButton":Landroid/view/View;
    :catch_0
    move-exception v22

    .line 2260
    .local v22, "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v45 .. v45}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v45 .. v45}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 2261
    .local v30, "ident":Ljava/lang/String;
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t inflate view for notification "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2262
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2307
    .end local v22    # "e":Ljava/lang/RuntimeException;
    .end local v30    # "ident":Ljava/lang/String;
    .restart local v43    # "publicViewLocal":Landroid/view/View;
    :catch_1
    move-exception v22

    .line 2308
    .restart local v22    # "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v45 .. v45}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v45 .. v45}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 2309
    .restart local v30    # "ident":Ljava/lang/String;
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t inflate public view for notification "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2310
    const/16 v43, 0x0

    goto/16 :goto_2

    .line 2318
    .end local v22    # "e":Ljava/lang/RuntimeException;
    .end local v30    # "ident":Ljava/lang/String;
    :catch_2
    move-exception v23

    .line 2319
    .local v23, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed looking up ApplicationInfo for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v45 .. v45}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 2343
    .end local v23    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v20    # "customPublicViewLocal":Landroid/view/View;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f04004d

    const/4 v9, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v43

    .line 2346
    const/4 v7, 0x1

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 2347
    move-object/from16 v0, v16

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    goto/16 :goto_4

    .line 2354
    .restart local v49    # "title":Landroid/widget/TextView;
    :catch_3
    move-exception v22

    .line 2355
    .local v22, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v49

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 2359
    .end local v22    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v28    # "icon":Landroid/widget/ImageView;
    :cond_1f
    const v7, 0x7f0e0194

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    goto/16 :goto_6

    .line 2396
    .restart local v6    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .restart local v29    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v40    # "profileBadge":Landroid/widget/ImageView;
    .restart local v41    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :cond_20
    const/16 v7, 0x8

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .end local v6    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v28    # "icon":Landroid/widget/ImageView;
    .end local v29    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v40    # "profileBadge":Landroid/widget/ImageView;
    .end local v41    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v19    # "customKnoxViewLocal":Landroid/view/View;
    .restart local v33    # "knoxViewLocal":Landroid/view/View;
    .restart local v36    # "parentKnoxViewLocal":Landroid/view/ViewGroup;
    :cond_21
    move-object/from16 v20, v43

    .line 2444
    goto/16 :goto_8

    .line 2482
    .end local v20    # "customPublicViewLocal":Landroid/view/View;
    .restart local v6    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .restart local v28    # "icon":Landroid/widget/ImageView;
    .restart local v29    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v40    # "profileBadge":Landroid/widget/ImageView;
    .restart local v41    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :cond_22
    const/16 v7, 0x8

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    .line 2521
    .end local v6    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v28    # "icon":Landroid/widget/ImageView;
    .end local v29    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v33    # "knoxViewLocal":Landroid/view/View;
    .end local v36    # "parentKnoxViewLocal":Landroid/view/ViewGroup;
    .end local v40    # "profileBadge":Landroid/widget/ImageView;
    .end local v41    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    .end local v49    # "title":Landroid/widget/TextView;
    :cond_23
    const/4 v7, 0x0

    goto/16 :goto_a
.end method

.method public isBouncerShowing()Z
    .locals 1

    .prologue
    .line 3875
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBouncerShowing:Z

    return v0
.end method

.method public isCoverViewShowing()Z
    .locals 2

    .prologue
    .line 3967
    const-string v0, "StatusBar"

    const-string v1, "isCoverViewShowing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3968
    const/4 v0, 0x0

    return v0
.end method

.method public isCoveredState()Z
    .locals 2

    .prologue
    .line 3996
    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    and-int/lit8 v0, v0, 0xa

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    and-int/lit8 v0, v0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCoveredState(I)Z
    .locals 2
    .param p1, "curState"    # I

    .prologue
    .line 4001
    and-int/lit8 v0, p1, 0xa

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    and-int/lit8 v0, p1, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isCurrentProfile(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1551
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1552
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1553
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 857
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 3

    .prologue
    .line 3934
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez v0, :cond_0

    .line 3938
    const-string v0, "StatusBar"

    const-string v1, "isKeyguardSecure() called before startKeyguard(), returning false"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3940
    const/4 v0, 0x0

    .line 3942
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v0

    goto :goto_0
.end method

.method public isKeyguardState()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3980
    iget v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyguardState(I)Z
    .locals 2
    .param p1, "curState"    # I

    .prologue
    const/4 v0, 0x1

    .line 3984
    and-int/lit8 v1, p1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKnoxNotificationSanitizeNeeded(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z
    .locals 12
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "isHeadsUp"    # Z

    .prologue
    .line 641
    iget-object v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v9

    .line 643
    .local v9, "userId":I
    if-eqz p2, :cond_0

    invoke-static {v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 644
    const/4 v10, 0x0

    .line 698
    :goto_0
    return v10

    .line 646
    :cond_0
    const-string v10, "knox-sanitize-data"

    const/4 v11, 0x4

    invoke-direct {p0, v9, v10, v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPolicy(ILjava/lang/String;I)Z

    move-result v7

    .line 648
    .local v7, "policy":Z
    const-string v10, "knox-sanitize-data-lockscreen"

    const/16 v11, 0x10

    invoke-direct {p0, v9, v10, v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPolicy(ILjava/lang/String;I)Z

    move-result v8

    .line 650
    .local v8, "policy_lockscreen":Z
    iget-object v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 651
    .local v4, "packageName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v11, "persona"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PersonaManager;

    .line 652
    .local v6, "pms":Landroid/os/PersonaManager;
    const/4 v5, 0x0

    .line 653
    .local v5, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v6, :cond_1

    .line 654
    invoke-virtual {v6, v9}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v5

    .line 657
    :cond_1
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->knoxContainerInLockMode(I)Z

    move-result v0

    .line 658
    .local v0, "isContainerLocked":Z
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isForceSanitizationRequired(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    .line 659
    .local v1, "isForceSanitize":Z
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v10

    sget-object v11, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v10, v11}, Landroid/os/PersonaManager$KnoxContainerVersion;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v2, 0x1

    .line 661
    .local v2, "isKnox2_3_0":Z
    :goto_1
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v10

    sget-object v11, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_1:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v10, v11}, Landroid/os/PersonaManager$KnoxContainerVersion;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v3, 0x1

    .line 664
    .local v3, "isKnox2_3_1":Z
    :goto_2
    if-nez v2, :cond_2

    if-eqz v3, :cond_a

    .line 666
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenKnoxMode()Z

    move-result v10

    if-nez v10, :cond_7

    :cond_3
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersonaInKioskMode(I)Z

    move-result v10

    if-nez v10, :cond_6

    if-nez v7, :cond_4

    if-nez v1, :cond_7

    :cond_4
    if-eqz v7, :cond_5

    iget v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    if-ne v10, v9, :cond_7

    :cond_5
    if-eqz v7, :cond_6

    if-eqz v0, :cond_6

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v10}, Landroid/os/PersonaManager;->getForegroundUser()I

    move-result v10

    if-ne v10, v9, :cond_7

    :cond_6
    if-eqz v5, :cond_13

    if-eqz v4, :cond_13

    const-string v10, "com.android.email"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    iget v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    if-ne v10, v9, :cond_7

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenKnoxMode()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 672
    :cond_7
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 659
    .end local v2    # "isKnox2_3_0":Z
    .end local v3    # "isKnox2_3_1":Z
    :cond_8
    const/4 v2, 0x0

    goto :goto_1

    .line 661
    .restart local v2    # "isKnox2_3_0":Z
    :cond_9
    const/4 v3, 0x0

    goto :goto_2

    .line 676
    .restart local v3    # "isKnox2_3_1":Z
    :cond_a
    if-eqz v4, :cond_b

    const-string v10, "com.samsung.knox.knoxtrustagent"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 678
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 682
    :cond_b
    if-eqz v7, :cond_c

    if-eqz v0, :cond_c

    if-nez v1, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenKnoxMode()Z

    move-result v10

    if-nez v10, :cond_12

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v10

    if-nez v10, :cond_12

    :cond_c
    if-eqz v8, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenKnoxMode()Z

    move-result v10

    if-nez v10, :cond_12

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v10

    if-nez v10, :cond_12

    :cond_d
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersonaInKioskMode(I)Z

    move-result v10

    if-nez v10, :cond_f

    if-eqz v0, :cond_e

    if-nez v1, :cond_12

    :cond_e
    if-eqz v7, :cond_f

    if-nez v0, :cond_12

    :cond_f
    if-eqz v5, :cond_13

    const-string v10, "com.samsung.android.email.provider"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "com.samsung.android.email.sync"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "com.samsung.android.email.ui"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "com.samsung.android.email.composer"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "com.android.email"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    :cond_10
    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenKnoxMode()Z

    move-result v10

    if-nez v10, :cond_11

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v10

    if-eqz v10, :cond_13

    :cond_11
    if-nez v0, :cond_13

    .line 695
    :cond_12
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 698
    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public isLockscreenKnoxMode()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenKnoxMode:Z

    return v0
.end method

.method public isLockscreenPublicMode()Z
    .locals 1

    .prologue
    .line 2064
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    return v0
.end method

.method public isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 1665
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102043e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isNavigationBarHidden()Z
    .locals 1

    .prologue
    .line 4040
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isNavigationBarHidden()Z

    move-result v0

    return v0
.end method

.method public isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 1522
    iget v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 1523
    .local v1, "thisUserId":I
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    .line 1524
    .local v0, "notificationUserId":I
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1528
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCurrentProfile(I)Z

    move-result v2

    return v2
.end method

.method public isOwnerProfile(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1544
    if-eqz p1, :cond_1

    .line 1547
    :cond_0
    :goto_0
    return v1

    .line 1546
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 1547
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected abstract isPanelFullyCollapsed()Z
.end method

.method public isShadeLockedState()Z
    .locals 2

    .prologue
    .line 3988
    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShadeLockedState(I)Z
    .locals 2
    .param p1, "curState"    # I

    .prologue
    .line 3992
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSkipShowingNotificationForHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 6
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 592
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-nez v2, :cond_0

    .line 593
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v5, "persona"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    .line 596
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v2}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 597
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v2, v3}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v1

    .line 598
    .local v1, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 599
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    iget v2, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->knoxContainerInSuperLockMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 600
    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "com.android.mms"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 608
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :goto_0
    return v2

    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method protected abstract isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z
.end method

.method protected isStatusBarHidden()Z
    .locals 1

    .prologue
    .line 4036
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isStatusBarHidden()Z

    move-result v0

    return v0
.end method

.method protected isWindowPinned()Z
    .locals 3

    .prologue
    .line 3478
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3479
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    return v1
.end method

.method protected knoxContainerInSuperLockMode(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 612
    invoke-static {p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 613
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_0

    .line 614
    const-string v2, "KnoxNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get knoxInSuperLockMode for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_0
    :goto_0
    return v1

    .line 617
    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    .line 618
    .local v0, "index":I
    if-gez v0, :cond_2

    .line 619
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KnoxNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get knoxInSuperLockMode for container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 622
    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get knoxInSuperLockMode for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    goto :goto_0
.end method

.method public logNotificationExpansion(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z

    .prologue
    .line 3927
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3931
    :goto_0
    return-void

    .line 3928
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public abstract maybeEscalateHeadsUp()V
.end method

.method protected notifyHeadsUpScreenOff()V
    .locals 0

    .prologue
    .line 3805
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->maybeEscalateHeadsUp()V

    .line 3806
    return-void
.end method

.method protected notifyUserAboutHiddenNotifications()V
    .locals 14

    .prologue
    const/high16 v13, 0x10000000

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1466
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "show_note_about_notification_hiding"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_0

    .line 1468
    const-string v8, "StatusBar"

    const-string v9, "user hasn\'t seen notification about hidden notifications"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1470
    .local v2, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1471
    const-string v8, "StatusBar"

    const-string v9, "insecure lockscreen, skipping notification"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "show_note_about_notification_hiding"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1512
    .end local v2    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_0
    :goto_0
    return-void

    .line 1476
    .restart local v2    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    const-string v8, "StatusBar"

    const-string v9, "disabling lockecreen notifications and alerting the user"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_show_notifications"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1480
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_allow_private_notifications"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1483
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1484
    .local v5, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.systemui.statusbar.banner_action_cancel"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-static {v8, v11, v9, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1487
    .local v0, "cancelIntent":Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.systemui.statusbar.banner_action_setup"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-static {v8, v11, v9, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 1491
    .local v7, "setupIntent":Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1492
    .local v6, "res":Landroid/content/res/Resources;
    const v1, 0x1060059

    .line 1493
    .local v1, "colorRes":I
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f02018b

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v10, 0x7f0d0357

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v10, 0x7f0d0358

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v10, 0x1060059

    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x7f020196

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v11, 0x7f0d0359

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x7f020217

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v11, 0x7f0d035a

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1508
    .local v4, "note":Landroid/app/Notification$Builder;
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1510
    .local v3, "noMan":Landroid/app/NotificationManager;
    const v8, 0x7f0e0057

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1581
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v2, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1582
    .local v2, "locale":Ljava/util/Locale;
    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    .line 1583
    .local v1, "ld":I
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 1585
    .local v0, "fontScale":F
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    if-ne v1, v5, :cond_0

    iget v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFontScale:F

    cmpl-float v5, v0, v5

    if-eqz v5, :cond_2

    .line 1586
    :cond_0
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 1587
    const-string v5, "StatusBar"

    const-string v6, "config changed locale/LD: %s (%d) -> %s (%d)"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    aput-object v8, v7, v4

    iget v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    aput-object v2, v7, v10

    const/4 v8, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    :cond_1
    iput-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    .line 1592
    iput v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 1593
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->refreshLayout(I)V

    .line 1596
    :cond_2
    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v10, :cond_3

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsLandscapeNow:Z

    .line 1597
    return-void

    :cond_3
    move v3, v4

    .line 1596
    goto :goto_0
.end method

.method public onCoverAppCovered(Z)I
    .locals 2
    .param p1, "covered"    # Z

    .prologue
    .line 3973
    const-string v0, "StatusBar"

    const-string v1, "onCoverAppCovered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3974
    const/4 v0, 0x0

    return v0
.end method

.method public onVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 2049
    return-void
.end method

.method public overrideActivityPendingAppTransition(Z)V
    .locals 6
    .param p1, "keyguardShowing"    # Z

    .prologue
    .line 3091
    if-eqz p1, :cond_0

    .line 3093
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/IWindowManager;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3098
    :cond_0
    :goto_0
    return-void

    .line 3094
    :catch_0
    move-exception v0

    .line 3095
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error overriding app transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public preloadRecentApps()V
    .locals 2

    .prologue
    .line 1939
    const/16 v0, 0x3fe

    .line 1940
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1941
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1942
    return-void
.end method

.method protected preloadRecents()V
    .locals 1

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 2024
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->preloadRecents()V

    .line 2026
    :cond_0
    return-void
.end method

.method protected abstract refreshLayout(I)V
.end method

.method public abstract removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 3177
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 3178
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 3179
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNotification for unknown key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    const/4 v1, 0x0

    .line 3183
    :goto_0
    return-object v1

    .line 3182
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    .line 3183
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    goto :goto_0
.end method

.method public sanitizePendingIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Landroid/app/PendingIntent;
    .locals 16
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "userId"    # I

    .prologue
    .line 748
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_0

    .line 749
    const-string v1, "KnoxNotification"

    const-string v2, "----- Inside sanitizePendingIntent -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v13, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 751
    .local v13, "pi":Landroid/app/PendingIntent;
    move-object v15, v13

    .line 752
    .local v15, "sanitized":Landroid/app/PendingIntent;
    const/4 v12, 0x0

    .line 753
    .local v12, "isSanitizeRequired":Z
    if-nez v13, :cond_5

    .line 754
    const/4 v12, 0x1

    .line 764
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_2

    .line 765
    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----- sanitizePendingIntent : isSanitizeRequired - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_2
    if-eqz v12, :cond_3

    .line 767
    if-eqz v13, :cond_8

    invoke-virtual {v13}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v10

    .line 769
    .local v10, "creatorPkg":Ljava/lang/String;
    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 770
    .local v3, "in":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    invoke-virtual {v3, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    move/from16 v0, p2

    invoke-virtual {v1, v3, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v14

    .line 775
    .local v14, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v14, :cond_9

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 776
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v10, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 777
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v4, 0x8000000

    const/4 v5, 0x0

    new-instance v6, Landroid/os/UserHandle;

    move/from16 v0, p2

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v15

    .line 787
    :goto_2
    const/4 v1, 0x1

    move-object/from16 v0, p1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    .line 789
    .end local v3    # "in":Landroid/content/Intent;
    .end local v10    # "creatorPkg":Ljava/lang/String;
    .end local v14    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_4

    .line 790
    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----- sanitizePendingIntent : sanitized - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_4
    return-object v15

    .line 756
    :cond_5
    invoke-virtual {v13}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 757
    .local v11, "innerIntent":Landroid/content/Intent;
    if-eqz v11, :cond_6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v11, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 758
    :cond_6
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_7

    .line 759
    const-string v1, "KnoxNotification"

    const-string v2, "----- sanitizePendingIntent : innerIntent null or filterEquals -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_7
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 767
    .end local v11    # "innerIntent":Landroid/content/Intent;
    :cond_8
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 780
    .restart local v3    # "in":Landroid/content/Intent;
    .restart local v10    # "creatorPkg":Ljava/lang/String;
    .restart local v14    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_9
    new-instance v6, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 781
    .local v6, "home":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 782
    const/high16 v1, 0x10000000

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 784
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v7, 0x8000000

    const/4 v8, 0x0

    new-instance v9, Landroid/os/UserHandle;

    move/from16 v0, p2

    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v15

    goto :goto_2
.end method

.method public sendDiagnosticLogs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 2894
    return-void
.end method

.method protected abstract setAreThereNotifications()V
.end method

.method public setBouncerShowing(Z)V
    .locals 0
    .param p1, "bouncerShowing"    # Z

    .prologue
    .line 3868
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBouncerShowing:Z

    .line 3869
    return-void
.end method

.method protected abstract setHeadsUpUser(I)V
.end method

.method public setInteracting(IZ)V
    .locals 0
    .param p1, "barWindow"    # I
    .param p2, "interacting"    # Z

    .prologue
    .line 3865
    return-void
.end method

.method public setLockscreenPublicMode(Z)V
    .locals 0
    .param p1, "publicMode"    # Z

    .prologue
    .line 2060
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    .line 2061
    return-void
.end method

.method protected setNotificationShown(Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 1532
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->setNotificationsShown([Ljava/lang/String;)V

    .line 1533
    return-void
.end method

.method protected setNotificationsShown([Ljava/lang/String;)V
    .locals 3
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 1537
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerService;->setNotificationsShown([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1541
    :goto_0
    return-void

    .line 1538
    :catch_0
    move-exception v0

    .line 1539
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "StatusBar"

    const-string v2, "failed setNotificationsShown: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected setShowLockscreenNotifications(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 3420
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    .line 3421
    return-void
.end method

.method protected setZenMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 3413
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3416
    :goto_0
    return-void

    .line 3414
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mZenMode:I

    .line 3415
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    goto :goto_0
.end method

.method public shouldHideSensitiveContents(I)Z
    .locals 1
    .param p1, "userid"    # I

    .prologue
    .line 2107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldInterrupt(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 3814
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldInterrupt(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method protected shouldInterrupt(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z
    .locals 13
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 3818
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v10, p2}, Lcom/android/systemui/statusbar/NotificationData;->shouldFilterOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3819
    sget-boolean v10, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 3820
    const-string v10, "StatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping HUN check for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " since it\'s filtered out."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3822
    :cond_0
    const/4 v3, 0x0

    .line 3858
    :cond_1
    :goto_0
    return v3

    .line 3825
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3826
    const/4 v3, 0x0

    goto :goto_0

    .line 3829
    :cond_3
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    .line 3831
    .local v9, "notification":Landroid/app/Notification;
    iget v10, v9, Landroid/app/Notification;->defaults:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_4

    iget v10, v9, Landroid/app/Notification;->defaults:I

    and-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_4

    iget-object v10, v9, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-nez v10, :cond_4

    iget-object v10, v9, Landroid/app/Notification;->vibrate:[J

    if-eqz v10, :cond_7

    :cond_4
    const/4 v7, 0x1

    .line 3835
    .local v7, "isNoisy":Z
    :goto_1
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v10

    const/16 v11, 0xa

    if-lt v10, v11, :cond_8

    const/4 v6, 0x1

    .line 3836
    .local v6, "isHighPriority":Z
    :goto_2
    iget-object v10, v9, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v10, :cond_9

    const/4 v5, 0x1

    .line 3837
    .local v5, "isFullscreen":Z
    :goto_3
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpTicker:Z

    if-eqz v10, :cond_a

    iget-object v10, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    const/4 v2, 0x1

    .line 3838
    .local v2, "hasTicker":Z
    :goto_4
    iget-object v10, v9, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v11, "headsup"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_b

    const/4 v4, 0x1

    .line 3840
    .local v4, "isAllowed":Z
    :goto_5
    if-eqz v5, :cond_c

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v0, 0x1

    .line 3842
    .local v0, "accessibilityForcesLaunch":Z
    :goto_6
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasJustLaunchedFullScreenIntent()Z

    move-result v8

    .line 3844
    .local v8, "justLaunchedFullScreenIntent":Z
    if-nez v5, :cond_5

    if-eqz v6, :cond_d

    if-nez v7, :cond_5

    if-eqz v2, :cond_d

    :cond_5
    if-eqz v4, :cond_d

    if-nez v0, :cond_d

    if-nez v8, :cond_d

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v10}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v10

    if-eqz v10, :cond_d

    :cond_6
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isInputRestricted()Z

    move-result v10

    if-nez v10, :cond_d

    const/4 v3, 0x1

    .line 3853
    .local v3, "interrupt":Z
    :goto_7
    if-eqz v3, :cond_e

    :try_start_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v10}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_e

    const/4 v3, 0x1

    .line 3857
    :goto_8
    sget-boolean v10, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string v10, "StatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "interrupt: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3831
    .end local v0    # "accessibilityForcesLaunch":Z
    .end local v2    # "hasTicker":Z
    .end local v3    # "interrupt":Z
    .end local v4    # "isAllowed":Z
    .end local v5    # "isFullscreen":Z
    .end local v6    # "isHighPriority":Z
    .end local v7    # "isNoisy":Z
    .end local v8    # "justLaunchedFullScreenIntent":Z
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 3835
    .restart local v7    # "isNoisy":Z
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 3836
    .restart local v6    # "isHighPriority":Z
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 3837
    .restart local v5    # "isFullscreen":Z
    :cond_a
    const/4 v2, 0x0

    goto :goto_4

    .line 3838
    .restart local v2    # "hasTicker":Z
    :cond_b
    const/4 v4, 0x0

    goto :goto_5

    .line 3840
    .restart local v4    # "isAllowed":Z
    :cond_c
    const/4 v0, 0x0

    goto :goto_6

    .line 3844
    .restart local v0    # "accessibilityForcesLaunch":Z
    .restart local v8    # "justLaunchedFullScreenIntent":Z
    :cond_d
    const/4 v3, 0x0

    goto :goto_7

    .line 3853
    .restart local v3    # "interrupt":Z
    :cond_e
    const/4 v3, 0x0

    goto :goto_8

    .line 3854
    :catch_0
    move-exception v1

    .line 3855
    .local v1, "e":Landroid/os/RemoteException;
    const-string v10, "StatusBar"

    const-string v11, "failed to query dream manager"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public shouldShowOnIndicator(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3400
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v0

    .line 3401
    .local v0, "vis":I
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public shouldUnlock(Z)V
    .locals 0
    .param p1, "shouldUnlock"    # Z

    .prologue
    .line 4046
    return-void
.end method

.method public showAssistDisclosure()V
    .locals 1

    .prologue
    .line 3947
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz v0, :cond_0

    .line 3948
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->showDisclosure()V

    .line 3950
    :cond_0
    return-void
.end method

.method public showNextAffiliatedTask()V
    .locals 2

    .prologue
    .line 1953
    const/16 v0, 0x400

    .line 1954
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1955
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1956
    return-void
.end method

.method public showPreviousAffiliatedTask()V
    .locals 2

    .prologue
    .line 1960
    const/16 v0, 0x401

    .line 1961
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1962
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1963
    return-void
.end method

.method public showRecentApps(Z)V
    .locals 4
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1919
    const/16 v0, 0x3fb

    .line 1920
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1921
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1922
    return-void

    :cond_0
    move v1, v2

    .line 1921
    goto :goto_0
.end method

.method protected showRecents(Z)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 2004
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "recentapps"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 2005
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/RecentsComponent;->showRecents(ZLandroid/view/View;)V

    .line 2007
    :cond_0
    return-void
.end method

.method protected showRecentsNextAffiliatedTask()V
    .locals 1

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 2036
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->showNextAffiliatedTask()V

    .line 2038
    :cond_0
    return-void
.end method

.method protected showRecentsPreviousAffiliatedTask()V
    .locals 1

    .prologue
    .line 2041
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 2042
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->showPrevAffiliatedTask()V

    .line 2044
    :cond_0
    return-void
.end method

.method public start()V
    .locals 24

    .prologue
    .line 1276
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isStatusBarHidden()Z

    move-result v4

    sput-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    .line 1277
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isNavigationBarHidden()Z

    move-result v4

    sput-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNavigationBarHidden:Z

    .line 1280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    .line 1281
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 1282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    .line 1283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 1286
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 1288
    new-instance v4, Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/NotificationData;-><init>(Lcom/android/systemui/statusbar/NotificationData$Environment;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 1290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1293
    const-string v4, "dreams"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 1295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPowerManager:Landroid/os/PowerManager;

    .line 1297
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "zen_mode"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1304
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "zen_mode_config_etag"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v9, -0x1

    invoke-virtual {v4, v5, v6, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1309
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_show_notifications"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v9, -0x1

    invoke-virtual {v4, v5, v6, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_allow_private_notifications"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    const/4 v9, -0x1

    invoke-virtual {v4, v5, v6, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1320
    const-string v4, "statusbar"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1323
    const-class v4, Lcom/android/systemui/recents/Recents;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/RecentsComponent;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    .line 1324
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lcom/android/systemui/RecentsComponent;->setCallback(Lcom/android/systemui/RecentsComponent$Callbacks;)V

    .line 1326
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    .line 1327
    .local v14, "currentConfig":Landroid/content/res/Configuration;
    iget-object v4, v14, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    .line 1328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 1329
    iget v4, v14, Landroid/content/res/Configuration;->fontScale:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFontScale:F

    .line 1331
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    .line 1333
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v5, 0x10c000e

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

    .line 1335
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v5, 0x10c000f

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFastOutLinearIn:Landroid/animation/TimeInterpolator;

    .line 1339
    new-instance v19, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 1340
    .local v19, "iconList":Lcom/android/internal/statusbar/StatusBarIconList;
    new-instance v4, Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1342
    const/16 v4, 0x8

    new-array v0, v4, [I

    move-object/from16 v22, v0

    .line 1343
    .local v22, "switches":[I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1350
    .local v12, "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v4, v5, v0, v1, v12}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1355
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCurrentProfilesCache()V

    .line 1357
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createAndAddWindows()V

    .line 1359
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1360
    const/4 v4, 0x0

    aget v4, v22, v4

    const/4 v5, 0x6

    aget v5, v22, v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->disable(IIZ)V

    .line 1361
    const/4 v4, 0x1

    aget v4, v22, v4

    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->setSystemUiVisibility(II)V

    .line 1362
    const/4 v4, 0x2

    aget v4, v22, v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->topAppWindowChanged(Z)V

    .line 1364
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    const/4 v5, 0x3

    aget v6, v22, v5

    const/4 v5, 0x4

    aget v8, v22, v5

    const/4 v5, 0x5

    aget v5, v22, v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v8, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 1367
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v10

    .line 1368
    .local v10, "N":I
    const/16 v23, 0x0

    .line 1369
    .local v23, "viewIndex":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_3
    move/from16 v0, v17

    if-ge v0, v10, :cond_3

    .line 1370
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v18

    .line 1371
    .local v18, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-eqz v18, :cond_0

    .line 1372
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v23

    move-object/from16 v3, v18

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 1373
    add-int/lit8 v23, v23, 0x1

    .line 1369
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 1362
    .end local v10    # "N":I
    .end local v17    # "i":I
    .end local v18    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v23    # "viewIndex":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 1364
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 1379
    .restart local v10    # "N":I
    .restart local v17    # "i":I
    .restart local v23    # "viewIndex":I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, -0x1

    invoke-virtual {v4, v5, v6, v8}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1387
    :goto_4
    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 1388
    const-string v4, "StatusBar"

    const-string v5, "init: icons=%d disabled=0x%08x lights=0x%08x menu=0x%08x imeButton=0x%08x"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aget v9, v22, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x2

    const/4 v9, 0x1

    aget v9, v22, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x3

    const/4 v9, 0x2

    aget v9, v22, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x4

    const/4 v9, 0x3

    aget v9, v22, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :cond_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 1399
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setHeadsUpUser(I)V

    .line 1401
    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    .line 1402
    .local v16, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1403
    const-string v4, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1404
    const-string v4, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1405
    const-string v4, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1406
    const-string v4, "com.android.systemui.statusbar.banner_action_cancel"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1407
    const-string v4, "com.android.systemui.statusbar.banner_action_setup"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1408
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1410
    new-instance v21, Landroid/content/IntentFilter;

    invoke-direct/range {v21 .. v21}, Landroid/content/IntentFilter;-><init>()V

    .line 1411
    .local v21, "personaLaunchFilter":Landroid/content/IntentFilter;
    const-string v4, "com.sec.knox.container.action.launchinfo"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1412
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPersonaLaunchReceiver:Landroid/content/BroadcastReceiver;

    const-string v6, "com.samsung.container.LAUNCH_INFO"

    const/4 v8, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v4, v5, v0, v6, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1415
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 1416
    .local v11, "RcpFilter":Landroid/content/IntentFilter;
    const-string v4, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    invoke-virtual {v11, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1417
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1420
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-nez v4, :cond_5

    .line 1421
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    .line 1423
    :cond_5
    const/16 v20, 0x0

    .line 1424
    .local v20, "personaIds":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-eqz v4, :cond_6

    .line 1425
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v4}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v20

    .line 1427
    :cond_6
    if-eqz v20, :cond_b

    .line 1428
    const/16 v17, 0x0

    :goto_5
    move-object/from16 v0, v20

    array-length v4, v0

    move/from16 v0, v17

    if-ge v0, v4, :cond_b

    .line 1429
    aget v4, v20, v17

    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1431
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    aget v5, v20, v17

    invoke-virtual {v4, v5}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PersonaManager$StateManager;->getState()Landroid/content/pm/PersonaState;

    move-result-object v13

    .line 1433
    .local v13, "currState":Landroid/content/pm/PersonaState;
    sget-object v4, Landroid/content/pm/PersonaState;->LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    if-eq v13, v4, :cond_7

    sget-object v4, Landroid/content/pm/PersonaState;->ADMIN_LOCKED:Landroid/content/pm/PersonaState;

    if-eq v13, v4, :cond_7

    sget-object v4, Landroid/content/pm/PersonaState;->ADMIN_LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    if-ne v13, v4, :cond_8

    .line 1436
    :cond_7
    sget-object v4, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    aget v5, v20, v17

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1439
    :cond_8
    sget-object v4, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    if-ne v13, v4, :cond_9

    .line 1440
    sget-object v4, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    aget v5, v20, v17

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1443
    :cond_9
    aget v4, v20, v17

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->registerPersonaObserver(I)V

    .line 1444
    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v4, :cond_a

    .line 1445
    const-string v4, "KnoxNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add container observer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v20, v17

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " No. of users="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1428
    .end local v13    # "currState":Landroid/content/pm/PersonaState;
    :cond_a
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 1382
    .end local v11    # "RcpFilter":Landroid/content/IntentFilter;
    .end local v16    # "filter":Landroid/content/IntentFilter;
    .end local v20    # "personaIds":[I
    .end local v21    # "personaLaunchFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v15

    .line 1383
    .local v15, "e":Landroid/os/RemoteException;
    const-string v4, "StatusBar"

    const-string v5, "Unable to register notification listener"

    invoke-static {v4, v5, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 1450
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v11    # "RcpFilter":Landroid/content/IntentFilter;
    .restart local v16    # "filter":Landroid/content/IntentFilter;
    .restart local v21    # "personaLaunchFilter":Landroid/content/IntentFilter;
    :catch_1
    move-exception v15

    .line 1451
    .local v15, "e":Ljava/lang/Exception;
    const-string v4, "KnoxNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start: threw an exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 1456
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_b
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 1457
    .local v7, "allUsersFilter":Landroid/content/IntentFilter;
    const-string v4, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v7, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1459
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAllUsersReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1462
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1463
    return-void

    .line 1351
    .end local v7    # "allUsersFilter":Landroid/content/IntentFilter;
    .end local v10    # "N":I
    .end local v11    # "RcpFilter":Landroid/content/IntentFilter;
    .end local v16    # "filter":Landroid/content/IntentFilter;
    .end local v17    # "i":I
    .end local v21    # "personaLaunchFilter":Landroid/content/IntentFilter;
    .end local v23    # "viewIndex":I
    :catch_2
    move-exception v4

    goto/16 :goto_0
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 3954
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz v0, :cond_0

    .line 3955
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    .line 3957
    :cond_0
    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v4, 0x0

    .line 2782
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2837
    :goto_0
    return-void

    .line 2784
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v6

    .line 2785
    .local v6, "keyguardShowing":Z
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 2791
    .local v3, "afterKeyguardGone":Z
    :goto_1
    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$16;

    invoke-direct {v1, p0, v6, v3, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$16;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ZZLandroid/app/PendingIntent;)V

    const/4 v2, 0x0

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;ZZZ)V

    goto :goto_0

    .end local v3    # "afterKeyguardGone":Z
    :cond_1
    move v3, v4

    .line 2785
    goto :goto_1
.end method

.method public toggleRecentApps()V
    .locals 0

    .prologue
    .line 1934
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->toggleRecents()V

    .line 1935
    return-void
.end method

.method protected toggleRecents()V
    .locals 4

    .prologue
    .line 2016
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 2017
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "recentapps"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 2018
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    iget v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/RecentsComponent;->toggleRecents(Landroid/view/Display;ILandroid/view/View;)V

    .line 2020
    :cond_0
    return-void
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 3962
    const-string v0, "StatusBar"

    const-string v1, "updateCoverState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3963
    return-void
.end method

.method protected abstract updateHeadsUp(Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationData$Entry;ZZ)V
.end method

.method protected updateLockscreenNotificationSetting()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3448
    iget v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-static {v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v2

    .line 3451
    .local v2, "isPersona":Z
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_show_notifications"

    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    iget v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {v6, v11}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v6

    :goto_0
    invoke-static {v9, v10, v8, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 3455
    .local v5, "value":I
    if-eqz v5, :cond_3

    move v3, v7

    .line 3456
    .local v3, "show":Z
    :goto_1
    const-string v6, "StatusBar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LSSN:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v10, 0x0

    if-eqz v2, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    iget v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {v6, v11}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v6

    :goto_2
    invoke-virtual {v9, v10, v6}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 3460
    .local v1, "dpmFlags":I
    and-int/lit8 v6, v1, 0x4

    if-nez v6, :cond_5

    move v0, v7

    .line 3463
    .local v0, "allowedByDpm":Z
    :goto_3
    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    move v4, v7

    .line 3465
    .local v4, "showNotification":Z
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoveredState()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3467
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isWindowPinned()Z

    move-result v6

    if-nez v6, :cond_0

    if-nez v3, :cond_7

    .line 3468
    :cond_0
    const/4 v4, 0x0

    .line 3474
    :cond_1
    :goto_5
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setShowLockscreenNotifications(Z)V

    .line 3475
    return-void

    .line 3451
    .end local v0    # "allowedByDpm":Z
    .end local v1    # "dpmFlags":I
    .end local v3    # "show":Z
    .end local v4    # "showNotification":Z
    .end local v5    # "value":I
    :cond_2
    iget v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    goto :goto_0

    .restart local v5    # "value":I
    :cond_3
    move v3, v8

    .line 3455
    goto :goto_1

    .line 3458
    .restart local v3    # "show":Z
    :cond_4
    iget v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    goto :goto_2

    .restart local v1    # "dpmFlags":I
    :cond_5
    move v0, v8

    .line 3460
    goto :goto_3

    .restart local v0    # "allowedByDpm":Z
    :cond_6
    move v4, v8

    .line 3463
    goto :goto_4

    .line 3470
    .restart local v4    # "showNotification":Z
    :cond_7
    const/4 v4, 0x1

    goto :goto_5
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 18
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 3492
    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateNotification("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3494
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v14

    .line 3495
    .local v14, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, v14}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v12

    .line 3496
    .local v12, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v12, :cond_1

    .line 3570
    :goto_0
    return-void

    .line 3500
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    .line 3501
    .local v15, "n":Landroid/app/Notification;
    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 3502
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lcom/android/systemui/statusbar/BaseStatusBar;->logUpdate(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)V

    .line 3504
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldApplyInPlace(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z

    move-result v10

    .line 3505
    .local v10, "applyInPlace":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v12, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldInterrupt(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z

    move-result v16

    .line 3506
    .local v16, "shouldInterrupt":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lcom/android/systemui/statusbar/BaseStatusBar;->alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z

    move-result v9

    .line 3508
    .local v9, "alertAgain":Z
    move-object/from16 v0, p1

    iput-object v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 3509
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v4, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3, v12, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 3511
    const/16 v17, 0x0

    .line 3512
    .local v17, "updateSuccessful":Z
    if-eqz v10, :cond_4

    .line 3513
    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reusing notification for key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3515
    :cond_3
    :try_start_0
    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_9

    .line 3517
    new-instance v2, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    iget v6, v15, Landroid/app/Notification;->iconLevel:I

    iget v7, v15, Landroid/app/Notification;->number:I

    iget-object v8, v15, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 3524
    .local v2, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3, v15}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/app/Notification;)V

    .line 3525
    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 3526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t update icon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3533
    .end local v2    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    :catch_0
    move-exception v11

    .line 3535
    .local v11, "e":Ljava/lang/RuntimeException;
    const-string v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t reapply views for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v15, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3538
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :cond_4
    :goto_1
    if-nez v17, :cond_6

    .line 3539
    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not reusing notification for key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    :cond_5
    new-instance v2, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    iget v6, v15, Landroid/app/Notification;->iconLevel:I

    iget v7, v15, Landroid/app/Notification;->number:I

    iget-object v8, v15, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 3547
    .restart local v2    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3, v15}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/app/Notification;)V

    .line 3548
    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 3549
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    .line 3552
    .end local v2    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isWindowPinned()Z

    move-result v3

    if-nez v3, :cond_7

    .line 3553
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v12, v1, v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateHeadsUp(Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationData$Entry;ZZ)V

    .line 3556
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 3557
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    .line 3561
    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;

    .line 3563
    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v3, :cond_8

    .line 3565
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v13

    .line 3566
    .local v13, "isForCurrentUser":Z
    const-string v4, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notification is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v13, :cond_a

    const-string v3, ""

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "for you"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3569
    .end local v13    # "isForCurrentUser":Z
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->setAreThereNotifications()V

    goto/16 :goto_0

    .line 3530
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v3, v14}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3531
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 3566
    .restart local v13    # "isForCurrentUser":Z
    :cond_a
    const-string v3, "not "

    goto :goto_2
.end method

.method protected abstract updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;
    .locals 7
    .param p1, "row"    # Landroid/view/View;
    .param p2, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 1600
    const v0, 0x7f0e0315

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1601
    .local v6, "vetoButton":Landroid/view/View;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1602
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1603
    .local v2, "_pkg":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 1604
    .local v3, "_tag":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    .line 1605
    .local v4, "_id":I
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    .line 1606
    .local v5, "_userId":I
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$9;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/BaseStatusBar$9;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1619
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1623
    .end local v2    # "_pkg":Ljava/lang/String;
    .end local v3    # "_tag":Ljava/lang/String;
    .end local v4    # "_id":I
    .end local v5    # "_userId":I
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1624
    return-object v6

    .line 1621
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected abstract updateNotifications()V
.end method

.method protected updateRowStates()V
    .locals 25

    .prologue
    .line 3258
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getMaxKeyguardNotifications()I

    move-result v12

    .line 3259
    .local v12, "maxKeyguardNotifications":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->removeAllViews()V

    .line 3261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v3

    .line 3262
    .local v3, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3264
    .local v2, "N":I
    const/16 v19, 0x0

    .line 3266
    .local v19, "visibleNotifications":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState()Z

    move-result v14

    .line 3269
    .local v14, "onKeyguard":Z
    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isPersoLock()Z

    move-result v21

    if-nez v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isUniversalLock()Z

    move-result v21

    if-nez v21, :cond_5

    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportSimPermDisabled()Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v21

    if-nez v21, :cond_5

    :cond_0
    const/16 v17, 0x1

    .line 3274
    .local v17, "showOnKeyguardByLockType":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "user_setup_complete"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    move/from16 v24, v0

    invoke-static/range {v21 .. v24}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_6

    const/4 v11, 0x1

    .line 3279
    .local v11, "isSetupCompleteForUser":Z
    :goto_1
    if-nez v11, :cond_7

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v21

    if-nez v21, :cond_7

    const/4 v4, 0x1

    .line 3283
    .local v4, "doNotShowNotiByTwConcept":Z
    :goto_2
    const/4 v6, 0x0

    .line 3284
    .local v6, "hasCMASNotification":Z
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isPresidentialCMASFeature()Z

    move-result v9

    .line 3288
    .local v9, "isPresidentialCMASFeatureEnalbed":Z
    if-eqz v14, :cond_1

    .line 3289
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    move/from16 v21, v0

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 3290
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getMaxCoverNotifications()I

    move-result v12

    .line 3298
    :cond_1
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSharedDeviceKeyguardOn()Z

    move-result v10

    .line 3301
    .local v10, "isSDKeyguardOn":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    if-ge v7, v2, :cond_1a

    .line 3302
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 3304
    .local v5, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x8

    if-eqz v21, :cond_9

    const/4 v15, 0x1

    .line 3306
    .local v15, "sanitize":Z
    :goto_5
    if-nez v14, :cond_2

    if-eqz v15, :cond_a

    .line 3307
    :cond_2
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionDisabled(Z)V

    .line 3325
    :cond_3
    :goto_6
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    .line 3326
    .local v13, "n":Landroid/app/Notification;
    iget v0, v13, Landroid/app/Notification;->secFlags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_e

    .line 3327
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 3301
    :cond_4
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 3269
    .end local v4    # "doNotShowNotiByTwConcept":Z
    .end local v5    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v6    # "hasCMASNotification":Z
    .end local v7    # "i":I
    .end local v9    # "isPresidentialCMASFeatureEnalbed":Z
    .end local v10    # "isSDKeyguardOn":Z
    .end local v11    # "isSetupCompleteForUser":Z
    .end local v13    # "n":Landroid/app/Notification;
    .end local v15    # "sanitize":Z
    .end local v17    # "showOnKeyguardByLockType":Z
    :cond_5
    const/16 v17, 0x0

    goto :goto_0

    .line 3274
    .restart local v17    # "showOnKeyguardByLockType":Z
    :cond_6
    const/4 v11, 0x0

    goto :goto_1

    .line 3279
    .restart local v11    # "isSetupCompleteForUser":Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 3292
    .restart local v4    # "doNotShowNotiByTwConcept":Z
    .restart local v6    # "hasCMASNotification":Z
    .restart local v9    # "isPresidentialCMASFeatureEnalbed":Z
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getMaxKeyguardNotifications()I

    move-result v12

    goto :goto_3

    .line 3304
    .restart local v5    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v7    # "i":I
    .restart local v10    # "isSDKeyguardOn":Z
    :cond_9
    const/4 v15, 0x0

    goto :goto_5

    .line 3310
    .restart local v15    # "sanitize":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsFullyExpanded()Z

    move-result v21

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mEmergencyModeActivated:Z

    move/from16 v21, v0

    if-nez v21, :cond_b

    .line 3311
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setQsFullyOpened(Z)V

    goto :goto_6

    .line 3313
    :cond_b
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setQsFullyOpened(Z)V

    .line 3315
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionDisabled(Z)V

    .line 3316
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v21

    if-nez v21, :cond_3

    .line 3317
    if-nez v7, :cond_c

    const/16 v18, 0x1

    .line 3320
    .local v18, "top":Z
    :goto_8
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v22, v0

    if-eqz v18, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoveredState()Z

    move-result v21

    if-nez v21, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsLandscapeNow:Z

    move/from16 v21, v0

    if-nez v21, :cond_d

    const/16 v21, 0x1

    :goto_9
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemExpanded(Z)V

    goto/16 :goto_6

    .line 3317
    .end local v18    # "top":Z
    :cond_c
    const/16 v18, 0x0

    goto :goto_8

    .line 3320
    .restart local v18    # "top":Z
    :cond_d
    const/16 v21, 0x0

    goto :goto_9

    .line 3332
    .end local v18    # "top":Z
    .restart local v13    # "n":Landroid/app/Notification;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v21, v0

    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isVisible(Landroid/service/notification/StatusBarNotification;)Z

    move-result v21

    if-nez v21, :cond_14

    const/4 v8, 0x1

    .line 3333
    .local v8, "isInvisibleChild":Z
    :goto_a
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v21

    if-eqz v21, :cond_15

    if-eqz v17, :cond_15

    const/16 v16, 0x1

    .line 3335
    .local v16, "showOnKeyguard":Z
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v21

    if-eqz v21, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    move/from16 v21, v0

    if-eqz v21, :cond_12

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoveredState()Z

    move-result v21

    if-eqz v21, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    move/from16 v21, v0

    if-eqz v21, :cond_12

    :cond_10
    if-eqz v14, :cond_11

    move/from16 v0, v19

    if-ge v0, v12, :cond_12

    if-eqz v16, :cond_12

    if-nez v8, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsQsEditPanelOpened:Z

    move/from16 v21, v0

    if-nez v21, :cond_12

    if-nez v4, :cond_12

    if-eqz v10, :cond_16

    .line 3342
    :cond_12
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 3343
    if-eqz v14, :cond_13

    if-eqz v16, :cond_13

    if-nez v8, :cond_13

    if-nez v10, :cond_13

    .line 3344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->addNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 3359
    :cond_13
    :goto_c
    iget v0, v13, Landroid/app/Notification;->secPriority:I

    move/from16 v21, v0

    const/16 v22, 0x14

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    const-string v21, "com.android.mms"

    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 3361
    if-eqz v9, :cond_19

    .line 3362
    iget v0, v13, Landroid/app/Notification;->priority:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_4

    .line 3363
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 3332
    .end local v8    # "isInvisibleChild":Z
    .end local v16    # "showOnKeyguard":Z
    :cond_14
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 3333
    .restart local v8    # "isInvisibleChild":Z
    :cond_15
    const/16 v16, 0x0

    goto/16 :goto_b

    .line 3347
    .restart local v16    # "showOnKeyguard":Z
    :cond_16
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_18

    const/16 v20, 0x1

    .line 3348
    .local v20, "wasGone":Z
    :goto_d
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 3349
    if-nez v8, :cond_13

    .line 3350
    if-eqz v20, :cond_17

    .line 3352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v21, v0

    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateAddAnimation(Landroid/view/View;Z)V

    .line 3354
    :cond_17
    add-int/lit8 v19, v19, 0x1

    goto :goto_c

    .line 3347
    .end local v20    # "wasGone":Z
    :cond_18
    const/16 v20, 0x0

    goto :goto_d

    .line 3366
    :cond_19
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 3372
    .end local v5    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v8    # "isInvisibleChild":Z
    .end local v13    # "n":Landroid/app/Notification;
    .end local v15    # "sanitize":Z
    .end local v16    # "showOnKeyguard":Z
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v22, v0

    if-eqz v14, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getChildCount()I

    move-result v21

    if-lez v21, :cond_1c

    const/16 v21, 0x1

    :goto_e
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateOverflowContainerVisibility(Z)V

    .line 3387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    invoke-virtual/range {v21 .. v23}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 3388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v23

    add-int/lit8 v23, v23, -0x2

    invoke-virtual/range {v21 .. v23}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 3393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1b

    .line 3394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateCMASText(Z)V

    .line 3397
    :cond_1b
    return-void

    .line 3372
    :cond_1c
    const/16 v21, 0x0

    goto :goto_e
.end method

.method protected updateVisibleToUser()V
    .locals 2

    .prologue
    .line 3111
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    .line 3112
    .local v0, "oldVisibleToUser":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisible:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceInteractive:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    .line 3114
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    if-eq v0, v1, :cond_0

    .line 3115
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleVisibleToUserChanged(Z)V

    .line 3117
    :cond_0
    return-void

    .line 3112
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userAllowsPrivateNotificationsInPublic(I)Z
    .locals 8
    .param p1, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2072
    const/4 v6, -0x1

    if-ne p1, v6, :cond_0

    .line 2097
    :goto_0
    return v4

    .line 2079
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2080
    const/4 p1, 0x0

    .line 2084
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_5

    .line 2085
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_allow_private_notifications"

    invoke-static {v6, v7, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_2

    move v2, v4

    .line 2088
    .local v2, "allowedByUser":Z
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v3

    .line 2090
    .local v3, "dpmFlags":I
    and-int/lit8 v6, v3, 0x8

    if-nez v6, :cond_3

    move v1, v4

    .line 2092
    .local v1, "allowedByDpm":Z
    :goto_2
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    move v0, v4

    .line 2093
    .local v0, "allowed":Z
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    move v4, v0

    .line 2094
    goto :goto_0

    .end local v0    # "allowed":Z
    .end local v1    # "allowedByDpm":Z
    .end local v2    # "allowedByUser":Z
    .end local v3    # "dpmFlags":I
    :cond_2
    move v2, v5

    .line 2085
    goto :goto_1

    .restart local v2    # "allowedByUser":Z
    .restart local v3    # "dpmFlags":I
    :cond_3
    move v1, v5

    .line 2090
    goto :goto_2

    .restart local v1    # "allowedByDpm":Z
    :cond_4
    move v0, v5

    .line 2092
    goto :goto_3

    .line 2097
    .end local v1    # "allowedByDpm":Z
    .end local v2    # "allowedByUser":Z
    .end local v3    # "dpmFlags":I
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    goto :goto_0
.end method

.method public userSwitched(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 1515
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setHeadsUpUser(I)V

    .line 1516
    return-void
.end method

.method protected visibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 3101
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 3102
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisible:Z

    .line 3103
    if-nez p1, :cond_0

    .line 3104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups()V

    .line 3107
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateVisibleToUser()V

    .line 3108
    return-void
.end method

.method protected workAroundBadLayerDrawableOpacity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2151
    return-void
.end method
