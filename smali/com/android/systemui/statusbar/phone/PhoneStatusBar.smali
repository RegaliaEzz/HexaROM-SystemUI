.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.super Lcom/android/systemui/statusbar/BaseStatusBar;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;
.implements Lcom/android/systemui/statusbar/phone/ActivityStarter;
.implements Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
.implements Lcom/android/systemui/statusbar/policy/HeadsUpManager$OnHeadsUpChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$QuickConnectSoundPathViewObserver;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ButtonBackgroundObserver;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;
    }
.end annotation


# static fields
.field public static final ALPHA_IN:Landroid/view/animation/Interpolator;

.field public static final ALPHA_OUT:Landroid/view/animation/Interpolator;

.field public static final CHATTY:Z

.field public static final DEBUG:Z

.field private static final ONLY_CORE_APPS:Z

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static mDiagnosticLogs:Z

.field public static mDoubleTapCount:I

.field public static mIsNetworkAvailable:Z


# instance fields
.field private final EDM_FALSE:I

.field private final EDM_NULL:I

.field private final EDM_TRUE:I

.field public final KNOX_URI:Ljava/lang/String;

.field public final KNOX_URI1:Ljava/lang/String;

.field private clickDeferredTile:Lcom/android/systemui/qs/QSTile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<*>;"
        }
    .end annotation
.end field

.field private isKnoxKeyguardShown:Z

.field mAbsPos:[I

.field mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private final mAnimateCollapsePanels:Ljava/lang/Runnable;

.field public mAppCoverCovered:Z

.field private final mAutohide:Ljava/lang/Runnable;

.field private mAutohideSuspended:Z

.field private mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

.field private mBackdropBack:Landroid/widget/ImageView;

.field private mBackdropFront:Landroid/widget/ImageView;

.field private mBackdropInterpolator:Landroid/view/animation/Interpolator;

.field mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryLevel:I

.field private mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

.field mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

.field private mBouncerContainer:Landroid/widget/FrameLayout;

.field mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonBackgroundObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ButtonBackgroundObserver;

.field mCallBackgroundMode:I

.field private mCarrierLabel:Landroid/widget/TextView;

.field private mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

.field mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

.field private final mCheckBarModes:Ljava/lang/Runnable;

.field private mClearButton:Landroid/widget/TextView;

.field mCoverLauncher:Lcom/android/systemui/cover/SViewCoverLauncher;

.field mCoverMaxNotificationCount:I

.field private mCoverShortcutOpen:Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;

.field public mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mCurrentCoverDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

.field mCurrentDisplaySize:Landroid/graphics/Point;

.field private final mCurrentlyVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private mDataUsageView:Lcom/android/systemui/statusbar/phone/DataUsageView;

.field private mDcmKeyguardMascotUtils:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

.field private mDemoMode:Z

.field private mDemoModeAllowed:Z

.field private mDemoReceiver:Landroid/content/BroadcastReceiver;

.field mDisabled1:I

.field mDisabled2:I

.field private mDisabledUnmodified1:I

.field private mDisabledUnmodified2:I

.field mDisplay:Landroid/view/Display;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field private mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

.field private mDozing:Z

.field private mDozingRequested:Z

.field private mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEmergencyeModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;

.field mExpandedContents:Landroid/view/View;

.field mExpandedVisible:Z

.field mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

.field mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private final mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

.field private mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

.field private mHeadsUpEntriesToRemoveOnSwitch:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeadsUpObserver:Landroid/database/ContentObserver;

.field private mHideBackdropFront:Ljava/lang/Runnable;

.field private final mHomeActionListener:Landroid/view/View$OnTouchListener;

.field mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

.field mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field private mInterActionControlObserver:Landroid/database/ContentObserver;

.field private mInteractingWindows:I

.field mIsClearAllClicked:Z

.field mIsCoverShowing:Z

.field private mIsInterActionControlOn:Z

.field private mKeyguardBackground:Landroid/view/View;

.field mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field private mKeyguardEffectController:Lcom/android/keyguard/effect/KeyguardEffectViewController;

.field private mKeyguardFadingAway:Z

.field private mKeyguardFadingAwayDelay:J

.field private mKeyguardFadingAwayDuration:J

.field private mKeyguardFadingInterpolator:Landroid/view/animation/interpolator/SineOut33;

.field private mKeyguardGoingAway:Z

.field mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field mKeyguardMaxNotificationCount:I

.field mKeyguardMaxNotificationCountForDCM:I

.field mKeyguardMaxNotificationCountForMobileKeyboard:I

.field mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field mKeyguardStatusView:Landroid/view/View;

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field private mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field mKnoxCustomDoubleTapState:Z

.field private mKnoxCustomIconsPrevious:Z

.field mKnoxCustomStatusBarText:Landroid/widget/TextView;

.field mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

.field private mKnoxTouchDisabledPrevious:Z

.field private mLastCameraLaunchSource:I

.field private mLastDispatchedSystemUiVisibility:I

.field private mLastLockToAppLongPress:J

.field private mLastLoggedStateFingerprint:I

.field mLastOrientation:I

.field private mLastVisibilityReportUptimeMs:J

.field private mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private mLaunchCameraOnFinishedGoingToSleep:Z

.field private mLaunchCameraOnScreenTurningOn:Z

.field private mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

.field private mLaunchTransitionFadingAway:Z

.field mLeaveOpenOnKeyguardHide:Z

.field mLightStatusBarBlockByPowerSave:Z

.field mLightStatusBarMode:Z

.field private mLinearInterpolator:Landroid/view/animation/Interpolator;

.field mLocationController:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

.field private mLongPressBackRecentsListener:Landroid/view/View$OnLongClickListener;

.field private final mLongPressHomeListener:Landroid/view/View$OnLongClickListener;

.field private mMDMOverlayContainer:Landroid/widget/FrameLayout;

.field private mMdmOverlayView:Landroid/view/View;

.field private mMediaController:Landroid/media/session/MediaController;

.field private mMediaListener:Landroid/media/session/MediaController$Callback;

.field private mMediaMetadata:Landroid/media/MediaMetadata;

.field private mMediaNotificationKey:Ljava/lang/String;

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private mMultiWindowMode:Z

.field mNaturalBarHeight:I

.field private mNavigationBarMode:I

.field private mNavigationBarWindowState:I

.field private mNavigationIconHints:I

.field mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

.field mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private mNoAnimationOnNextBarModeChange:Z

.field mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

.field private final mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

.field private final mOnChildLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

.field mOperatorLogoIcon:Landroid/widget/ImageView;

.field private final mOverflowClickListener:Landroid/view/View$OnClickListener;

.field private mPersonaManager:Landroid/os/PersonaManager;

.field mPixelFormat:I

.field mPostCollapseRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field mQueueLock:Ljava/lang/Object;

.field private mQuickConnectSoundPathViewObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$QuickConnectSoundPathViewObserver;

.field private mRearScreenSwipeHelper:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

.field private mRearTouchListener:Landroid/view/View$OnTouchListener;

.field private mRecentsClickListener:Landroid/view/View$OnClickListener;

.field mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

.field public mSViewCoverCovered:Z

.field private mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

.field private mScreenTurningOn:Z

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mScrimSrcModeEnabled:Z

.field mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

.field private final mShadeUpdates:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;

.field mSignalBatteryIcons:Landroid/widget/LinearLayout;

.field mSoundPathController:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

.field private mSrcOverXferMode:Landroid/graphics/PorterDuffXfermode;

.field private mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

.field mStartTracing:Ljava/lang/Runnable;

.field protected mStartedGoingToSleep:Z

.field mStatusBarCarrierLabel:Landroid/widget/TextView;

.field private mStatusBarMode:I

.field mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field private mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private mStatusBarWindowState:I

.field mStopTracing:Ljava/lang/Runnable;

.field private mSviewShortcutIntent:Z

.field mSystemUiVisibility:I

.field private mTmpChildOrderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;>;"
        }
    .end annotation
.end field

.field mTracking:Z

.field mTrackingPosition:I

.field mTwoPhoneCallEnabled:Z

.field mTwoPhoneModeIcon:Landroid/widget/ImageView;

.field mTwoPhoneMsgEnabled:Z

.field mTwoPhoneRegistered:Z

.field private mTwoPhoneSettingObserver:Landroid/database/ContentObserver;

.field mTwoPhoneUserCreated:Z

.field private mUnlockAnimationSet:Landroid/animation/AnimatorSet;

.field private mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUnlockValueAnimator:Landroid/animation/ValueAnimator;

.field mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field private mUserSetup:Z

.field private mUserSetupObserver:Landroid/database/ContentObserver;

.field mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mVisibilityReporter:Ljava/lang/Runnable;

.field mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

.field mVowifiController:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;

.field private mWaitingForKeyguardExit:Z

.field private mWakeUpComingFromTouch:Z

.field private mWakeUpTouchLocation:Landroid/graphics/PointF;

.field mWifiP2pController:Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;

.field mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 283
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    sput-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    .line 293
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    sput-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->CHATTY:Z

    .line 323
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 348
    :try_start_0
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 353
    .local v1, "onlyCoreApps":Z
    :goto_0
    sput-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ONLY_CORE_APPS:Z

    .line 553
    sput v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoubleTapCount:I

    .line 720
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 721
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v4, v4, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 6962
    sput-boolean v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDiagnosticLogs:Z

    return-void

    .line 350
    .end local v1    # "onlyCoreApps":Z
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .restart local v1    # "onlyCoreApps":Z
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 279
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;-><init>()V

    .line 384
    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 387
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    .line 391
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    .line 403
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastOrientation:I

    .line 408
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I

    .line 412
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQueueLock:Ljava/lang/Object;

    .line 441
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyeModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;

    .line 444
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ButtonBackgroundObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ButtonBackgroundObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mButtonBackgroundObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ButtonBackgroundObserver;

    .line 445
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$QuickConnectSoundPathViewObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$QuickConnectSoundPathViewObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickConnectSoundPathViewObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$QuickConnectSoundPathViewObserver;

    .line 493
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    .line 502
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAbsPos:[I

    .line 503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    .line 506
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled1:I

    .line 507
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled2:I

    .line 510
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 522
    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastDispatchedSystemUiVisibility:I

    .line 524
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 528
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    .line 529
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    .line 530
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentCoverDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .line 531
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCoverShowing:Z

    .line 534
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    .line 540
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    .line 548
    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->KNOX_URI:Ljava/lang/String;

    .line 549
    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->KNOX_URI1:Ljava/lang/String;

    .line 551
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomIconsPrevious:Z

    .line 552
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxTouchDisabledPrevious:Z

    .line 557
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    .line 558
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    .line 559
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomDoubleTapState:Z

    .line 563
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKnoxKeyguardShown:Z

    .line 569
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    .line 570
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 596
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 617
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    .line 640
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTwoPhoneSettingObserver:Landroid/database/ContentObserver;

    .line 682
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInterActionControlObserver:Landroid/database/ContentObserver;

    .line 704
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    .line 718
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 719
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropInterpolator:Landroid/view/animation/Interpolator;

    .line 725
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 726
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSrcOverXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 732
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaListener:Landroid/media/session/MediaController$Callback;

    .line 755
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOnChildLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    .line 767
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 771
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShadeUpdates:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;

    .line 794
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    .line 816
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVisibilityReporter:Ljava/lang/Runnable;

    .line 881
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOverflowClickListener:Landroid/view/View$OnClickListener;

    .line 887
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTmpChildOrderMap:Ljava/util/HashMap;

    .line 889
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpEntriesToRemoveOnSwitch:Ljava/util/HashSet;

    .line 897
    new-instance v0, Landroid/view/animation/interpolator/SineOut33;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineOut33;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingInterpolator:Landroid/view/animation/interpolator/SineOut33;

    .line 1660
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsClearAllClicked:Z

    .line 1731
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    .line 1739
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLongPressBackRecentsListener:Landroid/view/View$OnLongClickListener;

    .line 1748
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$24;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$24;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLongPressHomeListener:Landroid/view/View$OnLongClickListener;

    .line 1765
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeActionListener:Landroid/view/View$OnTouchListener;

    .line 2422
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHideBackdropFront:Ljava/lang/Runnable;

    .line 3012
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3013
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPersonaManager:Landroid/os/PersonaManager;

    .line 3097
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimateCollapsePanels:Ljava/lang/Runnable;

    .line 3616
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$33;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$33;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    .line 4116
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 4228
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoReceiver:Landroid/content/BroadcastReceiver;

    .line 4675
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$44;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$44;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStartTracing:Ljava/lang/Runnable;

    .line 4685
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStopTracing:Ljava/lang/Runnable;

    .line 6434
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMultiWindowMode:Z

    .line 6596
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverLauncher:Lcom/android/systemui/cover/SViewCoverLauncher;

    .line 6812
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverShortcutOpen:Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;

    .line 7118
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$60;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$60;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 7263
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 7394
    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->EDM_NULL:I

    .line 7395
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->EDM_FALSE:I

    .line 7396
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->EDM_TRUE:I

    .line 7557
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRearTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QuickConnectSoundPathView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickConnectSoundPathView:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    return-object v0
.end method

.method static synthetic access$10100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentCoverDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    return p1
.end method

.method static synthetic access$10200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$10300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    return v0
.end method

.method static synthetic access$10400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->instantCollapseNotificationPanel()V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverShortcutOpen:Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;

    return-object v0
.end method

.method static synthetic access$10602(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSviewShortcutIntent:Z

    return p1
.end method

.method static synthetic access$10700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$10800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$10900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/keyguard/ViewMediatorCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$11000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$11100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QuickConnectSoundPathView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickConnectSoundPathView:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    return-object v0
.end method

.method static synthetic access$11200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QuickConnectSoundPathView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickConnectSoundPathView:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    return-object v0
.end method

.method static synthetic access$11300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/DataUsageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDataUsageView:Lcom/android/systemui/statusbar/phone/DataUsageView;

    return-object v0
.end method

.method static synthetic access$11400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    return-object v0
.end method

.method static synthetic access$11502(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDeviceInteractive:Z

    return p1
.end method

.method static synthetic access$11600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V

    return-void
.end method

.method static synthetic access$11702(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDeviceInteractive:Z

    return p1
.end method

.method static synthetic access$11800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyHeadsUpScreenOff()V

    return-void
.end method

.method static synthetic access$11900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->finishBarAnimations()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInterActionControlOn:Z

    return v0
.end method

.method static synthetic access$12000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetUserExpandedStates()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInterActionControlOn:Z

    return p1
.end method

.method static synthetic access$12100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRearScreenSwipeHelper:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified1:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified2:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # I

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # I

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isPlaybackActive(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clearCurrentMediaNotification()V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/media/MediaMetadata;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVisibilityReporter:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastVisibilityReportUptimeMs:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # J

    .prologue
    .line 279
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastVisibilityReportUptimeMs:J

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Ljava/util/Collection;
    .param p2, "x2"    # Ljava/util/Collection;

    .prologue
    .line 279
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/util/ArraySet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/util/ArraySet;

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->recycleAllVisibilityObjects(Landroid/util/ArraySet;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 279
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkUserAutohide(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clearAllNotifications()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/assist/AssistManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/assist/AssistManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSPanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisableNotificationAlerts:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->awakenDreams()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleLongPressBackRecents(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/assist/AssistManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationShade()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpTicker:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onLaunchTransitionTimeout()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/assist/AssistManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/assist/AssistManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # I

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCurrentProfile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$6202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # I

    .prologue
    .line 279
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$6300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDeviceInteractive:Z

    return v0
.end method

.method static synthetic access$6402(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKnoxKeyguardShown:Z

    return p1
.end method

.method static synthetic access$6500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSTile;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clickDeferredTile:Lcom/android/systemui/qs/QSTile;

    return-object v0
.end method

.method static synthetic access$6802(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/qs/QSTile;)Lcom/android/systemui/qs/QSTile;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSTile;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clickDeferredTile:Lcom/android/systemui/qs/QSTile;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$7400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Intent;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Z

    .prologue
    .line 279
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleStartActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$7602(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    return p1
.end method

.method static synthetic access$7700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/ScrimController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onLaunchTransitionFadingEnded()V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockAnimationSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$7902(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockAnimationSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$8000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/animation/interpolator/SineOut33;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingInterpolator:Landroid/view/animation/interpolator/SineOut33;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockValueAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$8102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockValueAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$8200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastCameraLaunchSource:I

    return v0
.end method

.method static synthetic access$8500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozingRequested:Z

    return v0
.end method

.method static synthetic access$8702(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozingRequested:Z

    return p1
.end method

.method static synthetic access$8800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    return v0
.end method

.method static synthetic access$8900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDozing()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$9000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/DozeScrimController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$9602(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    return p1
.end method

.method static synthetic access$9700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    return v0
.end method

.method static synthetic access$9800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    return v0
.end method

.method static synthetic access$9900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 279
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method private addNavigationBar()V
    .locals 3

    .prologue
    .line 1803
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addNavigationBar: about to add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_2

    .line 1820
    :cond_1
    :goto_0
    return-void

    .line 1806
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareNavigationBarView()V

    .line 1812
    :try_start_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsNavigationBarHidden:Z

    if-nez v0, :cond_1

    .line 1813
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1816
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private addStatusBarWindow()V
    .locals 3

    .prologue
    .line 3934
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 3935
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 3936
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->add(Landroid/view/View;I)V

    .line 3938
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->createBouncerContainer()V

    .line 3939
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBouncerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->addBouncer(Landroid/widget/FrameLayout;)V

    .line 3941
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarHidden:Z

    if-eqz v0, :cond_0

    .line 3942
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setVisibility(I)V

    .line 3950
    :cond_0
    return-void
.end method

.method private adjustDisableFlags(I)I
    .locals 9
    .param p1, "state"    # I

    .prologue
    const/high16 v8, 0x800000

    const/high16 v7, 0x100000

    const/high16 v6, 0x20000

    const/4 v5, 0x5

    .line 2563
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBouncerShowing:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    if-eqz v2, :cond_3

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBouncerShowing:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2569
    :cond_2
    or-int/2addr p1, v6

    .line 2570
    or-int/2addr p1, v7

    .line 2571
    const-string v2, "PhoneStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustDisableFlags:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBouncerShowing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    :cond_3
    const/4 v1, 0x0

    .line 2577
    .local v1, "isWindowPinned":Z
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v2, v5, :cond_4

    .line 2578
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2579
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    .line 2582
    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v2, v5, :cond_5

    if-eqz v1, :cond_8

    :cond_5
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-eqz v2, :cond_8

    .line 2583
    :cond_6
    const/high16 p1, 0x10000

    .line 2584
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v2, v2, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 2585
    or-int/2addr p1, v8

    .line 2587
    :cond_7
    const-string v2, "PhoneStatusBar"

    const-string v3, "adjustDisableFlags()-Cover"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    :cond_8
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->isSupportNotificationOnCover()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-eqz v2, :cond_b

    .line 2591
    :cond_9
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v2, v5, :cond_a

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-eqz v2, :cond_a

    .line 2592
    or-int/2addr p1, v6

    .line 2593
    or-int/2addr p1, v7

    .line 2596
    :cond_a
    or-int/2addr p1, v8

    .line 2597
    const-string v2, "PhoneStatusBar"

    const-string v3, "adjustDisableFlags()-Notification Cover"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    :cond_b
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInterActionControlOn:Z

    if-eqz v2, :cond_c

    .line 2602
    const/high16 v2, 0x10000

    or-int/2addr p1, v2

    .line 2603
    const-string v2, "PhoneStatusBar"

    const-string v3, "adjustDisableFlags()-mIsInterActionControl"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    :cond_c
    return p1
.end method

.method private adjustDisableFlags2(I)I
    .locals 1
    .param p1, "state2"    # I

    .prologue
    .line 7481
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInterActionControlOn:Z

    if-eqz v0, :cond_0

    .line 7482
    or-int/lit8 p1, p1, 0x1

    .line 7484
    :cond_0
    return p1
.end method

.method private areLightsOn()Z
    .locals 1

    .prologue
    .line 3698
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private awakenDreams()V
    .locals 1

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    .line 1780
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1785
    :cond_0
    :goto_0
    return-void

    .line 1781
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private barMode(III)I
    .locals 2
    .param p1, "vis"    # I
    .param p2, "transientFlag"    # I
    .param p3, "translucentFlag"    # I

    .prologue
    .line 3558
    const v0, 0x8001

    .line 3559
    .local v0, "lightsOutTransparent":I
    and-int v1, p1, p2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    and-int v1, p1, p3

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    and-int v1, p1, v0

    if-ne v1, v0, :cond_2

    const/4 v1, 0x6

    goto :goto_0

    :cond_2
    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private cancelAutohide()V
    .locals 2

    .prologue
    .line 3667
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohideSuspended:Z

    .line 3668
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3669
    return-void
.end method

.method private checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;Z)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "windowState"    # I
    .param p3, "transitions"    # Lcom/android/systemui/statusbar/phone/BarTransitions;
    .param p4, "noAnimation"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3581
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v2

    .line 3582
    .local v2, "powerSave":Z
    if-nez p4, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDeviceInteractive:Z

    if-eqz v5, :cond_3

    const/4 v5, 0x2

    if-eq p2, v5, :cond_3

    if-nez v2, :cond_3

    move v0, v3

    .line 3584
    .local v0, "anim":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v1

    .line 3585
    .local v1, "barState":I
    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    if-ne v1, v3, :cond_1

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v5, v5, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 3589
    :cond_0
    const/4 p1, 0x5

    .line 3593
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    if-eqz v5, :cond_2

    .line 3594
    const/4 v5, 0x5

    if-ne p1, v5, :cond_4

    .line 3595
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v3, v4, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconsDark(ZZ)V

    .line 3606
    :cond_2
    :goto_1
    invoke-virtual {p3, p1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 3607
    return-void

    .end local v0    # "anim":Z
    .end local v1    # "barState":I
    :cond_3
    move v0, v4

    .line 3582
    goto :goto_0

    .line 3597
    .restart local v0    # "anim":Z
    .restart local v1    # "barState":I
    :cond_4
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallBackgroundMode:I

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-eqz v5, :cond_6

    .line 3598
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v5, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconsDark(ZZ)V

    goto :goto_1

    .line 3600
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLightStatusBarMode:Z

    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconsDark(ZZ)V

    goto :goto_1
.end method

.method private checkBarModes()V
    .locals 4

    .prologue
    .line 3568
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    if-eqz v0, :cond_0

    .line 3577
    :goto_0
    return-void

    .line 3569
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoAnimationOnNextBarModeChange:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;Z)V

    .line 3571
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 3572
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoAnimationOnNextBarModeChange:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;Z)V

    .line 3576
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoAnimationOnNextBarModeChange:Z

    goto :goto_0
.end method

.method private checkUserAutohide(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 3677
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const/high16 v1, 0xc000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 3681
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userAutohide()V

    .line 3683
    :cond_0
    return-void
.end method

.method private clearAllNotifications()V
    .locals 9

    .prologue
    .line 1619
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v5

    .line 1621
    .local v5, "numChildren":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1622
    .local v7, "viewsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 1623
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v8, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1624
    .local v0, "child":Landroid/view/View;
    instance-of v8, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v8, :cond_2

    .line 1625
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1626
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    .line 1627
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v6, v0

    .line 1630
    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1631
    .local v6, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    .line 1632
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v2, :cond_2

    .line 1633
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1634
    .local v1, "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 1635
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1622
    .end local v1    # "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1641
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1642
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 1658
    :goto_2
    return-void

    .line 1646
    :cond_4
    new-instance v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addPostCollapseAction(Ljava/lang/Runnable;)V

    .line 1656
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->performDismissAllAnimations(Ljava/util/ArrayList;)V

    goto :goto_2
.end method

.method private clearCurrentMediaNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2401
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;

    .line 2402
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 2403
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 2408
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaListener:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 2410
    :cond_0
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    .line 2411
    return-void
.end method

.method private computeBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;II)I
    .locals 2
    .param p1, "oldVis"    # I
    .param p2, "newVis"    # I
    .param p3, "transitions"    # Lcom/android/systemui/statusbar/phone/BarTransitions;
    .param p4, "transientFlag"    # I
    .param p5, "translucentFlag"    # I

    .prologue
    .line 3549
    invoke-direct {p0, p1, p4, p5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->barMode(III)I

    move-result v1

    .line 3550
    .local v1, "oldMode":I
    invoke-direct {p0, p2, p4, p5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->barMode(III)I

    move-result v0

    .line 3551
    .local v0, "newMode":I
    if-ne v1, v0, :cond_0

    .line 3552
    const/4 v0, -0x1

    .line 3554
    .end local v0    # "newMode":I
    :cond_0
    return v0
.end method

.method private createBouncerContainer()V
    .locals 2

    .prologue
    .line 964
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncerContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncerContainer;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBouncerContainer:Landroid/widget/FrameLayout;

    .line 965
    return-void
.end method

.method private dismissVolumeDialog()V
    .locals 1

    .prologue
    .line 3642
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    if-eqz v0, :cond_0

    .line 3643
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    invoke-interface {v0}, Lcom/android/systemui/volume/VolumeComponent;->dismissNow()V

    .line 3645
    :cond_0
    return-void
.end method

.method private dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "id"    # I

    .prologue
    .line 4857
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v1, :cond_1

    .line 4862
    :cond_0
    :goto_0
    return-void

    .line 4858
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4859
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lcom/android/systemui/DemoMode;

    if-eqz v1, :cond_0

    .line 4860
    check-cast v0, Lcom/android/systemui/DemoMode;

    .end local v0    # "v":Landroid/view/View;
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/DemoMode;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "var"    # Ljava/lang/String;
    .param p2, "transitions"    # Lcom/android/systemui/statusbar/phone/BarTransitions;

    .prologue
    .line 3924
    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ".BarTransitions.mMode="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3925
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3926
    return-void
.end method

.method private finishBarAnimations()V
    .locals 1

    .prologue
    .line 3610
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    .line 3611
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 3612
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    .line 3614
    :cond_0
    return-void
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 3015
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 3016
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3018
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "edmUri"    # Ljava/lang/String;
    .param p3, "projectionArgs"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 7419
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 7420
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p3

    move-object v4, p4

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7421
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 7423
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7424
    invoke-interface {v6, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 7425
    const/4 v0, 0x1

    .line 7431
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7434
    :goto_0
    return v0

    .line 7427
    :cond_0
    const/4 v0, 0x0

    .line 7431
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 7429
    :catch_0
    move-exception v0

    .line 7431
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7434
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 7431
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getIsNetworkAvailable()Z
    .locals 1

    .prologue
    .line 6551
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsNetworkAvailable:Z

    return v0
.end method

.method private static getLoggingFingerprint(IZZZZZ)I
    .locals 4
    .param p0, "statusBarState"    # I
    .param p1, "keyguardShowing"    # Z
    .param p2, "keyguardOccluded"    # Z
    .param p3, "bouncerShowing"    # Z
    .param p4, "secure"    # Z
    .param p5, "currentlyInsecure"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4653
    and-int/lit16 v3, p0, 0xff

    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v3, v2

    if-eqz p2, :cond_1

    move v2, v0

    :goto_1
    shl-int/lit8 v2, v2, 0x9

    or-int/2addr v3, v2

    if-eqz p3, :cond_2

    move v2, v0

    :goto_2
    shl-int/lit8 v2, v2, 0xa

    or-int/2addr v3, v2

    if-eqz p4, :cond_3

    move v2, v0

    :goto_3
    shl-int/lit8 v2, v2, 0xb

    or-int/2addr v2, v3

    if-eqz p5, :cond_4

    :goto_4
    shl-int/lit8 v0, v0, 0xc

    or-int/2addr v0, v2

    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_4
.end method

.method private getMediaControllerPlaybackState(Landroid/media/session/MediaController;)I
    .locals 2
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 2382
    if-eqz p1, :cond_0

    .line 2383
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    .line 2384
    .local v0, "playbackState":Landroid/media/session/PlaybackState;
    if-eqz v0, :cond_0

    .line 2385
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    .line 2388
    .end local v0    # "playbackState":Landroid/media/session/PlaybackState;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 1836
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e3

    const v4, 0x840068

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1847
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1848
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1851
    :cond_0
    const-string v1, "NavigationBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1852
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1853
    return-object v0
.end method

.method private getPersonaManager()Landroid/os/PersonaManager;
    .locals 2

    .prologue
    .line 3021
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    .line 3022
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPersonaManager:Landroid/os/PersonaManager;

    .line 3024
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPersonaManager:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private handleLongPressBackRecents(Landroid/view/View;)V
    .locals 15
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v14, 0x7f0e0181

    .line 6026
    const/4 v6, 0x0

    .line 6027
    .local v6, "sendBackLongPress":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 6028
    .local v2, "activityManager":Landroid/app/IActivityManager;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    .line 6029
    .local v4, "isAccessiblityEnabled":Z
    invoke-interface {v2}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v4, :cond_4

    .line 6030
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 6033
    .local v8, "time":J
    iget-wide v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastLockToAppLongPress:J

    sub-long v10, v8, v10

    const-wide/16 v12, 0xc8

    cmp-long v7, v10, v12

    if-gez v7, :cond_3

    .line 6034
    invoke-interface {v2}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V

    .line 6036
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled1:I

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 6043
    :cond_0
    :goto_0
    iput-wide v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastLockToAppLongPress:J

    .line 6056
    .end local v8    # "time":J
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 6057
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-object v5, v0

    .line 6058
    .local v5, "keyButtonView":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    const/4 v7, 0x0

    const/16 v10, 0x80

    invoke-virtual {v5, v7, v10}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 6059
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 6064
    .end local v2    # "activityManager":Landroid/app/IActivityManager;
    .end local v4    # "isAccessiblityEnabled":Z
    .end local v5    # "keyButtonView":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    :cond_2
    :goto_2
    return-void

    .line 6037
    .restart local v2    # "activityManager":Landroid/app/IActivityManager;
    .restart local v4    # "isAccessiblityEnabled":Z
    .restart local v8    # "time":J
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v14, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-nez v7, :cond_0

    .line 6041
    const/4 v6, 0x1

    goto :goto_0

    .line 6046
    .end local v8    # "time":J
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v14, :cond_5

    .line 6047
    const/4 v6, 0x1

    goto :goto_1

    .line 6048
    :cond_5
    if-eqz v4, :cond_1

    invoke-interface {v2}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6051
    invoke-interface {v2}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V

    .line 6053
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled1:I

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6061
    .end local v2    # "activityManager":Landroid/app/IActivityManager;
    .end local v4    # "isAccessiblityEnabled":Z
    :catch_0
    move-exception v3

    .line 6062
    .local v3, "e":Landroid/os/RemoteException;
    const-string v7, "PhoneStatusBar"

    const-string v10, "Unable to reach activity manager"

    invoke-static {v7, v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private handleStartActivityDismissingKeyguard(Landroid/content/Intent;Z)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z

    .prologue
    .line 4717
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    .line 4718
    return-void
.end method

.method private instantAutohide()V
    .locals 2

    .prologue
    .line 3692
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->cancelAutohide()V

    .line 3693
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 3694
    return-void
.end method

.method private instantCollapseNotificationPanel()V
    .locals 1

    .prologue
    .line 5539
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->instantCollapse()V

    .line 5540
    return-void
.end method

.method private instantExpandNotificationsPanel()V
    .locals 1

    .prologue
    .line 5531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPanelRevealedByUser:Z

    .line 5534
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedVisible(Z)V

    .line 5535
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->instantExpand()V

    .line 5536
    return-void
.end method

.method private isPlaybackActive(I)Z
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 2392
    if-eq p1, v0, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    .line 2397
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSIMandOperatorMatched()Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 6555
    invoke-static {v6}, Lcom/android/systemui/statusbar/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v4

    .line 6556
    .local v4, "simNumeric":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/systemui/statusbar/DeviceState;->getNetworkCurrentLocation(I)Ljava/lang/String;

    move-result-object v0

    .line 6558
    .local v0, "currentLocation":Ljava/lang/String;
    const-string v7, "ORANGE"

    sget-object v8, Lcom/android/systemui/statusbar/Feature;->mStatusBarIconOpBranding:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 6559
    const-string v7, "20801"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "20802"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 6560
    :cond_0
    invoke-static {v6}, Lcom/android/systemui/statusbar/DeviceState;->getNetworkOperatorNumeric(I)Ljava/lang/String;

    move-result-object v2

    .line 6561
    .local v2, "plmnNumeric":Ljava/lang/String;
    const-string v7, "PhoneStatusBar"

    const-string v8, "isSIMandOperatorMatched SIM is matched for Orange!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6562
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6

    .line 6563
    invoke-virtual {v4, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 6564
    .local v3, "simMCC":Ljava/lang/String;
    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 6565
    .local v1, "plmnMCC":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6587
    .end local v1    # "plmnMCC":Ljava/lang/String;
    .end local v2    # "plmnNumeric":Ljava/lang/String;
    .end local v3    # "simMCC":Ljava/lang/String;
    :cond_1
    :goto_0
    return v5

    .restart local v1    # "plmnMCC":Ljava/lang/String;
    .restart local v2    # "plmnNumeric":Ljava/lang/String;
    .restart local v3    # "simMCC":Ljava/lang/String;
    :cond_2
    move v5, v6

    .line 6568
    goto :goto_0

    .line 6573
    .end local v1    # "plmnMCC":Ljava/lang/String;
    .end local v2    # "plmnNumeric":Ljava/lang/String;
    .end local v3    # "simMCC":Ljava/lang/String;
    :cond_3
    if-eqz v4, :cond_4

    if-nez v0, :cond_5

    :cond_4
    move v5, v6

    .line 6574
    goto :goto_0

    .line 6577
    :cond_5
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperatorSIMNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 6578
    const-string v7, "PhoneStatusBar"

    const-string v8, "isSIMandOperatorMatched SIM is matched!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6579
    const-string v7, "domestic"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    move v5, v6

    .line 6582
    goto :goto_0

    .line 6586
    :cond_6
    const-string v5, "PhoneStatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSIMandOperatorMatched  currentPlmn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 6587
    goto :goto_0
.end method

.method public static isTopLevelChild(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p0, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 2234
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return v0
.end method

.method private knox_Tap(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 7272
    const/4 v1, 0x0

    .line 7273
    .local v1, "tapped":Z
    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoubleTapCount:I

    if-nez v2, :cond_2

    .line 7274
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 7275
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-eqz v2, :cond_0

    .line 7276
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v2}, Landroid/app/enterprise/knoxcustom/SystemManager;->getScreenOffOnStatusBarDoubleTapState()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomDoubleTapState:Z

    .line 7277
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomDoubleTapState:Z

    if-eqz v2, :cond_0

    .line 7278
    const/4 v1, 0x1

    .line 7291
    :cond_0
    :goto_0
    if-eqz v1, :cond_6

    .line 7292
    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoubleTapCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoubleTapCount:I

    .line 7293
    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoubleTapCount:I

    if-ne v2, v4, :cond_4

    .line 7294
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7295
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7306
    :cond_1
    :goto_1
    return-void

    .line 7283
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 7285
    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomDoubleTapState:Z

    if-eqz v2, :cond_0

    .line 7286
    const/4 v1, 0x1

    .line 7287
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "PhoneStatusBar"

    const-string v3, "knox_Tap: ACTION_UP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7296
    :cond_4
    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoubleTapCount:I

    if-lt v2, v5, :cond_1

    .line 7297
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "PhoneStatusBar"

    const-string v3, "knox_Tap: going to sleep"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7298
    :cond_5
    const/4 v2, 0x0

    sput v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoubleTapCount:I

    .line 7299
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7300
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 7301
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_1

    .line 7304
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_6
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "PhoneStatusBar"

    const-string v3, "knox_Tap: not tapped"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4596
    .local p1, "newlyVisible":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/statusbar/NotificationVisibility;>;"
    .local p2, "noLongerVisible":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/statusbar/NotificationVisibility;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4618
    :cond_0
    :goto_0
    return-void

    .line 4599
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/internal/statusbar/NotificationVisibility;

    invoke-interface {p1, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 4601
    .local v2, "newlyVisibleAr":[Lcom/android/internal/statusbar/NotificationVisibility;
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/internal/statusbar/NotificationVisibility;

    invoke-interface {p2, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 4604
    .local v4, "noLongerVisibleAr":[Lcom/android/internal/statusbar/NotificationVisibility;
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v5, v2, v4}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4609
    :goto_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 4610
    .local v0, "N":I
    if-lez v0, :cond_0

    .line 4611
    new-array v3, v0, [Ljava/lang/String;

    .line 4612
    .local v3, "newlyVisibleKeyAr":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 4613
    aget-object v5, v2, v1

    iget-object v5, v5, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    aput-object v5, v3, v1

    .line 4612
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4616
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationsShown([Ljava/lang/String;)V

    goto :goto_0

    .line 4605
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "newlyVisibleKeyAr":[Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private logStateToEventlog()V
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 4623
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    .line 4624
    .local v1, "isShowing":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v2

    .line 4625
    .local v2, "isOccluded":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v3

    .line 4626
    .local v3, "isBouncerShowing":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v4

    .line 4627
    .local v4, "isSecure":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v5

    .line 4628
    .local v5, "canSkipBouncer":Z
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getLoggingFingerprint(IZZZZZ)I

    move-result v12

    .line 4634
    .local v12, "stateFingerprint":I
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastLoggedStateFingerprint:I

    if-eq v12, v0, :cond_0

    .line 4635
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eqz v1, :cond_1

    move v7, v11

    :goto_0
    if-eqz v2, :cond_2

    move v8, v11

    :goto_1
    if-eqz v3, :cond_3

    move v9, v11

    :goto_2
    if-eqz v4, :cond_4

    move v10, v11

    :goto_3
    if-eqz v5, :cond_5

    :goto_4
    invoke-static/range {v6 .. v11}, Lcom/android/systemui/EventLogTags;->writeSysuiStatusBarState(IIIIII)V

    .line 4641
    iput v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastLoggedStateFingerprint:I

    .line 4643
    :cond_0
    return-void

    :cond_1
    move v7, v13

    .line 4635
    goto :goto_0

    :cond_2
    move v8, v13

    goto :goto_1

    :cond_3
    move v9, v13

    goto :goto_2

    :cond_4
    move v10, v13

    goto :goto_3

    :cond_5
    move v11, v13

    goto :goto_4
.end method

.method private notifyNavigationBarScreenOn(Z)V
    .locals 1
    .param p1, "screenOn"    # Z

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_0

    .line 1833
    :goto_0
    return-void

    .line 1832
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyScreenOn(Z)V

    goto :goto_0
.end method

.method private notifyUiVisibilityChanged(I)V
    .locals 1
    .param p1, "vis"    # I

    .prologue
    .line 3712
    :try_start_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastDispatchedSystemUiVisibility:I

    if-eq v0, p1, :cond_0

    .line 3713
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->statusBarVisibilityChanged(I)V

    .line 3714
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastDispatchedSystemUiVisibility:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3718
    :cond_0
    :goto_0
    return-void

    .line 3716
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onLaunchTransitionFadingEnded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4908
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 4909
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setScaleX(F)V

    .line 4910
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setScaleY(F)V

    .line 4911
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    .line 4912
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->releaseGestureWakeLock()V

    .line 4913
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->runLaunchTransitionEndRunnable()V

    .line 4915
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    .line 4916
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->forceHideScrims(Z)V

    .line 4917
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateMediaMetaData(Z)V

    .line 4918
    return-void
.end method

.method private onLaunchTransitionTimeout()V
    .locals 2

    .prologue
    .line 5101
    const-string v0, "PhoneStatusBar"

    const-string v1, "Launch transition: Timeout!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    .line 5103
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->releaseGestureWakeLock()V

    .line 5104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetViews()V

    .line 5110
    return-void
.end method

.method private packageHasVisibilityOverride(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performDismissAllAnimations(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1662
    .local p1, "hideAnimatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1671
    .local v6, "animationFinishAction":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDismissAllInProgress(Z)V

    .line 1675
    const/16 v10, 0xa

    .line 1676
    .local v10, "rowDelayDecrement":I
    const/16 v7, 0x8c

    .line 1677
    .local v7, "currentDelay":I
    const/16 v3, 0xb4

    .line 1678
    .local v3, "totalDelay":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1679
    .local v9, "numItems":I
    add-int/lit8 v8, v9, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 1680
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1681
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x0

    .line 1682
    .local v2, "endRunnable":Ljava/lang/Runnable;
    if-nez v8, :cond_0

    .line 1683
    move-object v2, v6

    .line 1685
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const-wide/16 v4, 0x104

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->dismissViewAnimated(Landroid/view/View;Ljava/lang/Runnable;IJ)V

    .line 1686
    const/16 v0, 0x32

    sub-int v4, v7, v10

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1687
    add-int/2addr v3, v7

    .line 1679
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 1689
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "endRunnable":Ljava/lang/Runnable;
    :cond_1
    return-void
.end method

.method private postQSEditButtonClickOnKeyguardCancel()V
    .locals 3

    .prologue
    const/16 v2, 0x3ed

    const/16 v1, 0x3ec

    .line 4390
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4391
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 4393
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4394
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 4396
    :cond_1
    return-void
.end method

.method private prepareNavigationBarView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1788
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 1790
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1791
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1792
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 1793
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLongPressBackRecentsListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1794
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 1795
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLongPressBackRecentsListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1796
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeActionListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1797
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLongPressHomeListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1798
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->onConfigurationChanged()V

    .line 1799
    return-void
.end method

.method private recycleAllVisibilityObjects(Landroid/util/ArraySet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 874
    .local p1, "array":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/internal/statusbar/NotificationVisibility;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 875
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 876
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/NotificationVisibility;

    invoke-virtual {v2}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 875
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 878
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 879
    return-void
.end method

.method private releaseGestureWakeLock()V
    .locals 1

    .prologue
    .line 5177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5180
    :cond_0
    return-void
.end method

.method private repositionNavigationBar()V
    .locals 3

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1828
    :cond_0
    :goto_0
    return-void

    .line 1825
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareNavigationBarView()V

    .line 1827
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private resetUserExpandedStates()V
    .locals 5

    .prologue
    .line 4253
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 4254
    .local v0, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4255
    .local v3, "notificationCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 4256
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 4257
    .local v1, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    .line 4258
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetUserExpansion()V

    .line 4255
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4261
    .end local v1    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    return-void
.end method

.method private resetUserSetupObserver()V
    .locals 5

    .prologue
    .line 4488
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4489
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4490
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4493
    return-void
.end method

.method private resumeSuspendedAutohide()V
    .locals 4

    .prologue
    .line 3648
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohideSuspended:Z

    if-eqz v0, :cond_0

    .line 3654
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->instantAutohide()V

    .line 3656
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3658
    :cond_0
    return-void
.end method

.method private runLaunchTransitionEndRunnable()V
    .locals 2

    .prologue
    .line 5113
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 5114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 5118
    .local v0, "r":Ljava/lang/Runnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 5119
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 5121
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method private runPostCollapseRunnables()V
    .locals 4

    .prologue
    .line 3195
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3196
    .local v0, "clonedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3197
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3198
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3199
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 3198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3202
    :cond_0
    return-void
.end method

.method private sameSessions(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z
    .locals 1
    .param p1, "a"    # Landroid/media/session/MediaController;
    .param p2, "b"    # Landroid/media/session/MediaController;

    .prologue
    .line 2414
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    .line 2416
    :goto_0
    return v0

    .line 2415
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 2416
    :cond_1
    invoke-virtual {p1, p2}, Landroid/media/session/MediaController;->controlsSameSession(Landroid/media/session/MediaController;)Z

    move-result v0

    goto :goto_0
.end method

.method private scheduleAutohide()V
    .locals 4

    .prologue
    .line 3672
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->cancelAutohide()V

    .line 3673
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3674
    return-void
.end method

.method private sendExpansionState(Z)V
    .locals 3
    .param p1, "expandState"    # Z

    .prologue
    .line 7489
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.systemui.statusbar.NOTIFICATION_EXPAND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7491
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "expandState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7492
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 7493
    return-void
.end method

.method private sendLogs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 6967
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6968
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.android.systemui.statusbar.policy.quicksetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6969
    const-string v2, "CLICKNOTIFICATION"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6970
    const-string v2, "feature"

    const-string v3, "QP08"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6971
    const-string v2, "extra"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6974
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 6975
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6976
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6977
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6978
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6979
    return-void
.end method

.method private setControllerUsers()V
    .locals 2

    .prologue
    .line 4479
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v0, :cond_0

    .line 4480
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setUserId(I)V

    .line 4482
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    if-eqz v0, :cond_1

    .line 4483
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->onUserSwitched(I)V

    .line 4485
    :cond_1
    return-void
.end method

.method public static setIsNetworkAvailable(Z)V
    .locals 3
    .param p0, "value"    # Z

    .prologue
    .line 6546
    sput-boolean p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsNetworkAvailable:Z

    .line 6547
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsNetworkAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsNetworkAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6548
    return-void
.end method

.method private setNavigationIconHints(I)V
    .locals 1
    .param p1, "hints"    # I

    .prologue
    .line 3381
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    if-ne p1, v0, :cond_0

    .line 3389
    :goto_0
    return-void

    .line 3383
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    .line 3385
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 3386
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(I)V

    .line 3388
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    goto :goto_0
.end method

.method private setStatusBarText()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 7341
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomStatusBarText:Landroid/widget/TextView;

    if-nez v3, :cond_0

    .line 7342
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v3, :cond_0

    .line 7343
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e02ec

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomStatusBarText:Landroid/widget/TextView;

    .line 7346
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomStatusBarText:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-nez v3, :cond_2

    .line 7376
    :cond_1
    :goto_0
    return-void

    .line 7349
    :cond_2
    const/4 v2, 0x0

    .line 7350
    .local v2, "statusBarTextString":Ljava/lang/String;
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v3, v5, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/SystemManager;->getStatusBarText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 7352
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomStatusBarText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7353
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomStatusBarText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v4}, Landroid/app/enterprise/knoxcustom/SystemManager;->getStatusBarTextStyle()I

    move-result v4

    invoke-virtual {v3, v7, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 7354
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomStatusBarText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v4}, Landroid/app/enterprise/knoxcustom/SystemManager;->getStatusBarTextSize()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7355
    const/16 v1, 0x6c

    .line 7356
    .local v1, "scrollWidth":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/SystemManager;->getStatusBarTextScrollWidth()I

    move-result v3

    if-lez v3, :cond_3

    .line 7357
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/SystemManager;->getStatusBarTextScrollWidth()I

    move-result v1

    .line 7358
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomStatusBarText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 7359
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomStatusBarText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 7360
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomStatusBarText:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 7361
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomStatusBarText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 7362
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomStatusBarText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 7368
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomStatusBarText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 7369
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    int-to-float v3, v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7370
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomStatusBarText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7371
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomStatusBarText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 7364
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomStatusBarText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 7365
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomStatusBarText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 7366
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomStatusBarText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    .line 7373
    .end local v1    # "scrollWidth":I
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomStatusBarText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public static shouldDisplayOperatorIcon()Z
    .locals 1

    .prologue
    .line 6591
    invoke-static {}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isSIMandOperatorMatched()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldInterruptInMirrorLink()Z
    .locals 4

    .prologue
    .line 1875
    const/4 v0, 0x1

    .line 1876
    .local v0, "returnValue":Z
    const-string v1, "1"

    const-string v2, "net.mirrorlink.on"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1877
    const-string v1, "PhoneStatusBar"

    const-string v2, "shouldInterruptInMirrorLink:ON"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    const/4 v0, 0x0

    .line 1880
    :cond_0
    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldInterruptInMirrorLink:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    return v0
.end method

.method private showBouncer()V
    .locals 2

    .prologue
    .line 5523
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5524
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    .line 5525
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismiss()V

    .line 5527
    :cond_1
    return-void
.end method

.method private startKeyguard()V
    .locals 10

    .prologue
    .line 1700
    const-class v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 1701
    .local v4, "keyguardViewMediator":Lcom/android/systemui/keyguard/KeyguardViewMediator;
    new-instance v0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 1704
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBouncerContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    move-object v5, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->registerStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 1707
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 1709
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 1710
    invoke-virtual {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 1711
    return-void
.end method

.method private startNotificationLogging()V
    .locals 2

    .prologue
    .line 4583
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setChildLocationsChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;)V

    .line 4590
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;->onChildLocationsChanged(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 4591
    return-void
.end method

.method private stopNotificationLogging()V
    .locals 2

    .prologue
    .line 4573
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4574
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 4576
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->recycleAllVisibilityObjects(Landroid/util/ArraySet;)V

    .line 4578
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVisibilityReporter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4579
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setChildLocationsChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;)V

    .line 4580
    return-void
.end method

.method private suspendAutohide()V
    .locals 2

    .prologue
    .line 3661
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3662
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3663
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const/high16 v1, 0xc000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohideSuspended:Z

    .line 3664
    return-void

    .line 3663
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateClearAll()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2192
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->hasActiveClearableNotifications()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2195
    .local v0, "showDismissView":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateDismissView(Z)V

    .line 2196
    return-void

    .line 2192
    .end local v0    # "showDismissView":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCoverWindow()V
    .locals 2

    .prologue
    .line 6861
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$59;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$59;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 6959
    return-void
.end method

.method private updateDozing()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 6205
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozingRequested:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    .line 6208
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDozingState()V

    .line 6209
    return-void

    .line 6205
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDozingState()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5389
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 5390
    .local v0, "animate":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDozing(ZZ)V

    .line 5391
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWakeUpTouchLocation:Landroid/graphics/PointF;

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDark(ZZLandroid/graphics/PointF;)V

    .line 5392
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozing(Z)V

    .line 5396
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    :goto_1
    invoke-virtual {v3, v1, v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setDozing(ZZ)V

    .line 5399
    return-void

    .end local v0    # "animate":Z
    :cond_0
    move v0, v2

    .line 5389
    goto :goto_0

    .restart local v0    # "animate":Z
    :cond_1
    move v1, v2

    .line 5396
    goto :goto_1
.end method

.method private updateEmptyShadeView()V
    .locals 2

    .prologue
    .line 2206
    const/4 v0, 0x0

    .line 2209
    .local v0, "showEmptyShade":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setShadeEmpty(Z)V

    .line 2210
    return-void
.end method

.method private updateKeyguardState(ZZ)V
    .locals 10
    .param p1, "goingToFullShade"    # Z
    .param p2, "fromShadeLocked"    # Z

    .prologue
    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5250
    const-string v3, "PhoneStatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateKeyguardState "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPreviousState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5251
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPreviousState:I

    .line 5254
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 5255
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->sendExpansionState(Z)V

    .line 5257
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v3

    if-nez v3, :cond_8

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 5258
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postQSEditButtonClickOnKeyguardCancel()V

    .line 5259
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQsEditPanel(Z)V

    .line 5261
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetViews()V

    .line 5267
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v3, v4, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->setKeyguard(ZZ)V

    .line 5269
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateLockscreenNotificationSetting()V

    .line 5272
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/enterprise/lso/LockscreenOverlay;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/lso/LockscreenOverlay;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/lso/LockscreenOverlay;->isConfigured()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 5273
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_a

    .line 5274
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    if-nez v3, :cond_9

    .line 5275
    new-instance v3, Lcom/sec/widget/lso/LockscreenOverlayView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/sec/widget/lso/LockscreenOverlayView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    .line 5277
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-virtual {v3, v6, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 5282
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5301
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->removePendingHideExpandedRunnables()V

    .line 5303
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->deleteZDistanceOfNotification(Z)V

    .line 5324
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 5325
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->setKeyguardShowing(Z)V

    .line 5326
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->setKeyguardShowing(Z)V

    .line 5328
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSupportTwoPhone:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 5329
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setTwoPhoneModeIconVisibility(Z)V

    .line 5351
    :cond_2
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 5352
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->setLockShadeShowing(Z)V

    .line 5357
    :goto_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickConnectSoundPathView:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->dismissDialog()V

    .line 5358
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    invoke-virtual {v3, v6, v7, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBarState(IZZ)V

    .line 5359
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDozingState()V

    .line 5360
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updatePublicMode()V

    .line 5361
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateStackScrollerState(Z)V

    .line 5362
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotifications()V

    .line 5363
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    .line 5364
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateMediaMetaData(Z)V

    .line 5366
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v3, :cond_3

    .line 5367
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v7

    invoke-virtual {v3, v6, v7}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->notifyKeyguardState(ZZ)V

    .line 5372
    :cond_3
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSwipeBlockNotification:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eqz v3, :cond_4

    .line 5373
    invoke-virtual {p0, v9, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->snapContentViews(Landroid/view/View;Z)V

    .line 5379
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/SystemManager;->getStatusBarNotificationsState()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5381
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->disableExpand(Z)V

    .line 5382
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxTouchDisabledPrevious:Z

    .line 5386
    :cond_7
    return-void

    :cond_8
    move v3, v5

    .line 5257
    goto/16 :goto_0

    .line 5279
    :cond_9
    :try_start_1
    const-string v3, "PhoneStatusBar"

    const-string v6, "mMdmOverlayView is not null!!"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5280
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 5294
    :catch_0
    move-exception v1

    .line 5297
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 5298
    const-string v3, "PhoneStatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Lockscren Overlay creation fails: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 5284
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a
    :try_start_2
    const-string v3, "PhoneStatusBar"

    const-string v6, "mMDMOverlayContainer is null"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 5286
    :cond_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    .line 5287
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    if-eqz v3, :cond_c

    .line 5288
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 5289
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    .line 5291
    :cond_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 5305
    :cond_d
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 5306
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->sendExpansionState(Z)V

    .line 5310
    :goto_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 5311
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-nez p1, :cond_e

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v7, 0x2

    if-eq v3, v7, :cond_e

    if-eqz p2, :cond_12

    :cond_e
    move v3, v4

    :goto_7
    invoke-virtual {v6, v5, v3}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->setKeyguard(ZZ)V

    .line 5314
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_10

    .line 5315
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    if-eqz v3, :cond_f

    .line 5316
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 5317
    iput-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    .line 5319
    :cond_f
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5322
    :cond_10
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->deleteZDistanceOfNotification(Z)V

    goto/16 :goto_3

    .line 5308
    :cond_11
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->sendExpansionState(Z)V

    goto :goto_6

    :cond_12
    move v3, v5

    .line 5311
    goto :goto_7

    .line 5333
    :cond_13
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/ScrimController;->setKeyguardShowing(Z)V

    .line 5334
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->setKeyguardShowing(Z)V

    .line 5336
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSupportTwoPhone:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 5337
    const-string v3, "persist.sys.show_multiuserui"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 5338
    .local v2, "isTwoPhoneMode":Z
    if-eqz v2, :cond_2

    .line 5339
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 5340
    .local v0, "currentId":I
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTwoPhoneCallEnabled:Z

    if-nez v3, :cond_14

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTwoPhoneMsgEnabled:Z

    if-eqz v3, :cond_15

    :cond_14
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTwoPhoneRegistered:Z

    if-nez v3, :cond_16

    :cond_15
    if-nez v0, :cond_16

    .line 5341
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setTwoPhoneModeIconVisibility(Z)V

    goto/16 :goto_4

    .line 5343
    :cond_16
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setTwoPhoneModeIconVisibility(Z)V

    goto/16 :goto_4

    .line 5354
    .end local v0    # "currentId":I
    .end local v2    # "isTwoPhoneMode":Z
    :cond_17
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/ScrimController;->setLockShadeShowing(Z)V

    goto/16 :goto_5
.end method

.method private updateNotificationShade()V
    .locals 25

    .prologue
    .line 1990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    .line 2119
    :goto_0
    return-void

    .line 1993
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCollapsing()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1994
    new-instance v23, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addPostCollapseAction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2007
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v3

    .line 2008
    .local v3, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2009
    .local v20, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2010
    .local v2, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v2, :cond_11

    .line 2011
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2012
    .local v5, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/app/Notification;->visibility:I

    move/from16 v22, v0

    .line 2015
    .local v22, "vis":I
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v23

    if-nez v23, :cond_7

    const/4 v6, 0x1

    .line 2017
    .local v6, "hideSensitive":Z
    :goto_2
    if-nez v22, :cond_8

    const/4 v14, 0x1

    .line 2018
    .local v14, "sensitiveNote":Z
    :goto_3
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->packageHasVisibilityOverride(Ljava/lang/String;)Z

    move-result v15

    .line 2019
    .local v15, "sensitivePackage":Z
    if-eqz v14, :cond_2

    if-nez v6, :cond_3

    :cond_2
    if-eqz v15, :cond_9

    :cond_3
    const/4 v13, 0x1

    .line 2020
    .local v13, "sensitive":Z
    :goto_4
    if-eqz v13, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isLockscreenPublicMode()Z

    move-result v23

    if-eqz v23, :cond_a

    const/16 v16, 0x1

    .line 2024
    .local v16, "showingPublic":Z
    :goto_5
    iget v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x8

    if-eqz v23, :cond_b

    const/4 v12, 0x1

    .line 2025
    .local v12, "sanitize":Z
    :goto_6
    if-eqz v12, :cond_d

    .line 2026
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSensitive(Z)V

    .line 2029
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isLockscreenPublicMode()Z

    move-result v23

    if-nez v23, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isLockscreenKnoxMode()Z

    move-result v23

    if-eqz v23, :cond_c

    :cond_4
    if-eqz v6, :cond_c

    const/16 v23, 0x0

    :goto_7
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->enableKnoxView(Z)V

    .line 2037
    :goto_8
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isLockscreenPublicMode()Z

    move-result v23

    if-nez v23, :cond_e

    const/16 v23, 0x1

    :goto_9
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHideUnlocked(Z)V

    .line 2040
    iget-boolean v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    iget-boolean v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 2043
    if-eqz v16, :cond_f

    .line 2044
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    .line 2049
    :cond_5
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v23, v0

    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 2050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v23, v0

    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v17

    .line 2052
    .local v17, "summary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTmpChildOrderMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2054
    .local v10, "orderedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    if-nez v10, :cond_6

    .line 2055
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "orderedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2056
    .restart local v10    # "orderedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTmpChildOrderMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2058
    :cond_6
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2010
    .end local v10    # "orderedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v17    # "summary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 2015
    .end local v6    # "hideSensitive":Z
    .end local v12    # "sanitize":Z
    .end local v13    # "sensitive":Z
    .end local v14    # "sensitiveNote":Z
    .end local v15    # "sensitivePackage":Z
    .end local v16    # "showingPublic":Z
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 2017
    .restart local v6    # "hideSensitive":Z
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 2019
    .restart local v14    # "sensitiveNote":Z
    .restart local v15    # "sensitivePackage":Z
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 2020
    .restart local v13    # "sensitive":Z
    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 2024
    .restart local v16    # "showingPublic":Z
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 2029
    .restart local v12    # "sanitize":Z
    :cond_c
    const/16 v23, 0x1

    goto/16 :goto_7

    .line 2033
    :cond_d
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSensitive(Z)V

    .line 2034
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->enableKnoxView(Z)V

    goto/16 :goto_8

    .line 2037
    :cond_e
    const/16 v23, 0x0

    goto/16 :goto_9

    .line 2046
    :cond_f
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    goto/16 :goto_a

    .line 2060
    :cond_10
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 2065
    .end local v5    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v6    # "hideSensitive":Z
    .end local v12    # "sanitize":Z
    .end local v13    # "sensitive":Z
    .end local v14    # "sensitiveNote":Z
    .end local v15    # "sensitivePackage":Z
    .end local v16    # "showingPublic":Z
    .end local v22    # "vis":I
    :cond_11
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 2066
    .local v19, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v7, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v23

    move/from16 v0, v23

    if-ge v7, v0, :cond_13

    .line 2067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2068
    .local v4, "child":Landroid/view/View;
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_12

    instance-of v0, v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v23, v0

    if-eqz v23, :cond_12

    .line 2069
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2066
    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 2073
    .end local v4    # "child":Landroid/view/View;
    :cond_13
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 2074
    .local v11, "remove":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    goto :goto_d

    .line 2076
    .end local v11    # "remove":Landroid/view/View;
    :cond_14
    const/4 v7, 0x0

    :goto_e
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v7, v0, :cond_16

    .line 2077
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/View;

    .line 2078
    .local v21, "v":Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    if-nez v23, :cond_15

    .line 2079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;)V

    .line 2076
    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 2086
    .end local v21    # "v":Landroid/view/View;
    :cond_16
    const/4 v9, 0x0

    .line 2087
    .local v9, "j":I
    const/4 v7, 0x0

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v23

    move/from16 v0, v23

    if-ge v7, v0, :cond_19

    .line 2088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2089
    .restart local v4    # "child":Landroid/view/View;
    instance-of v0, v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v23, v0

    if-nez v23, :cond_17

    .line 2087
    :goto_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 2094
    :cond_17
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2095
    .local v18, "targetChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move-object/from16 v0, v18

    if-eq v4, v0, :cond_18

    .line 2098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 2100
    :cond_18
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 2105
    .end local v4    # "child":Landroid/view/View;
    .end local v18    # "targetChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationShadeForChildren()V

    .line 2108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTmpChildOrderMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->clear()V

    .line 2110
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateRowStates()V

    .line 2114
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateClearAll()V

    .line 2115
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateEmptyShadeView()V

    .line 2117
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQsExpansionEnabled()V

    .line 2118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShadeUpdates:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->check()V

    goto/16 :goto_0
.end method

.method private updateNotificationShadeForChildren()V
    .locals 13

    .prologue
    .line 2135
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2136
    .local v10, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v6, 0x0

    .line 2137
    .local v6, "orderChanged":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v12

    if-ge v4, v12, :cond_8

    .line 2138
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v12, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 2139
    .local v11, "view":Landroid/view/View;
    instance-of v12, v11, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v12, :cond_0

    .line 2137
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object v8, v11

    .line 2144
    check-cast v8, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2145
    .local v8, "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v3

    .line 2146
    .local v3, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2149
    .local v7, "orderedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    if-eqz v3, :cond_4

    .line 2150
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 2151
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2152
    .local v1, "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v7, :cond_2

    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 2153
    :cond_2
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2156
    .end local v1    # "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2157
    .local v9, "remove":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->removeChildNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 2158
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v12, v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyGroupChildRemoved(Landroid/view/View;)V

    goto :goto_3

    .line 2163
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "remove":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_4
    const/4 v0, 0x0

    .local v0, "childIndex":I
    :goto_4
    if-eqz v7, :cond_7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v0, v12, :cond_7

    .line 2165
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2166
    .local v2, "childView":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v3, :cond_5

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 2167
    :cond_5
    invoke-virtual {v8, v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->addChildNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)V

    .line 2168
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v12, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyGroupChildAdded(Landroid/view/View;)V

    .line 2164
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2173
    .end local v2    # "childView":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_7
    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->applyChildOrder(Ljava/util/List;)Z

    move-result v12

    or-int/2addr v6, v12

    goto :goto_1

    .line 2175
    .end local v0    # "childIndex":I
    .end local v3    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v7    # "orderedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v8    # "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v11    # "view":Landroid/view/View;
    :cond_8
    if-eqz v6, :cond_9

    .line 2176
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateChildOrderChangedEvent()V

    .line 2178
    :cond_9
    return-void
.end method

.method private updatePublicMode()V
    .locals 1

    .prologue
    .line 5236
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setLockscreenPublicMode(Z)V

    .line 5246
    return-void

    .line 5236
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateQsExpansionEnabled()V
    .locals 2

    .prologue
    .line 2127
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isSimpleUserSwitcher()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled2:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ONLY_CORE_APPS:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionEnabled(Z)V

    .line 2132
    return-void

    .line 2127
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private userAutohide()V
    .locals 4

    .prologue
    .line 3686
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->cancelAutohide()V

    .line 3687
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3688
    return-void
.end method

.method private vibrateForCameraGesture()V
    .locals 0

    .prologue
    .line 6004
    return-void
.end method

.method public static viewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 3752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 1
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addSystemIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 1858
    return-void
.end method

.method public addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 6
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;
    .param p3, "oldEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v1, 0x1

    .line 1888
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addNotification key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    .line 1891
    .local v2, "shadeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v2, :cond_2

    .line 1941
    :cond_1
    :goto_0
    return-void

    .line 1900
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    if-eqz v3, :cond_7

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldInterrupt(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldInterruptInMirrorLink()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCovered()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isWindowPinned()Z

    move-result v3

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v3, :cond_7

    .line 1909
    .local v1, "isHeadsUped":Z
    :goto_1
    if-eqz v1, :cond_4

    .line 1911
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 1912
    .local v0, "interruptionCandidate":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isPersona(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isSkipShowingNotificationForHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1917
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 1919
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationShown(Landroid/service/notification/StatusBarNotification;)V

    .line 1922
    .end local v0    # "interruptionCandidate":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_4
    if-nez v1, :cond_6

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_6

    .line 1925
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->awakenDreams()V

    .line 1928
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "PhoneStatusBar"

    const-string v4, "Notification has fullScreenIntent; sending fullScreenIntent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    :cond_5
    const v3, 0x8ca2

    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1932
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V

    .line 1933
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->notifyFullScreenIntentLaunched()V

    .line 1934
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v4, "note_fullscreen"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1938
    :cond_6
    :goto_2
    invoke-virtual {p0, v2, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 1940
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    goto :goto_0

    .line 1900
    .end local v1    # "isHeadsUped":Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    .line 1935
    .restart local v1    # "isHeadsUped":Z
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public addPostCollapseAction(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 4925
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4926
    return-void
.end method

.method public animateCollapsePanels()V
    .locals 1

    .prologue
    .line 3094
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 3095
    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 3109
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZZF)V

    .line 3111
    return-void
.end method

.method public animateCollapsePanels(IZ)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "force"    # Z

    .prologue
    .line 3114
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZZF)V

    .line 3115
    return-void
.end method

.method public animateCollapsePanels(IZZ)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "force"    # Z
    .param p3, "delayed"    # Z

    .prologue
    .line 3118
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZZF)V

    .line 3119
    return-void
.end method

.method public animateCollapsePanels(IZZF)V
    .locals 7
    .param p1, "flags"    # I
    .param p2, "force"    # Z
    .param p3, "delayed"    # Z
    .param p4, "speedUpFactor"    # F

    .prologue
    const/16 v6, 0xa

    const/16 v5, 0x3fc

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3123
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateCollapsePanels, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", QSexpanded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", QSdetailsShowing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    if-nez p2, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3128
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->runPostCollapseRunnables()V

    .line 3130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsUiExpanded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3131
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 3132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToKeyguard()V

    .line 3192
    :cond_1
    :goto_0
    return-void

    .line 3133
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v0, v6, :cond_3

    .line 3134
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToCover()V

    goto :goto_0

    .line 3135
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v0, v4, :cond_1

    .line 3136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQsDetail()V

    goto :goto_0

    .line 3139
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateCloseQs()V

    goto :goto_0

    .line 3142
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsClearAllClicked:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3143
    const-string v0, "PhoneStatusBar"

    const-string v1, "Clear button is cliked on shade_locked state.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3144
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsClearAllClicked:Z

    .line 3145
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v0, v6, :cond_6

    .line 3146
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToCover()V

    goto :goto_0

    .line 3148
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToKeyguard()V

    goto :goto_0

    .line 3154
    :cond_7
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateCollapse(): mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_8

    .line 3160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 3162
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 3166
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v0, :cond_1

    .line 3167
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickConnectSoundPathView:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->dismissDialog()V

    .line 3169
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isQsEditPanelOpened()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQsEditPanel(Z)V

    .line 3174
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarFocusable(Z)V

    .line 3176
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cancelExpandHelper()V

    .line 3178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTracking()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-eqz v0, :cond_d

    .line 3180
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->abortMotionEvent()V

    .line 3184
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->disableExpand(Z)V

    .line 3186
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    if-eq v0, v4, :cond_1

    .line 3187
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v3, p3, p4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(ZZF)V

    goto/16 :goto_0

    .line 3189
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v4, p3, p4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(ZZF)V

    goto/16 :goto_0
.end method

.method public animateCollapseQuickSettings()V
    .locals 4

    .prologue
    .line 3250
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v0, :cond_0

    .line 3251
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(ZZF)V

    .line 3253
    :cond_0
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 3

    .prologue
    .line 3208
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateExpand: mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3210
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarHidden:Z

    if-eqz v0, :cond_1

    .line 3232
    :cond_0
    :goto_0
    return-void

    .line 3215
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3220
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isBouncerShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3221
    const-string v0, "PhoneStatusBar"

    const-string v1, "animateExpand can\'t be executed by BouncerShowing.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3227
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->outerExpandRequest(Z)V

    .line 3229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand()V

    goto :goto_0
.end method

.method public animateExpandSettingsPanel()V
    .locals 3

    .prologue
    .line 3236
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateExpand: mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3247
    :cond_0
    :goto_0
    return-void

    .line 3242
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    if-eqz v0, :cond_0

    .line 3244
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expandWithQs()V

    goto :goto_0
.end method

.method public appTransitionCancelled()V
    .locals 1

    .prologue
    .line 6144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->appTransitionCancelled()V

    .line 6145
    return-void
.end method

.method public appTransitionPending()V
    .locals 1

    .prologue
    .line 6137
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    if-nez v0, :cond_0

    .line 6138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->appTransitionPending()V

    .line 6140
    :cond_0
    return-void
.end method

.method public appTransitionStarting(JJ)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "duration"    # J

    .prologue
    .line 6152
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    if-nez v0, :cond_0

    .line 6153
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->appTransitionStarting(JJ)V

    .line 6155
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    if-eqz v0, :cond_1

    .line 6156
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->appTransitionStarting(JJ)V

    .line 6158
    :cond_1
    return-void
.end method

.method public applyEDMPolicy()V
    .locals 5

    .prologue
    .line 6385
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isStatusBarHidden()Z

    move-result v1

    .line 6386
    .local v1, "isStatusBarHidden":Z
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarHidden:Z

    if-eq v2, v1, :cond_1

    .line 6387
    sput-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarHidden:Z

    .line 6388
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarHidden:Z

    if-eqz v2, :cond_2

    .line 6389
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 6390
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 6391
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisible()V

    .line 6393
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setVisibility(I)V

    .line 6394
    const-string v2, "PhoneStatusBar"

    const-string v3, "Removed status bar view"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6404
    .end local v1    # "isStatusBarHidden":Z
    :cond_1
    :goto_0
    return-void

    .line 6396
    .restart local v1    # "isStatusBarHidden":Z
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setVisibility(I)V

    .line 6397
    const-string v2, "PhoneStatusBar"

    const-string v3, "Added status bar view"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6400
    .end local v1    # "isStatusBarHidden":Z
    :catch_0
    move-exception v0

    .line 6401
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PhoneStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed Applying policy"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public buzzBeepBlinked()V
    .locals 1

    .prologue
    .line 3414
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    if-eqz v0, :cond_0

    .line 3415
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->fireBuzzBeepBlinked()V

    .line 3417
    :cond_0
    return-void
.end method

.method public calculateGoingToFullShadeDelay()J
    .locals 4

    .prologue
    .line 5183
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDelay:J

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public cancelCoverDismissAction()V
    .locals 2

    .prologue
    .line 6792
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentCoverDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    if-eqz v0, :cond_0

    .line 6793
    const-string v0, "CoverUI"

    const-string v1, "Cancel launch notification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6794
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentCoverDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .line 6796
    :cond_0
    return-void
.end method

.method public createAndAddWindows()V
    .locals 0

    .prologue
    .line 3930
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addStatusBarWindow()V

    .line 3931
    return-void
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 2

    .prologue
    .line 2785
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V

    return-object v0
.end method

.method public deactivateNotificationRow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 7540
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 7541
    .local v0, "activatedChild":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    if-eqz v0, :cond_0

    .line 7542
    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(ZZ)V

    .line 7544
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 6

    .prologue
    const v5, 0x7f0e0332

    const/4 v4, 0x0

    .line 4756
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->destroy()V

    .line 4757
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v2, :cond_0

    .line 4758
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 4759
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 4761
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v2, :cond_1

    .line 4762
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 4763
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 4765
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_2

    .line 4766
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 4767
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandlerThread:Landroid/os/HandlerThread;

    .line 4769
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4770
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4771
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v2}, Lcom/android/systemui/assist/AssistManager;->destroy()V

    .line 4773
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 4775
    .local v0, "signalCluster":Lcom/android/systemui/statusbar/SignalClusterView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 4781
    .local v1, "signalClusterKeyguard":Lcom/android/systemui/statusbar/SignalClusterView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->removeSignalCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 4782
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->removeSignalCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 4786
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4787
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->destroy()V

    .line 4789
    :cond_3
    return-void
.end method

.method public disable(IIZ)V
    .locals 12
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 2614
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_12

    const/4 v7, 0x1

    :goto_0
    and-int/2addr p3, v7

    .line 2615
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified1:I

    .line 2616
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified2:I

    .line 2617
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->adjustDisableFlags(I)I

    move-result p1

    .line 2618
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled1:I

    .line 2620
    .local v4, "old1":I
    const/4 v3, 0x0

    .line 2622
    .local v3, "knoxCustomIcons":Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setStatusBarText()V

    .line 2623
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomIconsPrevious:Z

    if-eqz v7, :cond_0

    .line 2624
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomIconsPrevious:Z

    .line 2625
    const/4 v3, 0x1

    .line 2627
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v7}, Landroid/app/enterprise/knoxcustom/SystemManager;->getStatusBarClockState()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2628
    const/high16 v7, 0x800000

    or-int/2addr p1, v7

    .line 2630
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v7}, Landroid/app/enterprise/knoxcustom/SystemManager;->getStatusBarIconsState()Z

    move-result v7

    if-nez v7, :cond_2

    .line 2631
    const/high16 v7, 0x100000

    or-int/2addr p1, v7

    .line 2632
    const/4 v3, 0x1

    .line 2633
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomIconsPrevious:Z

    .line 2635
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v7}, Landroid/app/enterprise/knoxcustom/SystemManager;->getStatusBarNotificationsState()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v7}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 2637
    :cond_4
    const/high16 v7, 0x1030000

    or-int/2addr p1, v7

    .line 2648
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isSharedDeviceKeyguardOn()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2649
    const/4 p1, 0x0

    .line 2650
    const/high16 v7, 0x20000

    or-int/2addr p1, v7

    .line 2653
    :cond_6
    xor-int v0, p1, v4

    .line 2654
    .local v0, "diff1":I
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled1:I

    .line 2657
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->adjustDisableFlags2(I)I

    move-result p2

    .line 2658
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled2:I

    .line 2659
    .local v5, "old2":I
    xor-int v1, p2, v5

    .line 2660
    .local v1, "diff2":I
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled2:I

    .line 2662
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v7, :cond_7

    .line 2663
    const-string v7, "PhoneStatusBar"

    const-string v8, "disable1: 0x%08x -> 0x%08x (diff1: 0x%08x)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    const-string v7, "PhoneStatusBar"

    const-string v8, "disable2: 0x%08x -> 0x%08x (diff2: 0x%08x)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    :cond_7
    if-nez v0, :cond_8

    if-eqz v1, :cond_9

    .line 2672
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2673
    .local v2, "flagdbg":Ljava/lang/StringBuilder;
    const-string v7, "disable: < "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2674
    const/high16 v7, 0x10000

    and-int/2addr v7, p1

    if-eqz v7, :cond_14

    const-string v7, "EXPAND"

    :goto_2
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2675
    const/high16 v7, 0x10000

    and-int/2addr v7, v0

    if-eqz v7, :cond_15

    const-string v7, "* "

    :goto_3
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2676
    const/high16 v7, 0x20000

    and-int/2addr v7, p1

    if-eqz v7, :cond_16

    const-string v7, "ICONS"

    :goto_4
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2677
    const/high16 v7, 0x20000

    and-int/2addr v7, v0

    if-eqz v7, :cond_17

    const-string v7, "* "

    :goto_5
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2678
    const/high16 v7, 0x40000

    and-int/2addr v7, p1

    if-eqz v7, :cond_18

    const-string v7, "ALERTS"

    :goto_6
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2679
    const/high16 v7, 0x40000

    and-int/2addr v7, v0

    if-eqz v7, :cond_19

    const-string v7, "* "

    :goto_7
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2680
    const/high16 v7, 0x100000

    and-int/2addr v7, p1

    if-eqz v7, :cond_1a

    const-string v7, "SYSTEM_INFO"

    :goto_8
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2681
    const/high16 v7, 0x100000

    and-int/2addr v7, v0

    if-eqz v7, :cond_1b

    const-string v7, "* "

    :goto_9
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2682
    const/high16 v7, 0x400000

    and-int/2addr v7, p1

    if-eqz v7, :cond_1c

    const-string v7, "BACK"

    :goto_a
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2683
    const/high16 v7, 0x400000

    and-int/2addr v7, v0

    if-eqz v7, :cond_1d

    const-string v7, "* "

    :goto_b
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2684
    const/high16 v7, 0x200000

    and-int/2addr v7, p1

    if-eqz v7, :cond_1e

    const-string v7, "HOME"

    :goto_c
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2685
    const/high16 v7, 0x200000

    and-int/2addr v7, v0

    if-eqz v7, :cond_1f

    const-string v7, "* "

    :goto_d
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2686
    const/high16 v7, 0x1000000

    and-int/2addr v7, p1

    if-eqz v7, :cond_20

    const-string v7, "RECENT"

    :goto_e
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2687
    const/high16 v7, 0x1000000

    and-int/2addr v7, v0

    if-eqz v7, :cond_21

    const-string v7, "* "

    :goto_f
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2688
    const/high16 v7, 0x800000

    and-int/2addr v7, p1

    if-eqz v7, :cond_22

    const-string v7, "CLOCK"

    :goto_10
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2689
    const/high16 v7, 0x800000

    and-int/2addr v7, v0

    if-eqz v7, :cond_23

    const-string v7, "* "

    :goto_11
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2690
    const/high16 v7, 0x2000000

    and-int/2addr v7, p1

    if-eqz v7, :cond_24

    const-string v7, "SEARCH"

    :goto_12
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2691
    const/high16 v7, 0x2000000

    and-int/2addr v7, v0

    if-eqz v7, :cond_25

    const-string v7, "* "

    :goto_13
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2692
    and-int/lit8 v7, p2, 0x1

    if-eqz v7, :cond_26

    const-string v7, "QUICK_SETTINGS"

    :goto_14
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2694
    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_27

    const-string v7, "* "

    :goto_15
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2695
    const-string v7, ">"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2696
    const-string v7, "PhoneStatusBar"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    .end local v2    # "flagdbg":Ljava/lang/StringBuilder;
    :cond_9
    const/high16 v7, 0x100000

    and-int/2addr v7, v0

    if-eqz v7, :cond_a

    .line 2701
    if-eqz v3, :cond_29

    .line 2702
    const/high16 v7, 0x100000

    and-int/2addr v7, p1

    if-eqz v7, :cond_28

    .line 2703
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setKnoxCustomSystemIconVisibility(Z)V

    .line 2704
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSignalBatteryIcons:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2735
    :cond_a
    :goto_16
    const/high16 v7, 0x800000

    and-int/2addr v7, v0

    if-eqz v7, :cond_b

    .line 2736
    const/high16 v7, 0x800000

    and-int/2addr v7, p1

    if-nez v7, :cond_2b

    const/4 v6, 0x1

    .line 2737
    .local v6, "visible":Z
    :goto_17
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setClockVisibility(Z)V

    .line 2739
    .end local v6    # "visible":Z
    :cond_b
    const/high16 v7, 0x10000

    and-int/2addr v7, v0

    if-eqz v7, :cond_c

    .line 2740
    const/high16 v7, 0x10000

    and-int/2addr v7, p1

    if-eqz v7, :cond_c

    .line 2741
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 2745
    :cond_c
    const/high16 v7, 0x3600000

    and-int/2addr v7, v0

    if-eqz v7, :cond_e

    .line 2750
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v7, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 2752
    :cond_d
    const/high16 v7, 0x1000000

    and-int/2addr v7, p1

    if-eqz v7, :cond_e

    .line 2754
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v8, 0x3fc

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2755
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v8, 0x3fc

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2759
    :cond_e
    const/high16 v7, 0x20000

    and-int/2addr v7, v0

    if-eqz v7, :cond_f

    .line 2760
    const/high16 v7, 0x20000

    and-int/2addr v7, p1

    if-eqz v7, :cond_2c

    .line 2765
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->hideNotificationIconArea(Z)V

    .line 2772
    :cond_f
    :goto_18
    const/high16 v7, 0x40000

    and-int/2addr v7, v0

    if-eqz v7, :cond_10

    .line 2773
    const/high16 v7, 0x40000

    and-int/2addr v7, p1

    if-eqz v7, :cond_2d

    const/4 v7, 0x1

    :goto_19
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisableNotificationAlerts:Z

    .line 2775
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2778
    :cond_10
    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_11

    .line 2779
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQsExpansionEnabled()V

    .line 2781
    :cond_11
    return-void

    .line 2614
    .end local v0    # "diff1":I
    .end local v1    # "diff2":I
    .end local v3    # "knoxCustomIcons":Z
    .end local v4    # "old1":I
    .end local v5    # "old2":I
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2639
    .restart local v3    # "knoxCustomIcons":Z
    .restart local v4    # "old1":I
    :cond_13
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxTouchDisabledPrevious:Z

    if-eqz v7, :cond_5

    .line 2640
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxTouchDisabledPrevious:Z

    .line 2641
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->disableExpand(Z)V

    goto/16 :goto_1

    .line 2674
    .restart local v0    # "diff1":I
    .restart local v1    # "diff2":I
    .restart local v2    # "flagdbg":Ljava/lang/StringBuilder;
    .restart local v5    # "old2":I
    :cond_14
    const-string v7, "expand"

    goto/16 :goto_2

    .line 2675
    :cond_15
    const-string v7, " "

    goto/16 :goto_3

    .line 2676
    :cond_16
    const-string v7, "icons"

    goto/16 :goto_4

    .line 2677
    :cond_17
    const-string v7, " "

    goto/16 :goto_5

    .line 2678
    :cond_18
    const-string v7, "alerts"

    goto/16 :goto_6

    .line 2679
    :cond_19
    const-string v7, " "

    goto/16 :goto_7

    .line 2680
    :cond_1a
    const-string v7, "system_info"

    goto/16 :goto_8

    .line 2681
    :cond_1b
    const-string v7, " "

    goto/16 :goto_9

    .line 2682
    :cond_1c
    const-string v7, "back"

    goto/16 :goto_a

    .line 2683
    :cond_1d
    const-string v7, " "

    goto/16 :goto_b

    .line 2684
    :cond_1e
    const-string v7, "home"

    goto/16 :goto_c

    .line 2685
    :cond_1f
    const-string v7, " "

    goto/16 :goto_d

    .line 2686
    :cond_20
    const-string v7, "recent"

    goto/16 :goto_e

    .line 2687
    :cond_21
    const-string v7, " "

    goto/16 :goto_f

    .line 2688
    :cond_22
    const-string v7, "clock"

    goto/16 :goto_10

    .line 2689
    :cond_23
    const-string v7, " "

    goto/16 :goto_11

    .line 2690
    :cond_24
    const-string v7, "search"

    goto/16 :goto_12

    .line 2691
    :cond_25
    const-string v7, " "

    goto/16 :goto_13

    .line 2692
    :cond_26
    const-string v7, "quick_settings"

    goto/16 :goto_14

    .line 2694
    :cond_27
    const-string v7, " "

    goto/16 :goto_15

    .line 2706
    .end local v2    # "flagdbg":Ljava/lang/StringBuilder;
    :cond_28
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setKnoxCustomSystemIconVisibility(Z)V

    .line 2707
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSignalBatteryIcons:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_16

    .line 2712
    :cond_29
    const/high16 v7, 0x100000

    and-int/2addr v7, p1

    if-eqz v7, :cond_2a

    .line 2717
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->hideSystemIconArea(Z)V

    goto/16 :goto_16

    .line 2722
    :cond_2a
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setKnoxCustomSystemIconVisibility(Z)V

    .line 2723
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSignalBatteryIcons:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2729
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->showSystemIconArea(Z)V

    goto/16 :goto_16

    .line 2736
    :cond_2b
    const/4 v6, 0x0

    goto/16 :goto_17

    .line 2768
    :cond_2c
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v7, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->showNotificationIconArea(Z)V

    goto/16 :goto_18

    .line 2773
    :cond_2d
    const/4 v7, 0x0

    goto/16 :goto_19
.end method

.method public dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;ZZZ)V
    .locals 3
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "cancelAction"    # Ljava/lang/Runnable;
    .param p3, "afterKeyguardGone"    # Z
    .param p4, "fromNotification"    # Z
    .param p5, "isQSTileClicked"    # Z

    .prologue
    const/4 v1, 0x1

    .line 4271
    if-eqz p5, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clickDeferredTile:Lcom/android/systemui/qs/QSTile;

    if-eqz v2, :cond_3

    .line 4272
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clickDeferredTile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->getActionTypeOnCover()I

    move-result v0

    .line 4274
    .local v0, "actionTypeOnCover":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 4275
    const v2, 0x7f0d04a5

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showCoverOpenPopup(I)V

    .line 4286
    .end local v0    # "actionTypeOnCover":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4287
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentCoverDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .line 4298
    :goto_1
    return-void

    .line 4276
    .restart local v0    # "actionTypeOnCover":I
    :cond_1
    if-ne v0, v1, :cond_2

    .line 4277
    const v2, 0x7f0d04a4

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showCoverOpenPopup(I)V

    goto :goto_0

    .line 4278
    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 4279
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clickDeferredTile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->getActionMsgOnCover()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showCoverOpenPopup(Ljava/lang/String;)V

    goto :goto_0

    .line 4282
    .end local v0    # "actionTypeOnCover":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showCoverOpenPopup()V

    goto :goto_0

    .line 4289
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4291
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz p4, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isInstantDismiss()Z

    move-result v1

    :cond_5
    invoke-virtual {v2, p1, p2, p3, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;ZZ)V

    goto :goto_1

    .line 4295
    :cond_6
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    goto :goto_1
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x4

    const/4 v11, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 4796
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoModeAllowed:Z

    if-nez v7, :cond_0

    .line 4797
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v12, "sysui_demo_allowed"

    invoke-static {v7, v12, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoModeAllowed:Z

    .line 4800
    :cond_0
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoModeAllowed:Z

    if-nez v7, :cond_3

    .line 4854
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v7, v9

    .line 4797
    goto :goto_0

    .line 4801
    :cond_3
    const-string v7, "enter"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 4802
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    .line 4810
    :cond_4
    :goto_2
    const-string v7, "enter"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "exit"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    :cond_5
    move v3, v8

    .line 4811
    .local v3, "modeChange":Z
    :goto_3
    if-nez v3, :cond_6

    const-string v7, "volume"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    if-eqz v7, :cond_7

    .line 4812
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    invoke-interface {v7, p1, p2}, Lcom/android/systemui/volume/VolumeComponent;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4814
    :cond_7
    if-nez v3, :cond_8

    const-string v7, "clock"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 4815
    :cond_8
    const v7, 0x7f0e0122

    invoke-direct {p0, p1, p2, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 4817
    :cond_9
    if-nez v3, :cond_a

    const-string v7, "battery"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 4818
    :cond_a
    const v7, 0x7f0e0334

    invoke-direct {p0, p1, p2, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 4820
    :cond_b
    if-nez v3, :cond_c

    const-string v7, "status"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 4821
    :cond_c
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v7, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4824
    :cond_d
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    if-eqz v7, :cond_f

    if-nez v3, :cond_e

    const-string v7, "network"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 4825
    :cond_e
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v7, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4827
    :cond_f
    if-nez v3, :cond_10

    const-string v7, "notifications"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 4828
    :cond_10
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v7, :cond_16

    const/4 v4, 0x0

    .line 4830
    .local v4, "notifications":Landroid/view/View;
    :goto_4
    if-eqz v4, :cond_11

    .line 4831
    const-string v7, "visible"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4832
    .local v6, "visible":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    if-eqz v7, :cond_17

    const-string v7, "false"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    move v5, v10

    .line 4833
    .local v5, "vis":I
    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4836
    .end local v4    # "notifications":Landroid/view/View;
    .end local v5    # "vis":I
    .end local v6    # "visible":Ljava/lang/String;
    :cond_11
    const-string v7, "bars"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4837
    const-string v7, "mode"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4838
    .local v2, "mode":Ljava/lang/String;
    const-string v7, "opaque"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    move v1, v9

    .line 4844
    .local v1, "barMode":I
    :goto_6
    if-eq v1, v11, :cond_1

    .line 4845
    const/4 v0, 0x1

    .line 4846
    .local v0, "animate":Z
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v7, :cond_12

    .line 4847
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v7

    invoke-virtual {v7, v1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 4849
    :cond_12
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v7, :cond_1

    .line 4850
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v7

    invoke-virtual {v7, v1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    goto/16 :goto_1

    .line 4803
    .end local v0    # "animate":Z
    .end local v1    # "barMode":I
    .end local v2    # "mode":Ljava/lang/String;
    .end local v3    # "modeChange":Z
    :cond_13
    const-string v7, "exit"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 4804
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    .line 4805
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    goto/16 :goto_2

    .line 4806
    :cond_14
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    if-nez v7, :cond_4

    .line 4808
    const-string v7, "enter"

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v7, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    :cond_15
    move v3, v9

    .line 4810
    goto/16 :goto_3

    .line 4828
    .restart local v3    # "modeChange":Z
    :cond_16
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v12, 0x7f0e02e7

    invoke-virtual {v7, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    goto :goto_4

    .restart local v4    # "notifications":Landroid/view/View;
    .restart local v6    # "visible":Ljava/lang/String;
    :cond_17
    move v5, v9

    .line 4832
    goto :goto_5

    .line 4838
    .end local v4    # "notifications":Landroid/view/View;
    .end local v6    # "visible":Ljava/lang/String;
    .restart local v2    # "mode":Ljava/lang/String;
    :cond_18
    const-string v7, "translucent"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    const/4 v1, 0x2

    goto :goto_6

    :cond_19
    const-string v7, "semi-transparent"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    move v1, v8

    goto :goto_6

    :cond_1a
    const-string v7, "transparent"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    move v1, v10

    goto :goto_6

    :cond_1b
    const-string v7, "warning"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    const/4 v1, 0x5

    goto :goto_6

    :cond_1c
    move v1, v11

    goto :goto_6
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3757
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3758
    :try_start_0
    const-string v2, "Current Status Bar state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3759
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mExpandedVisible="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mTrackingPosition="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3761
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mTracking="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTracking:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3762
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mDisplayMetrics="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3763
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mStackScroller: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3764
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mStackScroller: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " scroll "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollX()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollY()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3767
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3769
    const-string v2, "  mInteractingWindows="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 3770
    const-string v2, "  mStatusBarWindowState="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3771
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    invoke-static {v2}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3772
    const-string v2, "  mStatusBarMode="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3773
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3774
    const-string v2, "  mDozing="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3775
    const-string v2, "  mZenMode="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3776
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenMode:I

    invoke-static {v2}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3777
    const-string v2, "  mUseHeadsUp="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3778
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3779
    const-string v2, "mStatusBarView"

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 3780
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v2, :cond_0

    .line 3781
    const-string v2, "  mNavigationBarWindowState="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3782
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    invoke-static {v2}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3783
    const-string v2, "  mNavigationBarMode="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3784
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3785
    const-string v2, "mNavigationBarView"

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 3788
    :cond_0
    const-string v2, "  mNavigationBarView="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3789
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v2, :cond_11

    .line 3790
    const-string v2, "null"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3795
    :goto_0
    const-string v2, "  mMediaSessionManager="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3796
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3797
    const-string v2, "  mMediaNotificationKey="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3798
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3799
    const-string v2, "  mMediaController="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3800
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3801
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v2, :cond_1

    .line 3802
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3804
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3805
    const-string v2, "  mMediaMetadata="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3806
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3807
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-eqz v2, :cond_2

    .line 3808
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    const-string v4, "android.media.metadata.TITLE"

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3810
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3812
    const-string v2, "  Panels: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3813
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v2, :cond_3

    .line 3814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mNotificationPanel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3816
    const-string v2, "      "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3817
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3820
    :cond_3
    const-string v2, "  mLightStatusBarMode="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3821
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLightStatusBarMode:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3822
    const-string v2, "  mCallBackgroundMode="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3823
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallBackgroundMode:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 3827
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mSupportTwoPhone:Z

    if-eqz v2, :cond_4

    .line 3828
    const-string v2, "---- Two Phone -----"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3829
    const-string v2, "  mTwoPhoneCallEnabled="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3830
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTwoPhoneCallEnabled:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 3831
    const-string v2, "  mTwoPhoneMsgEnabled="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3832
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTwoPhoneMsgEnabled:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 3833
    const-string v2, "  mTwoPhoneUserCreated="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3834
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTwoPhoneUserCreated:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 3835
    const-string v2, "  mTwoPhoneRegistered="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3836
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTwoPhoneRegistered:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3837
    const-string v2, "--------------------"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3841
    :cond_4
    invoke-static {p2}, Lcom/android/systemui/doze/DozeLog;->dump(Ljava/io/PrintWriter;)V

    .line 3844
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    monitor-enter v3

    .line 3845
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    const-string v4, "  "

    invoke-virtual {v2, p2, v4}, Lcom/android/systemui/statusbar/NotificationData;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3846
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3848
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->dump(Ljava/io/PrintWriter;)V

    .line 3869
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    if-eqz v2, :cond_5

    .line 3870
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3872
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    if-eqz v2, :cond_6

    .line 3873
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3875
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    if-eqz v2, :cond_7

    .line 3876
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3878
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    if-eqz v2, :cond_8

    .line 3879
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3881
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    if-eqz v2, :cond_9

    .line 3882
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3884
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v2, :cond_a

    .line 3885
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3887
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-eqz v2, :cond_b

    .line 3888
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/BatteryController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3890
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    if-eqz v2, :cond_c

    .line 3891
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3893
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz v2, :cond_d

    .line 3894
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/systemui/assist/AssistManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3896
    :cond_d
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    if-eqz v2, :cond_e

    .line 3897
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3899
    :cond_e
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSoundPathController:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    if-eqz v2, :cond_f

    .line 3900
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSoundPathController:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3902
    :cond_f
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v2, :cond_12

    .line 3903
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3907
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 3908
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3911
    :cond_10
    const-string v2, "SharedPreferences:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3912
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/Prefs;->getAll(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3913
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    .line 3767
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3792
    :cond_11
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3846
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 3905
    :cond_12
    const-string v2, "  mHeadsUpManager: null"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 3915
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_13
    return-void
.end method

.method public enableSignals(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 6369
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v1, :cond_1

    .line 6379
    :cond_0
    :goto_0
    return-void

    .line 6370
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0e0332

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 6372
    .local v0, "signalCluster":Lcom/android/systemui/statusbar/SignalClusterView;
    if-eqz v0, :cond_0

    .line 6373
    if-eqz p1, :cond_2

    .line 6374
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setVisibility(I)V

    goto :goto_0

    .line 6376
    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setVisibility(I)V

    goto :goto_0
.end method

.method public enableTouch()V
    .locals 2

    .prologue
    .line 7381
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTouchDisabled(Z)V

    .line 7382
    return-void
.end method

.method public endAffordanceLaunch()V
    .locals 1

    .prologue
    .line 5472
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->releaseGestureWakeLock()V

    .line 5473
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    .line 5474
    return-void
.end method

.method public executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZ)V
    .locals 7
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "cancelAction"    # Ljava/lang/Runnable;
    .param p3, "dismissShade"    # Z
    .param p4, "afterKeyguardGone"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 4078
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v6

    .line 4080
    .local v6, "keyguardShowing":Z
    if-eqz p3, :cond_0

    .line 4082
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldUnlock(Z)V

    .line 4083
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZZ)V

    .line 4087
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;

    invoke-direct {v1, p0, v6, p4, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ZZLjava/lang/Runnable;)V

    move-object v0, p0

    move-object v2, p2

    move v3, p4

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;ZZZ)V

    .line 4114
    return-void

    :cond_1
    move v0, v4

    .line 4082
    goto :goto_0
.end method

.method public fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "beforeFading"    # Ljava/lang/Runnable;
    .param p2, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 4942
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 4943
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 4944
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Runnable;)V

    .line 5070
    .local v0, "hideRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5071
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V

    .line 5075
    :goto_0
    return-void

    .line 5073
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public fadeKeyguardWhilePulsing()V
    .locals 4

    .prologue
    .line 5082
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x60

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimController;->KEYGUARD_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 5088
    return-void
.end method

.method public findAndUpdateMediaNotifications()V
    .locals 17

    .prologue
    .line 2289
    const/4 v9, 0x0

    .line 2291
    .local v9, "metaDataChanged":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    monitor-enter v14

    .line 2292
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v3

    .line 2293
    .local v3, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2296
    .local v1, "N":I
    const/4 v8, 0x0

    .line 2297
    .local v8, "mediaNotification":Lcom/android/systemui/statusbar/NotificationData$Entry;
    const/4 v4, 0x0

    .line 2298
    .local v4, "controller":Landroid/media/session/MediaController;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_0

    .line 2299
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2300
    .local v5, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2301
    iget-object v13, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    iget-object v13, v13, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v15, "android.mediaSession"

    invoke-virtual {v13, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/media/session/MediaSession$Token;

    .line 2304
    .local v12, "token":Landroid/media/session/MediaSession$Token;
    if-eqz v12, :cond_2

    .line 2305
    new-instance v2, Landroid/media/session/MediaController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v13, v12}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 2306
    .local v2, "aController":Landroid/media/session/MediaController;
    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getMediaControllerPlaybackState(Landroid/media/session/MediaController;)I

    move-result v15

    if-ne v13, v15, :cond_2

    .line 2312
    move-object v8, v5

    .line 2313
    move-object v4, v2

    .line 2319
    .end local v2    # "aController":Landroid/media/session/MediaController;
    .end local v5    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v12    # "token":Landroid/media/session/MediaSession$Token;
    :cond_0
    if-nez v8, :cond_4

    .line 2324
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    if-eqz v13, :cond_4

    .line 2325
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v15, 0x0

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v11

    .line 2330
    .local v11, "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    .line 2331
    .restart local v2    # "aController":Landroid/media/session/MediaController;
    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getMediaControllerPlaybackState(Landroid/media/session/MediaController;)I

    move-result v15

    if-ne v13, v15, :cond_1

    .line 2334
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 2336
    .local v10, "pkg":Ljava/lang/String;
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v1, :cond_1

    .line 2337
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2338
    .restart local v5    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v13, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2343
    move-object v4, v2

    .line 2344
    move-object v8, v5

    .line 2345
    goto :goto_1

    .line 2298
    .end local v2    # "aController":Landroid/media/session/MediaController;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 2336
    .restart local v2    # "aController":Landroid/media/session/MediaController;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v10    # "pkg":Ljava/lang/String;
    .restart local v11    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2353
    .end local v2    # "aController":Landroid/media/session/MediaController;
    .end local v5    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    :cond_4
    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->sameSessions(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 2355
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clearCurrentMediaNotification()V

    .line 2356
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    .line 2357
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaListener:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v13, v15}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 2358
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v13}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 2364
    if-eqz v8, :cond_5

    .line 2365
    iget-object v13, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;

    .line 2371
    :cond_5
    const/4 v9, 0x1

    .line 2373
    :cond_6
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2375
    if-eqz v9, :cond_7

    .line 2376
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotifications()V

    .line 2378
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateMediaMetaData(Z)V

    .line 2379
    return-void

    .line 2373
    .end local v1    # "N":I
    .end local v3    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .end local v4    # "controller":Landroid/media/session/MediaController;
    .end local v6    # "i":I
    .end local v8    # "mediaNotification":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13
.end method

.method public finishKeyguardFadingAway()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5224
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    .line 5225
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardGoingAway:Z

    .line 5227
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTouchDisabled(Z)V

    .line 5229
    return-void
.end method

.method public getBarState()I
    .locals 1

    .prologue
    .line 4868
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    return v0
.end method

.method public getCoverHolder()Landroid/widget/FrameLayout;
    .locals 4

    .prologue
    const v3, 0x7f0e0328

    .line 6799
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isSupportNotificationOnCover()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6800
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0e005e

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 6802
    .local v0, "panelHolder":Landroid/widget/FrameLayout;
    if-nez v0, :cond_0

    .line 6803
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "panelHolder":Landroid/widget/FrameLayout;
    check-cast v0, Landroid/widget/FrameLayout;

    .line 6808
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    move-object v0, v1

    goto :goto_0
.end method

.method public getCurrentMediaNotificationKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2832
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserHandle()Landroid/os/UserHandle;
    .locals 2

    .prologue
    .line 1870
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public getDcmKeyguardMascotUtils()Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;
    .locals 1

    .prologue
    .line 7661
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDcmKeyguardMascotUtils:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    return-object v0
.end method

.method getDisplayDensity()F
    .locals 1

    .prologue
    .line 3963
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;
    .locals 1

    .prologue
    .line 3377
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    return-object v0
.end method

.method public getKeyguardFadingAwayDelay()J
    .locals 2

    .prologue
    .line 5902
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDelay:J

    return-wide v0
.end method

.method public getKeyguardFadingAwayDuration()J
    .locals 2

    .prologue
    .line 5906
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDuration:J

    return-wide v0
.end method

.method public getKnoxBoolValue(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 7309
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7310
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 7312
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7313
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 7314
    .local v8, "strValue":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v0, "true"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 7318
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7321
    .end local v8    # "strValue":Ljava/lang/String;
    :goto_1
    return v0

    .restart local v8    # "strValue":Ljava/lang/String;
    :cond_0
    move v0, v9

    .line 7314
    goto :goto_0

    .line 7315
    .end local v8    # "strValue":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 7316
    .local v7, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7318
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    move v0, v9

    .line 7321
    goto :goto_1

    .line 7318
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getKnoxIntValue(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 7325
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7326
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 7328
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7329
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 7333
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7336
    :goto_0
    return v0

    .line 7330
    :catch_0
    move-exception v7

    .line 7331
    .local v7, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7333
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7336
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 7333
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected getMaxCoverNotifications()I
    .locals 1

    .prologue
    .line 5769
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverMaxNotificationCount:I

    return v0
.end method

.method protected getMaxKeyguardNotifications()I
    .locals 3

    .prologue
    .line 5746
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 5747
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 5748
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->canSetDcmLauncher()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5749
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5750
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMaxNotificationCountForMobileKeyboard:I

    add-int/lit8 v1, v1, -0x1

    .line 5761
    :goto_0
    return v1

    .line 5753
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMaxNotificationCountForMobileKeyboard:I

    goto :goto_0

    .line 5755
    :cond_1
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->canSetDcmLauncher()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5756
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5757
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMaxNotificationCountForDCM:I

    goto :goto_0

    .line 5761
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMaxNotificationCount:I

    goto :goto_0
.end method

.method public getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1

    .prologue
    .line 5774
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 2

    .prologue
    .line 1723
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    if-gez v1, :cond_0

    .line 1724
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1725
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 1728
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    return v1
.end method

.method protected getStatusBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object v0
.end method

.method public getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    .locals 1

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    return-object v0
.end method

.method public getViewMediatorDeviceInteractive()Z
    .locals 1

    .prologue
    .line 7607
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDeviceInteractive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public goToCover()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 5889
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goToCover, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5891
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 5892
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setFromShadeLocked(Z)V

    .line 5896
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onGoToKeyguard()V

    .line 5897
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 5898
    const/4 v0, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    .line 5899
    return-void
.end method

.method public goToKeyguard()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5872
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goToKeyguard, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5873
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v0, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5875
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v0, v4, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 5876
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setFromShadeLocked(Z)V

    .line 5879
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onGoToKeyguard()V

    .line 5880
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 5881
    const/4 v0, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    .line 5883
    :cond_3
    return-void
.end method

.method public goToLockedShade(Landroid/view/View;)V
    .locals 3
    .param p1, "expandView"    # Landroid/view/View;

    .prologue
    .line 5818
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5830
    :goto_0
    return-void

    .line 5822
    :cond_0
    const/4 v0, 0x2

    .line 5823
    .local v0, "shadeState":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 5824
    const/16 v0, 0xa

    .line 5826
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToLockedShade(Landroid/view/View;I)V

    .line 5828
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardBottomViewVisibility(Z)V

    .line 5829
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelVisibility()V

    goto :goto_0
.end method

.method public goToLockedShade(Landroid/view/View;I)V
    .locals 8
    .param p1, "expandView"    # Landroid/view/View;
    .param p2, "statusBarState"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5839
    const-string v4, "PhoneStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "goToLockedShade, state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5840
    const/4 v1, 0x0

    .line 5841
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    instance-of v4, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 5842
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 5843
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 5845
    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    if-nez v4, :cond_3

    :cond_1
    move v0, v3

    .line 5857
    .local v0, "fullShadeNeedsBouncer":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 5858
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 5860
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateToFullShade(J)V

    .line 5861
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 5862
    invoke-direct {p0, v2, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    .line 5865
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onActivationReset(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V

    .line 5866
    return-void

    .end local v0    # "fullShadeNeedsBouncer":Z
    :cond_3
    move v0, v2

    .line 5845
    goto :goto_0
.end method

.method protected handleVisibleToUserChanged(Z)V
    .locals 0
    .param p1, "visibleToUser"    # Z

    .prologue
    .line 4561
    if-eqz p1, :cond_0

    .line 4562
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleVisibleToUserChanged(Z)V

    .line 4563
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startNotificationLogging()V

    .line 4568
    :goto_0
    return-void

    .line 4565
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->stopNotificationLogging()V

    .line 4566
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleVisibleToUserChanged(Z)V

    goto :goto_0
.end method

.method public hasActiveNotifications()Z
    .locals 1

    .prologue
    .line 6118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClearableNotification()Z
    .locals 1

    .prologue
    .line 6493
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->hasActiveClearableNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideCover()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 7052
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCoverShowing:Z

    .line 7054
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v1, :cond_0

    .line 7055
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotificationPanelSize(I)V

    .line 7057
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateViewVisibilityForCover(I)V

    .line 7059
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-nez v1, :cond_2

    .line 7061
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToKeyguard()V

    .line 7062
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSviewShortcutIntent:Z

    if-eqz v1, :cond_1

    .line 7063
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showBouncer()V

    .line 7064
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSviewShortcutIntent:Z

    .line 7086
    :cond_1
    :goto_0
    return-void

    .line 7069
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 7070
    .local v0, "staying":Z
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 7072
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    if-eqz v1, :cond_4

    .line 7073
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 7074
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->calculateGoingToFullShadeDelay()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateToFullShade(J)V

    .line 7076
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_3

    .line 7077
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 7078
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 7084
    :cond_3
    :goto_1
    invoke-direct {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    goto :goto_0

    .line 7081
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->instantCollapseNotificationPanel()V

    goto :goto_1
.end method

.method public hideKeyguard()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 5127
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hideKeyguard: state - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", leaveOpen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5128
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 5131
    .local v2, "staying":Z
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 5132
    const-string v3, "PhoneStatusBar"

    const-string v4, "hideKeyguard() stack - "

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5135
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v3, v6, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 5136
    :cond_1
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 5138
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    if-eqz v3, :cond_6

    .line 5139
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 5140
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->calculateGoingToFullShadeDelay()J

    move-result-wide v0

    .line 5141
    .local v0, "delay":J
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateToFullShade(J)V

    .line 5142
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_3

    .line 5143
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 5144
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 5148
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v3, :cond_4

    .line 5149
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutTransitionsEnabled(Z)V

    .line 5150
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    const-wide/16 v6, 0x1c0

    add-long/2addr v6, v0

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5161
    .end local v0    # "delay":J
    :cond_4
    :goto_0
    invoke-direct {p0, v2, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    .line 5165
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v3, :cond_5

    .line 5166
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    .line 5168
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v4, 0x3eb

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 5169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->releaseGestureWakeLock()V

    .line 5170
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    .line 5171
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 5172
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 5173
    return v2

    .line 5158
    :cond_6
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v3, :cond_4

    .line 5159
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->instantCollapseNotificationPanel()V

    goto :goto_0
.end method

.method protected hideRecents(ZZ)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 6079
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 6080
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 6081
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideRecents(ZZ)V

    .line 6082
    return-void
.end method

.method public interceptBTKey(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5428
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isScreenTurnedOn()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 5463
    :goto_0
    return v1

    .line 5432
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x5b

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x7e

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x7f

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x55

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x56

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x57

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x58

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x59

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x82

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0xde

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x18

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x19

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0xa4

    if-eq v3, v4, :cond_3

    .line 5451
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isSideSyncEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InputDevice;->isExternal()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5453
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 5455
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v3

    if-eqz v3, :cond_3

    .line 5456
    const-string v2, "PhoneStatusBar"

    const-string v3, "handleBTKeyEvent callDismiss"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5457
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisible()V

    goto/16 :goto_0

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    move v1, v2

    .line 5463
    goto/16 :goto_0
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 5422
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3326
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v3, :cond_0

    .line 3327
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->peekTouchEvent(Landroid/view/MotionEvent;)V

    .line 3333
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->knox_Tap(Landroid/view/MotionEvent;)V

    .line 3347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 3348
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Touch: rawY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " event="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDisabled1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDisabled2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mTracking="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTracking:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3363
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    if-nez v3, :cond_3

    .line 3364
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    :cond_2
    move v0, v2

    .line 3367
    .local v0, "upOrCancel":Z
    :goto_0
    if-eqz v0, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v3, :cond_5

    .line 3368
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    .line 3373
    .end local v0    # "upOrCancel":Z
    :cond_3
    :goto_1
    return v1

    :cond_4
    move v0, v1

    .line 3364
    goto :goto_0

    .line 3370
    .restart local v0    # "upOrCancel":Z
    :cond_5
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    goto :goto_1
.end method

.method public isAllowedSlideStatusBar()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 7438
    const/4 v1, 0x1

    .line 7439
    .local v1, "returnValue":Z
    new-array v2, v3, [Ljava/lang/String;

    const-string v5, "false"

    aput-object v5, v2, v4

    .line 7440
    .local v2, "selectionArgs":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v7, "isStatusBarExpansionallowedAsUser"

    invoke-direct {p0, v5, v6, v7, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 7443
    .local v0, "policyValue":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 7444
    if-ne v0, v3, :cond_2

    move v1, v3

    .line 7446
    :goto_0
    if-nez v1, :cond_0

    .line 7447
    const-string v3, "PhoneStatusBar"

    const-string v4, "isAllowedSlideStatusBar() return false by EDM Policy"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7452
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxTouchDisabledPrevious:Z

    if-eqz v3, :cond_1

    .line 7453
    const/4 v1, 0x0

    .line 7454
    const-string v3, "PhoneStatusBar"

    const-string v4, "isAllowedSlideStatusBar() return false by mKnoxTouchDisabledPrevious"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7459
    :cond_1
    return v1

    :cond_2
    move v1, v4

    .line 7444
    goto :goto_0
.end method

.method public isAppCoverShowing()Z
    .locals 1

    .prologue
    .line 6753
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    return v0
.end method

.method public isCollapsing()Z
    .locals 1

    .prologue
    .line 4921
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isCollapsing()Z

    move-result v0

    return v0
.end method

.method public isCoverAnimiationRuning()Z
    .locals 1

    .prologue
    .line 6847
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverShortcutOpen:Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;

    invoke-interface {v0}, Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;->isCoverShorcutDragged()Z

    move-result v0

    return v0
.end method

.method public isCovered()Z
    .locals 1

    .prologue
    .line 7520
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDozing()Z
    .locals 1

    .prologue
    .line 2827
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    return v0
.end method

.method public isDreaming()Z
    .locals 5

    .prologue
    .line 7612
    const/4 v1, 0x0

    .line 7614
    .local v1, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v3}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v2, v1

    .line 7618
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_1
    return v2

    .line 7614
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 7615
    :catch_0
    move-exception v0

    .line 7616
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "PhoneStatusBar"

    const-string v4, "failed to query dream manager"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    .line 7618
    .restart local v2    # "result":I
    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "result":I
    :catchall_0
    move-exception v3

    move v2, v1

    .restart local v2    # "result":I
    goto :goto_1
.end method

.method public isEmergencyModeActivated()Z
    .locals 1

    .prologue
    .line 6500
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    return v0
.end method

.method public isFalsingThresholdNeeded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2823
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGoingToNotificationShade()Z
    .locals 1

    .prologue
    .line 2811
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    return v0
.end method

.method public isHeadsUp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2945
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInLaunchTransition()Z
    .locals 1

    .prologue
    .line 4929
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInQsArea(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 6487
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInQsArea(FF)Z

    move-result v0

    return v0
.end method

.method public isInstantDismiss()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4302
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mActivated:Z

    if-eqz v1, :cond_1

    .line 4307
    :cond_0
    :goto_0
    return v0

    .line 4304
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v1, v0, :cond_0

    .line 4307
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyguardCurrentlySecure()Z
    .locals 1

    .prologue
    .line 2953
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyguardFadingAway()Z
    .locals 1

    .prologue
    .line 5217
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    return v0
.end method

.method protected isOnFlingAnimating()Z
    .locals 1

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPanelFullyCollapsed()Z
    .locals 1

    .prologue
    .line 4873
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    return v0
.end method

.method protected isQsEditPanelOpened()Z
    .locals 1

    .prologue
    .line 7390
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsQsEditPanelOpened:Z

    return v0
.end method

.method public isScrimSrcModeEnabled()Z
    .locals 1

    .prologue
    .line 2836
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimSrcModeEnabled:Z

    return v0
.end method

.method public isSharedDeviceKeyguardOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3027
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getPersonaManager()Landroid/os/PersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v1, v0}, Landroid/os/PersonaManager;->getKeyguardShowState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3029
    const-string v0, "PhoneStatusBar"

    const-string v1, "isSharedDeviceKeyguardOn.T"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    const/4 v0, 0x1

    .line 3032
    :cond_0
    return v0
.end method

.method public isShowHistoryCountAndMascot()Z
    .locals 4

    .prologue
    .line 7647
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isLockscreenPublicMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7648
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    .line 7653
    :cond_0
    :goto_0
    return v0

    .line 7651
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldHideSensitiveContents(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 7652
    .local v0, "visible":Z
    :goto_1
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneStatusBar.showHideSensitiveContents(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7651
    .end local v0    # "visible":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 2949
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isSnoozed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupportNotificationOnCover()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6851
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-nez v3, :cond_0

    .line 6857
    :goto_0
    return v2

    .line 6855
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->type:I

    if-eq v3, v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    :cond_1
    move v0, v1

    .line 6857
    .local v0, "isSupportedCover":Z
    :goto_1
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->isSupportNotificationOnCover()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    move v2, v1

    goto :goto_0

    .end local v0    # "isSupportedCover":Z
    :cond_2
    move v0, v2

    .line 6855
    goto :goto_1

    .restart local v0    # "isSupportedCover":Z
    :cond_3
    move v1, v2

    .line 6857
    goto :goto_2
.end method

.method public isWakeUpComingFromTouch()Z
    .locals 1

    .prologue
    .line 2819
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWakeUpComingFromTouch:Z

    return v0
.end method

.method public keyguardGoingAway()V
    .locals 1

    .prologue
    .line 5193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardGoingAway:Z

    .line 5194
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->appTransitionPending()V

    .line 5195
    return-void
.end method

.method protected loadDimens()V
    .locals 3

    .prologue
    .line 4531
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4533
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 4536
    const v1, 0x7f0c00e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRowMinHeight:I

    .line 4537
    const v1, 0x7f0c00e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRowMaxHeight:I

    .line 4539
    const v1, 0x7f0f0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMaxNotificationCount:I

    .line 4542
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->canSetDcmLauncher()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4543
    const v1, 0x7f0f0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMaxNotificationCountForDCM:I

    .line 4547
    :cond_0
    const v1, 0x7f0f0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMaxNotificationCountForMobileKeyboard:I

    .line 4552
    const v1, 0x7f0f0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverMaxNotificationCount:I

    .line 4554
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "PhoneStatusBar"

    const-string v2, "updateResources"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4555
    :cond_1
    return-void
.end method

.method makeExpandedInvisible()V
    .locals 1

    .prologue
    .line 3256
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisible(Z)V

    .line 3257
    return-void
.end method

.method makeExpandedInvisible(Z)V
    .locals 5
    .param p1, "shouldUnlock"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3261
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeExpandedInvisible: mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-nez v0, :cond_1

    .line 3322
    :cond_0
    :goto_0
    return-void

    .line 3267
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQsEditPanel(Z)V

    .line 3270
    if-nez p1, :cond_5

    .line 3271
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3272
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->instantExpand()V

    .line 3273
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v0, v4, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 3274
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToKeyguard()V

    goto :goto_0

    .line 3276
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToCover()V

    goto :goto_0

    .line 3284
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v3, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(ZZF)V

    .line 3287
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQs()V

    .line 3288
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/QSPanel;->setQsTileLine(Z)I

    .line 3290
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    .line 3291
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_6

    .line 3292
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 3293
    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->visibilityChanged(Z)V

    .line 3296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setPanelVisible(Z)V

    .line 3297
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceStatusBarVisible(Z)V

    .line 3300
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setFocusable(Z)V

    .line 3304
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissPopups()V

    .line 3306
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->runPostCollapseRunnables()V

    .line 3307
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    .line 3308
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showBouncer()V

    .line 3309
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified1:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified2:I

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IIZ)V

    .line 3313
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3314
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    .line 3318
    :cond_7
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSwipeBlockNotification:Z

    if-eqz v0, :cond_0

    .line 3319
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->snapContentViews(Landroid/view/View;Z)V

    goto/16 :goto_0
.end method

.method makeExpandedVisible(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3063
    const-string v2, "PhoneStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Make expanded visible: expanded visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    if-nez p1, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    if-nez v2, :cond_2

    .line 3091
    :cond_1
    :goto_0
    return-void

    .line 3068
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    .line 3069
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v2, :cond_3

    .line 3070
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 3074
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setPanelVisible(Z)V

    .line 3077
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setFocusable(Z)V

    .line 3080
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->visibilityChanged(Z)V

    .line 3081
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    .line 3082
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified1:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified2:I

    if-nez p1, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p0, v2, v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IIZ)V

    .line 3083
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    .line 3085
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowDataUsageInQuickPanel:Z

    if-eqz v0, :cond_1

    .line 3086
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateShowDataUsageVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3087
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDataUsageView:Lcom/android/systemui/statusbar/phone/DataUsageView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DataUsageView;->updateUsageInfo()V

    goto :goto_0
.end method

.method protected makeStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    .locals 37

    .prologue
    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    .line 973
    .local v20, "context":Landroid/content/Context;
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    .line 975
    .local v30, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 976
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateResources()V

    .line 977
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->canSetDcmLauncher()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 978
    new-instance v4, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDcmKeyguardMascotUtils:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    .line 981
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDiagnosticLogs:Z

    .line 985
    const v4, 0x7f0400ac

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 987
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 988
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$11;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$11;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0e02e4

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 1002
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0e032a

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/android/systemui/statusbar/phone/PanelHolder;

    .line 1005
    .local v23, "holder":Lcom/android/systemui/statusbar/phone/PanelHolder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setPanelHolder(Lcom/android/systemui/statusbar/phone/PanelHolder;)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1011
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0e02ed

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 1013
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/effect/KeyguardEffectViewController;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardEffectController:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    .line 1016
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0e0325

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackground:Landroid/view/View;

    .line 1067
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardEffectController:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackground:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v8, 0x7f0e032c

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4, v5, v6, v8}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->setEffectLayout(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0e032d

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    .line 1082
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v5, 0x7f0e008a

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    .line 1084
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->initLayout()V

    .line 1086
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$13;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$13;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->setNotiSettingButtonClicker(Landroid/view/View$OnClickListener;)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setCarrierAndClearLayout(Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;)V

    .line 1102
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v5, 0x7f0e008d

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/widget/TextView;

    .line 1103
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/widget/TextView;

    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1112
    new-instance v4, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v0, v20

    invoke-direct {v4, v0, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;-><init>(Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 1113
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1114
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/HeadsUpManager$OnHeadsUpChangedListener;)V

    .line 1115
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/HeadsUpManager$OnHeadsUpChangedListener;)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationData;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 1127
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v4}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v33

    .line 1128
    .local v33, "showNav":Z
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "PhoneStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasNavigationBar="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_1
    if-eqz v33, :cond_2

    .line 1130
    const v4, 0x7f040047

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 1133
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled1:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 1134
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setOnVerticalChangedListener(Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1156
    .end local v33    # "showNav":Z
    :cond_2
    :goto_0
    new-instance v4, Lcom/android/systemui/assist/AssistManager;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/android/systemui/assist/AssistManager;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    .line 1159
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v4}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz v4, :cond_3

    .line 1161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v4}, Lcom/android/systemui/assist/AssistManager;->onConfigurationChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1170
    :cond_3
    :goto_1
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPixelFormat:I

    .line 1172
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0e02f1

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 1174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V

    .line 1175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    .line 1177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 1178
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setOnGroupChangeListener(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;)V

    .line 1180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400a3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    .line 1183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V

    .line 1184
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOverflowClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverflowContainer(Lcom/android/systemui/statusbar/NotificationOverflowContainer;)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400a7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v36

    check-cast v36, Lcom/android/systemui/statusbar/SpeedBumpView;

    .line 1189
    .local v36, "speedBump":Lcom/android/systemui/statusbar/SpeedBumpView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setSpeedBumpView(Lcom/android/systemui/statusbar/SpeedBumpView;)V

    .line 1190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400a0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/EmptyShadeView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 1192
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setEmptyShadeView(Lcom/android/systemui/statusbar/EmptyShadeView;)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400a2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/DismissView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    .line 1204
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDismissView(Lcom/android/systemui/statusbar/DismissView;)V

    .line 1205
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedContents:Landroid/view/View;

    .line 1207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0e0322

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/BackDropView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    .line 1208
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const v5, 0x7f0e0324

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/BackDropView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    .line 1209
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const v5, 0x7f0e0323

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/BackDropView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    .line 1211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0e0326

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Lcom/android/systemui/statusbar/ScrimView;

    .line 1212
    .local v31, "scrimBehind":Lcom/android/systemui/statusbar/ScrimView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0e032e

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Lcom/android/systemui/statusbar/ScrimView;

    .line 1213
    .local v32, "scrimInFront":Lcom/android/systemui/statusbar/ScrimView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0e0327

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 1214
    .local v22, "headsUpScrim":Landroid/view/View;
    new-instance v4, Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimSrcModeEnabled:Z

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v22

    invoke-direct {v4, v0, v1, v2, v5}, Lcom/android/systemui/statusbar/phone/ScrimController;-><init>(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Landroid/view/View;Z)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 1216
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/HeadsUpManager$OnHeadsUpChangedListener;)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 1218
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/ScrimController;->setBackDropView(Lcom/android/systemui/statusbar/BackDropView;)V

    .line 1219
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v6, 0x7f0e0325

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/effect/EffectBehindView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->setEffectBehindView(Lcom/android/keyguard/effect/EffectBehindView;)V

    .line 1220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 1221
    new-instance v4, Lcom/android/systemui/statusbar/phone/DozeScrimController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v0, v20

    invoke-direct {v4, v5, v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 1223
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0e02f6

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    .line 1228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->setActivityStarter(Lcom/android/systemui/statusbar/phone/ActivityStarter;)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0e012f

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 1230
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0e02b2

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusView:Landroid/view/View;

    .line 1231
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0e00f4

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 1233
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setActivityStarter(Lcom/android/systemui/statusbar/phone/ActivityStarter;)V

    .line 1234
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAssistManager(Lcom/android/systemui/assist/AssistManager;)V

    .line 1235
    new-instance v5, Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v8, 0x7f0e0066

    invoke-virtual {v4, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v8

    invoke-direct {v5, v6, v4, v8}, Lcom/android/systemui/statusbar/KeyguardIndicationController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 1239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 1242
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->canSetDcmLauncher()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1243
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1244
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->setActivityStarter(Lcom/android/systemui/statusbar/phone/ActivityStarter;)V

    .line 1245
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->setAssistManager(Lcom/android/systemui/assist/AssistManager;)V

    .line 1248
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 1250
    new-instance v4, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    invoke-direct {v4, v5, v6, v8, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1254
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "PhoneStatusBar"

    const/16 v6, 0xa

    invoke-direct {v4, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1255
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 1258
    new-instance v4, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    .line 1260
    new-instance v4, Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/policy/BatteryController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 1261
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 1287
    new-instance v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 1288
    new-instance v4, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    .line 1289
    new-instance v4, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 1290
    new-instance v4, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 1291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1292
    new-instance v4, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    .line 1294
    :cond_5
    new-instance v4, Lcom/android/systemui/statusbar/policy/UserInfoController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/policy/UserInfoController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 1295
    const-class v4, Lcom/android/systemui/volume/VolumeComponent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/VolumeComponent;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    .line 1296
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    if-eqz v4, :cond_6

    .line 1297
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    invoke-interface {v4}, Lcom/android/systemui/volume/VolumeComponent;->getZenController()Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 1299
    :cond_6
    new-instance v4, Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    .line 1300
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v5, 0x7f0e0332

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 1302
    .local v34, "signalCluster":Lcom/android/systemui/statusbar/SignalClusterView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v5, 0x7f0e0332

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 1311
    .local v35, "signalClusterKeyguard":Lcom/android/systemui/statusbar/SignalClusterView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 1312
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 1313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V

    .line 1314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 1315
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V

    .line 1316
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 1319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v5, 0x7f0e02f4

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    .line 1320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setCarrierLabel(Landroid/view/View;)V

    .line 1321
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setCarrierLabel(Landroid/widget/TextView;)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasVoiceCallingFeature()Z

    move-result v24

    .line 1331
    .local v24, "isAPhone":Z
    new-instance v4, Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/policy/FlashlightController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 1332
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setFlashlightController(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    .line 1333
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUserSetupComplete(Z)V

    .line 1335
    new-instance v4, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/policy/AccessibilityController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 1336
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAccessibilityController(Lcom/android/systemui/statusbar/policy/AccessibilityController;)V

    .line 1337
    new-instance v4, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/policy/NextAlarmController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 1338
    new-instance v4, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 1339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isUserSwitcherAvailable(Landroid/os/UserManager;)Z

    move-result v4

    if-nez v4, :cond_7

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mSupportTwoPhone:Z

    if-nez v4, :cond_7

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mSupportDualNumber:Z

    if-eqz v4, :cond_8

    .line 1341
    :cond_7
    new-instance v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-object/from16 v0, p0

    invoke-direct {v4, v5, v6, v8, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 1346
    :cond_8
    new-instance v4, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSoundPathController:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    .line 1348
    new-instance v4, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWifiP2pController:Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;

    .line 1350
    new-instance v3, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v6, 0x7f0e02f2

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;-><init>(Landroid/content/Context;Landroid/view/ViewStub;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 1355
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1356
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0e01b9

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 1361
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v4, :cond_9

    .line 1362
    new-instance v3, Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSoundPathController:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWifiP2pController:Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;

    move-object/from16 v18, v0

    move-object/from16 v5, p0

    invoke-direct/range {v3 .. v18}, Lcom/android/systemui/statusbar/phone/QSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;Lcom/android/systemui/statusbar/policy/SoundPathController;Lcom/android/systemui/statusbar/policy/WifiP2pController;)V

    .line 1368
    .local v3, "qsh":Lcom/android/systemui/statusbar/phone/QSTileHost;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4, v3}, Lcom/android/systemui/qs/QSPanel;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 1369
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 1371
    new-instance v4, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 1373
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBrightnessMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 1377
    new-instance v4, Lcom/android/systemui/qs/QuickConnectSoundPathView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v8, 0x7f0e01c2

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/qs/QuickConnectSoundPathView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickConnectSoundPathView:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    .line 1378
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickConnectSoundPathView:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 1379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickConnectSoundPathView:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isOwnerProfile(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->setOwnerProfile(Z)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 1386
    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/QSTileHost;->setCallback(Lcom/android/systemui/qs/QSTile$Host$Callback;)V

    .line 1393
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSPanel;->setQsTileLine(Z)I

    .line 1398
    .end local v3    # "qsh":Lcom/android/systemui/statusbar/phone/QSTileHost;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V

    .line 1399
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V

    .line 1400
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setUserSwitcherController(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 1401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/UserInfoController;->reloadUserInfo()V

    .line 1406
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v5, 0x7f0e0334

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/BatteryMeterView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v4, v5}, Lcom/android/systemui/BatteryMeterView;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 1408
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 1414
    const-string v4, "HOME"

    sget-object v5, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "BOTH"

    sget-object v5, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1415
    :cond_a
    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOperatorLogoIcon:Landroid/widget/ImageView;

    .line 1417
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOperatorLogoIcon:Landroid/widget/ImageView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    const/4 v8, -0x1

    invoke-direct {v5, v6, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1421
    const-string v4, "ORANGE"

    sget-object v5, Lcom/android/systemui/statusbar/Feature;->mStatusBarIconOpBranding:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOperatorLogoIcon:Landroid/widget/ImageView;

    const v5, 0x7f02048b

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1430
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOperatorLogoIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setOperatorLogoIndicator(Landroid/widget/ImageView;)V

    .line 1435
    :cond_c
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mPLMNShowOnIndicator:Z

    if-eqz v4, :cond_e

    .line 1436
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    .line 1437
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    const/4 v8, -0x1

    invoke-direct {v5, v6, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1440
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1441
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1442
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    const/4 v5, 0x0

    const v6, 0x7f0c02d5

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1444
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setStatusBarCarrierLabelView(Landroid/widget/TextView;)V

    .line 1445
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    if-eqz v4, :cond_d

    .line 1446
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setStatusBarCarrierLabel(Landroid/widget/TextView;)V

    .line 1448
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->showStatusBarCarrierLabel()V

    .line 1453
    :cond_e
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mSupportTwoPhone:Z

    if-eqz v4, :cond_12

    .line 1454
    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    .line 1456
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    const/4 v8, -0x1

    invoke-direct {v5, v6, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1460
    const-string v4, "persist.sys.show_multiuserui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 1461
    .local v25, "isTwoPhoneMode":Z
    if-eqz v25, :cond_11

    .line 1462
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v21

    .line 1463
    .local v21, "currentId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "two_call_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_19

    const/16 v19, 0x1

    .line 1464
    .local v19, "callEnabled":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "two_sms_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    const/16 v27, 0x1

    .line 1465
    .local v27, "msgEnabled":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "two_register"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1b

    const/16 v29, 0x1

    .line 1466
    .local v29, "registered":Z
    :goto_5
    const-string v4, "PhoneStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateTwoPhone: currentId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    const v26, 0x7f02058b

    .line 1468
    .local v26, "modeIconId":I
    if-eqz v21, :cond_10

    .line 1469
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTwoPhoneCallEnabled:Z

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTwoPhoneMsgEnabled:Z

    if-eqz v4, :cond_1c

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTwoPhoneRegistered:Z

    if-eqz v4, :cond_1c

    .line 1470
    const v26, 0x7f020589

    .line 1475
    :cond_10
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1477
    .end local v19    # "callEnabled":Z
    .end local v21    # "currentId":I
    .end local v26    # "modeIconId":I
    .end local v27    # "msgEnabled":Z
    .end local v29    # "registered":Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setTwoPhoneModeIcon(Landroid/widget/ImageView;)V

    .line 1479
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "two_register"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTwoPhoneSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1480
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "two_account"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTwoPhoneSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1481
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "two_call_enabled"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTwoPhoneSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1482
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "two_sms_enabled"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTwoPhoneSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1483
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTwoPhoneSettingObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1489
    .end local v25    # "isTwoPhoneMode":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "access_control_enabled"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInterActionControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1493
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/PowerManager;

    .line 1498
    .local v28, "pm":Landroid/os/PowerManager;
    const/16 v4, 0xa

    const-string v5, "GestureWakeLock"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1500
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/Vibrator;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVibrator:Landroid/os/Vibrator;

    .line 1503
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "display_battery_percentage"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    invoke-virtual {v4, v5, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1505
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;->onChange(Z)V

    .line 1509
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 1510
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v7, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1516
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1519
    const-string v4, "com.samsung.systemui.statusbar.OPERATOR_LOGO_UPDATE"

    invoke-virtual {v7, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1522
    const-string v4, "samsung.intent.action.knoxcustom.SET_QUICK_PANEL_ITEMS"

    invoke-virtual {v7, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1525
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v4

    if-nez v4, :cond_13

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mShowDataUsageInQuickPanel:Z

    if-eqz v4, :cond_14

    .line 1526
    :cond_13
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v7, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1527
    const-string v4, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v7, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1529
    :cond_14
    const-string v4, "com.samsung.pen.INSERT"

    invoke-virtual {v7, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1532
    const-string v4, "com.sec.knox.keyguard.show"

    invoke-virtual {v7, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1535
    const-string v4, "com.sec.aecmonitor.ONE_CYCLE_FINISH"

    invoke-virtual {v7, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1537
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, v20

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1566
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 1570
    .local v11, "demoFilter":Landroid/content/IntentFilter;
    const-string v4, "com.android.systemui.demo"

    invoke-virtual {v11, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1571
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoReceiver:Landroid/content/BroadcastReceiver;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v12, "android.permission.DUMP"

    const/4 v13, 0x0

    move-object/from16 v8, v20

    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1575
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetUserSetupObserver()V

    .line 1578
    const-string v4, "disableProfileBars"

    const-string v5, "true"

    invoke-static {v4, v5}, Landroid/view/ThreadedRenderer;->overrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    const-string v4, "ambientRatio"

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/view/ThreadedRenderer;->overrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "emergency_mode"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyeModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;

    invoke-virtual {v4, v5, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1586
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyeModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->onChange(Z)V

    .line 1588
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_button_background"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mButtonBackgroundObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ButtonBackgroundObserver;

    invoke-virtual {v4, v5, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1590
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mButtonBackgroundObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ButtonBackgroundObserver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "show_button_background"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-static {v4, v6, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1d

    const/4 v4, 0x1

    :goto_7
    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ButtonBackgroundObserver;->onChange(Z)V

    .line 1592
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "qconnectchecked"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickConnectSoundPathViewObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$QuickConnectSoundPathViewObserver;

    invoke-virtual {v4, v5, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1594
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickConnectSoundPathViewObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$QuickConnectSoundPathViewObserver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "qconnectchecked"

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-static {v4, v6, v8, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1e

    const/4 v4, 0x1

    :goto_8
    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$QuickConnectSoundPathViewObserver;->onChange(Z)V

    .line 1599
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v5, 0x7f0e0331

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSignalBatteryIcons:Landroid/widget/LinearLayout;

    .line 1603
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mShowDataUsageInQuickPanel:Z

    if-eqz v4, :cond_15

    .line 1604
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v5, 0x7f0e00c3

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/DataUsageView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDataUsageView:Lcom/android/systemui/statusbar/phone/DataUsageView;

    .line 1605
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDataUsageView:Lcom/android/systemui/statusbar/phone/DataUsageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getMobileDataController()Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/DataUsageView;->setMobileDataController(Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;)V

    .line 1609
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object v4

    .line 1423
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v11    # "demoFilter":Landroid/content/IntentFilter;
    .end local v28    # "pm":Landroid/os/PowerManager;
    :cond_16
    const-string v4, "KTT"

    sget-object v5, Lcom/android/systemui/statusbar/Feature;->mStatusBarIconOpBranding:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1424
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOperatorLogoIcon:Landroid/widget/ImageView;

    const v5, 0x7f020489

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1425
    :cond_17
    const-string v4, "LGT"

    sget-object v5, Lcom/android/systemui/statusbar/Feature;->mStatusBarIconOpBranding:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1426
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOperatorLogoIcon:Landroid/widget/ImageView;

    const v5, 0x7f02048a

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1427
    :cond_18
    const-string v4, "SKT"

    sget-object v5, Lcom/android/systemui/statusbar/Feature;->mStatusBarIconOpBranding:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1428
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOperatorLogoIcon:Landroid/widget/ImageView;

    const v5, 0x7f02048c

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1463
    .restart local v21    # "currentId":I
    .restart local v25    # "isTwoPhoneMode":Z
    :cond_19
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1464
    .restart local v19    # "callEnabled":Z
    :cond_1a
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 1465
    .restart local v27    # "msgEnabled":Z
    :cond_1b
    const/16 v29, 0x0

    goto/16 :goto_5

    .line 1472
    .restart local v26    # "modeIconId":I
    .restart local v29    # "registered":Z
    :cond_1c
    const v26, 0x7f02058a

    goto/16 :goto_6

    .line 1590
    .end local v19    # "callEnabled":Z
    .end local v21    # "currentId":I
    .end local v25    # "isTwoPhoneMode":Z
    .end local v26    # "modeIconId":I
    .end local v27    # "msgEnabled":Z
    .end local v29    # "registered":Z
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    .restart local v11    # "demoFilter":Landroid/content/IntentFilter;
    .restart local v28    # "pm":Landroid/os/PowerManager;
    :cond_1d
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 1594
    :cond_1e
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 1164
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v11    # "demoFilter":Landroid/content/IntentFilter;
    .end local v22    # "headsUpScrim":Landroid/view/View;
    .end local v24    # "isAPhone":Z
    .end local v28    # "pm":Landroid/os/PowerManager;
    .end local v31    # "scrimBehind":Lcom/android/systemui/statusbar/ScrimView;
    .end local v32    # "scrimInFront":Lcom/android/systemui/statusbar/ScrimView;
    .end local v34    # "signalCluster":Lcom/android/systemui/statusbar/SignalClusterView;
    .end local v35    # "signalClusterKeyguard":Lcom/android/systemui/statusbar/SignalClusterView;
    .end local v36    # "speedBump":Lcom/android/systemui/statusbar/SpeedBumpView;
    :catch_0
    move-exception v4

    goto/16 :goto_1

    .line 1152
    :catch_1
    move-exception v4

    goto/16 :goto_0
.end method

.method public maybeEscalateHeadsUp()V
    .locals 7

    .prologue
    .line 2991
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getSortedEntries()Ljava/util/TreeSet;

    move-result-object v0

    .line 2992
    .local v0, "entries":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;>;"
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 2993
    .local v1, "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    iget-object v5, v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v4, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 2994
    .local v4, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 2995
    .local v3, "notification":Landroid/app/Notification;
    iget-object v5, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_0

    .line 2996
    sget-boolean v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 2997
    const-string v5, "PhoneStatusBar"

    const-string v6, "converting a heads up to fullScreen"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    :cond_1
    const v5, 0x8ca3

    :try_start_0
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3002
    iget-object v5, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->send()V

    .line 3003
    iget-object v5, v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationData$Entry;->notifyFullScreenIntentLaunched()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3004
    :catch_0
    move-exception v5

    goto :goto_0

    .line 3008
    .end local v1    # "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    .end local v3    # "notification":Landroid/app/Notification;
    .end local v4    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseAllImmediately()V

    .line 3009
    return-void
.end method

.method public notificationLightOff()V
    .locals 2

    .prologue
    .line 3421
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    if-eqz v0, :cond_0

    .line 3422
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->fireNotificationLight(Z)V

    .line 3424
    :cond_0
    return-void
.end method

.method public notificationLightPulse(III)V
    .locals 2
    .param p1, "argb"    # I
    .param p2, "onMillis"    # I
    .param p3, "offMillis"    # I

    .prologue
    .line 3428
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    if-eqz v0, :cond_0

    .line 3429
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->fireNotificationLight(Z)V

    .line 3431
    :cond_0
    return-void
.end method

.method public notifyFpAuthModeChanged()V
    .locals 0

    .prologue
    .line 6200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDozing()V

    .line 6201
    return-void
.end method

.method public notifyRecentPanelVisiblity(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 6444
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRecentPanelVisiblity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6446
    if-eqz p1, :cond_0

    .line 6447
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 6451
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 6453
    return-void

    .line 6449
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    goto :goto_0
.end method

.method public onActivated(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 14
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    const v11, 0x7f0d0312

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 5544
    const/4 v8, 0x7

    invoke-static {v8, v7, v7}, Lcom/android/systemui/EventLogTags;->writeSysuiLockscreenGesture(III)V

    .line 5548
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v2

    .line 5549
    .local v2, "isSmartLock":Z
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->useIndependentLockTimeout()Z

    move-result v8

    if-eqz v8, :cond_0

    sget-boolean v8, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v8, :cond_0

    move v1, v6

    .line 5551
    .local v1, "isInSecureByLockTimeout":Z
    :goto_0
    const/4 v3, 0x0

    .line 5552
    .local v3, "mobileKeyboardConnected":Z
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v3

    .line 5554
    if-nez v2, :cond_3

    if-nez v1, :cond_3

    if-nez v3, :cond_3

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getFingerPrintLockscreenState(I)I

    move-result v8

    if-ne v8, v6, :cond_3

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryScreenLocked()Z

    move-result v8

    if-nez v8, :cond_3

    .line 5558
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemainingAttemptsBeforeWipe()I

    move-result v5

    .line 5559
    .local v5, "remainingAttemptsBeforeWipe":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    .line 5560
    .local v0, "attempts":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0xa

    if-le v0, v8, :cond_2

    if-lez v5, :cond_2

    .line 5561
    if-ne v5, v6, :cond_1

    .line 5562
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v11, 0x7f0d0093

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;)V

    .line 5577
    .end local v0    # "attempts":I
    .end local v5    # "remainingAttemptsBeforeWipe":I
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->showHelpTextBounceAnimation()V

    .line 5580
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v4

    .line 5581
    .local v4, "previousView":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    if-eqz v4, :cond_6

    .line 5583
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 5584
    invoke-virtual {v4, v6, v7}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(ZZ)V

    .line 5593
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 5594
    return-void

    .end local v1    # "isInSecureByLockTimeout":Z
    .end local v3    # "mobileKeyboardConnected":Z
    .end local v4    # "previousView":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    :cond_0
    move v1, v7

    .line 5549
    goto/16 :goto_0

    .line 5565
    .restart local v0    # "attempts":I
    .restart local v1    # "isInSecureByLockTimeout":Z
    .restart local v3    # "mobileKeyboardConnected":Z
    .restart local v5    # "remainingAttemptsBeforeWipe":I
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v11, 0x7f0d0092

    new-array v12, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v7

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;)V

    goto :goto_1

    .line 5569
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    goto :goto_1

    .line 5572
    .end local v0    # "attempts":I
    .end local v5    # "remainingAttemptsBeforeWipe":I
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 5573
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v9, 0x7f0d0314

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    goto :goto_1

    .line 5575
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v9, 0x7f0d0313

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    goto :goto_1

    .line 5586
    .restart local v4    # "previousView":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    :cond_5
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mActivated:Z

    goto :goto_2

    .line 5591
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v8, v7, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardClockBottomShortcutVisibility(ZZ)V

    goto :goto_2
.end method

.method public onActivationReset(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V
    .locals 3
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .param p2, "timeout"    # Z

    .prologue
    const/4 v2, 0x1

    .line 5632
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 5633
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 5635
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mActivated:Z

    .line 5637
    if-eqz p2, :cond_2

    .line 5638
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    .line 5639
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardClockBottomShortcutVisibility(ZZ)V

    .line 5640
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5641
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->resetKeyguardDismissAction()V

    .line 5644
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5645
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->cancelCoverDismissAction()V

    .line 5650
    :cond_2
    return-void
.end method

.method public onBackPressed()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 5477
    const-string v2, "PhoneStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBackPressed : state - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5478
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5506
    :goto_0
    return v0

    .line 5482
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v2, v5, :cond_1

    .line 5483
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToKeyguard()V

    goto :goto_0

    .line 5486
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 5487
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToCover()V

    goto :goto_0

    .line 5489
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5490
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5491
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQsDetail()V

    goto :goto_0

    .line 5492
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isQsEditPanelOpened()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5493
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQsEditPanel(Z)V

    goto :goto_0

    .line 5495
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    goto :goto_0

    .line 5498
    :cond_5
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v2, v0, :cond_6

    .line 5499
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->deactivateNotificationRow()V

    .line 5502
    :cond_6
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v2, v0, :cond_7

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v2, v5, :cond_7

    .line 5503
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    goto :goto_0

    :cond_7
    move v0, v1

    .line 5506
    goto :goto_0
.end method

.method public onCameraLaunchGestureDetected(I)V
    .locals 6
    .param p1, "source"    # I

    .prologue
    const/4 v2, 0x1

    .line 6162
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastCameraLaunchSource:I

    .line 6163
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStartedGoingToSleep:Z

    if-eqz v1, :cond_1

    .line 6164
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchCameraOnFinishedGoingToSleep:Z

    .line 6197
    :cond_0
    :goto_0
    return-void

    .line 6167
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->canCameraGestureBeLaunched(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6171
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDeviceInteractive:Z

    if-nez v1, :cond_2

    .line 6172
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 6173
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-string v1, "com.android.systemui:CAMERA_GESTURE"

    invoke-virtual {v0, v4, v5, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 6174
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyDeviceWakeUpRequested()V

    .line 6176
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->vibrateForCameraGesture()V

    .line 6177
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    if-nez v1, :cond_4

    .line 6178
    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_0

    .line 6167
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 6181
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDeviceInteractive:Z

    if-nez v1, :cond_5

    .line 6184
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->dontAnimateBouncerChangesUntilNextFrame()V

    .line 6185
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x1770

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 6187
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenTurningOn:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isScreenTurnedOn()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6188
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDeviceInteractive:Z

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->launchCamera(ZI)V

    goto :goto_0

    .line 6194
    :cond_7
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchCameraOnScreenTurningOn:Z

    goto :goto_0
.end method

.method public onClosingFinished()V
    .locals 0

    .prologue
    .line 5658
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->runPostCollapseRunnables()V

    .line 5659
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 4400
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4402
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4403
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configuration changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4405
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 4407
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateResources()V

    .line 4408
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V

    .line 4409
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateRowStates()V

    .line 4410
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->updateResources()V

    .line 4411
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-virtual {v0}, Lcom/android/systemui/recents/ScreenPinningRequest;->onConfigurationChanged()V

    .line 4412
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onConfigurationChanged()V

    .line 4413
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickConnectSoundPathView:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->onConfigurationChanged()V

    .line 4416
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_2

    .line 4417
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastOrientation:I

    .line 4418
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 4431
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSwipeBlockNotification:Z

    if-eqz v0, :cond_2

    .line 4432
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->snapContentViews(Landroid/view/View;Z)V

    .line 4437
    :cond_2
    return-void

    .line 4422
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_1

    .line 4423
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->marqueeStatusBar()V

    goto :goto_0

    .line 4418
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCoverAppCovered(Z)I
    .locals 4
    .param p1, "covered"    # Z

    .prologue
    .line 6759
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-nez v1, :cond_2

    .line 6760
    const/4 v0, 0x1

    .line 6767
    .local v0, "result":I
    :goto_0
    if-eqz p1, :cond_0

    .line 6768
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->cancelCoverDismissAction()V

    .line 6771
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-eq p1, v1, :cond_1

    .line 6772
    const-string v1, "CoverUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCoverAppCovered - covered:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6773
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    .line 6775
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCoverWindow()V

    .line 6777
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverLauncher:Lcom/android/systemui/cover/SViewCoverLauncher;

    if-eqz v1, :cond_1

    .line 6778
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverLauncher:Lcom/android/systemui/cover/SViewCoverLauncher;

    invoke-virtual {v1, p1}, Lcom/android/systemui/cover/SViewCoverLauncher;->onCoverAppCovered(Z)V

    .line 6782
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-eqz v1, :cond_4

    .line 6783
    or-int/lit8 v0, v0, 0x10

    .line 6788
    :goto_1
    return v0

    .line 6761
    .end local v0    # "result":I
    :cond_2
    if-nez p1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-eqz v1, :cond_3

    .line 6762
    const/4 v0, 0x2

    .restart local v0    # "result":I
    goto :goto_0

    .line 6764
    .end local v0    # "result":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "result":I
    goto :goto_0

    .line 6785
    :cond_4
    or-int/lit8 v0, v0, 0x20

    goto :goto_1
.end method

.method public onDragDownReset()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5799
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 5800
    return-void
.end method

.method public onDraggedDown(Landroid/view/View;I)Z
    .locals 4
    .param p1, "startingChild"    # Landroid/view/View;
    .param p2, "dragLengthY"    # I

    .prologue
    const/4 v0, 0x0

    .line 5781
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5782
    const/4 v1, 0x2

    int-to-float v2, p2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2, v0}, Lcom/android/systemui/EventLogTags;->writeSysuiLockscreenGesture(III)V

    .line 5788
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToLockedShade(Landroid/view/View;)V

    .line 5789
    const/4 v0, 0x1

    .line 5793
    :cond_0
    return v0
.end method

.method public onFinishedGoingToSleep()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 5929
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    .line 5930
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->releaseGestureWakeLock()V

    .line 5931
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchCameraOnScreenTurningOn:Z

    .line 5932
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStartedGoingToSleep:Z

    .line 5933
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDeviceInteractive:Z

    .line 5934
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWakeUpComingFromTouch:Z

    .line 5935
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWakeUpTouchLocation:Landroid/graphics/PointF;

    .line 5936
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentCoverDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .line 5937
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSviewShortcutIntent:Z

    .line 5938
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationsEnabled(Z)V

    .line 5939
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateVisibleToUser()V

    .line 5942
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5943
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToCover()V

    .line 5948
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_1

    .line 5949
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->marqueeStatusBar()V

    .line 5953
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickConnectSoundPathView:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->dismissDialog()V

    .line 5956
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSwipeBlockNotification:Z

    if-eqz v0, :cond_2

    .line 5957
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->snapContentViews(Landroid/view/View;Z)V

    .line 5962
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onScreenTurnedOff()V

    .line 5963
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardEffectController:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->onScreenTurnedOff()V

    .line 5966
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchCameraOnFinishedGoingToSleep:Z

    if-eqz v0, :cond_3

    .line 5967
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchCameraOnFinishedGoingToSleep:Z

    .line 5971
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 5978
    :cond_3
    return-void
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 2899
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissVolumeDialog()V

    .line 2900
    return-void
.end method

.method public onHeadsUpPinnedModeChanged(Z)V
    .locals 3
    .param p1, "inPinnedMode"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2853
    if-eqz p1, :cond_1

    .line 2854
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setHeadsUpShowing(Z)V

    .line 2855
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceStatusBarVisible(Z)V

    .line 2856
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2861
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestLayout()V

    .line 2862
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceWindowCollapsed(Z)V

    .line 2863
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$30;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$30;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->post(Ljava/lang/Runnable;)Z

    .line 2895
    :cond_0
    :goto_0
    return-void

    .line 2871
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2874
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setHeadsUpShowing(Z)V

    .line 2892
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceStatusBarVisible(Z)V

    goto :goto_0

    .line 2878
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setHeadsUpGoingAway(Z)V

    .line 2879
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->runAfterAnimationFinished(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;ZZ)V
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "isHeadsUp"    # Z
    .param p3, "executeAnim"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2909
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpEntriesToRemoveOnSwitch:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2910
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2911
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpEntriesToRemoveOnSwitch:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2912
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpEntriesToRemoveOnSwitch:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2913
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 2919
    :cond_0
    :goto_0
    return-void

    .line 2916
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_0
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 2904
    return-void
.end method

.method public onHintFinished()V
    .locals 4

    .prologue
    .line 5707
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    .line 5708
    return-void
.end method

.method public onKeyguardViewManagerStatesUpdated()V
    .locals 0

    .prologue
    .line 2843
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->logStateToEventlog()V

    .line 2844
    return-void
.end method

.method public onMenuPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5468
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onMenuPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 6007
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenTurningOn:Z

    .line 6008
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->onScreenTurnedOn()V

    .line 6009
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5989
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenTurningOn:Z

    .line 5990
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onScreenTurningOn()V

    .line 5992
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardEffectController:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->onScreenTurningOn()V

    .line 5994
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setLockIconVisibility()V

    .line 5995
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchCameraOnScreenTurningOn:Z

    if-eqz v0, :cond_0

    .line 5996
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastCameraLaunchSource:I

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->launchCamera(ZI)V

    .line 5997
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchCameraOnScreenTurningOn:Z

    .line 5999
    :cond_0
    return-void
.end method

.method public onSpacePressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 5510
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDeviceInteractive:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 5515
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisible()V

    .line 5519
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStartedGoingToSleep()V
    .locals 1

    .prologue
    .line 5925
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStartedGoingToSleep:Z

    .line 5926
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5981
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDeviceInteractive:Z

    .line 5982
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationsEnabled(Z)V

    .line 5983
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTouchDisabled(Z)V

    .line 5984
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onUnlockHintStarted()V

    .line 5985
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateVisibleToUser()V

    .line 5986
    return-void
.end method

.method public onThresholdReached()V
    .locals 3

    .prologue
    .line 5804
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 5805
    return-void
.end method

.method public onTouchSlopExceeded()V
    .locals 1

    .prologue
    .line 5809
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 5810
    return-void
.end method

.method public onTrackingStarted()V
    .locals 0

    .prologue
    .line 5654
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->runPostCollapseRunnables()V

    .line 5655
    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 2
    .param p1, "expand"    # Z

    .prologue
    .line 5733
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5734
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5740
    :cond_1
    return-void
.end method

.method public onUnlockHintStarted()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    const v10, 0x7f0d0311

    const/4 v5, 0x1

    .line 5662
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v7, :cond_1

    .line 5703
    :cond_0
    :goto_0
    return-void

    .line 5664
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v2

    .line 5667
    .local v2, "isSmartLock":Z
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->useIndependentLockTimeout()Z

    move-result v7

    if-eqz v7, :cond_2

    sget-boolean v7, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v7, :cond_2

    move v1, v5

    .line 5670
    .local v1, "isInSecureByLockTimeout":Z
    :goto_1
    const/4 v3, 0x0

    .line 5671
    .local v3, "mobileKeyboardConnected":Z
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v3

    .line 5673
    const-string v7, "PhoneStatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onUnlockHintStarted isSmartLock = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isInSecureByLockTimeout="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5674
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    .line 5675
    if-nez v2, :cond_5

    if-nez v1, :cond_5

    if-nez v3, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->getFingerPrintLockscreenState(I)I

    move-result v7

    if-ne v7, v5, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryScreenLocked()Z

    move-result v7

    if-nez v7, :cond_5

    .line 5679
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemainingAttemptsBeforeWipe()I

    move-result v4

    .line 5680
    .local v4, "remainingAttemptsBeforeWipe":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    .line 5681
    .local v0, "attempts":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0xa

    if-le v0, v7, :cond_4

    if-lez v4, :cond_4

    .line 5682
    if-ne v4, v5, :cond_3

    .line 5683
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0093

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setRestingIndication(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "attempts":I
    .end local v1    # "isInSecureByLockTimeout":Z
    .end local v3    # "mobileKeyboardConnected":Z
    .end local v4    # "remainingAttemptsBeforeWipe":I
    :cond_2
    move v1, v6

    .line 5667
    goto/16 :goto_1

    .line 5686
    .restart local v0    # "attempts":I
    .restart local v1    # "isInSecureByLockTimeout":Z
    .restart local v3    # "mobileKeyboardConnected":Z
    .restart local v4    # "remainingAttemptsBeforeWipe":I
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v10, 0x7f0d0092

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v6

    invoke-virtual {v9, v10, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setRestingIndication(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5690
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setRestingIndication(I)V

    goto/16 :goto_0

    .line 5693
    .end local v0    # "attempts":I
    .end local v4    # "remainingAttemptsBeforeWipe":I
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/util/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5694
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v6, 0x7f0d04b8

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setRestingIndication(I)V

    goto/16 :goto_0

    .line 5696
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 5697
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v6, 0x7f0d0310

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setRestingIndication(I)V

    goto/16 :goto_0

    .line 5699
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v6, 0x7f0d030f

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setRestingIndication(I)V

    goto/16 :goto_0
.end method

.method public onUnlockMethodStateChanged()V
    .locals 0

    .prologue
    .line 2848
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->logStateToEventlog()V

    .line 2849
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 6095
    if-eqz p1, :cond_0

    .line 6096
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 6100
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 6101
    return-void

    .line 6098
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    goto :goto_0
.end method

.method panelsEnabled()Z
    .locals 9

    .prologue
    const/high16 v8, 0x10000

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3044
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardCurrentlySecure()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    .line 3049
    .local v2, "shouldBeDisabled":Z
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled1:I

    .line 3050
    .local v0, "disabledFlag":I
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKnoxKeyguardShown:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3051
    :cond_0
    const v5, -0x10001

    and-int/2addr v0, v5

    .line 3053
    :cond_1
    and-int v5, v0, v8

    if-nez v5, :cond_4

    sget-boolean v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ONLY_CORE_APPS:Z

    if-nez v5, :cond_4

    if-nez v2, :cond_4

    move v1, v3

    .line 3055
    .local v1, "isEnabled":Z
    :goto_1
    if-nez v1, :cond_2

    .line 3056
    const-string v6, "PhoneStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "panelsEnabled - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    and-int v5, v0, v8

    if-nez v5, :cond_5

    move v5, v3

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ONLY_CORE_APPS:Z

    if-nez v5, :cond_6

    move v5, v3

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v2, :cond_7

    :goto_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3059
    :cond_2
    return v1

    .end local v0    # "disabledFlag":I
    .end local v1    # "isEnabled":Z
    .end local v2    # "shouldBeDisabled":Z
    :cond_3
    move v2, v4

    .line 3044
    goto :goto_0

    .restart local v0    # "disabledFlag":I
    .restart local v2    # "shouldBeDisabled":Z
    :cond_4
    move v1, v4

    .line 3053
    goto :goto_1

    .restart local v1    # "isEnabled":Z
    :cond_5
    move v5, v4

    .line 3056
    goto :goto_2

    :cond_6
    move v5, v4

    goto :goto_3

    :cond_7
    move v3, v4

    goto :goto_4
.end method

.method public postAnimateCollapsePanels()V
    .locals 2

    .prologue
    .line 3105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimateCollapsePanels:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 3106
    return-void
.end method

.method public postQSButtonClickOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4314
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 4315
    .local v1, "isKeyguardShowingAndLocked":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v1, :cond_2

    .line 4354
    :cond_0
    :goto_1
    return v3

    .end local v1    # "isKeyguardShowingAndLocked":Z
    :cond_1
    move v1, v3

    .line 4314
    goto :goto_0

    .line 4319
    .restart local v1    # "isKeyguardShowingAndLocked":Z
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clickDeferredTile:Lcom/android/systemui/qs/QSTile;

    .line 4320
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clickDeferredTile:Lcom/android/systemui/qs/QSTile;

    if-eqz v4, :cond_4

    .line 4321
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clickDeferredTile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTile;->getActionTypeOnCover()I

    move-result v0

    .line 4322
    .local v0, "actionTypeOnCover":I
    if-eqz v0, :cond_0

    if-nez v1, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    .line 4326
    :cond_3
    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    .line 4327
    const v3, 0x7f0d04a4

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showCoverOpenPopup(I)V

    move v3, v2

    .line 4328
    goto :goto_1

    .line 4333
    .end local v0    # "actionTypeOnCover":I
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    move v3, v2

    .line 4354
    goto :goto_1
.end method

.method public postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 4699
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 4705
    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "delay"    # I

    .prologue
    .line 4708
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$47;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$47;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Intent;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4714
    return-void
.end method

.method public preventNextAnimation()V
    .locals 1

    .prologue
    .line 2800
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->overrideActivityPendingAppTransition(Z)V

    .line 2801
    return-void
.end method

.method protected refreshLayout(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1984
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 1985
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutDirection(I)V

    .line 1987
    :cond_0
    return-void
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 1
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeSystemIcon(Ljava/lang/String;II)V

    .line 1867
    return-void
.end method

.method public removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    const/4 v2, 0x1

    .line 1951
    const/4 v0, 0x0

    .line 1952
    .local v0, "deferRemoval":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1953
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeNotification(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    .line 1955
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1956
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clearCurrentMediaNotification()V

    .line 1957
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateMediaMetaData(Z)V

    .line 1959
    :cond_1
    if-eqz v0, :cond_3

    .line 1960
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 1961
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpEntriesToRemoveOnSwitch:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1980
    :goto_1
    return-void

    .line 1953
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1964
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 1965
    .local v1, "old":Landroid/service/notification/StatusBarNotification;
    const-string v2, "PhoneStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeNotification key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " old="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    if-eqz v1, :cond_4

    .line 1968
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTracking()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1970
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v2, :cond_5

    .line 1971
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 1979
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    goto :goto_1

    .line 1972
    :cond_5
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 1973
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToKeyguard()V

    goto :goto_2

    .line 1974
    :cond_6
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    .line 1975
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToCover()V

    goto :goto_2
.end method

.method public resetActiveTimeOfNotificationRow()V
    .locals 2

    .prologue
    .line 7533
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 7534
    .local v0, "activatedChild":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    if-eqz v0, :cond_0

    .line 7535
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->resetActiveTime()V

    .line 7537
    :cond_0
    return-void
.end method

.method public sendDiagnosticLogs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 6982
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDiagnosticLogs:Z

    if-eqz v0, :cond_0

    .line 6983
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->sendLogs(Ljava/lang/String;Ljava/lang/String;)V

    .line 6985
    :cond_0
    return-void
.end method

.method protected setAreThereNotifications()V
    .locals 10

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2258
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationData;->hasActiveClearableNotifications()Z

    move-result v7

    if-eqz v7, :cond_2

    move v0, v3

    .line 2260
    .local v0, "clearable":Z
    :goto_0
    const-string v7, "PhoneStatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setAreThereNotifications: N="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " any="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " clearable="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v8, 0x7f0e02e5

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2266
    .local v1, "nlo":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->areLightsOn()Z

    move-result v7

    if-nez v7, :cond_3

    move v2, v3

    .line 2267
    .local v2, "showDot":Z
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v7

    cmpl-float v7, v7, v5

    if-nez v7, :cond_4

    :goto_2
    if-eq v2, v3, :cond_1

    .line 2268
    if-eqz v2, :cond_0

    .line 2269
    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 2270
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2272
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz v2, :cond_5

    move v3, v5

    :goto_3
    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v2, :cond_6

    const-wide/16 v4, 0x2ee

    :goto_4
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz v2, :cond_7

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2285
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->findAndUpdateMediaNotifications()V

    .line 2286
    return-void

    .end local v0    # "clearable":Z
    .end local v1    # "nlo":Landroid/view/View;
    .end local v2    # "showDot":Z
    :cond_2
    move v0, v4

    .line 2258
    goto/16 :goto_0

    .restart local v0    # "clearable":Z
    .restart local v1    # "nlo":Landroid/view/View;
    :cond_3
    move v2, v4

    .line 2266
    goto :goto_1

    .restart local v2    # "showDot":Z
    :cond_4
    move v3, v4

    .line 2267
    goto :goto_2

    :cond_5
    move v3, v6

    .line 2272
    goto :goto_3

    :cond_6
    const-wide/16 v4, 0xfa

    goto :goto_4

    :cond_7
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;)V

    goto :goto_5
.end method

.method public setBarState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 5600
    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBarState: state - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5605
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq p1, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVisible:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isGoingToNotificationShade()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5607
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clearNotificationEffects()V

    .line 5609
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    .line 5610
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setStatusBarState(I)V

    .line 5611
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarState(I)V

    .line 5612
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDozing()V

    .line 5614
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isSupportNotificationOnCover()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5615
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverLauncher:Lcom/android/systemui/cover/SViewCoverLauncher;

    if-eqz v1, :cond_2

    .line 5616
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverLauncher:Lcom/android/systemui/cover/SViewCoverLauncher;

    invoke-virtual {v1, p1}, Lcom/android/systemui/cover/SViewCoverLauncher;->onStatusBarStateChanged(I)V

    .line 5617
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0e02f5

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5618
    .local v0, "previewContainer":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 5619
    const/16 v1, 0xa

    if-ne p1, v1, :cond_3

    .line 5620
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5627
    .end local v0    # "previewContainer":Landroid/view/View;
    :cond_2
    :goto_0
    return-void

    .line 5622
    .restart local v0    # "previewContainer":Landroid/view/View;
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setBouncerShowing(Z)V
    .locals 4
    .param p1, "bouncerShowing"    # Z

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 5911
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setBouncerShowing(Z)V

    .line 5912
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBouncerShowing(Z)V

    .line 5913
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified1:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified2:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IIZ)V

    .line 5916
    if-nez p1, :cond_0

    .line 5917
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 5918
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setScaleX(F)V

    .line 5919
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setScaleY(F)V

    .line 5922
    :cond_0
    return-void
.end method

.method public setCallBackground(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 6415
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_0

    .line 6416
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setCallBackground(I)V

    .line 6423
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    if-eqz v0, :cond_2

    .line 6424
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallBackgroundMode:I

    .line 6425
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallBackgroundMode:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-eqz v0, :cond_3

    .line 6426
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconsDark(ZZ)V

    .line 6432
    :cond_2
    :goto_0
    return-void

    .line 6428
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLightStatusBarMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconsDark(ZZ)V

    goto :goto_0
.end method

.method public setEmptyDragAmount(F)V
    .locals 1
    .param p1, "amount"    # F

    .prologue
    .line 5814
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setEmptyDragAmount(F)V

    .line 5815
    return-void
.end method

.method public setFocus(IZ)Z
    .locals 2
    .param p1, "keycode"    # I
    .param p2, "isDown"    # Z

    .prologue
    .line 7111
    const/4 v0, 0x0

    .line 7112
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7113
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setFocus(IZ)Z

    move-result v0

    .line 7115
    :cond_0
    return v0
.end method

.method protected setHeadsUpUser(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 2939
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v0, :cond_0

    .line 2940
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setUser(I)V

    .line 2942
    :cond_0
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .prologue
    .line 3735
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 3736
    .local v1, "imeShown":Z
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    .line 3737
    .local v0, "flags":I
    const/4 v2, 0x2

    if-eq p3, v2, :cond_0

    if-eqz v1, :cond_2

    .line 3738
    :cond_0
    or-int/lit8 v0, v0, 0x1

    .line 3742
    :goto_1
    if-eqz p4, :cond_3

    .line 3743
    or-int/lit8 v0, v0, 0x2

    .line 3748
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNavigationIconHints(I)V

    .line 3749
    return-void

    .line 3735
    .end local v0    # "flags":I
    .end local v1    # "imeShown":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3740
    .restart local v0    # "flags":I
    .restart local v1    # "imeShown":Z
    :cond_2
    and-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 3745
    :cond_3
    and-int/lit8 v0, v0, -0x3

    goto :goto_2
.end method

.method public setInteracting(IZ)V
    .locals 3
    .param p1, "barWindow"    # I
    .param p2, "interacting"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3625
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    if-eq v2, p2, :cond_2

    .line 3626
    .local v0, "changing":Z
    :goto_1
    if-eqz p2, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    or-int/2addr v1, p1

    :goto_2
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    .line 3629
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    if-eqz v1, :cond_4

    .line 3630
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->suspendAutohide()V

    .line 3635
    :goto_3
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 3636
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissVolumeDialog()V

    .line 3638
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    .line 3639
    return-void

    .end local v0    # "changing":Z
    :cond_1
    move v2, v1

    .line 3625
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 3626
    .restart local v0    # "changing":Z
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    goto :goto_2

    .line 3632
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resumeSuspendedAutohide()V

    goto :goto_3
.end method

.method public setKeyguardBottomAreaValues(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 4
    .param p1, "con"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .prologue
    .line 7624
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKeyguardBottomAreaValues() START: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7625
    if-nez p1, :cond_1

    .line 7626
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0e00f4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 7628
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const v3, 0x7f0e0066

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 7632
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v0, :cond_0

    .line 7633
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 7634
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setActivityStarter(Lcom/android/systemui/statusbar/phone/ActivityStarter;)V

    .line 7635
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAssistManager(Lcom/android/systemui/assist/AssistManager;)V

    .line 7636
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setFlashlightController(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    .line 7637
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 7638
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUserSetupComplete(Z)V

    .line 7639
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAccessibilityController(Lcom/android/systemui/statusbar/policy/AccessibilityController;)V

    .line 7644
    :cond_0
    :goto_0
    return-void

    .line 7642
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    goto :goto_0
.end method

.method public setKeyguardFadingAway(JJJ)V
    .locals 9
    .param p1, "startTime"    # J
    .param p3, "delay"    # J
    .param p5, "fadeoutDuration"    # J

    .prologue
    const-wide/16 v6, 0x16e

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5205
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    .line 5206
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDelay:J

    .line 5207
    iput-wide p5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDuration:J

    .line 5208
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    .line 5209
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    add-long v4, p1, p5

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->appTransitionStarting(JJ)V

    .line 5213
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified1:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified2:I

    const-wide/16 v4, 0x0

    cmp-long v4, p5, v4

    if-lez v4, :cond_0

    :goto_0
    invoke-virtual {p0, v2, v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IIZ)V

    .line 5214
    return-void

    :cond_0
    move v0, v1

    .line 5213
    goto :goto_0
.end method

.method public setLightsOn(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x1

    .line 3702
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLightsOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3703
    if-eqz p1, :cond_0

    .line 3704
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setSystemUiVisibility(II)V

    .line 3708
    :goto_0
    return-void

    .line 3706
    :cond_0
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setSystemUiVisibility(II)V

    goto :goto_0
.end method

.method public setMultiWindowBg(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 6440
    return-void
.end method

.method public setPanelExpanded(Z)V
    .locals 1
    .param p1, "isExpanded"    # Z

    .prologue
    .line 2957
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setPanelExpanded(Z)V

    .line 2958
    return-void
.end method

.method protected setQsEditPanelOpened(Z)V
    .locals 0
    .param p1, "isOpened"    # Z

    .prologue
    .line 7386
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsQsEditPanelOpened:Z

    .line 7387
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 2
    .param p1, "expanded"    # Z

    .prologue
    .line 2804
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setQsExpanded(Z)V

    .line 2805
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2808
    return-void

    .line 2805
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStatusBarFocusable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 7464
    if-nez p1, :cond_0

    .line 7465
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 7467
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez p1, :cond_1

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setImportantForAccessibility(I)V

    .line 7469
    return-void

    .line 7467
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSystemUiVisibility(II)V
    .locals 21
    .param p1, "vis"    # I
    .param p2, "mask"    # I

    .prologue
    .line 3435
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3436
    .local v3, "oldVal":I
    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v2, v3

    and-int v5, p1, p2

    or-int v4, v2, v5

    .line 3437
    .local v4, "newVal":I
    xor-int v11, v4, v3

    .line 3438
    .local v11, "diff":I
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "PhoneStatusBar"

    const-string v5, "setSystemUiVisibility vis=%s mask=%s oldVal=%s newVal=%s diff=%s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v7

    const/4 v7, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v7

    const/4 v7, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v7

    const/4 v7, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3443
    :cond_0
    if-eqz v11, :cond_11

    .line 3446
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit16 v2, v2, 0x4000

    if-lez v2, :cond_12

    const/16 v19, 0x1

    .line 3447
    .local v19, "wasRecentsVisible":Z
    :goto_0
    const-string v2, "PhoneStatusBar"

    const-string v5, "setSystemUiVisibility vis=%s mask=%s oldVal=%s newVal=%s diff=%s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v7

    const/4 v7, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v7

    const/4 v7, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v7

    const/4 v7, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3453
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3456
    and-int/lit8 v2, v11, 0x1

    if-eqz v2, :cond_2

    .line 3457
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_13

    const/4 v14, 0x1

    .line 3458
    .local v14, "lightsOut":Z
    :goto_1
    if-eqz v14, :cond_1

    .line 3459
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 3462
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 3466
    .end local v14    # "lightsOut":Z
    :cond_2
    const/high16 v2, 0x10000000

    and-int v2, v2, p1

    if-eqz v2, :cond_3

    .line 3467
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const v5, -0x10000001

    and-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3468
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoAnimationOnNextBarModeChange:Z

    .line 3472
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v5

    const/high16 v6, 0x4000000

    const/high16 v7, 0x40000000    # 2.0f

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->computeBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;II)I

    move-result v17

    .line 3476
    .local v17, "sbMode":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v2, :cond_14

    const/4 v15, -0x1

    .line 3479
    .local v15, "nbMode":I
    :goto_2
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_15

    const/16 v18, 0x1

    .line 3480
    .local v18, "sbModeChanged":Z
    :goto_3
    const/4 v2, -0x1

    if-eq v15, v2, :cond_16

    const/16 v16, 0x1

    .line 3481
    .local v16, "nbModeChanged":Z
    :goto_4
    const/4 v10, 0x0

    .line 3482
    .local v10, "checkBarModes":Z
    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    move/from16 v0, v17

    if-eq v0, v2, :cond_4

    .line 3483
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    .line 3484
    const/4 v10, 0x1

    .line 3486
    :cond_4
    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    if-eq v15, v2, :cond_5

    .line 3487
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    .line 3488
    const/4 v10, 0x1

    .line 3490
    :cond_5
    if-eqz v10, :cond_6

    .line 3491
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    .line 3493
    :cond_6
    if-nez v18, :cond_7

    if-eqz v16, :cond_9

    .line 3495
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    const/4 v5, 0x1

    if-eq v2, v5, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_17

    .line 3496
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->scheduleAutohide()V

    .line 3502
    :cond_9
    :goto_5
    const/high16 v2, 0x20000000

    and-int v2, v2, p1

    if-eqz v2, :cond_a

    .line 3503
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const v5, -0x20000001

    and-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3506
    :cond_a
    and-int/lit16 v2, v11, 0x2000

    if-nez v2, :cond_b

    if-eqz v18, :cond_f

    .line 3507
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    const/4 v5, 0x4

    if-eq v2, v5, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    const/4 v5, 0x6

    if-ne v2, v5, :cond_18

    :cond_c
    const/4 v12, 0x1

    .line 3509
    .local v12, "isTransparentBar":Z
    :goto_6
    if-eqz v12, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v2

    if-nez v2, :cond_19

    const/4 v8, 0x1

    .line 3510
    .local v8, "allowLight":Z
    :goto_7
    move/from16 v0, p1

    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_1a

    const/4 v13, 0x1

    .line 3511
    .local v13, "light":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1b

    :cond_d
    const/4 v9, 0x1

    .line 3520
    .local v9, "animate":Z
    :goto_9
    if-eqz v8, :cond_1c

    if-eqz v13, :cond_1c

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLightStatusBarMode:Z

    .line 3522
    if-eqz v12, :cond_1d

    if-eqz v13, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLightStatusBarMode:Z

    if-nez v2, :cond_1d

    .line 3523
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLightStatusBarBlockByPowerSave:Z

    .line 3529
    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallBackgroundMode:I

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-eqz v2, :cond_1e

    .line 3530
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v9}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconsDark(ZZ)V

    .line 3538
    .end local v8    # "allowLight":Z
    .end local v9    # "animate":Z
    .end local v12    # "isTransparentBar":Z
    .end local v13    # "light":Z
    :cond_f
    :goto_c
    if-eqz v19, :cond_10

    .line 3539
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit16 v2, v2, 0x4000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3543
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 3545
    .end local v10    # "checkBarModes":Z
    .end local v15    # "nbMode":I
    .end local v16    # "nbModeChanged":Z
    .end local v17    # "sbMode":I
    .end local v18    # "sbModeChanged":Z
    .end local v19    # "wasRecentsVisible":Z
    :cond_11
    return-void

    .line 3446
    :cond_12
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 3457
    .restart local v19    # "wasRecentsVisible":Z
    :cond_13
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 3476
    .restart local v17    # "sbMode":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v5

    const/high16 v6, 0x8000000

    const/high16 v7, -0x80000000

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->computeBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;II)I

    move-result v15

    goto/16 :goto_2

    .line 3479
    .restart local v15    # "nbMode":I
    :cond_15
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 3480
    .restart local v18    # "sbModeChanged":Z
    :cond_16
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 3498
    .restart local v10    # "checkBarModes":Z
    .restart local v16    # "nbModeChanged":Z
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->cancelAutohide()V

    goto/16 :goto_5

    .line 3507
    :cond_18
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 3509
    .restart local v12    # "isTransparentBar":Z
    :cond_19
    const/4 v8, 0x0

    goto/16 :goto_7

    .line 3510
    .restart local v8    # "allowLight":Z
    :cond_1a
    const/4 v13, 0x0

    goto/16 :goto_8

    .line 3511
    .restart local v13    # "light":Z
    :cond_1b
    const/4 v9, 0x0

    goto :goto_9

    .line 3520
    .restart local v9    # "animate":Z
    :cond_1c
    const/4 v2, 0x0

    goto :goto_a

    .line 3525
    :cond_1d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLightStatusBarBlockByPowerSave:Z

    goto :goto_b

    .line 3532
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLightStatusBarMode:Z

    invoke-virtual {v2, v5, v9}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconsDark(ZZ)V

    goto :goto_c
.end method

.method public setWindowState(II)V
    .locals 4
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3393
    if-nez p2, :cond_2

    move v0, v1

    .line 3394
    .local v0, "showing":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v3, :cond_0

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    if-eq v1, p2, :cond_0

    .line 3397
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    .line 3399
    if-nez v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v1, :cond_0

    .line 3400
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(ZZF)V

    .line 3404
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    if-eq v1, p2, :cond_1

    .line 3407
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    .line 3410
    :cond_1
    return-void

    .end local v0    # "showing":Z
    :cond_2
    move v0, v2

    .line 3393
    goto :goto_0
.end method

.method protected setZenMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 1693
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setZenMode(I)V

    .line 1694
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    if-eqz v0, :cond_0

    .line 1695
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->setZenMode(I)V

    .line 1697
    :cond_0
    return-void
.end method

.method public shouldBlockStatusBar()Z
    .locals 2

    .prologue
    .line 7473
    const-class v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 7474
    .local v0, "keyguardViewMediator":Lcom/android/systemui/keyguard/KeyguardViewMediator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldBlockStatusBar()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public shouldDisableNavbarGestures()Z
    .locals 2

    .prologue
    .line 4695
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled1:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldUnlock(Z)V
    .locals 1
    .param p1, "shouldUnlock"    # Z

    .prologue
    .line 7527
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->shouldUnlock(Z)V

    .line 7528
    return-void
.end method

.method public showCover()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 6989
    const-string v0, "PhoneStatusBar"

    const-string v1, "showCover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6990
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCoverShowing:Z

    if-eqz v0, :cond_1

    .line 7041
    :cond_0
    :goto_0
    return-void

    .line 6993
    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCoverShowing:Z

    .line 6996
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_5

    .line 6998
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeDelayedCollapseRunnable()V

    .line 6999
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 7001
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotificationPanelSize(I)V

    .line 7003
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    if-eqz v0, :cond_3

    .line 7004
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 7005
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 7006
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setScaleX(F)V

    .line 7007
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setScaleY(F)V

    .line 7009
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 7010
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 7013
    :cond_2
    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 7014
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    .line 7017
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 7018
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateViewVisibilityForCover(I)V

    .line 7019
    invoke-direct {p0, v2, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    .line 7020
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateKeyguardClockandNotifications(Z)V

    .line 7022
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDeviceInteractive:Z

    if-nez v0, :cond_4

    .line 7026
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTouchDisabled(Z)V

    .line 7029
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->instantExpandNotificationsPanel()V

    .line 7031
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 7032
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 7033
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 7034
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged()V

    .line 7035
    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    goto :goto_0

    .line 7040
    :cond_5
    const-string v0, "PhoneStatusBar"

    const-string v1, "showCover(): mNotificationPanel is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showCoverOpenPopup()V
    .locals 1

    .prologue
    .line 7497
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverLauncher:Lcom/android/systemui/cover/SViewCoverLauncher;

    if-eqz v0, :cond_0

    .line 7498
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverLauncher:Lcom/android/systemui/cover/SViewCoverLauncher;

    invoke-virtual {v0}, Lcom/android/systemui/cover/SViewCoverLauncher;->showCoverOpenPopup()V

    .line 7500
    :cond_0
    return-void
.end method

.method public showCoverOpenPopup(I)V
    .locals 2
    .param p1, "msgResId"    # I

    .prologue
    .line 7503
    if-gez p1, :cond_1

    .line 7511
    :cond_0
    :goto_0
    return-void

    .line 7507
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7508
    .local v0, "message":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 7509
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showCoverOpenPopup(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showCoverOpenPopup(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 7514
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverLauncher:Lcom/android/systemui/cover/SViewCoverLauncher;

    if-eqz v0, :cond_0

    .line 7515
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverLauncher:Lcom/android/systemui/cover/SViewCoverLauncher;

    invoke-virtual {v0, p1}, Lcom/android/systemui/cover/SViewCoverLauncher;->showCoverOpenPopup(Ljava/lang/String;)V

    .line 7517
    :cond_0
    return-void
.end method

.method public showKeyguard()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4877
    const-string v0, "PhoneStatusBar"

    const-string v1, "showKeyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4878
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    if-eqz v0, :cond_0

    .line 4879
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 4880
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onLaunchTransitionFadingEnded()V

    .line 4882
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 4884
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 4885
    invoke-direct {p0, v2, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    .line 4886
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDeviceInteractive:Z

    if-nez v0, :cond_1

    .line 4891
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTouchDisabled(Z)V

    .line 4893
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->instantExpandNotificationsPanel()V

    .line 4894
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 4895
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_2

    .line 4896
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 4897
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 4898
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 4900
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->onLockscreenShown()V

    .line 4902
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardEffectController:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->reset()V

    .line 4904
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardClockBottomShortcutVisibility(ZZ)V

    .line 4905
    return-void
.end method

.method protected showRecents(Z)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 6071
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 6072
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 6073
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->showRecents(Z)V

    .line 6074
    return-void
.end method

.method public showScreenPinningRequest()V
    .locals 1

    .prologue
    .line 6105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6111
    :goto_0
    return-void

    .line 6110
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showScreenPinningRequest(Z)V

    goto :goto_0
.end method

.method public showScreenPinningRequest(Z)V
    .locals 1
    .param p1, "allowCancel"    # Z

    .prologue
    .line 6114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/ScreenPinningRequest;->showPrompt(Z)V

    .line 6115
    return-void
.end method

.method protected snapContentViews(Landroid/view/View;Z)V
    .locals 1
    .param p1, "exceptView"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 6460
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->snapContentViews(Landroid/view/View;Z)V

    .line 6461
    return-void
.end method

.method public start()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 905
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    .line 907
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 908
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimSrcModeEnabled:Z

    .line 911
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->start()V

    .line 913
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 918
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNavigationBar()V

    .line 922
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-static {}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getInstance()Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    .line 923
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    .line 924
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setStatusBarText()V

    .line 929
    new-instance v0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVowifiController:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;

    .line 933
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/statusbar/policy/BluetoothController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 935
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->setCurrentUserSetup(Z)V

    .line 936
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 938
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v6}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 940
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "heads_up_notifications_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 943
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ticker_gets_heads_up"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 947
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 948
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    .line 949
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startKeyguard()V

    .line 951
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    .line 952
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 953
    const-class v0, Lcom/android/systemui/doze/DozeHost;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 954
    const-class v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 956
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setControllerUsers()V

    .line 958
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUserAboutHiddenNotifications()V

    .line 960
    new-instance v0, Lcom/android/systemui/recents/ScreenPinningRequest;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/ScreenPinningRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

    .line 961
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "dismissShade"    # Z

    .prologue
    .line 2790
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    .line 2791
    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z
    .param p3, "dismissShade"    # Z

    .prologue
    .line 3969
    new-instance v1, Landroid/content/Intent;

    const-string v2, "DismissClipboardDialogFromPhoneStatusBar"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3970
    .local v1, "dismissIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3971
    .local v0, "closeDialogsIntent":Landroid/content/Intent;
    const-string v2, "PhoneStatusBar"

    const-string v3, "startActivityDismissingKeyguard Send intent for dismiss clipboard dialog inside phonestatusbar() !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3972
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3973
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3975
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZLcom/android/systemui/statusbar/phone/ActivityStarter$Callback;)V

    .line 3976
    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;ZZLcom/android/systemui/statusbar/phone/ActivityStarter$Callback;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z
    .param p3, "dismissShade"    # Z
    .param p4, "callback"    # Lcom/android/systemui/statusbar/phone/ActivityStarter$Callback;

    .prologue
    .line 3980
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4020
    :goto_0
    return-void

    .line 3982
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-static {v1, p1, v2}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v4

    .line 3984
    .local v4, "afterKeyguardGone":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v3

    .line 3985
    .local v3, "keyguardShowing":Z
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Intent;ZZLcom/android/systemui/statusbar/phone/ActivityStarter$Callback;)V

    .line 4010
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;

    invoke-direct {v6, p0, p4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/ActivityStarter$Callback;)V

    .line 4018
    .local v6, "cancelRunnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0, v6, p3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZ)V

    goto :goto_0
.end method

.method public startCameraActivity(Landroid/content/Intent;ZLcom/android/systemui/statusbar/phone/ActivityStarter$Callback;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "dismissShade"    # Z
    .param p3, "callback"    # Lcom/android/systemui/statusbar/phone/ActivityStarter$Callback;

    .prologue
    .line 4025
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-static {v1, p1, v2}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v4

    .line 4027
    .local v4, "afterKeyguardGone":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v3

    .line 4028
    .local v3, "keyguardShowing":Z
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Intent;ZZLcom/android/systemui/statusbar/phone/ActivityStarter$Callback;)V

    .line 4061
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;

    invoke-direct {v6, p0, p3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/ActivityStarter$Callback;)V

    .line 4069
    .local v6, "cancelRunnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0, v6, p2, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZ)V

    .line 4071
    return-void
.end method

.method public startLaunchTransitionTimeout()V
    .locals 4

    .prologue
    .line 5096
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v1, 0x3eb

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    .line 5098
    return-void
.end method

.method public stopWaitingForKeyguardExit()V
    .locals 1

    .prologue
    .line 5232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    .line 5233
    return-void
.end method

.method public toggleNotificationPanel()V
    .locals 2

    .prologue
    .line 6408
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-eqz v1, :cond_0

    const/16 v0, 0x3e9

    .line 6409
    .local v0, "msg":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 6410
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 6411
    return-void

    .line 6408
    .end local v0    # "msg":I
    :cond_0
    const/16 v0, 0x3e8

    goto :goto_0
.end method

.method protected toggleRecents()V
    .locals 1

    .prologue
    .line 6087
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    xor-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 6088
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 6089
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->toggleRecents()V

    .line 6090
    return-void
.end method

.method public topAppWindowChanged(Z)V
    .locals 3
    .param p1, "showMenu"    # Z

    .prologue
    .line 3721
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3722
    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_3

    const-string v0, "showing"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " the MENU button"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3724
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 3725
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(Z)V

    .line 3729
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setLightsOn(Z)V

    .line 3730
    :cond_2
    return-void

    .line 3722
    :cond_3
    const-string v0, "hiding"

    goto :goto_0
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 10
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 6600
    if-nez p1, :cond_0

    .line 6601
    const-string v4, "CoverUI"

    const-string v5, "updateCoverState : CoverState == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6750
    :goto_0
    return-void

    .line 6605
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 6607
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v6

    if-nez v6, :cond_2

    move v3, v4

    .line 6608
    .local v3, "sviewCoverCovered":Z
    :goto_1
    const-string v6, "CoverUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCoverState - attached : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6609
    const-string v6, "CoverUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCoverState - covered : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6612
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 6616
    iget-boolean v6, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-nez v6, :cond_3

    .line 6617
    const/4 v3, 0x0

    .line 6618
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    .line 6619
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    .line 6621
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v4, v4, Lcom/samsung/android/cover/CoverState;->type:I

    if-eqz v4, :cond_1

    .line 6622
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCoverWindow()V

    .line 6732
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/samsung/android/cover/CoverState;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v3    # "sviewCoverCovered":Z
    :cond_2
    move v3, v5

    .line 6607
    goto :goto_1

    .line 6624
    .restart local v3    # "sviewCoverCovered":Z
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v6, v6, Lcom/samsung/android/cover/CoverState;->type:I

    if-nez v6, :cond_6

    .line 6627
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "automatic_unlock"

    const/4 v8, -0x2

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_4

    move v1, v4

    .line 6629
    .local v1, "isAutoUnlockEnabled":Z
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_5

    move v2, v4

    .line 6630
    .local v2, "isNonSecuredKeyguardShowing":Z
    :goto_4
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 6631
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v4, v5}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDone(Z)V

    goto :goto_2

    .end local v1    # "isAutoUnlockEnabled":Z
    .end local v2    # "isNonSecuredKeyguardShowing":Z
    :cond_4
    move v1, v5

    .line 6627
    goto :goto_3

    .restart local v1    # "isAutoUnlockEnabled":Z
    :cond_5
    move v2, v5

    .line 6629
    goto :goto_4

    .line 6633
    .end local v1    # "isAutoUnlockEnabled":Z
    :cond_6
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-eq v3, v5, :cond_c

    .line 6634
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    .line 6636
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 6637
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 6640
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCoverWindow()V

    .line 6642
    if-nez v3, :cond_8

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentCoverDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    if-eqz v5, :cond_8

    .line 6643
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentCoverDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .line 6644
    .local v0, "currentAction":Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    const-string v5, "CoverUI"

    const-string v6, "Launch notification when cover open"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6645
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 6646
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    const-wide/16 v8, 0xa

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6665
    .end local v0    # "currentAction":Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    :cond_8
    :goto_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v5, v5, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v6, 0x8

    if-eq v5, v6, :cond_9

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v5, v5, Lcom/samsung/android/cover/CoverState;->type:I

    if-eq v5, v4, :cond_9

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v4, v4, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_9

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v4, v4, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    .line 6667
    :cond_9
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-eqz v4, :cond_b

    .line 6668
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    if-nez v4, :cond_1

    .line 6689
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$54;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$54;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 6653
    .restart local v0    # "currentAction":Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    :cond_a
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$53;

    invoke-direct {v6, p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$53;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 6702
    .end local v0    # "currentAction":Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    :cond_b
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 6721
    :cond_c
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v4, v4, Lcom/samsung/android/cover/CoverState;->type:I

    if-eqz v4, :cond_1

    .line 6723
    const-string v4, "CoverUI"

    const-string v5, "Cover state reapplied"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6724
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto/16 :goto_2
.end method

.method updateDisplaySize()V
    .locals 2

    .prologue
    .line 3954
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3955
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3960
    return-void
.end method

.method protected updateHeadsUp(Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationData$Entry;ZZ)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p3, "shouldInterrupt"    # Z
    .param p4, "alertAgain"    # Z

    .prologue
    .line 2923
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isHeadsUp(Ljava/lang/String;)Z

    move-result v0

    .line 2924
    .local v0, "wasHeadsUp":Z
    if-eqz v0, :cond_2

    .line 2925
    if-nez p3, :cond_1

    .line 2927
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeNotification(Ljava/lang/String;)Z

    .line 2936
    :cond_0
    :goto_0
    return-void

    .line 2929
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1, p2, p4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    goto :goto_0

    .line 2932
    :cond_2
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    if-eqz v1, :cond_0

    .line 2934
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_0
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 6
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "old"    # Lcom/android/internal/statusbar/StatusBarIcon;
    .param p5, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->updateSystemIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 1863
    return-void
.end method

.method public updateKeyguardClockandNotifications(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 7044
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateKeyguardClockandNotifications( mShowLockscreenNotifications = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7045
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    if-eq v0, p1, :cond_0

    .line 7046
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateLockscreenNotificationSetting()V

    .line 7047
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotifications()V

    .line 7049
    :cond_0
    return-void
.end method

.method public updateMediaMetaData(Z)V
    .locals 0
    .param p1, "metaDataChanged"    # Z

    .prologue
    .line 2438
    return-void
.end method

.method protected updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1
    .param p1, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 1946
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotifications()V

    .line 1947
    return-void
.end method

.method protected updateNotifications()V
    .locals 2

    .prologue
    .line 2239
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->filterAndSort()V

    .line 2241
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationShade()V

    .line 2242
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->updateNotificationIcons(Lcom/android/systemui/statusbar/NotificationData;)V

    .line 2245
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierAndClearLayout()V

    .line 2246
    return-void
.end method

.method updateResources()V
    .locals 2

    .prologue
    .line 4504
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    .line 4505
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 4508
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadDimens()V

    .line 4510
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_1

    .line 4511
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateResources()V

    .line 4513
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_2

    .line 4514
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateResources()V

    .line 4518
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    if-eqz v0, :cond_3

    .line 4519
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->updateBatteryTextLevel(I)V

    .line 4524
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    if-eqz v0, :cond_4

    .line 4525
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->updateResources()V

    .line 4528
    :cond_4
    return-void
.end method

.method protected updateRowStates()V
    .locals 1

    .prologue
    .line 2250
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateRowStates()V

    .line 2251
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->notifyVisibleChildrenChanged()V

    .line 2252
    return-void
.end method

.method public updateSharedDeviceNotifications()V
    .locals 1

    .prologue
    .line 3035
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3038
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateRowStates()V

    .line 3040
    :cond_0
    return-void
.end method

.method public updateStackScrollerState(Z)V
    .locals 5
    .param p1, "goingToFullShade"    # Z

    .prologue
    const/4 v3, 0x0

    .line 5402
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-nez v2, :cond_1

    .line 5413
    :cond_0
    :goto_0
    return-void

    .line 5403
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v1

    .line 5404
    .local v1, "onKeyguard":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isLockscreenPublicMode()Z

    move-result v4

    invoke-virtual {v2, v4, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setHideSensitive(ZZ)V

    .line 5405
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 5406
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setExpandingEnabled(Z)V

    .line 5407
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 5408
    .local v0, "activatedChild":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 5409
    if-eqz v0, :cond_0

    .line 5411
    invoke-virtual {v0, v3, v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(ZZ)V

    goto :goto_0

    .end local v0    # "activatedChild":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    :cond_2
    move v2, v3

    .line 5406
    goto :goto_1
.end method

.method public updateViewVisibilityForCover(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 7089
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isSupportNotificationOnCover()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7090
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    const v2, 0x7f0e033c

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 7095
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    if-eqz v1, :cond_0

    .line 7096
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->setNotiSettingButtonVisibility(I)V

    .line 7107
    :cond_0
    :goto_0
    return-void

    .line 7100
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0e005d

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7101
    .local v0, "hidedByNotificationCover":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 7102
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 7104
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v1, :cond_0

    .line 7105
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateChildViewVisibilityForNotificationCover(I)V

    goto :goto_0
.end method

.method public userActivity()V
    .locals 2

    .prologue
    .line 5416
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5417
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    .line 5419
    :cond_0
    return-void
.end method

.method public userSwitched(I)V
    .locals 6
    .param p1, "newUserId"    # I

    .prologue
    .line 4441
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->userSwitched(I)V

    .line 4445
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 4446
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updatePublicMode()V

    .line 4447
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotifications()V

    .line 4448
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetUserSetupObserver()V

    .line 4449
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setControllerUsers()V

    .line 4450
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v3, p1}, Lcom/android/systemui/assist/AssistManager;->onUserSwitched(I)V

    .line 4452
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->userSwitched()V

    .line 4453
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3, p1}, Lcom/android/systemui/qs/QSPanel;->userSwitch(I)V

    .line 4454
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickConnectSoundPathView:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isOwnerProfile(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->setOwnerProfile(Z)V

    .line 4457
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSupportTwoPhone:Z

    if-eqz v3, :cond_3

    .line 4458
    const-string v3, "persist.sys.show_multiuserui"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 4459
    .local v1, "isTwoPhoneMode":Z
    if-eqz v1, :cond_3

    .line 4460
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 4461
    .local v0, "currentId":I
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTwoPhone: currentId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4462
    const v2, 0x7f02058b

    .line 4463
    .local v2, "modeIconId":I
    if-eqz v0, :cond_2

    .line 4464
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTwoPhoneCallEnabled:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTwoPhoneMsgEnabled:Z

    if-eqz v3, :cond_4

    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTwoPhoneRegistered:Z

    if-eqz v3, :cond_4

    .line 4465
    const v2, 0x7f020589

    .line 4470
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4471
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateTwoPhone()V

    .line 4476
    .end local v0    # "currentId":I
    .end local v1    # "isTwoPhoneMode":Z
    .end local v2    # "modeIconId":I
    :cond_3
    return-void

    .line 4467
    .restart local v0    # "currentId":I
    .restart local v1    # "isTwoPhoneMode":Z
    .restart local v2    # "modeIconId":I
    :cond_4
    const v2, 0x7f02058a

    goto :goto_0
.end method

.method vibrate()V
    .locals 4

    .prologue
    .line 4670
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 4672
    .local v0, "vib":Landroid/os/Vibrator;
    const-wide/16 v2, 0xfa

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 4673
    return-void
.end method

.method public wakeUpIfDozing(JLandroid/view/MotionEvent;)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6122
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6123
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 6124
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "com.android.systemui:NODOZE"

    invoke-virtual {v0, p1, p2, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 6125
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWakeUpComingFromTouch:Z

    .line 6126
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWakeUpTouchLocation:Landroid/graphics/PointF;

    .line 6127
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTouchDisabled(Z)V

    .line 6128
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyDeviceWakeUpRequested()V

    .line 6130
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method
