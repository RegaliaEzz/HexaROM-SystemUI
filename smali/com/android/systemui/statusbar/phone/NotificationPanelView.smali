.class public Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.super Lcom/android/systemui/statusbar/phone/PanelView;
.source "NotificationPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;
.implements Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
.implements Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;
.implements Lcom/android/systemui/statusbar/policy/HeadsUpManager$OnHeadsUpChangedListener;
.implements Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;
.implements Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$H;
    }
.end annotation


# static fields
.field private static final LOCKSCREEN_CAPTURE_ENABLED:Z

.field private static final mDummyDirtyRect:Landroid/graphics/Rect;


# instance fields
.field private QsEditPanelOpenanimator:Landroid/animation/ValueAnimator;

.field private final SMALLEST_QS_PANEL:F

.field private mAdditionalStatusBarHeightForCover:I

.field private mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

.field private mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

.field private final mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

.field private final mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

.field private mAnimateNextTopPaddingChange:Z

.field private mBlockTouches:Z

.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field private mBrightnessControllerHeight:I

.field private mBrightnessControllerView:Landroid/view/ViewGroup;

.field private mBrigntnessParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mCaptureView:Lcom/android/systemui/keyguard/ViewCaptureUtil;

.field private mCarrierLabel:Landroid/view/View;

.field private mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

.field private mClockAnimationTarget:I

.field mClockHideAnimSet:Landroid/animation/AnimatorSet;

.field private mClosingWithAlphaFadeOut:Z

.field private mCollapsedOnDown:Z

.field private mConflictingQsExpansionGesture:Z

.field private mDataUsageView:Lcom/android/systemui/statusbar/phone/DataUsageView;

.field private mDataUsageViewHeight:I

.field private mDataUsageViewParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mDataUsageViewShowing:Z

.field private mDcmKeyguardMascotUtils:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

.field private mDisableExpands:Z

.field private mDisableTouches:Z

.field private mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mDozeAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mDozing:Z

.field private mDozingOnDown:Z

.field private mEmptyClicker:Lcom/android/systemui/statusbar/phone/ObservableScrollView$EmptyClicker;

.field private mEmptyDragAmount:F

.field private mExpandingFromHeadsUp:Z

.field private mExpectedHeight:I

.field private mFastOutLinearInterpolator:Landroid/view/animation/Interpolator;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mHandler:Landroid/os/Handler;

.field private mHasNotification:Z

.field private mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

.field private mHeaderAnimating:Z

.field private mHeadsUpAnimatingAway:Z

.field private mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

.field private mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

.field private mHomeIntent:Landroid/content/Intent;

.field private mInitialHeightOnTouch:F

.field private mInitialScrollX:F

.field private mInitialSeekBarX:F

.field private mInitialTouchInQsArea:Z

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mIntercepting:Z

.field private mIsCarrierAndClearVisible:Z

.field private mIsClearable:Z

.field private mIsDelegatedToClearButton:Z

.field private mIsExpanding:Z

.field private mIsExpansionFromHeadsUp:Z

.field private mIsLaunchTransitionFinished:Z

.field private mIsLaunchTransitionRunning:Z

.field private mIsNotificationCollapsed:Z

.field private mIsOverlappedNotiAndQs:Z

.field private mIsQConnectSupported:Z

.field private mIsTouchFromCarrierAndClear:Z

.field private mKeyguardMultiUserButton:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mKeyguardShowing:Z

.field private mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field private mKeyguardStatusBarAnimateAlpha:F

.field private mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

.field private mKeyguardStatusViewAnimating:Z

.field private mKeyguardStatusViewOldPivotY:F

.field private mKeyguardSwipeDown:Z

.field private mKeyguardSwipeHelper:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field private mKnoxCustomDoubleTapState:Z

.field private mKnoxCustomQuickPanelButtons:I

.field private mKnoxCustomQuickPanelEditMode:I

.field private mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

.field private mLastAnnouncementWasQuickSettings:Z

.field private mLastCameraLaunchSource:Ljava/lang/String;

.field private mLastOrientation:I

.field private mLastOverscroll:F

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

.field private mLaunchingAffordance:Z

.field private mListenForHeadsUp:Z

.field private mMascotHandler:Landroid/os/Handler;

.field private mMascotView:Landroid/widget/LinearLayout;

.field private mMultiSimPrefferedSlotHeight:I

.field private mMultiSimPrefferedSlotParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mMultiSimPrefferedSlotView:Landroid/view/View;

.field private mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

.field private mNavigationBarBottomHeight:I

.field private mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

.field private mNotificationContentsRoot:Landroid/widget/FrameLayout;

.field private mNotificationScrimWaitDistance:I

.field private mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mNotificationTopPadding:I

.field private mNotificationsHeaderCollideDistance:I

.field private mOldLayoutDirection:I

.field private mOldQsHeight:F

.field private mOnlyAffordanceInThisMotion:Z

.field private mOuterExpandRequest:Z

.field private mPanelExpanded:Z

.field private mPositionMinSideMargin:I

.field private mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

.field private mQSBottomArea:Landroid/view/View;

.field private mQSEditDoneButton:Landroid/view/View;

.field public mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

.field private mQsAnimatorExpand:Z

.field private mQsContainer:Lcom/android/systemui/qs/QSContainer;

.field private mQsContainerAnimator:Landroid/animation/ObjectAnimator;

.field private final mQsContainerAnimatorUpdater:Landroid/view/View$OnLayoutChangeListener;

.field private mQsExpandImmediate:Z

.field private mQsExpanded:Z

.field private mQsExpandedOnTouchDown:Z

.field private mQsExpandedWhenExpandingStarted:Z

.field private mQsExpansionAnimator:Landroid/animation/ValueAnimator;

.field private mQsExpansionEnabled:Z

.field private mQsExpansionFromOverscroll:Z

.field private mQsExpansionHeight:F

.field private mQsFalsingThreshold:I

.field private mQsFullyExpanded:Z

.field private mQsHeightChanged:Z

.field private mQsHsView:Landroid/widget/HorizontalScrollView;

.field private mQsMaxExpansionHeight:I

.field private mQsMinExpansionHeight:I

.field private mQsNavbarScrim:Landroid/view/View;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mQsPanelCallback:Lcom/android/systemui/qs/QSPanel$Callback;

.field private mQsPanelDownAnimating:Z

.field private mQsPeekHeight:I

.field private mQsScrimEnabled:Z

.field private mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

.field private mQsTouchAboveFalsingThreshold:Z

.field private mQsTracking:Z

.field private mQsUiExpanded:Z

.field private mQspanelParams:Landroid/view/ViewGroup$LayoutParams;

.field private mQuickConnectHeight:I

.field private mQuickConnectParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mReserveNotificationSpace:Landroid/view/View;

.field private mSViewCoverMargin:I

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mScrollChanged:Z

.field private mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

.field private mScrollYOverride:I

.field private mShadeEmpty:Z

.field private mShouldContainerFixed:Z

.field private mShouldShowMultisimPrefferedSlot:Z

.field private mStackScrollerOverscrolling:Z

.field private final mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mStatusBarMinHeight:I

.field private mStatusBarState:I

.field private mStatusBarStateOnTouchDown:I

.field private mSummaryHeight:I

.field private mSummaryParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mSummaryView:Landroid/widget/FrameLayout;

.field private mTopPaddingAdjustment:I

.field protected mTouchQsPanelWhileTopOverScolling:Z

.field private mTouchReEnableRunnable:Ljava/lang/Runnable;

.field private final mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

.field private mTrackingPointer:I

.field private mTwoFingerQsExpandPossible:Z

.field private mUnblockTouchPanel:Ljava/lang/Runnable;

.field private mUnlockIconActive:Z

.field private mUnlockMoveDistance:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWasExceedMaxPanelHeight:Z

.field private mWasQsFullyExpanded:Z

.field private mflingSettingsRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDummyDirtyRect:Landroid/graphics/Rect;

    .line 344
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isNeedLockscreenCapture()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->LOCKSCREEN_CAPTURE_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 477
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 184
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageViewShowing:Z

    .line 191
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewOldPivotY:F

    .line 208
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z

    .line 244
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    .line 257
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimationTarget:I

    .line 276
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    .line 290
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    .line 295
    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBarAnimateAlpha:F

    .line 304
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOrientation:I

    .line 308
    const-string v0, "lockscreen_affordance"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 323
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    .line 326
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$H;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$H;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    .line 340
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHomeIntent:Landroid/content/Intent;

    .line 343
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCaptureView:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    .line 348
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsCarrierAndClearVisible:Z

    .line 349
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsClearable:Z

    .line 350
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWasExceedMaxPanelHeight:Z

    .line 351
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDelegatedToClearButton:Z

    .line 362
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShouldShowMultisimPrefferedSlot:Z

    .line 369
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    .line 370
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    .line 371
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomDoubleTapState:Z

    .line 372
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomQuickPanelButtons:I

    .line 373
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomQuickPanelEditMode:I

    .line 378
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableExpands:Z

    .line 380
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchQsPanelWhileTopOverScolling:Z

    .line 381
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollChanged:Z

    .line 383
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchInQsArea:Z

    .line 385
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsOverlappedNotiAndQs:Z

    .line 387
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanelDownAnimating:Z

    .line 397
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsTouchFromCarrierAndClear:Z

    .line 405
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWasQsFullyExpanded:Z

    .line 408
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMultiUserButton:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 410
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

    .line 418
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mflingSettingsRunnable:Ljava/lang/Runnable;

    .line 425
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUnblockTouchPanel:Ljava/lang/Runnable;

    .line 434
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    .line 440
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchReEnableRunnable:Ljava/lang/Runnable;

    .line 455
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotHandler:Landroid/os/Handler;

    .line 456
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    .line 2189
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    .line 2198
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    .line 2208
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainerAnimatorUpdater:Landroid/view/View$OnLayoutChangeListener;

    .line 2227
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 2293
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$16;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$16;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 2321
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 2341
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$19;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$19;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 2886
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->SMALLEST_QS_PANEL:F

    .line 5065
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$32;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$32;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 5406
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$34;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$34;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanelCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    .line 478
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setWillNotDraw(Z)V

    .line 481
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    new-instance v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-direct {v0, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    .line 486
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->LOCKSCREEN_CAPTURE_ENABLED:Z

    if-eqz v0, :cond_1

    .line 487
    new-instance v0, Lcom/android/systemui/keyguard/ViewCaptureUtil;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/ViewCaptureUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCaptureView:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    .line 492
    :cond_1
    invoke-static {}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getInstance()Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    .line 493
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    .line 497
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isQuickConnectSupported(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsQConnectSupported:Z

    .line 498
    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpAnimatingAway:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMascotViewVisible(I)V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeaderAnimating:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSPanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainerAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainerAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View$OnLayoutChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainerAnimatorUpdater:Landroid/view/View$OnLayoutChangeListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # F

    .prologue
    .line 143
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBarAnimateAlpha:F

    return p1
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguardAlpha()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;FZLjava/lang/Runnable;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # F
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/Runnable;
    .param p4, "x4"    # Z

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardClockBottomShortcutVisibility(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # F

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/ObservableScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    return p1
.end method

.method static synthetic access$3402(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    return-void
.end method

.method static synthetic access$3600()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDummyDirtyRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/keyguard/ViewCaptureUtil;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCaptureView:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # F

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateExpandQsEditPanelStackScroller(F)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/stack/AmbientState;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsQConnectSupported:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSBottomArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditDoneButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    return v0
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQspanelParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsClearable:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->inflateQsEditPanel()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetQsEditPanel()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateExpandQsEditPanel()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateCollapseQsEditPanel()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchReEnableRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/ScrimController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSummaryView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mflingSettingsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # F

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQCBottomArea(F)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUnblockTouchPanel:Ljava/lang/Runnable;

    return-object v0
.end method

.method private animateCollapseQsEditPanel()V
    .locals 3

    .prologue
    .line 4671
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v2, "QsEditPanel - animateCollapseQsEditPanel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4672
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    if-eqz v1, :cond_0

    .line 4673
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setQsEditPanelOpened(Z)V

    .line 4674
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const v2, 0x7f050093

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 4675
    .local v0, "animationOut":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSEditPanel;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4676
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$30;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$30;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4725
    .end local v0    # "animationOut":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private animateExpandQsEditPanel()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 4605
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    if-eqz v2, :cond_0

    .line 4608
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    const v3, 0x7f0e019d

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 4609
    .local v0, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {v0, v4, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 4613
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v1

    .line 4614
    .local v1, "startStackTranslation":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSEditPanel;->bringToFront()V

    .line 4615
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/QSEditPanel;->setVisibility(I)V

    .line 4616
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSEditPanel;->getQsEditPanelBottomAreaHeight()I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->QsEditPanelOpenanimator:Landroid/animation/ValueAnimator;

    .line 4617
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->QsEditPanelOpenanimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4618
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->QsEditPanelOpenanimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4619
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->QsEditPanelOpenanimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4629
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->QsEditPanelOpenanimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/widget/ScrollView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4666
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->QsEditPanelOpenanimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 4668
    .end local v0    # "scrollView":Landroid/widget/ScrollView;
    .end local v1    # "startStackTranslation":F
    :cond_0
    return-void
.end method

.method private animateExpandQsEditPanelStackScroller(F)V
    .locals 4
    .param p1, "value"    # F

    .prologue
    .line 4598
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSEditPanel;->getQsEditPanelBottomAreaHeight()I

    move-result v1

    int-to-float v0, v1

    .line 4599
    .local v0, "base":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, p1, v0

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAlpha(F)V

    .line 4600
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->setStackTranslation(F)V

    .line 4602
    return-void
.end method

.method private animateKeyguardStatusBarIn(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 2332
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 2333
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    .line 2334
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2335
    .local v0, "anim":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2336
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2337
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozeAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2338
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2339
    return-void

    .line 2332
    .end local v0    # "anim":Landroid/animation/ValueAnimator;
    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    .line 2334
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private calculateHeaderVisibility()I
    .locals 4

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 4872
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeaderAnimating:Z

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 4879
    :cond_1
    :goto_0
    return v0

    .line 4875
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v2, :cond_1

    .line 4876
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private calculatePanelHeightQsExpanded()I
    .locals 7

    .prologue
    .line 3265
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopPadding()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v2, v4

    .line 3272
    .local v2, "notificationHeight":F
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShadeEmpty:Z

    if-eqz v4, :cond_0

    .line 3274
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyShadeViewHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottomStackPeekSize()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCollapseSecondCardPadding()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v2, v4

    .line 3278
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 3281
    .local v1, "maxQsHeight":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_1

    .line 3282
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3284
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotificationTopPadding()I

    move-result v4

    add-int v5, v1, v4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    :goto_0
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    add-float v3, v4, v2

    .line 3290
    .local v3, "totalHeight":F
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    .line 3291
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMinStackHeight()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotificationTopPadding()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getScrollViewScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v0, v4

    .line 3298
    .local v0, "fullyCollapsedHeight":F
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOuterExpandRequest:Z

    if-eqz v4, :cond_2

    .line 3299
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpectedHeight:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v0, v4

    .line 3303
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 3305
    .end local v0    # "fullyCollapsedHeight":F
    :cond_3
    float-to-int v4, v3

    return v4

    .line 3284
    .end local v3    # "totalHeight":F
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private calculatePanelHeightShade()I
    .locals 4

    .prologue
    .line 3257
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v0

    .line 3258
    .local v0, "emptyBottomMargin":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    sub-int v1, v2, v3

    .line 3260
    .local v1, "maxHeight":I
    int-to-float v2, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopPaddingOverflow()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 3261
    return v1
.end method

.method private calculateQsTopPadding()F
    .locals 6

    .prologue
    .line 2994
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v3, :cond_2

    .line 3001
    :cond_0
    const/4 v1, 0x0

    .line 3004
    .local v1, "maxNotifications":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getTempQsMaxExpansion()I

    move-result v2

    .line 3005
    .local v2, "maxQs":I
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3008
    .local v0, "max":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedFraction()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v4, v4

    int-to-float v5, v0

    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->interpolate(FFF)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    .line 3020
    .end local v0    # "max":I
    .end local v1    # "maxNotifications":I
    .end local v2    # "maxQs":I
    :goto_1
    return v3

    .restart local v1    # "maxNotifications":I
    .restart local v2    # "maxQs":I
    :cond_1
    move v0, v2

    .line 3005
    goto :goto_0

    .line 3010
    .end local v1    # "maxNotifications":I
    .end local v2    # "maxQs":I
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_3

    .line 3011
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    goto :goto_1

    .line 3012
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 3016
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationTopPadding:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->interpolate(FFF)F

    move-result v3

    goto :goto_1

    .line 3020
    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    goto :goto_1
.end method

.method private cancelQsAnimation()V
    .locals 1

    .prologue
    .line 3055
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 3056
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3058
    :cond_0
    return-void
.end method

.method private flingExpandsQs(F)Z
    .locals 4
    .param p1, "vel"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1672
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isBelowFalsingThreshold()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 1678
    :cond_0
    :goto_0
    return v0

    .line 1675
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 1676
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1678
    :cond_2
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private flingQsWithCurrentVelocity(FZ)V
    .locals 3
    .param p1, "y"    # F
    .param p2, "isCancelMotionEvent"    # Z

    .prologue
    .line 1652
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getCurrentVelocity()F

    move-result v1

    .line 1653
    .local v1, "vel":F
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingExpandsQs(F)Z

    move-result v0

    .line 1654
    .local v0, "expandsQs":Z
    if-eqz v0, :cond_0

    .line 1655
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->logQsSwipeDown(F)V

    .line 1657
    :cond_0
    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZ)V

    .line 1658
    return-void

    .line 1657
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private flingSettings(FZ)V
    .locals 2
    .param p1, "vel"    # F
    .param p2, "expand"    # Z

    .prologue
    .line 3061
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;Z)V

    .line 3062
    return-void
.end method

.method private flingSettings(FZLjava/lang/Runnable;Z)V
    .locals 7
    .param p1, "vel"    # F
    .param p2, "expand"    # Z
    .param p3, "onFinishRunnable"    # Ljava/lang/Runnable;
    .param p4, "isClick"    # Z

    .prologue
    const/4 v6, 0x1

    .line 3066
    if-eqz p2, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v2, v3

    .line 3067
    .local v2, "target":F
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    cmpl-float v3, v2, v3

    if-nez v3, :cond_2

    .line 3068
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    .line 3069
    if-eqz p3, :cond_0

    .line 3070
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 3128
    :cond_0
    :goto_1
    return-void

    .line 3066
    .end local v2    # "target":F
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v2, v3

    goto :goto_0

    .line 3082
    .restart local v2    # "target":F
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isBelowFalsingThreshold()Z

    move-result v1

    .line 3083
    .local v1, "belowFalsingThreshold":Z
    if-eqz v1, :cond_3

    .line 3084
    const/4 p1, 0x0

    .line 3086
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setBlockFlinging(Z)V

    .line 3087
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    aput v5, v3, v4

    aput v2, v3, v6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3088
    .local v0, "animator":Landroid/animation/ValueAnimator;
    if-eqz p4, :cond_5

    .line 3089
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3090
    const-wide/16 v4, 0x1c2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3094
    :goto_2
    if-eqz v1, :cond_4

    .line 3095
    const-wide/16 v4, 0x1b0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3097
    :cond_4
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3103
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$22;

    invoke-direct {v3, p0, p3, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$22;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Ljava/lang/Runnable;Z)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3125
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 3126
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 3127
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsAnimatorExpand:Z

    goto :goto_1

    .line 3092
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-virtual {v3, v0, v4, v2, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    goto :goto_2
.end method

.method private getCurrentVelocity()F
    .locals 2

    .prologue
    .line 3047
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 3048
    const/4 v0, 0x0

    .line 3051
    :goto_0
    return v0

    .line 3050
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 3051
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getFadeoutAlpha()F
    .locals 6

    .prologue
    .line 3324
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getNotificationsTopY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getItemHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottomStackPeekSize()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCollapseSecondCardPadding()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 3327
    .local v0, "alpha":F
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 3328
    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 3329
    return v0
.end method

.method private getFalsingThreshold()I
    .locals 2

    .prologue
    .line 2005
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isWakeUpComingFromTouch()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 2006
    .local v0, "factor":F
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1

    .line 2005
    .end local v0    # "factor":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getHeaderExpansionFraction()F
    .locals 1

    .prologue
    .line 2873
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    .line 2874
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v0

    .line 2876
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getKeyguardContentsAlpha()F
    .locals 6

    .prologue
    .line 3418
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3422
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getNotificationsTopY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationsHeaderCollideDistance:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 3437
    .local v0, "alpha":F
    :goto_0
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 3438
    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 3439
    return v0

    .line 3435
    .end local v0    # "alpha":F
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getNotificationsTopY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .restart local v0    # "alpha":F
    goto :goto_0
.end method

.method private getKeyguardOrLockScreenString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2859
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2860
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0230

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2862
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d022e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getNotificationsTopY()F
    .locals 1

    .prologue
    .line 3481
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 3482
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v0

    .line 3484
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotificationsTopY()F

    move-result v0

    goto :goto_0
.end method

.method private getQsExpansionFraction()F
    .locals 4

    .prologue
    .line 1687
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getTempQsMaxExpansion()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private getScrollViewScrollY()I
    .locals 2

    .prologue
    .line 3309
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-nez v0, :cond_0

    .line 3310
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    .line 3312
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v0

    goto :goto_0
.end method

.method private getTempQsMaxExpansion()I
    .locals 3

    .prologue
    .line 3249
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 3250
    .local v0, "qsTempMaxExpansion":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3251
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    sub-int/2addr v0, v1

    .line 3253
    :cond_0
    return v0
.end method

.method private handleQsDown(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1895
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1897
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1898
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1899
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1900
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1901
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1904
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->notifyExpandingFinished()V

    .line 1906
    :cond_0
    return-void
.end method

.method private handleQsTouch(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1813
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1814
    .local v0, "action":I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedFraction()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v3

    if-eq v3, v1, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v3, :cond_0

    .line 1819
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1820
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    .line 1821
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1822
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1823
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1824
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1826
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1827
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->handleQsDown(Landroid/view/MotionEvent;)V

    .line 1829
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v3, :cond_2

    .line 1830
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsTouch(Landroid/view/MotionEvent;)V

    .line 1831
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-nez v3, :cond_2

    .line 1852
    :goto_0
    return v1

    .line 1835
    :cond_2
    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    if-ne v0, v1, :cond_4

    .line 1836
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    .line 1838
    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v3, :cond_5

    .line 1840
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    .line 1842
    :cond_5
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    if-eqz v3, :cond_6

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isOpenQsEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 1844
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string v4, "panel_open_qs"

    invoke-static {v3, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1845
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 1846
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 1850
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    :cond_6
    move v1, v2

    .line 1852
    goto :goto_0
.end method

.method private inflateQsEditPanel()V
    .locals 3

    .prologue
    .line 4792
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    if-nez v0, :cond_0

    .line 4797
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v1, "QsEditPanel - inflateQsEditPanel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4798
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setQsEditPanelOpened(Z)V

    .line 4799
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const v1, 0x7f040053

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSEditPanel;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    .line 4800
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addView(Landroid/view/View;)V

    .line 4803
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    if-eqz v0, :cond_2

    .line 4804
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    const v1, 0x7f0e019b

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditDoneButton:Landroid/view/View;

    .line 4805
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditDoneButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4806
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditDoneButton:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$31;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$31;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4819
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v1, "QsEditPanel - inflateQsEditPanel setHost"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4820
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSEditPanel;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 4821
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSEditPanel;->setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4824
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    if-eqz v0, :cond_3

    .line 4825
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSEditPanel;->resetPanel()V

    .line 4829
    :goto_0
    return-void

    .line 4827
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setQsEditPanelOpened(Z)V

    goto :goto_0
.end method

.method private initDownStates(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 1630
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_1

    .line 1631
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    .line 1632
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    .line 1633
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isDozing()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozingOnDown:Z

    .line 1634
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCollapsedOnDown:Z

    .line 1635
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCollapsedOnDown:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mListenForHeadsUp:Z

    .line 1636
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mQuickSettingMoreAnimation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHsView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsPanelPivot(I)V

    .line 1638
    :cond_1
    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .prologue
    .line 3040
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 3041
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 3043
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3044
    return-void
.end method

.method private static interpolate(FFF)F
    .locals 2
    .param p0, "t"    # F
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 4084
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    mul-float/2addr v0, p1

    mul-float v1, p0, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private isBelowFalsingThreshold()Z
    .locals 2

    .prologue
    .line 1683
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEdgeGestureBlockedApp()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 4853
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string v5, "multiwindow_facade"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/16 v5, 0xa

    const/4 v6, 0x7

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRunningTasks(II)Ljava/util/List;

    move-result-object v1

    .line 4858
    .local v1, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4859
    .local v2, "tinfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v5, 0x4000000

    invoke-virtual {v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 4866
    .end local v2    # "tinfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    return v3

    .line 4862
    .restart local v2    # "tinfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    iget-boolean v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isHomeType:Z

    if-eqz v3, :cond_0

    move v3, v4

    .line 4863
    goto :goto_0

    .line 4866
    .end local v2    # "tinfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isForegroundApp(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4477
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v5, Landroid/app/ActivityManager;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4478
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 4479
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method private isInSettings()Z
    .locals 1

    .prologue
    .line 3179
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    return v0
.end method

.method private isOpenQsEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1877
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 1878
    .local v2, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1880
    .local v0, "action":I
    const/4 v7, 0x5

    if-ne v0, v7, :cond_4

    if-ne v2, v8, :cond_4

    move v4, v6

    .line 1883
    .local v4, "twoFingerDrag":Z
    :goto_0
    if-nez v0, :cond_5

    const/16 v7, 0x20

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v7

    if-nez v7, :cond_0

    const/16 v7, 0x40

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_0
    move v3, v6

    .line 1887
    .local v3, "stylusButtonClickDrag":Z
    :goto_1
    if-nez v0, :cond_6

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_1
    move v1, v6

    .line 1891
    .local v1, "mouseButtonClickDrag":Z
    :goto_2
    if-nez v4, :cond_2

    if-nez v3, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move v5, v6

    :cond_3
    return v5

    .end local v1    # "mouseButtonClickDrag":Z
    .end local v3    # "stylusButtonClickDrag":Z
    .end local v4    # "twoFingerDrag":Z
    :cond_4
    move v4, v5

    .line 1880
    goto :goto_0

    .restart local v4    # "twoFingerDrag":Z
    :cond_5
    move v3, v5

    .line 1883
    goto :goto_1

    .restart local v3    # "stylusButtonClickDrag":Z
    :cond_6
    move v1, v5

    .line 1887
    goto :goto_2
.end method

.method private isQuickConnectShowing()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 5222
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsQConnectSupported:Z

    if-eqz v2, :cond_2

    .line 5223
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "qconnectchecked"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 5225
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 5223
    goto :goto_0

    .line 5225
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSBottomArea:Landroid/view/View;

    const v3, 0x7f0e01c7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private knox_Tap(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5078
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 5079
    const/4 v1, 0x0

    .line 5080
    .local v1, "tapped":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoubleTapCount:I

    if-nez v2, :cond_2

    .line 5081
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 5082
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-eqz v2, :cond_0

    .line 5083
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v2}, Landroid/app/enterprise/knoxcustom/SystemManager;->getScreenOffOnStatusBarDoubleTapState()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomDoubleTapState:Z

    .line 5084
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomDoubleTapState:Z

    if-eqz v2, :cond_0

    .line 5085
    const/4 v1, 0x1

    .line 5101
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 5102
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoubleTapCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoubleTapCount:I

    .line 5103
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoubleTapCount:I

    if-ne v2, v5, :cond_5

    .line 5104
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5105
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5117
    .end local v1    # "tapped":Z
    :cond_1
    :goto_1
    return-void

    .line 5090
    .restart local v1    # "tapped":Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v5, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_4

    .line 5092
    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomDoubleTapState:Z

    if-eqz v2, :cond_0

    .line 5093
    const/4 v1, 0x1

    goto :goto_0

    .line 5095
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 5096
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomDoubleTapState:Z

    if-eqz v2, :cond_0

    .line 5097
    const/4 v1, 0x1

    goto :goto_0

    .line 5106
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoubleTapCount:I

    if-lt v2, v6, :cond_1

    .line 5108
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    sput v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoubleTapCount:I

    .line 5109
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5110
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 5111
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_1
.end method

.method private knox_setBarState()V
    .locals 5

    .prologue
    .line 5120
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5121
    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v4, "KnoxCustom: Sealed Keyguard setBarState"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5122
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 5123
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const-string v4, "getSealedStatusBarMode"

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxIntValue(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v1

    .line 5125
    .local v1, "sealedStatusBarMode":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 5126
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const-string v4, "getSealedStatusBarIconsState"

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxBoolValue(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    .line 5128
    .local v0, "sealedStatusBarIconState":Z
    if-nez v0, :cond_0

    .line 5129
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 5132
    .end local v0    # "sealedStatusBarIconState":Z
    .end local v1    # "sealedStatusBarMode":I
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private logQsSwipeDown(F)V
    .locals 4
    .param p1, "y"    # F

    .prologue
    .line 1661
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getCurrentVelocity()F

    move-result v1

    .line 1662
    .local v1, "vel":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x8

    .line 1665
    .local v0, "gesture":I
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v2, p1, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getDisplayDensity()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getDisplayDensity()F

    move-result v3

    div-float v3, v1, v3

    float-to-int v3, v3

    invoke-static {v0, v2, v3}, Lcom/android/systemui/EventLogTags;->writeSysuiLockscreenGesture(III)V

    .line 1669
    return-void

    .line 1662
    .end local v0    # "gesture":I
    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method private notificationExpansion(Z)V
    .locals 4
    .param p1, "shouldBeCollapse"    # Z

    .prologue
    .line 2563
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsNotificationCollapsed:Z

    if-eq v3, p1, :cond_3

    .line 2564
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 2565
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2566
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    .line 2567
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2569
    .local v2, "v":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2571
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isEmergencyModeActivated()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setQsFullyOpened(Z)V

    .line 2565
    .end local v2    # "v":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2571
    .restart local v2    # "v":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 2575
    .end local v2    # "v":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsNotificationCollapsed:Z

    .line 2577
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private onQsExpansionStarted()V
    .locals 1

    .prologue
    .line 2054
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted(I)V

    .line 2055
    return-void
.end method

.method private onQsExpansionStarted(I)V
    .locals 4
    .param p1, "overscrollAmount"    # I

    .prologue
    const/4 v3, 0x0

    .line 2058
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelQsAnimation()V

    .line 2059
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelHeightAnimator()V

    .line 2062
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    int-to-float v2, p1

    sub-float v0, v1, v2

    .line 2063
    .local v0, "height":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2064
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    .line 2066
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v1, v3, v3}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->scrollTo(II)V

    .line 2067
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 2068
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 2069
    return-void
.end method

.method private onQsIntercept(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x3

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 1502
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-nez v8, :cond_1

    .line 1614
    :cond_0
    :goto_0
    return v7

    .line 1507
    :cond_1
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 1508
    .local v3, "pointerIndex":I
    if-gez v3, :cond_2

    .line 1509
    const/4 v3, 0x0

    .line 1510
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1512
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 1513
    .local v5, "x":F
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1515
    .local v6, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1517
    :pswitch_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 1518
    iput v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1519
    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1520
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initVelocityTracker()V

    .line 1521
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1523
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    invoke-direct {p0, v8, v9, v10}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1525
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1527
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v8, :cond_4

    .line 1528
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1529
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1530
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1531
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 1532
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 1535
    :cond_4
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v8, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShouldContainerFixed:Z

    goto :goto_0

    .line 1539
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1540
    .local v4, "upPointer":I
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    if-ne v8, v4, :cond_0

    .line 1542
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    if-eq v8, v4, :cond_5

    move v2, v7

    .line 1543
    .local v2, "newIndex":I
    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1544
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1545
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    goto :goto_0

    .line 1550
    .end local v2    # "newIndex":I
    .end local v4    # "upPointer":I
    :pswitch_3
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v1, v6, v8

    .line 1551
    .local v1, "h":F
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1552
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v8, :cond_6

    .line 1557
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    add-float/2addr v8, v1

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1558
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1559
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    move v7, v2

    .line 1560
    goto/16 :goto_0

    .line 1563
    :cond_6
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    sub-float v9, v5, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_7

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    invoke-direct {p0, v8, v9, v10}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v8

    if-nez v8, :cond_8

    :cond_7
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    cmpl-float v8, v1, v8

    if-lez v8, :cond_0

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAdditionalStatusBarHeightForCover:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_0

    .line 1568
    :cond_8
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-nez v8, :cond_9

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAdditionalStatusBarHeightForCover:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_9

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_9

    .line 1570
    sget-object v8, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "panel is opened by touching on additional height.....Y = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :cond_9
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsOverlappedNotiAndQs:Z

    if-eqz v8, :cond_a

    .line 1576
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v8}, Lcom/android/systemui/settings/BrightnessController;->isBrightnessChanged()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1579
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsOverlappedNotiAndQs:Z

    .line 1580
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1581
    .local v0, "cancel":Landroid/view/MotionEvent;
    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1582
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1583
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1588
    .end local v0    # "cancel":Landroid/view/MotionEvent;
    :cond_a
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1589
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1590
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->notifyExpandingFinished()V

    .line 1591
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1592
    iput v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1593
    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1594
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 1595
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    move v7, v2

    .line 1596
    goto/16 :goto_0

    .line 1602
    .end local v1    # "h":F
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1603
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v8, :cond_b

    .line 1604
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-ne v8, v11, :cond_c

    :goto_1
    invoke-direct {p0, v6, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingQsWithCurrentVelocity(FZ)V

    .line 1606
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1608
    :cond_b
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 1610
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShouldContainerFixed:Z

    goto/16 :goto_0

    :cond_c
    move v2, v7

    .line 1604
    goto :goto_1

    .line 1515
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onQsTouch(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 1930
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 1931
    .local v5, "pointerIndex":I
    if-gez v5, :cond_0

    .line 1932
    const/4 v5, 0x0

    .line 1933
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1935
    :cond_0
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 1936
    .local v8, "y":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 1937
    .local v7, "x":F
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v1, v8, v10

    .line 1939
    .local v1, "h":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 2002
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 1941
    :pswitch_1
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1942
    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1943
    iput v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1944
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1945
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1946
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initVelocityTracker()V

    .line 1947
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1951
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 1952
    .local v6, "upPointer":I
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    if-ne v10, v6, :cond_1

    .line 1954
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    if-eq v10, v6, :cond_2

    .line 1955
    .local v2, "newIndex":I
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1956
    .local v4, "newY":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1957
    .local v3, "newX":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1958
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1959
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1960
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    goto :goto_0

    .end local v2    # "newIndex":I
    .end local v3    # "newX":F
    .end local v4    # "newY":F
    :cond_2
    move v2, v9

    .line 1954
    goto :goto_1

    .line 1965
    .end local v6    # "upPointer":I
    :pswitch_3
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    add-float/2addr v10, v1

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1966
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getFalsingThreshold()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v10, v1, v10

    if-ltz v10, :cond_3

    .line 1967
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    .line 1969
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1974
    :pswitch_4
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1975
    iput v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1976
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1977
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v0

    .line 1978
    .local v0, "fraction":F
    cmpl-float v10, v0, v11

    if-nez v10, :cond_4

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    cmpl-float v10, v8, v10

    if-ltz v10, :cond_8

    :cond_4
    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v10, v0, v10

    if-nez v10, :cond_5

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    cmpg-float v10, v8, v10

    if-gtz v10, :cond_8

    .line 1980
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_7

    :goto_2
    invoke-direct {p0, v8, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingQsWithCurrentVelocity(FZ)V

    .line 1996
    :cond_6
    :goto_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_1

    .line 1997
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 1998
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    :cond_7
    move v9, v2

    .line 1980
    goto :goto_2

    .line 1983
    :cond_8
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->logQsSwipeDown(F)V

    .line 1984
    iput v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    .line 1986
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v9

    if-nez v9, :cond_6

    cmpl-float v9, v0, v11

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsUiExpanded()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1988
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_9

    .line 1989
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToKeyguard()V

    goto :goto_3

    .line 1991
    :cond_9
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToCover()V

    goto :goto_3

    .line 1939
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private positionClockAndNotifications()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1105
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isAddOrRemoveAnimationPending()Z

    move-result v0

    .line 1107
    .local v0, "animate":Z
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1109
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getMeasuredHeight()I

    move-result v1

    .line 1111
    .local v1, "bottom":I
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v7, :cond_0

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v7, v1

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationTopPadding:I

    add-int v6, v7, v8

    .line 1114
    .local v6, "stackScrollerPadding":I
    :goto_0
    iput v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    .line 1157
    .end local v1    # "bottom":I
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIntrinsicPadding(I)V

    .line 1158
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 1159
    return-void

    .line 1111
    .end local v6    # "stackScrollerPadding":I
    .restart local v1    # "bottom":I
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationTopPadding:I

    add-int v6, v7, v8

    goto :goto_0

    .line 1117
    .end local v1    # "bottom":I
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 1118
    .local v2, "config":Landroid/content/res/Configuration;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1119
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c023d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1136
    .restart local v6    # "stackScrollerPadding":I
    :goto_2
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->canSetDcmLauncher()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1137
    const/4 v4, 0x0

    .line 1138
    .local v4, "mascotHeight":I
    const/4 v5, 0x0

    .line 1139
    .local v5, "mascotTopMargin":I
    const/4 v3, 0x0

    .line 1140
    .local v3, "mascotBottomMargin":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/util/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDcmKeyguardMascotUtils:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->isMascotEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_5

    .line 1142
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDcmLauncherIntrinsicPadding(I)V

    .line 1143
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0303

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1144
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0304

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1145
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0305

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1146
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    add-int v8, v6, v5

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setY(F)V

    .line 1150
    :goto_3
    add-int v7, v6, v4

    add-int/2addr v7, v5

    add-int v6, v7, v3

    .line 1155
    .end local v3    # "mascotBottomMargin":I
    .end local v4    # "mascotHeight":I
    .end local v5    # "mascotTopMargin":I
    :cond_2
    iput v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    goto/16 :goto_1

    .line 1121
    .end local v6    # "stackScrollerPadding":I
    :cond_3
    iget v7, v2, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 1122
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c023e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .restart local v6    # "stackScrollerPadding":I
    goto :goto_2

    .line 1125
    .end local v6    # "stackScrollerPadding":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c023c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .restart local v6    # "stackScrollerPadding":I
    goto :goto_2

    .line 1148
    .restart local v3    # "mascotBottomMargin":I
    .restart local v4    # "mascotHeight":I
    .restart local v5    # "mascotTopMargin":I
    :cond_5
    const/16 v7, 0x8

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMascotViewVisible(I)V

    goto :goto_3
.end method

.method private requestScrollerTopPaddingUpdate(Z)V
    .locals 7
    .param p1, "animate"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3025
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculateQsTopPadding()F

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextTopPaddingChange:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v6, :cond_3

    :cond_1
    :goto_1
    invoke-virtual {v3, v4, v5, v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateTopPadding(FIZZ)V

    .line 3030
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextTopPaddingChange:Z

    .line 3031
    return-void

    :cond_2
    move v0, v1

    .line 3025
    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method private resetQsEditPanel()V
    .locals 1

    .prologue
    .line 4785
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    if-eqz v0, :cond_0

    .line 4786
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSEditPanel;->resetPanel()V

    .line 4788
    :cond_0
    return-void
.end method

.method private resetVerticalPanelPosition()V
    .locals 1

    .prologue
    .line 4382
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setVerticalPanelTranslation(F)V

    .line 4383
    return-void
.end method

.method private setClosingWithAlphaFadeout(Z)V
    .locals 1
    .param p1, "closing"    # Z

    .prologue
    .line 4341
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClosingWithAlphaFadeOut:Z

    .line 4342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->forceNoOverlappingRendering(Z)V

    .line 4343
    return-void
.end method

.method private setKeyguardBottomAreaVisibility(IZ)V
    .locals 6
    .param p1, "statusBarState"    # I
    .param p2, "goingToFullShade"    # Z

    .prologue
    const/16 v5, 0x8

    const/high16 v4, 0x3f800000    # 1.0f

    .line 2350
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKeyguardBottomAreaVisibility() prevState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newState - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " goingToShade - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 2352
    .local v0, "bottom":Landroid/view/View;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2353
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->getDcmKBAView()Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    move-result-object v0

    .line 2354
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v1, :cond_0

    .line 2355
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setVisibility(I)V

    .line 2357
    :cond_0
    if-nez v0, :cond_1

    .line 2381
    :goto_0
    return-void

    .line 2358
    :cond_1
    if-eqz p2, :cond_2

    .line 2359
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2360
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 2367
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 2371
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2372
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-nez v1, :cond_3

    .line 2373
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2375
    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 2377
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2378
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2379
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private setKeyguardClockBottomShortcutVisibility(Z)V
    .locals 3
    .param p1, "vis"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2385
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v0, :cond_0

    .line 2386
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setBottomShortcutVisibility(Z)V

    .line 2390
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2391
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/keyguard/status/SecKeyguardStatusView;->setVisibility(I)V

    .line 2395
    :goto_2
    return-void

    :cond_1
    move v0, p1

    .line 2386
    goto :goto_0

    .line 2391
    :cond_2
    const/4 v1, 0x4

    goto :goto_1

    .line 2393
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/status/SecKeyguardStatusView;->setVisibility(I)V

    goto :goto_2
.end method

.method private setKeyguardStatusViewVisibility(IZZ)V
    .locals 6
    .param p1, "statusBarState"    # I
    .param p2, "keyguardFadingAway"    # Z
    .param p3, "goingToFullShade"    # Z

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 2445
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2446
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2447
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    invoke-virtual {v1}, Lcom/android/keyguard/status/SecKeyguardStatusView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2448
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 2449
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/status/SecKeyguardStatusView;->setVisibility(I)V

    .line 2507
    :goto_0
    return-void

    .line 2450
    :cond_0
    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz p3, :cond_3

    .line 2452
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    invoke-virtual {v1}, Lcom/android/keyguard/status/SecKeyguardStatusView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2469
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 2470
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/status/SecKeyguardStatusView;->setVisibility(I)V

    .line 2472
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMascotViewVisible(I)V

    goto :goto_0

    .line 2474
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2476
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    invoke-virtual {v1}, Lcom/android/keyguard/status/SecKeyguardStatusView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2477
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 2478
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/status/SecKeyguardStatusView;->setVisibility(I)V

    .line 2479
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    invoke-virtual {v1, v5}, Lcom/android/keyguard/status/SecKeyguardStatusView;->setAlpha(F)V

    .line 2481
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMascotViewVisible(I)V

    goto :goto_0

    .line 2492
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2493
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    invoke-virtual {v1}, Lcom/android/keyguard/status/SecKeyguardStatusView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2494
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 2495
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/status/SecKeyguardStatusView;->setVisibility(I)V

    .line 2497
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMascotViewVisible(I)V

    .line 2498
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    invoke-virtual {v1, v5}, Lcom/android/keyguard/status/SecKeyguardStatusView;->setAlpha(F)V

    goto :goto_0

    .line 2500
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    invoke-virtual {v1}, Lcom/android/keyguard/status/SecKeyguardStatusView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2501
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 2502
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/status/SecKeyguardStatusView;->setVisibility(I)V

    .line 2504
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMascotViewVisible(I)V

    .line 2505
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    invoke-virtual {v1, v5}, Lcom/android/keyguard/status/SecKeyguardStatusView;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method private setLaunchingAffordance(Z)V
    .locals 0
    .param p1, "launchingAffordance"    # Z

    .prologue
    .line 4454
    return-void
.end method

.method private setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 3556
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setListening(Z)V

    .line 3561
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/BrightnessController;->setListening(Z)V

    .line 3563
    return-void
.end method

.method private setMascotViewVisible(I)V
    .locals 2
    .param p1, "visiblity"    # I

    .prologue
    .line 2173
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->canSetDcmLauncher()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2186
    :goto_0
    return-void

    .line 2176
    :cond_0
    move v0, p1

    .line 2177
    .local v0, "tempVisiblity":I
    if-nez v0, :cond_1

    .line 2178
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDcmKeyguardMascotUtils:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->isMascotEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2179
    const/16 v0, 0x8

    .line 2182
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2183
    const/16 v0, 0x8

    .line 2185
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setQsExpanded(Z)V
    .locals 2
    .param p1, "expanded"    # Z

    .prologue
    .line 2072
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eq v1, p1, :cond_2

    const/4 v0, 0x1

    .line 2073
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 2075
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    if-nez v1, :cond_0

    .line 2076
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->notificationExpansion(Z)V

    .line 2078
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    .line 2079
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 2080
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 2081
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setInterceptDelegateEnabled(Z)V

    .line 2082
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setQsExpanded(Z)V

    .line 2083
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/QSPanel;->setExpanded(Z)V

    .line 2084
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setQsExpanded(Z)V

    .line 2086
    :cond_1
    return-void

    .line 2072
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setQsExpansion(F)V
    .locals 8
    .param p1, "height"    # F

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2581
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopOverScrolled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2693
    :goto_0
    return-void

    .line 2582
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v2, v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v6, v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 2584
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOldQsHeight:F

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_11

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHeightChanged:Z

    .line 2585
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOldQsHeight:F

    .line 2587
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    if-eqz v2, :cond_12

    move v2, v4

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    .line 2591
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWasQsFullyExpanded:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eq v2, v6, :cond_1

    .line 2592
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWasQsFullyExpanded:Z

    .line 2593
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->notificationExpansion(Z)V

    .line 2594
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelVisibility()V

    .line 2599
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v2, :cond_2

    .line 2601
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToLockedShade(Landroid/view/View;)V

    .line 2607
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v1

    .line 2608
    .local v1, "showingDetail":Z
    if-eqz v1, :cond_3

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpanded(Z)V

    .line 2610
    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_14

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v2, :cond_14

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCovered()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    if-eqz v2, :cond_14

    .line 2612
    :cond_4
    if-nez v1, :cond_5

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpanded(Z)V

    .line 2615
    :cond_5
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    if-nez v2, :cond_8

    .line 2616
    if-nez v1, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSPanel;->setQsTileLine(Z)I

    .line 2618
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotView:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 2619
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2623
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelVisibility()V

    .line 2625
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierAndClearLayout()V

    .line 2629
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v6}, Lcom/android/systemui/qs/QSPanel;->isMultiLine()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->setQsExpanded(Z)V

    .line 2649
    :cond_9
    :goto_3
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 2653
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsTranslation(F)V

    .line 2657
    if-eqz v1, :cond_18

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->isMultiLine()Z

    move-result v2

    if-eqz v2, :cond_17

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2658
    .local v0, "iconState":F
    :goto_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->updateIconState(F)V

    .line 2659
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHeightChanged:Z

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isEmergencyModeActivated()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v2

    if-nez v2, :cond_a

    .line 2661
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQspanelParams:Landroid/view/ViewGroup$LayoutParams;

    float-to-int v6, p1

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2662
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQspanelParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v6}, Lcom/android/systemui/qs/QSContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2664
    :cond_a
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v2, :cond_b

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    if-nez v2, :cond_b

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQCBottomArea(F)V

    .line 2666
    :cond_b
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 2667
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotificationScrim(F)V

    .line 2668
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v2, :cond_c

    .line 2669
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguard()V

    .line 2671
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState(I)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2673
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateKeyguardBottomAreaAlpha()V

    .line 2675
    :cond_e
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v2, :cond_f

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-nez v2, :cond_f

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    if-eqz v2, :cond_f

    .line 2677
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNavbarScrim:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 2682
    :cond_f
    cmpl-float v2, p1, v5

    if-eqz v2, :cond_10

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v2, :cond_10

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    if-nez v2, :cond_10

    .line 2683
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f0d022f

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2685
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    .line 2692
    :cond_10
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSContainer;->getY()F

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_1a

    :goto_5
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsUiExpanded(Z)V

    goto/16 :goto_0

    .end local v0    # "iconState":F
    .end local v1    # "showingDetail":Z
    :cond_11
    move v2, v4

    .line 2584
    goto/16 :goto_1

    .line 2587
    :cond_12
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-nez v2, :cond_13

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->isMultiLine()Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v3

    goto/16 :goto_2

    :cond_13
    move v2, v4

    goto/16 :goto_2

    .line 2630
    .restart local v1    # "showingDetail":Z
    :cond_14
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v2, :cond_9

    .line 2631
    if-nez v1, :cond_15

    .line 2632
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpanded(Z)V

    .line 2634
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/QSPanel;->setQsTileLine(Z)I

    .line 2637
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelVisibility()V

    .line 2639
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierAndClearLayout()V

    .line 2642
    :cond_15
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    if-eqz v2, :cond_16

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTracking:Z

    if-nez v2, :cond_16

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isCollapsing()Z

    move-result v2

    if-nez v2, :cond_16

    .line 2643
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardOrLockScreenString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2644
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    .line 2646
    :cond_16
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v6}, Lcom/android/systemui/qs/QSPanel;->isMultiLine()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->setQsExpanded(Z)V

    goto/16 :goto_3

    :cond_17
    move v0, v5

    .line 2657
    goto/16 :goto_4

    :cond_18
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    if-eqz v2, :cond_19

    move v0, v5

    goto/16 :goto_4

    :cond_19
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeaderExpansionFraction()F

    move-result v0

    goto/16 :goto_4

    .restart local v0    # "iconState":F
    :cond_1a
    move v3, v4

    .line 2692
    goto :goto_5
.end method

.method private setQsExpansionHeight(Z)V
    .locals 14
    .param p1, "keyguardSwipeDown"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 958
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQuickConnectHeight:I

    .line 959
    .local v7, "orgQcHeight":I
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 960
    iput v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQuickConnectHeight:I

    .line 965
    :cond_0
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    .line 966
    .local v6, "oldQsMinExpansionHeight":I
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 969
    .local v5, "oldQsMaxExpansionHeight":I
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getCurrentUserId()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isOwnerProfile(I)Z

    move-result v2

    .line 970
    .local v2, "isOwnerProfile":Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQuickConnectShowing()Z

    move-result v12

    if-eqz v12, :cond_6

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v12

    if-nez v12, :cond_6

    if-eqz v2, :cond_6

    move v4, v10

    .line 972
    .local v4, "isQuickConnectShowing":Z
    :goto_0
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v12

    if-eqz v12, :cond_7

    move v0, v11

    .line 973
    .local v0, "brightnessHeight":I
    :goto_1
    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQuickConnectHeight()I

    move-result v8

    .line 974
    .local v8, "qconnectHeight":I
    :goto_2
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v12

    if-eqz v12, :cond_9

    move v9, v11

    .line 976
    .local v9, "summaryHeight":I
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateShowDataUsageVisibility()Z

    move-result v12

    if-eqz v12, :cond_a

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageViewHeight:I

    .line 980
    .local v1, "dataUsageHeight":I
    :goto_4
    sget-boolean v12, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    if-nez v12, :cond_1

    iget-boolean v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableExpands:Z

    if-eqz v12, :cond_b

    .line 981
    :cond_1
    iput v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 1034
    :goto_5
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isEmergencyModeActivated()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1035
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    if-nez v10, :cond_19

    :goto_6
    iput v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    .line 1036
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getMeasuredHeight()I

    move-result v10

    iput v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 1040
    :cond_2
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    if-ne v6, v10, :cond_3

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    if-eq v5, v10, :cond_4

    :cond_3
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-eqz v10, :cond_4

    .line 1042
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v10, v10

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1047
    :cond_4
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1048
    iput v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQuickConnectHeight:I

    .line 1051
    :cond_5
    return-void

    .end local v0    # "brightnessHeight":I
    .end local v1    # "dataUsageHeight":I
    .end local v4    # "isQuickConnectShowing":Z
    .end local v8    # "qconnectHeight":I
    .end local v9    # "summaryHeight":I
    :cond_6
    move v4, v11

    .line 970
    goto :goto_0

    .line 972
    .restart local v4    # "isQuickConnectShowing":Z
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getBrightnessControllerHeight()I

    move-result v0

    goto :goto_1

    .restart local v0    # "brightnessHeight":I
    :cond_8
    move v8, v11

    .line 973
    goto :goto_2

    .line 974
    .restart local v8    # "qconnectHeight":I
    :cond_9
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSummaryHeight:I

    goto :goto_3

    .restart local v9    # "summaryHeight":I
    :cond_a
    move v1, v11

    .line 976
    goto :goto_4

    .line 984
    .restart local v1    # "dataUsageHeight":I
    :cond_b
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldBlockStatusBar()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 985
    iput v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 986
    iput v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    goto :goto_5

    .line 988
    :cond_c
    iget-boolean v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v12, :cond_d

    if-eqz p1, :cond_10

    .line 989
    :cond_d
    iput v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    .line 991
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotView:Landroid/view/View;

    if-eqz v10, :cond_f

    .line 992
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getMeasuredHeight()I

    move-result v10

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v12}, Lcom/android/systemui/qs/QSPanel;->getSingleTileLineHeight()I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v10, v0

    add-int v12, v10, v8

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShouldShowMultisimPrefferedSlot:Z

    if-eqz v10, :cond_e

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotHeight:I

    :goto_7
    add-int/2addr v10, v12

    add-int/2addr v10, v1

    iput v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    goto :goto_5

    :cond_e
    move v10, v11

    goto :goto_7

    .line 997
    :cond_f
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getMeasuredHeight()I

    move-result v10

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v12}, Lcom/android/systemui/qs/QSPanel;->getSingleTileLineHeight()I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v10, v0

    add-int/2addr v10, v8

    add-int/2addr v10, v1

    iput v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    goto/16 :goto_5

    .line 1002
    :cond_10
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotView:Landroid/view/View;

    if-eqz v12, :cond_15

    .line 1003
    if-eqz v2, :cond_11

    iget-boolean v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsQConnectSupported:Z

    if-eqz v12, :cond_11

    move v3, v10

    .line 1005
    .local v3, "isQuickConnectIn2ndDepth":Z
    :goto_8
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getMeasuredHeight()I

    move-result v10

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v12}, Lcom/android/systemui/qs/QSPanel;->getSingleTileLineHeight()I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v10, v0

    add-int v12, v10, v8

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShouldShowMultisimPrefferedSlot:Z

    if-eqz v10, :cond_12

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotHeight:I

    :goto_9
    add-int/2addr v10, v12

    add-int/2addr v10, v1

    iput v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    .line 1009
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1010
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    iput v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    goto/16 :goto_5

    .end local v3    # "isQuickConnectIn2ndDepth":Z
    :cond_11
    move v3, v11

    .line 1003
    goto :goto_8

    .restart local v3    # "isQuickConnectIn2ndDepth":Z
    :cond_12
    move v10, v11

    .line 1005
    goto :goto_9

    .line 1012
    :cond_13
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getMeasuredHeight()I

    move-result v10

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v12}, Lcom/android/systemui/qs/QSPanel;->getMultiTileLineHeight()I

    move-result v12

    add-int/2addr v10, v12

    iget v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQuickConnectHeight:I

    add-int/2addr v10, v12

    add-int v12, v10, v9

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShouldShowMultisimPrefferedSlot:Z

    if-eqz v10, :cond_14

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotHeight:I

    :goto_a
    add-int/2addr v10, v12

    iput v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    goto/16 :goto_5

    :cond_14
    move v10, v11

    goto :goto_a

    .line 1020
    .end local v3    # "isQuickConnectIn2ndDepth":Z
    :cond_15
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getMeasuredHeight()I

    move-result v12

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v13}, Lcom/android/systemui/qs/QSPanel;->getSingleTileLineHeight()I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v0

    add-int/2addr v12, v8

    add-int/2addr v12, v1

    iput v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    .line 1024
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v12

    if-eqz v12, :cond_16

    .line 1025
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    iput v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    goto/16 :goto_5

    .line 1027
    :cond_16
    if-eqz v2, :cond_17

    iget-boolean v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsQConnectSupported:Z

    if-eqz v12, :cond_17

    move v3, v10

    .line 1028
    .restart local v3    # "isQuickConnectIn2ndDepth":Z
    :goto_b
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getMeasuredHeight()I

    move-result v10

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v12}, Lcom/android/systemui/qs/QSPanel;->getMultiTileLineHeight()I

    move-result v12

    add-int/2addr v10, v12

    add-int v12, v10, v9

    if-eqz v3, :cond_18

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQuickConnectHeight:I

    :goto_c
    add-int/2addr v10, v12

    iput v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    goto/16 :goto_5

    .end local v3    # "isQuickConnectIn2ndDepth":Z
    :cond_17
    move v3, v11

    .line 1027
    goto :goto_b

    .restart local v3    # "isQuickConnectIn2ndDepth":Z
    :cond_18
    move v10, v11

    .line 1028
    goto :goto_c

    .line 1035
    .end local v3    # "isQuickConnectIn2ndDepth":Z
    :cond_19
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getMeasuredHeight()I

    move-result v11

    goto/16 :goto_6
.end method

.method private setQsPanelScale(F)V
    .locals 5
    .param p1, "diff"    # F

    .prologue
    const v4, 0x3e4ccccc    # 0.19999999f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2888
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2904
    :cond_0
    :goto_0
    return-void

    .line 2890
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getSingleTileLineHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v0, p1, v1

    .line 2892
    .local v0, "frac":F
    cmpl-float v1, v0, v3

    if-lez v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2893
    :cond_2
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    const/4 v0, 0x0

    .line 2895
    :cond_3
    cmpl-float v1, v0, v3

    if-eqz v1, :cond_0

    .line 2900
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    mul-float v2, v4, v0

    sub-float v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSPanel;->setScaleX(F)V

    .line 2901
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    mul-float v2, v4, v0

    sub-float v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSPanel;->setScaleY(F)V

    .line 2903
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v0

    mul-float/2addr v2, v4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->getSingleTileLineHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSPanel;->setTranslationY(F)V

    goto :goto_0
.end method

.method private setQsUiExpanded(Z)V
    .locals 5
    .param p1, "qsUiExpanded"    # Z

    .prologue
    .line 5257
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsUiExpanded:Z

    if-eq v2, p1, :cond_0

    .line 5258
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsUiExpanded:Z

    .line 5261
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsUiExpanded:Z

    if-eqz v2, :cond_1

    .line 5262
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.systemui.statusbar.EXPAND_QUICKSETTING"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5268
    :goto_0
    :try_start_0
    const-string v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 5270
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 5271
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsUiExpanded:Z

    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->setQuickSettingPanelExpandState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5278
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_1
    return-void

    .line 5264
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.systemui.statusbar.COLLAPSED_QUICKSETTING"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 5273
    :catch_0
    move-exception v0

    .line 5274
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private setVerticalPanelTranslation(F)V
    .locals 1
    .param p1, "translation"    # F

    .prologue
    .line 4386
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTranslationX(F)V

    .line 4387
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setTranslationX(F)V

    .line 4388
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->setTranslationX(F)V

    .line 4392
    return-void
.end method

.method private shouldQuickSettingsIntercept(FFF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "yDiff"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3134
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCollapsedOnDown:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3142
    :cond_0
    :goto_0
    return v2

    .line 3137
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 3138
    .local v0, "header":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_5

    move v1, v3

    .line 3142
    .local v1, "onHeader":Z
    :goto_2
    if-nez v1, :cond_3

    const/4 v4, 0x0

    cmpg-float v4, p3, v4

    if-gez v4, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInQsArea(FF)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInContentBounds(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0

    .line 3137
    .end local v0    # "header":Landroid/view/View;
    .end local v1    # "onHeader":Z
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    goto :goto_1

    .restart local v0    # "header":Landroid/view/View;
    :cond_5
    move v1, v2

    .line 3138
    goto :goto_2
.end method

.method private shouldShowMultisimPrefferedSlot()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5176
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isEmergencyModeActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5177
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShouldShowMultisimPrefferedSlot:Z

    .line 5181
    :goto_0
    return v0

    .line 5180
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShouldShowMultisimPrefferedSlot:Z

    move v0, v1

    .line 5181
    goto :goto_0
.end method

.method private startQsSizeChangeAnimation(II)V
    .locals 4
    .param p1, "oldHeight"    # I
    .param p2, "newHeight"    # I

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1075
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1077
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 1078
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1079
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1080
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1091
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1097
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1098
    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3034
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3035
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchX:F

    .line 3036
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchY:F

    .line 3037
    return-void
.end method

.method private transformTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "sourceView"    # Landroid/view/View;
    .param p3, "targetView"    # Landroid/view/View;

    .prologue
    .line 5246
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 5247
    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 5248
    return-void
.end method

.method private updateDozingVisibilities(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 4096
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-eqz v1, :cond_1

    .line 4097
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 4098
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v0, :cond_0

    .line 4099
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setVisibility(I)V

    .line 4113
    :cond_0
    :goto_0
    return-void

    .line 4101
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4102
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v1, :cond_2

    .line 4103
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setVisibility(I)V

    .line 4106
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 4107
    if-eqz p1, :cond_0

    .line 4108
    const-wide/16 v0, 0x2bc

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateKeyguardStatusBarIn(J)V

    .line 4109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v0, :cond_0

    .line 4110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->startFinishDozeAnimation()V

    goto :goto_0

    .line 4106
    :cond_3
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private updateEmptyShadeView()V
    .locals 2

    .prologue
    .line 4128
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShadeEmpty:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateEmptyShadeView(Z)V

    .line 4129
    return-void

    .line 4128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateHeader()V
    .locals 1

    .prologue
    .line 3367
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3368
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguard()V

    .line 3372
    :goto_0
    return-void

    .line 3370
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderShade()V

    goto :goto_0
.end method

.method private updateHeaderKeyguard()V
    .locals 1

    .prologue
    .line 3464
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguardAlpha()V

    .line 3465
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanelDownAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchQsPanelWhileTopOverScolling:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsTranslation(F)V

    .line 3466
    :cond_0
    return-void
.end method

.method private updateHeaderKeyguardAlpha()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 3443
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeHelper:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeHelper:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->animationRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3461
    :cond_0
    :goto_0
    return-void

    .line 3447
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isShortcutPreviewAnimationPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3451
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoverAnimiationRuning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3455
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float v0, v3, v1

    .line 3456
    .local v0, "alphaQsExpansion":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardContentsAlpha()F

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBarAnimateAlpha:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    .line 3459
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getAlpha()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_1
.end method

.method private updateHeaderShade()V
    .locals 3

    .prologue
    .line 3375
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeaderAnimating:Z

    if-nez v1, :cond_0

    .line 3381
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getPeekHeight()F

    move-result v0

    .line 3382
    .local v0, "peekHeight":F
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_2

    .line 3383
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->setTranslationY(F)V

    .line 3389
    .end local v0    # "peekHeight":F
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanelDownAnimating:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchQsPanelWhileTopOverScolling:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsTranslation(F)V

    .line 3390
    :cond_1
    return-void

    .line 3385
    .restart local v0    # "peekHeight":F
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->setTranslationY(F)V

    goto :goto_0
.end method

.method private updateKeyguardBottomAreaAlpha()V
    .locals 5

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 3469
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-nez v1, :cond_0

    .line 3478
    :goto_0
    return-void

    .line 3471
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardContentsAlpha()F

    move-result v3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    sub-float v1, v2, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 3474
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAlpha(F)V

    .line 3475
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    const/4 v1, 0x4

    :goto_2
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 3471
    .end local v0    # "alpha":F
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v1

    goto :goto_1

    .line 3475
    .restart local v0    # "alpha":F
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private updateMaxHeadsUpTranslation()V
    .locals 3

    .prologue
    .line 3755
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNavigationBarBottomHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setHeadsUpBoundaries(II)V

    .line 3756
    return-void
.end method

.method private updateNotificationScrim(F)V
    .locals 4
    .param p1, "height"    # F

    .prologue
    .line 2867
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationScrimWaitDistance:I

    add-int v1, v2, v3

    .line 2868
    .local v1, "startDistance":I
    int-to-float v2, v1

    sub-float v2, p1, v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 2869
    .local v0, "progress":F
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2870
    return-void
.end method

.method private updateNotificationTranslucency()V
    .locals 2

    .prologue
    .line 3316
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3317
    .local v0, "alpha":F
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClosingWithAlphaFadeOut:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandingFromHeadsUp:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3318
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getFadeoutAlpha()F

    move-result v0

    .line 3320
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAlpha(F)V

    .line 3321
    return-void
.end method

.method private updatePanelExpanded()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3235
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 3236
    .local v0, "isExpanded":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelExpanded:Z

    if-eq v3, v0, :cond_0

    .line 3237
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setIsExpanded(Z)V

    .line 3238
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setPanelExpanded(Z)V

    .line 3239
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelExpanded:Z

    .line 3241
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setStatusBarFocusable(Z)V

    .line 3242
    return-void

    .end local v0    # "isExpanded":Z
    :cond_1
    move v0, v2

    .line 3235
    goto :goto_0

    .restart local v0    # "isExpanded":Z
    :cond_2
    move v1, v2

    .line 3241
    goto :goto_1
.end method

.method private updateQCBottomArea(F)V
    .locals 17
    .param p1, "fraction"    # F

    .prologue
    .line 2696
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v14}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v14

    if-nez v14, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isQsEditPanelOpened()Z

    move-result v14

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 2697
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessControllerView:Landroid/view/ViewGroup;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2698
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSBottomArea:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 2700
    sget-boolean v14, Lcom/android/systemui/statusbar/Feature;->mShowDataUsageInQuickPanel:Z

    if-eqz v14, :cond_2

    .line 2701
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageView:Lcom/android/systemui/statusbar/phone/DataUsageView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/android/systemui/statusbar/phone/DataUsageView;->setVisibility(I)V

    .line 2856
    :cond_2
    :goto_0
    return-void

    .line 2709
    :cond_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQuickConnectHeight:I

    .line 2710
    .local v9, "orgQcHeight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2711
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQuickConnectHeight:I

    .line 2727
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v14}, Lcom/android/systemui/qs/QSPanel;->getSingleTileLineHeight()I

    move-result v14

    int-to-float v12, v14

    .line 2728
    .local v12, "slh":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v14}, Lcom/android/systemui/qs/QSPanel;->getMultiTileLineHeight()I

    move-result v14

    int-to-float v7, v14

    .line 2732
    .local v7, "mlh":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getBrightnessControllerHeight()I

    move-result v14

    int-to-float v1, v14

    .line 2733
    .local v1, "bch":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQuickConnectHeight()I

    move-result v14

    int-to-float v10, v14

    .line 2734
    .local v10, "qch":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSummaryHeight:I

    int-to-float v13, v14

    .line 2737
    .local v13, "summaryh":F
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageViewShowing:Z

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageViewHeight:I

    int-to-float v4, v14

    .line 2740
    .local v4, "duvh":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotView:Landroid/view/View;

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShouldShowMultisimPrefferedSlot:Z

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotHeight:I

    int-to-float v8, v14

    .line 2742
    .local v8, "mpsh":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getCurrentUserId()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isOwnerProfile(I)Z

    move-result v5

    .line 2744
    .local v5, "isOwnerProfile":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQuickConnectShowing()Z

    move-result v14

    if-eqz v14, :cond_b

    if-eqz v5, :cond_b

    const/4 v6, 0x1

    .line 2745
    .local v6, "isQuickConnectShowing":Z
    :goto_3
    if-eqz v6, :cond_10

    .line 2746
    add-float v14, v7, v10

    add-float/2addr v14, v13

    add-float/2addr v14, v8

    add-float v15, v12, v1

    add-float/2addr v15, v4

    add-float/2addr v15, v10

    add-float/2addr v15, v8

    sub-float v3, v14, v15

    .line 2748
    .local v3, "distance":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotView:Landroid/view/View;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShouldShowMultisimPrefferedSlot:Z

    if-eqz v14, :cond_5

    .line 2749
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotParams:Landroid/widget/FrameLayout$LayoutParams;

    mul-float v15, v3, p1

    add-float v16, v12, v1

    add-float v16, v16, v10

    add-float v16, v16, v4

    add-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2750
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotView:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 2751
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotView:Landroid/view/View;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v14, v15}, Landroid/view/View;->setAlpha(F)V

    .line 2756
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrigntnessParams:Landroid/widget/FrameLayout$LayoutParams;

    mul-float v15, v3, p1

    add-float/2addr v15, v12

    float-to-int v15, v15

    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2757
    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    :goto_4
    invoke-static {v15, v14}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 2758
    .local v2, "brightnessAlpha":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessControllerView:Landroid/view/ViewGroup;

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v2

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2760
    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v14, p1, v14

    if-ltz v14, :cond_d

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    if-nez v14, :cond_d

    .line 2761
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessControllerView:Landroid/view/ViewGroup;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2766
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSummaryParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v15}, Lcom/android/systemui/qs/QSPanel;->getMultiTileLineHeight()I

    move-result v15

    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2769
    sget-boolean v14, Lcom/android/systemui/statusbar/Feature;->mShowDataUsageInQuickPanel:Z

    if-eqz v14, :cond_6

    .line 2770
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageViewParams:Landroid/widget/FrameLayout$LayoutParams;

    mul-float v15, v3, p1

    add-float/2addr v15, v12

    add-float/2addr v15, v1

    float-to-int v15, v15

    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2771
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageView:Lcom/android/systemui/statusbar/phone/DataUsageView;

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v2

    invoke-virtual {v14, v15}, Lcom/android/systemui/statusbar/phone/DataUsageView;->setAlpha(F)V

    .line 2772
    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v14, p1, v14

    if-ltz v14, :cond_e

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    if-nez v14, :cond_e

    .line 2773
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageView:Lcom/android/systemui/statusbar/phone/DataUsageView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/android/systemui/statusbar/phone/DataUsageView;->setVisibility(I)V

    .line 2780
    :cond_6
    :goto_6
    if-eqz v5, :cond_f

    .line 2781
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQuickConnectParams:Landroid/widget/FrameLayout$LayoutParams;

    mul-float v15, v3, p1

    add-float v16, v12, v1

    add-float v16, v16, v4

    add-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2782
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSBottomArea:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 2783
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSBottomArea:Landroid/view/View;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v14, v15}, Landroid/view/View;->setAlpha(F)V

    .line 2841
    :goto_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomQuickPanelButtons:I

    and-int/lit8 v14, v14, 0x2

    const/4 v15, 0x2

    if-eq v14, v15, :cond_7

    .line 2843
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSBottomArea:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 2845
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomQuickPanelButtons:I

    and-int/lit8 v14, v14, 0x4

    const/4 v15, 0x4

    if-eq v14, v15, :cond_8

    .line 2847
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessControllerView:Landroid/view/ViewGroup;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2852
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2853
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQuickConnectHeight:I

    goto/16 :goto_0

    .line 2737
    .end local v2    # "brightnessAlpha":F
    .end local v3    # "distance":F
    .end local v4    # "duvh":F
    .end local v5    # "isOwnerProfile":Z
    .end local v6    # "isQuickConnectShowing":Z
    .end local v8    # "mpsh":F
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 2740
    .restart local v4    # "duvh":F
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 2744
    .restart local v5    # "isOwnerProfile":Z
    .restart local v8    # "mpsh":F
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 2757
    .restart local v3    # "distance":F
    .restart local v6    # "isQuickConnectShowing":Z
    :cond_c
    const/high16 v14, 0x41100000    # 9.0f

    mul-float v14, v14, p1

    goto/16 :goto_4

    .line 2763
    .restart local v2    # "brightnessAlpha":F
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessControllerView:Landroid/view/ViewGroup;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_5

    .line 2774
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageViewShowing:Z

    if-eqz v14, :cond_6

    .line 2775
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageView:Lcom/android/systemui/statusbar/phone/DataUsageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/systemui/statusbar/phone/DataUsageView;->setVisibility(I)V

    goto :goto_6

    .line 2785
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSBottomArea:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 2788
    .end local v2    # "brightnessAlpha":F
    .end local v3    # "distance":F
    :cond_10
    add-float v14, v7, v10

    add-float/2addr v14, v13

    add-float/2addr v14, v8

    add-float v15, v12, v1

    add-float/2addr v15, v4

    add-float/2addr v15, v8

    sub-float v3, v14, v15

    .line 2790
    .restart local v3    # "distance":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotView:Landroid/view/View;

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShouldShowMultisimPrefferedSlot:Z

    if-eqz v14, :cond_11

    .line 2791
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotParams:Landroid/widget/FrameLayout$LayoutParams;

    mul-float v15, v3, p1

    add-float v16, v12, v1

    add-float v16, v16, v4

    add-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2792
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotView:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 2793
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotView:Landroid/view/View;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v14, v15}, Landroid/view/View;->setAlpha(F)V

    .line 2797
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrigntnessParams:Landroid/widget/FrameLayout$LayoutParams;

    mul-float v15, v3, p1

    add-float/2addr v15, v12

    float-to-int v15, v15

    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2798
    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    if-eqz v14, :cond_14

    const/4 v14, 0x0

    :goto_8
    invoke-static {v15, v14}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 2799
    .restart local v2    # "brightnessAlpha":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessControllerView:Landroid/view/ViewGroup;

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v2

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2800
    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v14, p1, v14

    if-ltz v14, :cond_15

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    if-nez v14, :cond_15

    .line 2801
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessControllerView:Landroid/view/ViewGroup;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2806
    :goto_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSummaryParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v15}, Lcom/android/systemui/qs/QSPanel;->getMultiTileLineHeight()I

    move-result v15

    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2809
    sget-boolean v14, Lcom/android/systemui/statusbar/Feature;->mShowDataUsageInQuickPanel:Z

    if-eqz v14, :cond_13

    .line 2810
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageViewParams:Landroid/widget/FrameLayout$LayoutParams;

    mul-float v15, v3, p1

    add-float/2addr v15, v12

    add-float/2addr v15, v1

    float-to-int v15, v15

    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2811
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageViewShowing:Z

    if-eqz v14, :cond_12

    .line 2812
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageView:Lcom/android/systemui/statusbar/phone/DataUsageView;

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v2

    invoke-virtual {v14, v15}, Lcom/android/systemui/statusbar/phone/DataUsageView;->setAlpha(F)V

    .line 2813
    :cond_12
    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v14, p1, v14

    if-ltz v14, :cond_16

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    if-nez v14, :cond_16

    .line 2814
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageView:Lcom/android/systemui/statusbar/phone/DataUsageView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/android/systemui/statusbar/phone/DataUsageView;->setVisibility(I)V

    .line 2823
    :cond_13
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsQConnectSupported:Z

    if-eqz v14, :cond_19

    if-eqz v5, :cond_19

    .line 2824
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQuickConnectParams:Landroid/widget/FrameLayout$LayoutParams;

    mul-float v15, v3, p1

    add-float/2addr v15, v12

    add-float/2addr v15, v1

    add-float/2addr v15, v4

    sub-float/2addr v15, v10

    float-to-int v15, v15

    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2826
    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    if-eqz v14, :cond_17

    const/4 v14, 0x0

    :goto_b
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v14

    const/high16 v16, 0x41100000    # 9.0f

    mul-float v14, v14, v16

    invoke-static {v15, v14}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 2828
    .local v11, "quickConnectAlpha":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSBottomArea:Landroid/view/View;

    invoke-virtual {v14, v11}, Landroid/view/View;->setAlpha(F)V

    .line 2829
    const/4 v14, 0x0

    cmpg-float v14, p1, v14

    if-gtz v14, :cond_18

    .line 2830
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSBottomArea:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 2798
    .end local v2    # "brightnessAlpha":F
    .end local v11    # "quickConnectAlpha":F
    :cond_14
    const/high16 v14, 0x41100000    # 9.0f

    mul-float v14, v14, p1

    goto/16 :goto_8

    .line 2803
    .restart local v2    # "brightnessAlpha":F
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessControllerView:Landroid/view/ViewGroup;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_9

    .line 2816
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageViewShowing:Z

    if-eqz v14, :cond_13

    .line 2817
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageView:Lcom/android/systemui/statusbar/phone/DataUsageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/systemui/statusbar/phone/DataUsageView;->setVisibility(I)V

    goto :goto_a

    .line 2826
    :cond_17
    const v14, 0x3e638e39

    sub-float v14, p1, v14

    goto :goto_b

    .line 2832
    .restart local v11    # "quickConnectAlpha":F
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSBottomArea:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 2835
    .end local v11    # "quickConnectAlpha":F
    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSBottomArea:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method private updateQsState()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2510
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v5, "updateQsState"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    const/4 v0, 0x1

    .line 2525
    .local v0, "expandVisually":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculateHeaderVisibility()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->setVisibility(I)V

    .line 2533
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    if-eqz v1, :cond_2

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScrollingEnabled(Z)V

    .line 2538
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isEmergencyModeActivated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2539
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1, v6}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    .line 2540
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v1, v6}, Lcom/android/systemui/qs/QSContainer;->setVisibility(I)V

    .line 2548
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    :goto_2
    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setTouchEnabled(Z)V

    .line 2550
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateEmptyShadeView()V

    .line 2551
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNavbarScrim:Landroid/view/View;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    if-eqz v5, :cond_7

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2555
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-nez v1, :cond_1

    .line 2556
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hideIfNotSimple(Z)V

    .line 2558
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 2533
    goto :goto_0

    .line 2542
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_4

    move v1, v3

    :goto_4
    invoke-virtual {v5, v1}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    .line 2543
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    move v1, v4

    :goto_5
    invoke-virtual {v5, v1}, Lcom/android/systemui/qs/QSContainer;->setVisibility(I)V

    goto :goto_1

    :cond_4
    move v1, v4

    .line 2542
    goto :goto_4

    :cond_5
    move v1, v3

    .line 2543
    goto :goto_5

    :cond_6
    move v1, v2

    .line 2548
    goto :goto_2

    :cond_7
    move v3, v4

    .line 2551
    goto :goto_3
.end method

.method private updateStackHeight(F)V
    .locals 1
    .param p1, "stackHeight"    # F

    .prologue
    .line 4395
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setStackHeight(F)V

    .line 4396
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateKeyguardBottomAreaAlpha()V

    .line 4397
    return-void
.end method

.method private updateUnlockIcon()V
    .locals 8

    .prologue
    .line 3343
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-nez v2, :cond_1

    .line 3361
    :cond_0
    :goto_0
    return-void

    .line 3345
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 3347
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUnlockMoveDistance:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    const/4 v0, 0x1

    .line 3348
    .local v0, "active":Z
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v1

    .line 3349
    .local v1, "lockIcon":Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    if-eqz v0, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUnlockIconActive:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTracking:Z

    if-eqz v2, :cond_5

    .line 3350
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-wide/16 v4, 0x96

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutLinearInterpolator:Landroid/view/animation/Interpolator;

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 3351
    const v2, 0x3f99999a    # 1.2f

    const/4 v3, 0x1

    const-wide/16 v4, 0x96

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageScale(FZJLandroid/view/animation/Interpolator;)V

    .line 3359
    :cond_3
    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUnlockIconActive:Z

    goto :goto_0

    .line 3347
    .end local v0    # "active":Z
    .end local v1    # "lockIcon":Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 3353
    .restart local v0    # "active":Z
    .restart local v1    # "lockIcon":Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    :cond_5
    if-nez v0, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUnlockIconActive:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTracking:Z

    if-eqz v2, :cond_3

    .line 3354
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getRestingAlpha()F

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x96

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutLinearInterpolator:Landroid/view/animation/Interpolator;

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 3356
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const-wide/16 v4, 0x96

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageScale(FZJLandroid/view/animation/Interpolator;)V

    goto :goto_2
.end method

.method private updateVerticalPanelPosition(F)V
    .locals 6
    .param p1, "x"    # F

    .prologue
    .line 4352
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3fe00000    # 1.75f

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 4353
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetVerticalPanelPosition()V

    .line 4379
    :goto_0
    return-void

    .line 4358
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4359
    .local v0, "config":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v4, 0x258

    if-ge v3, v4, :cond_1

    .line 4360
    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Should not get HERE!!!! : touch.x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", NSSL.width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", NPV.width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4362
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string v4, "note_panel_position"

    float-to-int v5, p1

    invoke-static {v3, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4363
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string v4, "note_panel_position"

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4364
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string v4, "note_panel_position"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4365
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetVerticalPanelPosition()V

    goto :goto_0

    .line 4370
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPositionMinSideMargin:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v1, v3

    .line 4371
    .local v1, "leftMost":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPositionMinSideMargin:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v2, v3

    .line 4373
    .local v2, "rightMost":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 4374
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float p1, v3

    .line 4376
    :cond_2
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 4377
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-float v3, p1, v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setVerticalPanelTranslation(F)V

    goto/16 :goto_0
.end method

.method private verifyHasFocus(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 800
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public animateCloseQs()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1224
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isQsEditPanelOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1225
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQsEditPanel(Z)V

    .line 1238
    :cond_0
    :goto_0
    return-void

    .line 1229
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    .line 1230
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsAnimatorExpand:Z

    if-eqz v1, :cond_0

    .line 1233
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 1234
    .local v0, "height":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1235
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1237
    .end local v0    # "height":F
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZ)V

    goto :goto_0
.end method

.method public animateToFullShade(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 1162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextTopPaddingChange:Z

    .line 1163
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->goToFullShade(J)V

    .line 1164
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestLayout()V

    .line 1165
    return-void
.end method

.method public canCameraGestureBeLaunched(Z)Z
    .locals 3
    .param p1, "keyguardIsShowing"    # Z

    .prologue
    const/4 v0, 0x0

    .line 4462
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->resolveCameraIntent()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 4464
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_3

    .line 4466
    .local v0, "packageToLaunch":Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v0, :cond_4

    if-nez p1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isForegroundApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isSwipingInProgress()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    return v2

    .end local v0    # "packageToLaunch":Ljava/lang/String;
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    move-object v1, v0

    .line 4462
    goto :goto_0

    .line 4464
    .restart local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 4466
    .restart local v0    # "packageToLaunch":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public cancelDAAffordance()V
    .locals 1

    .prologue
    .line 3884
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    if-eqz v0, :cond_0

    .line 3885
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->cancelDAAffordance()V

    .line 3886
    :cond_0
    return-void
.end method

.method public clearNotificattonEffects()V
    .locals 1

    .prologue
    .line 4404
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clearNotificationEffects()V

    .line 4405
    return-void
.end method

.method public closeQs()V
    .locals 3

    .prologue
    .line 1216
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQsDetail()V

    .line 1217
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelQsAnimation()V

    .line 1218
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1219
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHsView:Landroid/widget/HorizontalScrollView;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOldLayoutDirection:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/16 v0, 0x42

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 1220
    return-void

    .line 1219
    :cond_0
    const/16 v0, 0x11

    goto :goto_0
.end method

.method public closeQsDetail()V
    .locals 1

    .prologue
    .line 4052
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    .line 4053
    return-void
.end method

.method public closeQsEditPanel(Z)V
    .locals 5
    .param p1, "closeImmediately"    # Z

    .prologue
    const/16 v2, 0x3ef

    const/16 v4, 0x3f0

    const/4 v3, 0x0

    .line 4729
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4730
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v1, "QsEditPanel - closeQsEditPane remove open message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4731
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4734
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isQsEditPanelOpened()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4735
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QsEditPanel - closeQsEditPanel closeImmediately = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4739
    if-eqz p1, :cond_8

    .line 4740
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->QsEditPanelOpenanimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->QsEditPanelOpenanimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4741
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->QsEditPanelOpenanimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4743
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setQsEditPanelOpened(Z)V

    .line 4746
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    if-eqz v0, :cond_2

    .line 4747
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/QSContainer;->setVisibility(I)V

    .line 4749
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAlpha(F)V

    .line 4750
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    if-eqz v0, :cond_3

    .line 4751
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSEditPanel;->setVisibility(I)V

    .line 4752
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    if-eqz v0, :cond_4

    .line 4753
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/stack/AmbientState;->setQsEditOpen(Z)V

    .line 4754
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setStackTranslation(F)V

    .line 4756
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotifications()V

    .line 4758
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    if-eqz v0, :cond_6

    .line 4759
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsClearable:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->setClearButtonVisibility(I)V

    .line 4760
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->setCarrierLabelVisibility(I)V

    .line 4761
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4762
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->setNotiSettingButtonVisibility(I)V

    .line 4764
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditDoneButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 4765
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    if-eqz v0, :cond_7

    .line 4766
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeView(Landroid/view/View;)V

    .line 4767
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    .line 4776
    :cond_7
    :goto_0
    return-void

    .line 4770
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4771
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 4773
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public deleteZDistanceOfNotification(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 5299
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->deleteZDistanceOfNotification(Z)V

    .line 5300
    return-void
.end method

.method public disableTouches(Z)V
    .locals 6
    .param p1, "newDisableTouches"    # Z

    .prologue
    .line 5153
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableTouches:Z

    .line 5154
    .local v1, "oldDisableTouches":Z
    if-eq v1, p1, :cond_0

    .line 5155
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableTouches:Z

    .line 5156
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableTouches:Z

    if-eqz v3, :cond_0

    .line 5157
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 5158
    .local v2, "st":[Ljava/lang/StackTraceElement;
    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v4, "Touch Event is Disabled!!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5159
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 5160
    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5163
    .end local v0    # "i":I
    .end local v2    # "st":[Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method

.method protected dispatchCancelEventToScroller(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5231
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v1, :cond_0

    .line 5232
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 5233
    .local v0, "downevent":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 5234
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 5235
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 5237
    .end local v0    # "downevent":Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 4265
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4287
    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1283
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 1284
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardOrLockScreenString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    .line 1286
    const/4 v0, 0x1

    .line 1288
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 1294
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    cmpl-float v6, v6, v9

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mListenForHeadsUp:Z

    if-nez v6, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_3

    :cond_1
    move v1, v5

    .line 1388
    :cond_2
    :goto_0
    return v1

    .line 1300
    :cond_3
    const/4 v1, 0x0

    .line 1301
    .local v1, "handled":Z
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 1302
    .local v2, "pointerIndex":I
    if-gez v2, :cond_4

    .line 1303
    const/4 v2, 0x0

    .line 1304
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1306
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1307
    .local v3, "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1308
    .local v4, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1370
    :cond_5
    :goto_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsOverlappedNotiAndQs:Z

    if-eqz v5, :cond_6

    .line 1371
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1372
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-direct {p0, p1, p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->transformTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 1373
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1374
    const/4 v1, 0x1

    .line 1375
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-direct {p0, p1, v5, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->transformTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 1380
    :cond_6
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchQsPanelWhileTopOverScolling:Z

    if-eqz v5, :cond_7

    .line 1381
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1382
    const/4 v1, 0x1

    .line 1385
    :cond_7
    if-nez v1, :cond_2

    .line 1386
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 1310
    :pswitch_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHsView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v6}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialScrollX:F

    .line 1311
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v6}, Lcom/android/systemui/settings/BrightnessController;->getProgress()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialSeekBarX:F

    .line 1312
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1313
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1314
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollChanged:Z

    .line 1315
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInMinQsArea(FF)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchInQsArea:Z

    .line 1318
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchInQsArea:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getBottom()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6, v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableView;->getTop()I

    move-result v6

    if-le v5, v6, :cond_5

    .line 1322
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsOverlappedNotiAndQs:Z

    goto :goto_1

    .line 1328
    :pswitch_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsOverlappedNotiAndQs:Z

    if-nez v5, :cond_5

    .line 1334
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialScrollX:F

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHsView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v6}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_8

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialSeekBarX:F

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v6}, Lcom/android/systemui/settings/BrightnessController;->getProgress()F

    move-result v6

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_9

    .line 1335
    :cond_8
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollChanged:Z

    .line 1337
    :cond_9
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchInQsArea:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchQsPanelWhileTopOverScolling:Z

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopOverScrolled()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInQsArea(FF)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollChanged:Z

    if-eqz v5, :cond_b

    :cond_a
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v5, v4, v5

    cmpg-float v5, v5, v9

    if-gez v5, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v5, :cond_5

    .line 1340
    :cond_b
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchQsPanelWhileTopOverScolling:Z

    .line 1341
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1342
    .local v0, "downevent":Landroid/view/MotionEvent;
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1343
    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1344
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_1

    .line 1350
    .end local v0    # "downevent":Landroid/view/MotionEvent;
    :pswitch_2
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsOverlappedNotiAndQs:Z

    if-eqz v6, :cond_c

    .line 1351
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-direct {p0, p1, p0, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->transformTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 1352
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1353
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsOverlappedNotiAndQs:Z

    .line 1354
    const/4 v1, 0x1

    .line 1355
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-direct {p0, p1, v5, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->transformTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_1

    .line 1360
    :cond_c
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchQsPanelWhileTopOverScolling:Z

    if-eqz v6, :cond_5

    .line 1361
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1362
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchQsPanelWhileTopOverScolling:Z

    .line 1363
    const/4 v1, 0x1

    .line 1364
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchInQsArea:Z

    goto/16 :goto_1

    .line 1308
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public dispatchTouchEventToQsEditPanel(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4779
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    if-eqz v0, :cond_0

    .line 4780
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSEditPanel;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4782
    :cond_0
    return-void
.end method

.method public doCaptureScreen()V
    .locals 12

    .prologue
    const v9, 0x7f0e02af

    .line 4172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCaptureView:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    if-eqz v0, :cond_0

    .line 4177
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 4178
    const/4 v6, 0x0

    .line 4179
    .local v6, "isCover":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    invoke-virtual {v0, v9}, Lcom/android/keyguard/status/SecKeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 4180
    .local v3, "clockView":Landroid/view/View;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->getDcmKBAView()Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->getDcmKBAView()Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getCameraView()Landroid/widget/ImageView;

    move-result-object v4

    .line 4183
    .local v4, "left":Landroid/view/View;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->getDcmKBAView()Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getPhoneView()Landroid/widget/ImageView;

    move-result-object v5

    .line 4191
    .local v5, "right":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v7

    .line 4192
    .local v7, "windowWidth":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v2

    .line 4214
    .local v2, "windowHeight":I
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$27;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$27;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;ILandroid/view/View;Landroid/view/View;Landroid/view/View;ZI)V

    const-wide/16 v10, 0xc8

    invoke-virtual {v9, v0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4225
    .end local v2    # "windowHeight":I
    .end local v3    # "clockView":Landroid/view/View;
    .end local v4    # "left":Landroid/view/View;
    .end local v5    # "right":Landroid/view/View;
    .end local v6    # "isCover":Z
    .end local v7    # "windowWidth":I
    :cond_0
    return-void

    .line 4184
    .restart local v3    # "clockView":Landroid/view/View;
    .restart local v6    # "isCover":Z
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v0, :cond_2

    .line 4185
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const v1, 0x7f0e00f7

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 4186
    .restart local v4    # "left":Landroid/view/View;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const v1, 0x7f0e0063

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .restart local v5    # "right":Landroid/view/View;
    goto :goto_0

    .line 4188
    .end local v4    # "left":Landroid/view/View;
    .end local v5    # "right":Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    .line 4189
    .restart local v4    # "left":Landroid/view/View;
    const/4 v5, 0x0

    .restart local v5    # "right":Landroid/view/View;
    goto :goto_0

    .line 4193
    .end local v3    # "clockView":Landroid/view/View;
    .end local v4    # "left":Landroid/view/View;
    .end local v5    # "right":Landroid/view/View;
    .end local v6    # "isCover":Z
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 4194
    const/4 v6, 0x1

    .line 4195
    .restart local v6    # "isCover":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    invoke-virtual {v0, v9}, Lcom/android/keyguard/status/SecKeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 4196
    .restart local v3    # "clockView":Landroid/view/View;
    const v0, 0x7f0e005f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 4197
    .restart local v4    # "left":Landroid/view/View;
    const v0, 0x7f0e0060

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 4198
    .restart local v5    # "right":Landroid/view/View;
    const v0, 0x7f0e0061

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 4199
    .local v8, "rootView":Landroid/view/View;
    if-eqz v8, :cond_4

    .line 4200
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 4201
    .restart local v7    # "windowWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v2

    .restart local v2    # "windowHeight":I
    goto :goto_1

    .line 4203
    .end local v2    # "windowHeight":I
    .end local v7    # "windowWidth":I
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "windowWidth":I
    const/4 v2, 0x0

    .restart local v2    # "windowHeight":I
    goto :goto_1

    .line 4206
    .end local v2    # "windowHeight":I
    .end local v3    # "clockView":Landroid/view/View;
    .end local v4    # "left":Landroid/view/View;
    .end local v5    # "right":Landroid/view/View;
    .end local v6    # "isCover":Z
    .end local v7    # "windowWidth":I
    .end local v8    # "rootView":Landroid/view/View;
    :cond_5
    const/4 v6, 0x0

    .line 4207
    .restart local v6    # "isCover":Z
    const/4 v3, 0x0

    .line 4208
    .restart local v3    # "clockView":Landroid/view/View;
    const/4 v4, 0x0

    .line 4209
    .restart local v4    # "left":Landroid/view/View;
    const/4 v5, 0x0

    .line 4210
    .restart local v5    # "right":Landroid/view/View;
    const/4 v7, 0x0

    .line 4211
    .restart local v7    # "windowWidth":I
    const/4 v2, 0x0

    .restart local v2    # "windowHeight":I
    goto :goto_1
.end method

.method public expand()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1249
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1250
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;Z)V

    .line 1255
    :goto_0
    return-void

    .line 1253
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->expand()V

    goto :goto_0
.end method

.method public expandWithQs()V
    .locals 1

    .prologue
    .line 1258
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_0

    .line 1259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 1261
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand()V

    .line 1262
    return-void
.end method

.method public fling(FZ)V
    .locals 4
    .param p1, "vel"    # F
    .param p2, "expand"    # Z

    .prologue
    .line 1266
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;

    move-result-object v0

    .line 1267
    .local v0, "gr":Lcom/android/systemui/statusbar/GestureRecorder;
    if-eqz v0, :cond_0

    .line 1268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    const-string v1, "open"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifications,v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/GestureRecorder;->tag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    .line 1271
    return-void

    .line 1268
    :cond_1
    const-string v1, "closed"

    goto :goto_0
.end method

.method protected flingExpands(FFFF)Z
    .locals 2
    .param p1, "vel"    # F
    .param p2, "vectorVel"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 1910
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/PanelView;->flingExpands(FFFF)Z

    move-result v0

    .line 1913
    .local v0, "expands":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 1914
    const/4 v0, 0x1

    .line 1916
    :cond_0
    return v0
.end method

.method protected flingToHeight(FZFFZ)V
    .locals 4
    .param p1, "vel"    # F
    .param p2, "expand"    # Z
    .param p3, "target"    # F
    .param p4, "collapseSpeedUpFactor"    # F
    .param p5, "expandBecauseOfFalsing"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1276
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->notifyFling(Z)V

    .line 1277
    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getFadeoutAlpha()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setClosingWithAlphaFadeout(Z)V

    .line 1278
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelView;->flingToHeight(FZFFZ)V

    .line 1279
    return-void

    :cond_0
    move v0, v2

    .line 1276
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1277
    goto :goto_1
.end method

.method public flingTopOverscroll(FZ)V
    .locals 3
    .param p1, "velocity"    # F
    .param p2, "open"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2040
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    .line 2041
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 2042
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    move p1, v0

    .end local p1    # "velocity":F
    :cond_0
    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;Z)V

    .line 2051
    return-void

    :cond_1
    move v0, v1

    .line 2042
    goto :goto_0
.end method

.method protected fullyExpandedClearAllVisible()Z
    .locals 1

    .prologue
    .line 4015
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isDismissViewNotGone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrolledToBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getBrightnessControllerHeight()I
    .locals 1

    .prologue
    .line 5135
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomQuickPanelButtons:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 5136
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessControllerHeight:I

    .line 5138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCannedFlingDurationFactor()F
    .locals 1

    .prologue
    .line 4006
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 4007
    const v0, 0x3f333333    # 0.7f

    .line 4009
    :goto_0
    return v0

    :cond_0
    const v0, 0x3f19999a    # 0.6f

    goto :goto_0
.end method

.method protected getClearAllHeight()I
    .locals 1

    .prologue
    .line 4026
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getDismissViewHeight()I

    move-result v0

    return v0
.end method

.method public getHeaderViewHeight()I
    .locals 1

    .prologue
    .line 5051
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getKeyguardSwipeDown()Z
    .locals 1

    .prologue
    .line 5288
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    return v0
.end method

.method protected getMaxPanelHeight()I
    .locals 3

    .prologue
    .line 3160
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    .line 3169
    .local v1, "min":I
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOuterExpandRequest:Z

    if-eqz v2, :cond_2

    .line 3170
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightQsExpanded()I

    move-result v0

    .line 3174
    .local v0, "maxHeight":I
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3175
    return v0

    .line 3172
    .end local v0    # "maxHeight":I
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightShade()I

    move-result v0

    .restart local v0    # "maxHeight":I
    goto :goto_0
.end method

.method protected getOverExpansionAmount()F
    .locals 2

    .prologue
    .line 3334
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    return v0
.end method

.method protected getOverExpansionPixels()F
    .locals 2

    .prologue
    .line 3339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v0

    return v0
.end method

.method protected getPeekHeight()F
    .locals 1

    .prologue
    .line 4000
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method getQuickConnectHeight()I
    .locals 1

    .prologue
    .line 5143
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomQuickPanelButtons:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 5144
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQuickConnectHeight:I

    .line 5146
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasConflictingGestures()Z
    .locals 1

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 4413
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public instantExpand()V
    .locals 1

    .prologue
    .line 3567
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->instantExpand()V

    .line 3568
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    .line 3569
    return-void
.end method

.method protected isClearAllVisible()Z
    .locals 1

    .prologue
    .line 4021
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isDismissViewVisible()Z

    move-result v0

    return v0
.end method

.method public isDozing()Z
    .locals 1

    .prologue
    .line 4117
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    return v0
.end method

.method public isInClearButtonArea(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4920
    const/4 v0, 0x0

    .line 4921
    .local v0, "coverMargin":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4922
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSViewCoverMargin:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 4925
    :cond_0
    sub-float v1, p1, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    invoke-virtual {p0, v1, p2, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInViewArea(FFLandroid/view/View;)Z

    move-result v1

    return v1
.end method

.method protected isInContentBounds(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1619
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getX()F

    move-result v0

    .line 1620
    .local v0, "stackScrollerX":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    sub-float v2, p1, v0

    invoke-virtual {v1, v2, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isBelowLastNotification(FF)Z

    move-result v1

    if-nez v1, :cond_0

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInMinQsArea(FF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1868
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 1869
    .local v0, "header":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_1

    move v1, v2

    .line 1871
    .local v1, "onHeader":Z
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getX()F

    move-result v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSContainer;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSContainer;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_2

    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSContainer;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v4, :cond_2

    :goto_2
    return v2

    .line 1868
    .end local v0    # "header":Landroid/view/View;
    .end local v1    # "onHeader":Z
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    goto :goto_0

    .restart local v0    # "header":Landroid/view/View;
    :cond_1
    move v1, v3

    .line 1869
    goto :goto_1

    .restart local v1    # "onHeader":Z
    :cond_2
    move v2, v3

    .line 1871
    goto :goto_2
.end method

.method public isInQsArea(FF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1857
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 1858
    .local v0, "header":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_1

    move v1, v2

    .line 1860
    .local v1, "onHeader":Z
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getX()F

    move-result v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSContainer;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSContainer;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_2

    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSContainer;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    :goto_2
    return v2

    .line 1857
    .end local v0    # "header":Landroid/view/View;
    .end local v1    # "onHeader":Z
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    goto :goto_0

    .restart local v0    # "header":Landroid/view/View;
    :cond_1
    move v1, v3

    .line 1858
    goto :goto_1

    .restart local v1    # "onHeader":Z
    :cond_2
    move v2, v3

    .line 1860
    goto :goto_2
.end method

.method public isInViewArea(FFLandroid/view/View;)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 4912
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLaunchTransitionFinished()Z
    .locals 1

    .prologue
    .line 4061
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    return v0
.end method

.method public isLaunchTransitionRunning()Z
    .locals 1

    .prologue
    .line 4065
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    return v0
.end method

.method protected isPanelVisibleBecauseOfHeadsUp()Z
    .locals 1

    .prologue
    .line 4408
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpAnimatingAway:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQsDetailShowing()Z
    .locals 1

    .prologue
    .line 4048
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v0

    return v0
.end method

.method public isQsExpanded()Z
    .locals 1

    .prologue
    .line 4044
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    return v0
.end method

.method public isQsExpansionChanging()Z
    .locals 1

    .prologue
    .line 5305
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQsFullyExpanded()Z
    .locals 1

    .prologue
    .line 5293
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    return v0
.end method

.method public isQsUiExpanded()Z
    .locals 1

    .prologue
    .line 5253
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsUiExpanded:Z

    return v0
.end method

.method protected isScrolledToBottom()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3150
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInSettings()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3151
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrolledToBottom()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3154
    :cond_0
    :goto_0
    return v0

    .line 3151
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3154
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->isScrolledToBottom()Z

    move-result v0

    goto :goto_0
.end method

.method protected isTouchEventFromCarrierOrClear()Z
    .locals 1

    .prologue
    .line 1694
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsTouchFromCarrierAndClear:Z

    return v0
.end method

.method protected isTouchOnEmptyArea(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopPadding()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInContentBounds(FF)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTrackingBlocked()Z
    .locals 1

    .prologue
    .line 4031
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchCamera(ZI)V
    .locals 3
    .param p1, "animate"    # Z
    .param p2, "source"    # I

    .prologue
    const/4 v0, 0x1

    .line 4417
    if-ne p2, v0, :cond_1

    .line 4418
    const-string v1, "power_double_tap"

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 4430
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4431
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchingAffordance:Z

    .line 4432
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLaunchingAffordance(Z)V

    .line 4436
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    if-eqz v1, :cond_0

    .line 4437
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_4

    :goto_2
    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->launchAffordance(ZZ)V

    .line 4438
    :cond_0
    return-void

    .line 4419
    :cond_1
    if-nez p2, :cond_2

    .line 4420
    const-string v1, "wiggle_gesture"

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    goto :goto_0

    .line 4424
    :cond_2
    const-string v1, "lockscreen_affordance"

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    goto :goto_0

    .line 4434
    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    .line 4437
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected loadDimens()V
    .locals 3

    .prologue
    .line 711
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    .line 712
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0184

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationTopPadding:I

    .line 714
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 715
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    .line 717
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0143

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    .line 718
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationsHeaderCollideDistance:I

    .line 720
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUnlockMoveDistance:I

    .line 722
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0190

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationScrimWaitDistance:I

    .line 724
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0182

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFalsingThreshold:I

    .line 726
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPositionMinSideMargin:I

    .line 729
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c023f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessControllerHeight:I

    .line 731
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0137

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQuickConnectHeight:I

    .line 733
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c013a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSummaryHeight:I

    .line 738
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotHeight:I

    .line 744
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowDataUsageInQuickPanel:Z

    if-eqz v0, :cond_1

    .line 745
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageViewHeight:I

    .line 749
    :cond_1
    return-void
.end method

.method public notifyVisibleChildrenChanged()V
    .locals 2

    .prologue
    .line 4035
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4037
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mReserveNotificationSpace:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4041
    :goto_0
    return-void

    .line 4039
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mReserveNotificationSpace:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAffordanceLaunchEnded()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4441
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchingAffordance:Z

    .line 4442
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLaunchingAffordance(Z)V

    .line 4443
    return-void
.end method

.method public onAnimationToSideEnded()V
    .locals 1

    .prologue
    .line 3820
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    .line 3821
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    .line 3822
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3823
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3824
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 3826
    :cond_0
    return-void
.end method

.method public onAnimationToSideStarted(ZFFZ)V
    .locals 6
    .param p1, "rightPage"    # Z
    .param p2, "translation"    # F
    .param p3, "vel"    # F
    .param p4, "inSecure"    # Z

    .prologue
    const/4 v5, 0x1

    .line 3787
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    .line 3788
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 3790
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getDisplayDensity()F

    move-result v0

    .line 3791
    .local v0, "displayDensity":F
    div-float v3, p2, v0

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3792
    .local v1, "lengthDp":I
    div-float v3, p3, v0

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 3794
    .local v2, "velocityDp":I
    if-nez p1, :cond_3

    .line 3796
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v3, :cond_0

    .line 3797
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchLeftAffordance()V

    .line 3798
    :cond_0
    const/4 v3, 0x5

    invoke-static {v3, v1, v2}, Lcom/android/systemui/EventLogTags;->writeSysuiLockscreenGesture(III)V

    .line 3811
    :cond_1
    :goto_0
    if-nez p4, :cond_2

    .line 3812
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startLaunchTransitionTimeout()V

    .line 3814
    :cond_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    .line 3815
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->setSwipedFraction(F)V

    .line 3816
    return-void

    .line 3802
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v3, :cond_4

    .line 3803
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchRightAffordance()V

    .line 3804
    :cond_4
    const-string v3, "lockscreen_affordance"

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3805
    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/android/systemui/EventLogTags;->writeSysuiLockscreenGesture(III)V

    goto :goto_0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 3749
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNavigationBarBottomHeight:I

    .line 3750
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateMaxHeadsUpTranslation()V

    .line 3751
    return-object p1
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpectedHeight:I

    .line 1059
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1062
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->refreshScrollerBottomMargin(I)V

    .line 1063
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3769
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    if-ne p1, v0, :cond_0

    .line 3770
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 3771
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_1

    .line 3772
    invoke-direct {p0, v3, v1, v4, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;Z)V

    .line 3780
    :cond_0
    :goto_0
    return-void

    .line 3773
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_0

    .line 3774
    const/16 v0, 0xa

    invoke-static {v0, v1, v1}, Lcom/android/systemui/EventLogTags;->writeSysuiLockscreenGesture(III)V

    .line 3777
    invoke-direct {p0, v3, v2, v4, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;Z)V

    goto :goto_0
.end method

.method protected onClosingFinished()V
    .locals 1

    .prologue
    .line 4335
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onClosingFinished()V

    .line 4336
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetVerticalPanelPosition()V

    .line 4337
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setClosingWithAlphaFadeout(Z)V

    .line 4338
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v8, 0x7f0c013a

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 3669
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3670
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    if-eqz v4, :cond_0

    .line 3671
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->onConfigurationChanged()V

    .line 3672
    :cond_0
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOrientation:I

    if-eq v4, v6, :cond_2

    .line 3673
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetVerticalPanelPosition()V

    .line 3675
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 3676
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3677
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_1

    .line 3678
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c02e5

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3679
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3685
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v4, :pswitch_data_0

    .line 3696
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 3697
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotHeight:I

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3698
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3702
    :cond_2
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOrientation:I

    .line 3704
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHsView:Landroid/widget/HorizontalScrollView;

    if-eqz v4, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHsView:Landroid/widget/HorizontalScrollView;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOldLayoutDirection:I

    if-ne v4, v7, :cond_9

    const/16 v4, 0x42

    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 3706
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c023f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessControllerHeight:I

    .line 3707
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c0137

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQuickConnectHeight:I

    .line 3708
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSummaryHeight:I

    .line 3709
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c02de

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotHeight:I

    .line 3710
    :cond_4
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mShowDataUsageInQuickPanel:Z

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c02f8

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageViewHeight:I

    .line 3711
    :cond_5
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionHeight(Z)V

    .line 3713
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    if-eqz v4, :cond_7

    .line 3714
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-eq v4, v7, :cond_6

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    if-eqz v4, :cond_c

    .line 3716
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQspanelParams:Landroid/view/ViewGroup$LayoutParams;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->getSingleTileLineHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getBrightnessControllerHeight()I

    move-result v7

    add-int/2addr v7, v4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQuickConnectShowing()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQuickConnectHeight()I

    move-result v4

    :goto_2
    add-int/2addr v7, v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateShowDataUsageVisibility()Z

    move-result v4

    if-eqz v4, :cond_b

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageViewHeight:I

    :goto_3
    add-int/2addr v4, v7

    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3719
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQspanelParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v6}, Lcom/android/systemui/qs/QSContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3726
    :cond_7
    :goto_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSummaryView:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_8

    .line 3727
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 3728
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSummaryView:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3740
    :cond_8
    :goto_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->isMultiLine()Z

    move-result v4

    if-eqz v4, :cond_10

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_6
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQCBottomArea(F)V

    .line 3743
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelVisibility()V

    .line 3745
    return-void

    .line 3687
    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpectedHeight:I

    goto/16 :goto_0

    .line 3690
    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpectedHeight:I

    goto/16 :goto_0

    .line 3704
    :cond_9
    const/16 v4, 0x11

    goto/16 :goto_1

    :cond_a
    move v4, v5

    .line 3716
    goto :goto_2

    :cond_b
    move v4, v5

    goto :goto_3

    .line 3720
    :cond_c
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCovered()Z

    move-result v4

    if-nez v4, :cond_7

    .line 3721
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQspanelParams:Landroid/view/ViewGroup$LayoutParams;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->isMultiLine()Z

    move-result v4

    if-eqz v4, :cond_d

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    :goto_7
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v4, v7

    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3722
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQspanelParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v6}, Lcom/android/systemui/qs/QSContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 3721
    :cond_d
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    goto :goto_7

    .line 3730
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSummaryView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3731
    :cond_f
    const v4, 0x7f0e01cb

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3732
    .local v2, "summaryTextView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 3733
    .local v3, "summaryViewLp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 3734
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3735
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c0227

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3736
    .local v1, "padding":I
    invoke-virtual {v2, v1, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3737
    const v4, 0x7f0d02f4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    .line 3740
    .end local v1    # "padding":I
    .end local v2    # "summaryTextView":Landroid/widget/TextView;
    .end local v3    # "summaryViewLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 3685
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    .line 1070
    :cond_0
    return-void
.end method

.method public onEmptySpaceClicked(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4229
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onEmptySpaceClick(F)Z

    .line 4230
    return-void
.end method

.method protected onExpandingFinished()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3500
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingFinished()V

    .line 3501
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onExpansionStopped()V

    .line 3502
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->onExpandingFinished()V

    .line 3503
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    .line 3504
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    .line 3505
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3506
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 3516
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 3525
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 3526
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    .line 3527
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpansionFromHeadsUp:Z

    .line 3528
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTrackingHeadsUp(Z)V

    .line 3529
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandingFromHeadsUp:Z

    .line 3530
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPanelScrimMinFraction(F)V

    .line 3533
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOuterExpandRequest:Z

    .line 3536
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getSingleTileLineHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessControllerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 3537
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QS_Container\'s Layout has been messed up!! at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "hh:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3539
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mQsContainer\'s height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSContainer;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBrightnessControllerView.getY() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessControllerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3541
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBrightnessControllerView.getVisibility() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessControllerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3542
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mQSBottomArea.getVisibility() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSBottomArea:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mQSBottomArea.getY() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSBottomArea:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3544
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mQsMinExpansionHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3545
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mQsMaxExpansionHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3546
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mQsExpansionHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3548
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->onLayoutMessedUp()V

    .line 3550
    :cond_0
    return-void

    .line 3523
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    goto/16 :goto_0
.end method

.method protected onExpandingStarted()V
    .locals 1

    .prologue
    .line 3489
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingStarted()V

    .line 3490
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onExpansionStarted()V

    .line 3491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    .line 3492
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    .line 3493
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 3494
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 3496
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 516
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onFinishInflate()V

    .line 518
    const v0, 0x7f0e02f6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    .line 523
    const v0, 0x7f0e012f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 524
    const v0, 0x7f0e02b2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/status/SecKeyguardStatusView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    .line 525
    const v0, 0x7f0e01b7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    .line 526
    const v0, 0x7f0e01b9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 527
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanelCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setCallback(Lcom/android/systemui/qs/QSPanel$Callback;)V

    .line 530
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->setCallBack(Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$CallBack;)V

    .line 566
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    const v1, 0x7f0e01bb

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessControllerView:Landroid/view/ViewGroup;

    .line 567
    new-instance v2, Lcom/android/systemui/settings/BrightnessController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessControllerView:Landroid/view/ViewGroup;

    const v1, 0x7f0e01bc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessControllerView:Landroid/view/ViewGroup;

    const v4, 0x7f0e01bd

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {v2, v3, v0, v1}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    .line 570
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    .line 573
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    const v1, 0x7f0e00c3

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/DataUsageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageView:Lcom/android/systemui/statusbar/phone/DataUsageView;

    .line 574
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateShowDataUsageVisibility()Z

    .line 576
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    const v1, 0x7f0e01c2

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSBottomArea:Landroid/view/View;

    .line 578
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    const v1, 0x7f0e01ca

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSummaryView:Landroid/widget/FrameLayout;

    .line 581
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const v1, 0x7f040056

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotView:Landroid/view/View;

    .line 583
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSContainer;->addView(Landroid/view/View;)V

    .line 584
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 585
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateMultisimPrefferedSlotVisibility()V

    .line 587
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 588
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 592
    :cond_0
    const v0, 0x7f0e02ef

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    .line 593
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setListener(Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;)V

    .line 594
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setFocusable(Z)V

    .line 595
    const v0, 0x7f0e01b8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHsView:Landroid/widget/HorizontalScrollView;

    .line 596
    const v0, 0x7f0e02f0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mReserveNotificationSpace:Landroid/view/View;

    .line 597
    const v0, 0x7f0e02ee

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    .line 600
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->canSetDcmLauncher()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    .line 602
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0303

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 605
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 609
    :cond_1
    const v0, 0x7f0e02f1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 611
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 612
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverscrollTopChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V

    .line 613
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnEmptySpaceClickListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;)V

    .line 614
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScrollView(Landroid/view/ViewGroup;)V

    .line 617
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$6;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmptyClicker:Lcom/android/systemui/statusbar/phone/ObservableScrollView$EmptyClicker;

    .line 638
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmptyClicker:Lcom/android/systemui/statusbar/phone/ObservableScrollView$EmptyClicker;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setEmptyClicker(Lcom/android/systemui/statusbar/phone/ObservableScrollView$EmptyClicker;)V

    .line 641
    const v0, 0x7f0e005c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContentsRoot:Landroid/widget/FrameLayout;

    .line 644
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setNotificationPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 646
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 648
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 650
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozeAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 652
    const v0, 0x7f0e00f4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 654
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetKeyguardBottomAreaHelpers()V

    .line 655
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetKeyguardHelpers(Z)V

    .line 657
    const v0, 0x7f0e02f3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNavbarScrim:Landroid/view/View;

    .line 660
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOrientation:I

    .line 662
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSContainer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 674
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQspanelParams:Landroid/view/ViewGroup$LayoutParams;

    .line 675
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessControllerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrigntnessParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 676
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSBottomArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQuickConnectParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 677
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSummaryView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSummaryParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 680
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageView:Lcom/android/systemui/statusbar/phone/DataUsageView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DataUsageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageViewParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 684
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSViewCoverMargin:I

    .line 686
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAdditionalStatusBarHeightForCover:I

    .line 689
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v1, 0x7f0e0131

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMultiUserButton:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 692
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-eqz v0, :cond_2

    .line 693
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/SystemManager;->getQuickPanelButtons()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomQuickPanelButtons:I

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/SystemManager;->getQuickPanelEditMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomQuickPanelEditMode:I

    .line 697
    :cond_2
    return-void
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 4303
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateHeadsUpAnimation(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    .line 4304
    return-void
.end method

.method public onHeadsUpPinnedModeChanged(Z)V
    .locals 2
    .param p1, "inPinnedMode"    # Z

    .prologue
    .line 4291
    if-eqz p1, :cond_0

    .line 4292
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4293
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotificationTranslucency()V

    .line 4299
    :goto_0
    return-void

    .line 4295
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpAnimatingAway:Z

    .line 4296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->runAfterAnimationFinished(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;ZZ)V
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "isHeadsUp"    # Z
    .param p3, "executeAnim"    # Z

    .prologue
    .line 4314
    if-eqz p3, :cond_0

    .line 4315
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateHeadsUpAnimation(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    .line 4316
    :cond_0
    return-void
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 4308
    return-void
.end method

.method public onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "needsAnimation"    # Z

    .prologue
    .line 3649
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 3653
    :goto_0
    return-void

    .line 3652
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    goto :goto_0
.end method

.method protected onHeightUpdated(F)V
    .locals 9
    .param p1, "expandedHeight"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3184
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v6, :cond_1

    .line 3185
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 3187
    :cond_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    if-nez v6, :cond_3

    .line 3190
    :cond_2
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v6, :cond_6

    .line 3193
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v3, p1, v6

    .line 3204
    .local v3, "t":F
    :goto_0
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v6, v6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getTempQsMaxExpansion()I

    move-result v7

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 3209
    .end local v3    # "t":F
    :cond_3
    float-to-int v6, p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v7

    if-lt v6, v7, :cond_7

    move v0, v4

    .line 3211
    .local v0, "isExceedMaxPanelHeight":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyExpanded()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v6

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWasExceedMaxPanelHeight:Z

    if-eq v6, v0, :cond_5

    .line 3214
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierAndClearLayout()V

    .line 3216
    :cond_5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWasExceedMaxPanelHeight:Z

    .line 3220
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabel(F)V

    .line 3223
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateStackHeight(F)V

    .line 3224
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeader()V

    .line 3225
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateUnlockIcon()V

    .line 3226
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotificationTranslucency()V

    .line 3227
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updatePanelExpanded()V

    .line 3228
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v7

    if-nez v7, :cond_8

    :goto_2
    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setShadeExpanded(Z)V

    .line 3232
    return-void

    .line 3198
    .end local v0    # "isExceedMaxPanelHeight":Z
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMinStackHeight()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v1, v6

    .line 3200
    .local v1, "panelHeightQsCollapsed":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightQsExpanded()I

    move-result v6

    int-to-float v2, v6

    .line 3201
    .local v2, "panelHeightQsExpanded":F
    sub-float v6, p1, v1

    sub-float v7, v2, v1

    div-float v3, v6, v7

    .restart local v3    # "t":F
    goto :goto_0

    .end local v1    # "panelHeightQsCollapsed":F
    .end local v2    # "panelHeightQsExpanded":F
    .end local v3    # "t":F
    :cond_7
    move v0, v5

    .line 3209
    goto :goto_1

    .restart local v0    # "isExceedMaxPanelHeight":Z
    :cond_8
    move v4, v5

    .line 3228
    goto :goto_2
.end method

.method public onIconClicked(Z)Z
    .locals 3
    .param p1, "rightIcon"    # Z

    .prologue
    const/4 v2, 0x1

    .line 3897
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHintAnimationRunning:Z

    .line 3899
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    if-eqz v0, :cond_0

    .line 3900
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startHintAnimation(ZLjava/lang/Runnable;)V

    .line 3928
    :cond_0
    return v2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1407
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->peekTouchEvent(Landroid/view/MotionEvent;)V

    .line 1411
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->knox_Tap(Landroid/view/MotionEvent;)V

    .line 1415
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableTouches:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    .line 1416
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "o.i.t.e-block:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", disable:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableTouches:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :cond_1
    :goto_0
    return v3

    .line 1420
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarStateOnTouchDown:I

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-eqz v1, :cond_1

    .line 1426
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v1, :cond_4

    .line 1427
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMultiUserButton:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInViewArea(FFLandroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1431
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hideIfNotSimple(Z)V

    .line 1436
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInClearButtonArea(FF)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1438
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDelegatedToClearButton:Z

    .line 1439
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsTouchFromCarrierAndClear:Z

    move v3, v2

    .line 1440
    goto :goto_0

    .line 1445
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isInEmergencyButtonArea(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1451
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isQsEditPanelOpened()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1452
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->dispatchTouchEventToQsEditPanel(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1458
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1472
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initDownStates(Landroid/view/MotionEvent;)V

    .line 1473
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1474
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpansionFromHeadsUp:Z

    .line 1475
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string v3, "panel_open"

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1476
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string v3, "panel_open_peek"

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    move v3, v2

    .line 1477
    goto :goto_0

    .line 1460
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    if-ne v1, v2, :cond_9

    .line 1462
    :cond_8
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    .line 1466
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isAllowedSlideStatusBar()Z

    move-result v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableExpands:Z

    .line 1467
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionHeight(Z)V

    goto :goto_1

    .line 1464
    :cond_9
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    goto :goto_2

    :cond_a
    move v1, v3

    .line 1466
    goto :goto_3

    .line 1479
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsIntercept(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v3, v2

    .line 1480
    goto/16 :goto_0

    .line 1482
    :cond_c
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v1

    if-ne v1, v2, :cond_e

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTouchOnEmptyArea(FF)Z

    move-result v1

    if-eqz v1, :cond_e

    move v0, v2

    .line 1485
    .local v0, "intercept":Z
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeHelper:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    if-eqz v1, :cond_10

    .line 1486
    if-eqz v0, :cond_f

    .line 1487
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_d

    .line 1488
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeHelper:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->setIntercept(Z)V

    .line 1493
    :cond_d
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeHelper:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->isIntercept()Z

    move-result v1

    if-eqz v1, :cond_10

    move v3, v2

    .line 1494
    goto/16 :goto_0

    .end local v0    # "intercept":Z
    :cond_e
    move v0, v3

    .line 1482
    goto :goto_4

    .line 1490
    .restart local v0    # "intercept":Z
    :cond_f
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeHelper:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->setIntercept(Z)V

    goto :goto_5

    .line 1497
    :cond_10
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 1458
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x2

    .line 897
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelView;->onLayout(ZIIII)V

    .line 900
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/status/SecKeyguardStatusView;->setPivotX(F)V

    .line 904
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 908
    .local v0, "oldMaxHeight":I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionHeight(Z)V

    .line 911
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 913
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 914
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 933
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateStackHeight(F)V

    .line 935
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 937
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeader()V

    .line 940
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateIsSmallScreen(I)V

    .line 949
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_3

    .line 950
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSContainer;->getDesiredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSContainer;->setHeightOverride(I)V

    .line 952
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateMaxHeadsUpTranslation()V

    .line 953
    return-void

    .line 917
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v1, :cond_5

    .line 918
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 919
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 920
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 923
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    if-eq v1, v0, :cond_0

    .line 924
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->startQsSizeChangeAnimation(II)V

    goto :goto_0

    .line 927
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchQsPanelWhileTopOverScolling:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 930
    :cond_6
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    add-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    goto :goto_0
.end method

.method protected onMiddleClicked()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 4233
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMiddleClicked, state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4234
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 4259
    :goto_0
    :sswitch_0
    return v0

    .line 4247
    :sswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToKeyguard()V

    goto :goto_0

    .line 4253
    :sswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->post(Ljava/lang/Runnable;)Z

    .line 4254
    const/4 v0, 0x0

    goto :goto_0

    .line 4256
    :sswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToCover()V

    goto :goto_0

    .line 4234
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method public onOverscrollTopChanged(FZ)V
    .locals 5
    .param p1, "amount"    # F
    .param p2, "isRubberbanded"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2023
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelQsAnimation()V

    .line 2024
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-nez v1, :cond_0

    .line 2025
    const/4 p1, 0x0

    .line 2029
    :cond_0
    if-eqz p2, :cond_1

    move v0, v4

    .line 2031
    .local v0, "rounded":F
    :goto_0
    cmpl-float v1, v0, v4

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    .line 2032
    cmpl-float v1, v0, v4

    if-eqz v1, :cond_4

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    .line 2033
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    .line 2034
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 2035
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 2036
    return-void

    .line 2029
    .end local v0    # "rounded":F
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    move v0, p1

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0

    .restart local v0    # "rounded":F
    :cond_3
    move v1, v3

    .line 2031
    goto :goto_1

    :cond_4
    move v2, v3

    .line 2032
    goto :goto_2
.end method

.method public onOverscrolled(FFI)V
    .locals 1
    .param p1, "lastTouchX"    # F
    .param p2, "lastTouchY"    # F
    .param p3, "amount"    # I

    .prologue
    .line 2011
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2013
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 2014
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted(I)V

    .line 2015
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 2016
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchY:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 2017
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchX:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 2019
    :cond_0
    return-void
.end method

.method public onQuickConnectShowingChanged()V
    .locals 2

    .prologue
    .line 5217
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQuickConnectShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setQuickConnectShowing(Z)V

    .line 5218
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionHeight(Z)V

    .line 5219
    return-void
.end method

.method public onReset(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 3657
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 3760
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOldLayoutDirection:I

    if-eq p1, v0, :cond_1

    .line 3761
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    if-eqz v0, :cond_0

    .line 3762
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->onRtlPropertiesChanged()V

    .line 3763
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOldLayoutDirection:I

    .line 3765
    :cond_1
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4160
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 4161
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setScaleX(F)V

    .line 4162
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setScaleY(F)V

    .line 4164
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockHideAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 4165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockHideAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockHideAnimSet:Landroid/animation/AnimatorSet;

    .line 4167
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardClockBottomShortcutVisibility(Z)V

    .line 4169
    :cond_0
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 1

    .prologue
    .line 4154
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 4155
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/keyguard/status/SecKeyguardStatusView;->refreshTime()V

    .line 4156
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->doCaptureScreen()V

    .line 4157
    return-void
.end method

.method public onScrollChanged()V
    .locals 1

    .prologue
    .line 3661
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 3662
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 3663
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 3665
    :cond_0
    return-void
.end method

.method public onSwipingAborted()V
    .locals 2

    .prologue
    .line 3872
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v0, :cond_0

    .line 3873
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->unbindCameraPrewarmService(Z)V

    .line 3874
    :cond_0
    return-void
.end method

.method public onSwipingStarted(Z)V
    .locals 2
    .param p1, "camera"    # Z

    .prologue
    const/4 v1, 0x1

    .line 3862
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3863
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->bindCameraPrewarmService()V

    .line 3865
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestDisallowInterceptTouchEvent(Z)V

    .line 3866
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    .line 3867
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 3868
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1701
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-virtual {v3, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1703
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isEdgeGestureBlockedApp()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1704
    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v3, "The statusBar scroll is not work by multiwindow gesture."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    :cond_1
    :goto_0
    return v1

    .line 1707
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->reset()V

    .line 1712
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableTouches:Z

    if-eqz v3, :cond_5

    .line 1713
    :cond_4
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "o.t.e-block:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", disable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableTouches:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1714
    goto :goto_0

    .line 1717
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarStateOnTouchDown:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v3, :cond_6

    move v1, v2

    .line 1718
    goto :goto_0

    .line 1722
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldBlockStatusBar()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1723
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v3, "o.t.e-s.block"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1724
    goto :goto_0

    .line 1728
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_8

    .line 1730
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-eqz v3, :cond_8

    .line 1731
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/SystemManager;->getQuickPanelButtons()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomQuickPanelButtons:I

    .line 1732
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/SystemManager;->getQuickPanelEditMode()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomQuickPanelEditMode:I

    .line 1733
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomQuickPanelEditMode:I

    if-nez v3, :cond_b

    .line 1734
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->hideEditButton(Z)V

    .line 1743
    :cond_8
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDelegatedToClearButton:Z

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInClearButtonArea(FF)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1744
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDelegatedToClearButton:Z

    .line 1745
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1746
    .local v0, "cancellation":Landroid/view/MotionEvent;
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1747
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1748
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1751
    .end local v0    # "cancellation":Landroid/view/MotionEvent;
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInClearButtonArea(FF)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1753
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v5, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 1755
    :cond_a
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsTouchFromCarrierAndClear:Z

    goto/16 :goto_0

    .line 1735
    :cond_b
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKnoxCustomQuickPanelEditMode:I

    if-ne v3, v1, :cond_8

    .line 1736
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->hideEditButton(Z)V

    goto :goto_1

    .line 1760
    :cond_c
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsTouchFromCarrierAndClear:Z

    if-eqz v3, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v5, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_e

    .line 1763
    :cond_d
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsTouchFromCarrierAndClear:Z

    move v1, v2

    .line 1764
    goto/16 :goto_0

    .line 1768
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initDownStates(Landroid/view/MotionEvent;)V

    .line 1769
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mListenForHeadsUp:Z

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->isTrackingHeadsUp()Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1771
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpansionFromHeadsUp:Z

    .line 1772
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string v3, "panel_open_peek"

    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1775
    :cond_f
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v2, :cond_10

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHintAnimationRunning:Z

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeHelper:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeHelper:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->animationRunning()Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v2, :cond_11

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedOnTouchDown:Z

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v2

    if-eqz v2, :cond_11

    .line 1779
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    if-eqz v2, :cond_11

    .line 1780
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1782
    :cond_11
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    if-nez v2, :cond_1

    .line 1785
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1786
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->isTrackingHeadsUp()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->handleQsTouch(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1789
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1790
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string v3, "panel_open"

    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1791
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateVerticalPanelPosition(F)V

    .line 1793
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_15

    .line 1794
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState(I)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isAppCoverShowing()Z

    move-result v2

    if-nez v2, :cond_13

    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    if-eqz v2, :cond_14

    .line 1796
    :cond_13
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 1798
    :cond_14
    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "o.t.e: update KeyguardStatusBar visibility : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    :cond_15
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedOnTouchDown:Z

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeHelper:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeHelper:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1804
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetActiveTimeOfNotificationRow()V

    goto/16 :goto_0

    .line 1808
    :cond_16
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0
.end method

.method protected onTrackingStarted()V
    .locals 2

    .prologue
    .line 3591
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    .line 3592
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_0

    .line 3593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 3601
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onPanelTrackingStarted()V

    .line 3604
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildYTranslation()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierAndClearLayout(FZ)V

    .line 3607
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3608
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isTrackingHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3609
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v1, " remove all headsup notification by panel expanding. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3610
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseAllImmediately()V

    .line 3614
    :cond_1
    return-void
.end method

.method protected onTrackingStopped(Z)V
    .locals 8
    .param p1, "expand"    # Z

    .prologue
    const-wide/16 v4, 0x64

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3618
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 3619
    if-eqz p1, :cond_0

    .line 3620
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v2, v3, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 3623
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onPanelTrackingStopped()V

    .line 3624
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 3626
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHintAnimationRunning:Z

    if-nez v0, :cond_2

    .line 3627
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    if-eqz v0, :cond_2

    .line 3628
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    .line 3631
    :cond_2
    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-ne v0, v6, :cond_4

    .line 3633
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v0, :cond_4

    .line 3634
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v1

    .line 3635
    .local v1, "lockIcon":Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutLinearInterpolator:Landroid/view/animation/Interpolator;

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 3636
    const/high16 v2, 0x40000000    # 2.0f

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageScale(FZJLandroid/view/animation/Interpolator;)V

    .line 3641
    .end local v1    # "lockIcon":Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildYTranslation()F

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierAndClearLayout(FZ)V

    .line 3642
    return-void
.end method

.method public openQsEdit()V
    .locals 5

    .prologue
    const/16 v4, 0x3ef

    const/16 v2, 0x3ed

    .line 4584
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    if-nez v0, :cond_1

    .line 4585
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v1, "QsEditPanel - openQsEdit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4586
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4587
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4589
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4591
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4592
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 4594
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4595
    return-void
.end method

.method public outerExpandRequest(Z)V
    .locals 0
    .param p1, "outerExpandRequest"    # Z

    .prologue
    .line 5045
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOuterExpandRequest:Z

    .line 5046
    return-void
.end method

.method peekTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1396
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 1397
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldBlockStatusBar()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedOnTouchDown:Z

    .line 1400
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarStateOnTouchDown:I

    .line 1402
    :cond_1
    return-void

    .line 1397
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeDelayedCollapseRunnable()V
    .locals 2

    .prologue
    .line 5312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchReEnableRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5313
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->enableTouch()V

    .line 5314
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v1, "removeDelayedCollapseRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5315
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->isHandlingTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1649
    :goto_0
    return-void

    .line 1648
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public resetKeyguardBottomAreaHelpers()V
    .locals 2

    .prologue
    .line 5331
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5332
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->setKeyguardViews(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 5333
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->showDCMLiveUX()V

    .line 5339
    :cond_0
    :goto_0
    return-void

    .line 5334
    :cond_1
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->canSetDcmLauncher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5335
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->hideDCMLiveUX()V

    goto :goto_0
.end method

.method public resetKeyguardHelpers(Z)V
    .locals 8
    .param p1, "dcmShow"    # Z

    .prologue
    .line 5342
    if-eqz p1, :cond_0

    .line 5343
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardAffordanceHelper;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardAffordanceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .line 5344
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardSwipeHelper;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardSwipeHelper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeHelper:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    .line 5387
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeHelper:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->setKeyguardAffordanceHelper(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    .line 5388
    return-void

    .line 5346
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .line 5347
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    new-instance v7, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeHelper:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    goto :goto_0
.end method

.method public resetViews()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1188
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    .line 1189
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    .line 1190
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUnlockIconActive:Z

    .line 1191
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchingAffordance:Z

    if-nez v0, :cond_1

    .line 1192
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    .line 1194
    :cond_0
    const-string v0, "lockscreen_affordance"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 1196
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQs()V

    .line 1197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissPopups()V

    .line 1198
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    .line 1200
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resetScrollPosition()V

    .line 1203
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v0, :cond_2

    .line 1204
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    if-eqz v0, :cond_2

    .line 1205
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->removePreviews()V

    .line 1207
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeHelper:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    if-eqz v0, :cond_3

    .line 1208
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeHelper:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->setIntercept(Z)V

    .line 1209
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeHelper:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->reset()V

    .line 1211
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetKeyguardBottomAreaHelpers()V

    .line 1213
    return-void
.end method

.method public setAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 702
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->ENG_BUILD:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 703
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAlpha() alpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setAlpha(F)V

    .line 706
    return-void
.end method

.method public setAmbientState(Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 0
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 5283
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 5284
    return-void
.end method

.method public setBarState(IZZ)V
    .locals 6
    .param p1, "statusBarState"    # I
    .param p2, "keyguardFadingAway"    # Z
    .param p3, "goingToFullShade"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2090
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    .line 2091
    .local v1, "oldState":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState(I)Z

    move-result v0

    .line 2093
    .local v0, "keyguardShowing":Z
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardStatusViewVisibility(IZZ)V

    .line 2094
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardBottomAreaVisibility(IZ)V

    .line 2096
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    .line 2097
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    .line 2099
    if-nez p3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2134
    :cond_0
    :goto_0
    if-nez p1, :cond_9

    .line 2136
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    .line 2148
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2149
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateDozingVisibilities(Z)V

    .line 2150
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQCBottomArea(F)V

    .line 2152
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    .line 2154
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQspanelParams:Landroid/view/ViewGroup$LayoutParams;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQuickConnectShowing()Z

    move-result v2

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQuickConnectHeight:I

    :goto_2
    add-int/2addr v2, v5

    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2155
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSBottomArea:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQuickConnectShowing()Z

    move-result v4

    if-eqz v4, :cond_d

    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2157
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetVerticalPanelPosition()V

    .line 2158
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 2159
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionHeight(Z)V

    .line 2160
    return-void

    .line 2105
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2112
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeHelper:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeHelper:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->animationRunning()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2113
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    .line 2115
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isAppCoverShowing()Z

    move-result v2

    if-nez v2, :cond_7

    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    if-nez v2, :cond_7

    move v2, v3

    :goto_4
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 2124
    :goto_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->knox_setBarState()V

    goto/16 :goto_0

    .line 2115
    :cond_7
    const/4 v2, 0x4

    goto :goto_4

    .line 2120
    :cond_8
    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setBarState: KeyguardSwipeHelper.animationRunning() , KeyguardStatusBar : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getVisibility()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2138
    :cond_9
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState(I)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2141
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v2, :cond_b

    .line 2142
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftPreview()V

    .line 2143
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateRightPreview()V

    .line 2145
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    if-eqz v2, :cond_1

    .line 2146
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updatePreviews()V

    goto/16 :goto_1

    :cond_c
    move v2, v3

    .line 2154
    goto/16 :goto_2

    .line 2155
    :cond_d
    const/16 v3, 0x8

    goto/16 :goto_3
.end method

.method public setBrightnessMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 4
    .param p1, "c"    # Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .prologue
    const v3, 0x7f0e01bd

    .line 4486
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessControllerView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSlider;

    .line 4487
    .local v0, "brightnessSlider":Lcom/android/systemui/settings/ToggleSlider;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/ToggleSlider;

    .line 4489
    .local v1, "mirror":Lcom/android/systemui/settings/ToggleSlider;
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setMirror(Lcom/android/systemui/settings/ToggleSlider;)V

    .line 4490
    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSlider;->setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 4491
    return-void
.end method

.method public setButtonsBackground(Z)V
    .locals 2
    .param p1, "mEnabled"    # Z

    .prologue
    .line 4903
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->setButtonsBackground(Z)V

    .line 4905
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    if-eqz v0, :cond_0

    .line 4906
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->updateShowBackground(ZZ)V

    .line 4909
    :cond_0
    return-void
.end method

.method public setCarrierAndClearLayout(Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    .prologue
    .line 4496
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    .line 4498
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setCarrierAndClearLayout(Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;)V

    .line 4499
    return-void
.end method

.method public setCarrierLabel(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4545
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/view/View;

    .line 4546
    return-void
.end method

.method public setDcmKeyguardMascotUtils(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)V
    .locals 0
    .param p1, "mDcmKeyguardMascotUtils"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    .prologue
    .line 5394
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDcmKeyguardMascotUtils:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    .line 5395
    return-void
.end method

.method public setDozing(ZZ)V
    .locals 2
    .param p1, "dozing"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 4088
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-ne p1, v0, :cond_1

    .line 4093
    :cond_0
    :goto_0
    return-void

    .line 4089
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    .line 4090
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4091
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateDozingVisibilities(Z)V

    goto :goto_0
.end method

.method public setEmergencyMode(Z)V
    .locals 1
    .param p1, "isEm"    # Z

    .prologue
    .line 4890
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->setEmergencyMode(Z)V

    .line 4891
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 4892
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQCBottomArea(F)V

    .line 4894
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4895
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateMultisimPrefferedSlotVisibility()V

    .line 4898
    :cond_0
    return-void
.end method

.method public setEmptyDragAmount(F)V
    .locals 2
    .param p1, "amount"    # F

    .prologue
    .line 4073
    const v0, 0x3f4ccccd    # 0.8f

    .line 4074
    .local v0, "factor":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 4075
    const v0, 0x3ecccccd    # 0.4f

    .line 4079
    :cond_0
    :goto_0
    mul-float v1, p1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmptyDragAmount:F

    .line 4080
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 4081
    return-void

    .line 4076
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4077
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0
.end method

.method public setFocus(IZ)Z
    .locals 9
    .param p1, "keycode"    # I
    .param p2, "isDown"    # Z

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0e01c9

    const v2, 0x7f0e01c3

    const/16 v8, 0x14

    const/16 v7, 0x13

    .line 804
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 806
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    .line 810
    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionHeight(Z)V

    .line 811
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQuickConnectShowing()Z

    move-result v0

    .line 812
    .local v0, "isQuickConnectShowing":Z
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v5, :cond_b

    .line 815
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHsView:Landroid/widget/HorizontalScrollView;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->verifyHasFocus(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 816
    if-ne p1, v8, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHsView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v6}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSPanel;->IsTileViewInLastRow(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 818
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsQConnectSupported:Z

    if-eqz v5, :cond_4

    .line 819
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHsView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsQConnectSupported:Z

    if-eqz v6, :cond_3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/view/View;->setNextFocusDownId(I)V

    :cond_1
    :goto_2
    move v2, v4

    .line 891
    :goto_3
    return v2

    .line 808
    .end local v0    # "isQuickConnectShowing":Z
    :cond_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    goto :goto_0

    .restart local v0    # "isQuickConnectShowing":Z
    :cond_3
    move v2, v3

    .line 819
    goto :goto_1

    .line 822
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHsView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusDownId(I)V

    goto :goto_2

    .line 823
    :cond_5
    if-ne p1, v7, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHsView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSPanel;->IsTileViewInFirstRow(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 825
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHsView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0e033d

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusUpId(I)V

    goto :goto_2

    .line 827
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->verifyHasFocus(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz p2, :cond_a

    .line 830
    if-ne p1, v8, :cond_7

    .line 831
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    goto :goto_2

    .line 832
    :cond_7
    if-ne p1, v7, :cond_1

    .line 833
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopOverScrolled()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 834
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->scrollBack()V

    .line 835
    :cond_8
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsQConnectSupported:Z

    if-eqz v5, :cond_1

    .line 836
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->findFocus()Landroid/view/View;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsQConnectSupported:Z

    if-eqz v6, :cond_9

    :goto_4
    invoke-virtual {v5, v2}, Landroid/view/View;->setNextFocusUpId(I)V

    goto :goto_2

    :cond_9
    move v2, v3

    goto :goto_4

    .line 841
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSBottomArea:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->verifyHasFocus(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 842
    if-ne p1, v8, :cond_1

    .line 843
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    goto/16 :goto_2

    .line 849
    :cond_b
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessControllerView:Landroid/view/ViewGroup;

    const v6, 0x7f0e01bd

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/ToggleSlider;

    .line 851
    .local v1, "mBrightnessControllerSlider":Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHsView:Landroid/widget/HorizontalScrollView;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->verifyHasFocus(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 853
    if-eqz p2, :cond_c

    if-ne p1, v8, :cond_c

    .line 854
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessControllerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 855
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 856
    :cond_c
    if-ne p1, v7, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHsView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSPanel;->IsTileViewInFirstRow(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 858
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHsView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0e033f

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusUpId(I)V

    goto/16 :goto_2

    .line 861
    :cond_d
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessControllerView:Landroid/view/ViewGroup;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->verifyHasFocus(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 863
    if-eqz v0, :cond_f

    .line 864
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessControllerView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsQConnectSupported:Z

    if-eqz v6, :cond_e

    :goto_5
    invoke-virtual {v5, v2}, Landroid/view/View;->setNextFocusDownId(I)V

    goto/16 :goto_2

    :cond_e
    move v2, v3

    goto :goto_5

    .line 867
    :cond_f
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessControllerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusDownId(I)V

    goto/16 :goto_2

    .line 868
    :cond_10
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSBottomArea:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->verifyHasFocus(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 870
    if-eqz v0, :cond_11

    .line 871
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSBottomArea:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 875
    :goto_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSBottomArea:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusDownId(I)V

    goto/16 :goto_2

    .line 873
    :cond_11
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSBottomArea:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHsView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusUpId(I)V

    goto :goto_6

    .line 876
    :cond_12
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->verifyHasFocus(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->findFocus()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 879
    if-eqz v0, :cond_14

    .line 880
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->findFocus()Landroid/view/View;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsQConnectSupported:Z

    if-eqz v6, :cond_13

    :goto_7
    invoke-virtual {v5, v2}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 885
    :goto_8
    if-eqz p2, :cond_1

    if-ne p1, v7, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopOverScrolled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 887
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->scrollBack()V

    goto/16 :goto_2

    :cond_13
    move v2, v3

    .line 880
    goto :goto_7

    .line 883
    :cond_14
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusUpId(I)V

    goto :goto_8
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 2
    .param p1, "headsUpManager"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .prologue
    .line 4320
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 4321
    new-instance v0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {v0, p1, v1, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    .line 4323
    return-void
.end method

.method public setKeyguardBottomArea(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0
    .param p1, "kba"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .prologue
    .line 5391
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 5392
    return-void
.end method

.method public setKeyguardBottomViewVisibility(Z)V
    .locals 1
    .param p1, "vis"    # Z

    .prologue
    .line 2436
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v0, :cond_0

    .line 2437
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setBottomShortcutVisibility(Z)V

    .line 2440
    :cond_0
    return-void
.end method

.method public setKeyguardClockBottomShortcutVisibility(ZZ)V
    .locals 12
    .param p1, "vis"    # Z
    .param p2, "animation"    # Z

    .prologue
    const/4 v9, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2400
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v2, :cond_1

    .line 2433
    :cond_0
    :goto_0
    return-void

    .line 2403
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v2, :cond_0

    .line 2406
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    .line 2407
    .local v0, "left":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v1

    .line 2409
    .local v1, "right":Landroid/view/View;
    if-eqz p2, :cond_7

    .line 2410
    if-eqz p1, :cond_2

    .line 2411
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2412
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2413
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardClockBottomShortcutVisibility(Z)V

    .line 2415
    :cond_2
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockHideAnimSet:Landroid/animation/AnimatorSet;

    .line 2416
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockHideAnimSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_3

    sget-object v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2417
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockHideAnimSet:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x96

    invoke-virtual {v2, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2418
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockHideAnimSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)V

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2425
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockHideAnimSet:Landroid/animation/AnimatorSet;

    new-array v6, v11, [Landroid/animation/Animator;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v9, [F

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v2

    aput v2, v8, v10

    if-eqz p1, :cond_4

    move v2, v3

    :goto_2
    aput v2, v8, v11

    invoke-static {v0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v6, v10

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2426
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockHideAnimSet:Landroid/animation/AnimatorSet;

    new-array v6, v11, [Landroid/animation/Animator;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v9, [F

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v2

    aput v2, v8, v10

    if-eqz p1, :cond_5

    move v2, v3

    :goto_3
    aput v2, v8, v11

    invoke-static {v1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v6, v10

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2427
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockHideAnimSet:Landroid/animation/AnimatorSet;

    new-array v5, v11, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v9, [F

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    invoke-virtual {v9}, Lcom/android/keyguard/status/SecKeyguardStatusView;->getAlpha()F

    move-result v9

    aput v9, v8, v10

    if-eqz p1, :cond_6

    :goto_4
    aput v3, v8, v11

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v5, v10

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2429
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockHideAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 2416
    :cond_3
    sget-object v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_4
    move v2, v4

    .line 2425
    goto :goto_2

    :cond_5
    move v2, v4

    .line 2426
    goto :goto_3

    :cond_6
    move v3, v4

    .line 2427
    goto :goto_4

    .line 2431
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardClockBottomShortcutVisibility(Z)V

    goto/16 :goto_0
.end method

.method public setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 0
    .param p1, "keyguardUserSwitcher"    # Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .prologue
    .line 4140
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 4141
    return-void
.end method

.method public setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 4069
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 4070
    return-void
.end method

.method protected setOverExpansion(FZ)V
    .locals 4
    .param p1, "overExpansion"    # F
    .param p2, "isPixels"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3573
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-eqz v0, :cond_1

    .line 3587
    :cond_0
    :goto_0
    return-void

    .line 3576
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 3577
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 3578
    if-eqz p2, :cond_2

    .line 3579
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 3585
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    goto :goto_0

    .line 3582
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    goto :goto_1
.end method

.method public setPanelScrimMinFraction(F)V
    .locals 1
    .param p1, "minFraction"    # F

    .prologue
    .line 4400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelScrimMinFractionChanged(F)V

    .line 4401
    return-void
.end method

.method public setQsExpansionEnabled(Z)V
    .locals 4
    .param p1, "qsExpansionEnabled"    # Z

    .prologue
    .line 1168
    move v0, p1

    .line 1171
    .local v0, "adjustedQsExpansionEnabled":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1172
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isAppCoverShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1173
    const/4 v0, 0x0

    .line 1182
    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    .line 1183
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->setClickable(Z)V

    .line 1184
    return-void

    .line 1175
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1176
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1177
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setQsPanelDownAnimating(Z)V
    .locals 0
    .param p1, "animating"    # Z

    .prologue
    .line 5241
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanelDownAnimating:Z

    .line 5242
    return-void
.end method

.method public setQsScrimEnabled(Z)V
    .locals 2
    .param p1, "qsScrimEnabled"    # Z

    .prologue
    .line 4132
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 4133
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    .line 4134
    if-eqz v0, :cond_0

    .line 4135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 4137
    :cond_0
    return-void

    .line 4132
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setQsTranslation(F)V
    .locals 1
    .param p1, "height"    # F

    .prologue
    .line 2907
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsTranslation(FZ)V

    .line 2908
    return-void
.end method

.method public setQsTranslation(FZ)V
    .locals 8
    .param p1, "height"    # F
    .param p2, "fromNSSL"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2912
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeaderAnimating:Z

    if-nez v4, :cond_5

    .line 2913
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopOverScrolled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2914
    if-eqz p2, :cond_7

    .line 2915
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    if-eqz v4, :cond_6

    .line 2916
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSContainer;->setY(F)V

    .line 2921
    :goto_0
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 2956
    :cond_0
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v4, :cond_e

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeaderAnimating:Z

    if-nez v4, :cond_e

    .line 2957
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-static {v5, v6, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->interpolate(FFF)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->setY(F)V

    .line 2970
    :cond_1
    :goto_2
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mQuickSettingMoreAnimation:Z

    if-eqz v4, :cond_5

    .line 2971
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopOverScrolled()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_4
    move v0, v3

    .line 2974
    .local v0, "diff":F
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsPanelScale(F)V

    .line 2985
    .end local v0    # "diff":F
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getY()F

    move-result v4

    cmpg-float v3, v4, v3

    if-gez v3, :cond_12

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSContainer;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_12

    .line 2986
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 2987
    .local v2, "st":[Ljava/lang/StackTraceElement;
    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v4, "QS Panel has been just blinked!!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2988
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_4
    array-length v3, v2

    if-ge v1, v3, :cond_12

    .line 2989
    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v2, v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2988
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2918
    .end local v1    # "i":I
    .end local v2    # "st":[Ljava/lang/StackTraceElement;
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSContainer;->setY(F)V

    goto/16 :goto_0

    .line 2922
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottomOverScrolled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2923
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getOwnScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v7}, Lcom/android/systemui/qs/QSContainer;->getDesiredHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSContainer;->setY(F)V

    goto/16 :goto_1

    .line 2938
    :cond_8
    if-eqz p2, :cond_9

    .line 2939
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSContainer;->setY(F)V

    goto/16 :goto_1

    .line 2941
    :cond_9
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v4, :cond_a

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    if-eqz v4, :cond_b

    .line 2942
    :cond_a
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v6}, Lcom/android/systemui/qs/QSContainer;->getDesiredHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, p1, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSContainer;->setY(F)V

    goto/16 :goto_1

    .line 2945
    :cond_b
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v4, :cond_c

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShouldContainerFixed:Z

    if-eqz v4, :cond_d

    .line 2946
    :cond_c
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v7}, Lcom/android/systemui/qs/QSContainer;->getDesiredHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSContainer;->setY(F)V

    goto/16 :goto_1

    .line 2949
    :cond_d
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSContainer;->setY(F)V

    goto/16 :goto_1

    .line 2958
    :cond_e
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2959
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    if-eqz v4, :cond_f

    .line 2960
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-static {v5, v6, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->interpolate(FFF)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->setY(F)V

    goto/16 :goto_2

    .line 2962
    :cond_f
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getPeekHeight()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_10

    .line 2963
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getPeekHeight()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->setTranslationY(F)V

    goto/16 :goto_2

    .line 2965
    :cond_10
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->setTranslationY(F)V

    goto/16 :goto_2

    .line 2971
    :cond_11
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSContainer;->getY()F

    move-result v5

    sub-float v0, v4, v5

    goto/16 :goto_3

    .line 2991
    :cond_12
    return-void
.end method

.method public setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0
    .param p1, "scrimController"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .prologue
    .line 4885
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 4886
    return-void
.end method

.method public setShadeEmpty(Z)V
    .locals 0
    .param p1, "shadeEmpty"    # Z

    .prologue
    .line 4121
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShadeEmpty:Z

    .line 4122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateEmptyShadeView()V

    .line 4123
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 2
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 503
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->canSetDcmLauncher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getDcmKeyguardMascotUtils()Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDcmKeyguardMascotUtils(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)V

    .line 505
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->addView(Landroid/view/View;)V

    .line 506
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDcmKeyguardMascotUtils:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->setMasCotView(Landroid/widget/LinearLayout;)V

    .line 507
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDcmKeyguardMascotUtils:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->setMasCotViewHanler(Landroid/os/Handler;)V

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDcmKeyguardMascotUtils:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->unregisterReceiver()V

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDcmKeyguardMascotUtils:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->registerReceiver()V

    .line 512
    :cond_0
    return-void
.end method

.method public setTrackingHeadsUp(Z)V
    .locals 2
    .param p1, "tracking"    # Z

    .prologue
    const/4 v1, 0x1

    .line 4326
    if-eqz p1, :cond_0

    .line 4327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTrackingHeadsUp(Z)V

    .line 4328
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandingFromHeadsUp:Z

    .line 4331
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 753
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->ENG_BUILD:Z

    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 755
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisibility() visibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setVisibility(I)V

    .line 758
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 4057
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldGestureIgnoreXTouchSlop(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnAffordanceIcon(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowDataUsageView()Z
    .locals 1

    .prologue
    .line 5205
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowDataUsageInQuickPanel:Z

    if-eqz v0, :cond_0

    .line 5206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isEmergencyModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5209
    const/4 v0, 0x1

    .line 5212
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startUnlockAnimation()V
    .locals 4

    .prologue
    .line 3878
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeHelper:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    if-eqz v0, :cond_0

    .line 3879
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeHelper:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeHelper:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    const-wide/16 v2, 0x96

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->startUnlockViewAnimation(JZ)V

    .line 3880
    :cond_0
    return-void
.end method

.method public updateCarrierAndClearLayout()V
    .locals 2

    .prologue
    .line 4502
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildYTranslation()F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierAndClearLayout(FZ)V

    .line 4504
    return-void
.end method

.method public updateCarrierAndClearLayout(FZ)V
    .locals 8
    .param p1, "y"    # F
    .param p2, "forceUpdate"    # Z

    .prologue
    const/4 v3, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 4507
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasClearableNotification()Z

    move-result v0

    .line 4508
    .local v0, "hasClearableNotification":Z
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsClearable:Z

    if-eq v6, v0, :cond_6

    move v1, v3

    .line 4509
    .local v1, "isClearableChanged":Z
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState(I)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyExpanded()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isCurrentlyAnimating()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v6}, Lcom/android/systemui/qs/QSPanel;->isMultiLine()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v6

    if-lez v6, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTracking()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isEmergencyModeActivated()Z

    move-result v6

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-nez v6, :cond_7

    :cond_0
    move v2, v3

    .line 4516
    .local v2, "visible":Z
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    if-eqz v3, :cond_5

    .line 4517
    if-eqz v2, :cond_1

    .line 4518
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->setY(F)V

    .line 4520
    :cond_1
    if-nez p2, :cond_2

    if-nez v1, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsCarrierAndClearVisible:Z

    if-eq v3, v2, :cond_3

    .line 4521
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsCarrierAndClearVisible:Z

    .line 4522
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    if-eqz v2, :cond_8

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->setVisibility(I)V

    .line 4526
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isEmergencyModeActivated()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_4
    move v3, v5

    :goto_3
    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->setNotiSettingButtonVisibility(I)V

    .line 4529
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    if-eqz v0, :cond_a

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isQsEditPanelOpened()Z

    move-result v6

    if-nez v6, :cond_a

    :goto_4
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->setClearButtonVisibility(I)V

    .line 4533
    if-eqz v2, :cond_5

    .line 4534
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAccessibilityTraversalAfter(I)V

    .line 4539
    :cond_5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsClearable:Z

    .line 4540
    return-void

    .end local v1    # "isClearableChanged":Z
    .end local v2    # "visible":Z
    :cond_6
    move v1, v4

    .line 4508
    goto/16 :goto_0

    .restart local v1    # "isClearableChanged":Z
    :cond_7
    move v2, v4

    .line 4509
    goto :goto_1

    .restart local v2    # "visible":Z
    :cond_8
    move v3, v5

    .line 4522
    goto :goto_2

    :cond_9
    move v3, v4

    .line 4526
    goto :goto_3

    :cond_a
    move v4, v5

    .line 4529
    goto :goto_4
.end method

.method public updateCarrierLabel(F)V
    .locals 12
    .param p1, "expandedHeight"    # F

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 4549
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 4551
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p1, v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 4552
    .local v1, "fraction":F
    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v1

    const v3, 0x3e4ccccd    # 0.2f

    sub-float v1, v2, v3

    .line 4553
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1

    .line 4554
    const/4 v0, 0x0

    .line 4559
    .local v0, "alpha":F
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 4560
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelVisibility()V

    .line 4562
    .end local v0    # "alpha":F
    .end local v1    # "fraction":F
    :cond_0
    return-void

    .line 4556
    .restart local v1    # "fraction":F
    :cond_1
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide v4, 0x400921fa00000000L    # 3.141590118408203

    sub-float/2addr v6, v1

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    sub-double v4, v10, v4

    mul-double/2addr v2, v4

    sub-double v2, v10, v2

    double-to-float v0, v2

    .restart local v0    # "alpha":F
    goto :goto_0
.end method

.method public updateCarrierLabelVisibility()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4565
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 4567
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-eq v2, v0, :cond_3

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->isMultiLine()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isEmergencyModeActivated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4576
    .local v0, "visible":Z
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/view/View;

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4578
    .end local v0    # "visible":Z
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 4567
    goto :goto_0

    .line 4576
    .restart local v0    # "visible":Z
    :cond_4
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public updateChildViewVisibilityForNotificationCover(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    const/16 v3, 0x8

    .line 5021
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateChildViewVisiblityForNotifcationCover, visibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5022
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContentsRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContentsRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 5023
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContentsRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5026
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/keyguard/status/SecKeyguardStatusView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 5027
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5028
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/status/SecKeyguardStatusView;->setVisibility(I)V

    .line 5034
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 5035
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5036
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->setNotiSettingButtonVisibility(I)V

    .line 5041
    :cond_2
    :goto_1
    return-void

    .line 5030
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/status/SecKeyguardStatusView;->setVisibility(I)V

    goto :goto_0

    .line 5038
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->setNotiSettingButtonVisibility(I)V

    goto :goto_1
.end method

.method public updateMascotView()V
    .locals 3

    .prologue
    .line 459
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 460
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDcmKeyguardMascotUtils:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->isMascotEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 461
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMascotViewVisible(I)V

    .line 462
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDcmKeyguardMascotUtils:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->getRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 466
    .local v0, "expand":Landroid/view/View;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 467
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 468
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMascotViewVisible(I)V

    .line 469
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    goto :goto_0
.end method

.method public updateMultisimPrefferedSlotVisibility()V
    .locals 2

    .prologue
    .line 5168
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldShowMultisimPrefferedSlot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5173
    :goto_0
    return-void

    .line 5171
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiSimPrefferedSlotView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateNotificationPanelSize(I)V
    .locals 16
    .param p1, "statusBarState"    # I

    .prologue
    .line 4931
    sget-object v13, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateNotificationPanelSize, state: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4932
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContentsRoot:Landroid/widget/FrameLayout;

    if-nez v13, :cond_1

    .line 5018
    :cond_0
    :goto_0
    return-void

    .line 4935
    :cond_1
    const/4 v3, -0x1

    .line 4936
    .local v3, "layoutWidth":I
    const/4 v2, -0x1

    .line 4937
    .local v2, "layoutHeight":I
    const/4 v1, 0x0

    .line 4938
    .local v1, "layoutGravity":I
    const/high16 v6, 0x3f800000    # 1.0f

    .line 4939
    .local v6, "scaleX":F
    const/high16 v7, 0x3f800000    # 1.0f

    .line 4940
    .local v7, "scaleY":F
    const/4 v9, 0x0

    .local v9, "statusBarMarginStart":I
    const/4 v8, 0x0

    .line 4942
    .local v8, "statusBarMarginEnd":I
    const/4 v13, 0x5

    move/from16 v0, p1

    if-eq v0, v13, :cond_2

    const/16 v13, 0xa

    move/from16 v0, p1

    if-ne v0, v13, :cond_5

    .line 4943
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f0051

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 4944
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f0052

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 4945
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f0053

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 4947
    if-gtz v1, :cond_3

    .line 4948
    const/4 v1, 0x1

    .line 4951
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c02d9

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v12

    .line 4952
    .local v12, "tmpScale":F
    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-eqz v13, :cond_4

    .line 4953
    move v7, v12

    move v6, v12

    .line 4955
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c02dc

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 4956
    .local v11, "statusbarMargin":I
    move v9, v11

    .line 4957
    move v8, v11

    .line 4960
    .end local v11    # "statusbarMargin":I
    .end local v12    # "tmpScale":F
    :cond_5
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQCBottomArea(F)V

    .line 4962
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContentsRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 4963
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v13, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v13, v3, :cond_6

    iget v13, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v13, v1, :cond_9

    .line 4964
    :cond_6
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 4965
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 4966
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4968
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v13, :cond_8

    .line 4969
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v13, v3}, Lcom/android/systemui/qs/QSPanel;->setNotificationPanelWidth(I)V

    .line 4971
    if-nez p1, :cond_e

    .line 4972
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionHeight(Z)V

    .line 4973
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQspanelParams:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    iput v14, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4978
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQspanelParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v13, v14}, Lcom/android/systemui/qs/QSContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4981
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContentsRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v13, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4985
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v13, :cond_a

    .line 4986
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->refreshScrollerBottomMargin(I)V

    .line 4990
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    if-eqz v13, :cond_d

    .line 4992
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    invoke-virtual {v13}, Lcom/android/keyguard/status/SecKeyguardStatusView;->getPivotY()F

    move-result v5

    .line 4993
    .local v5, "pivotY":F
    const/4 v13, 0x0

    cmpl-float v13, v5, v13

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState(I)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 4994
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewOldPivotY:F

    .line 4995
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/keyguard/status/SecKeyguardStatusView;->setPivotY(F)V

    .line 5001
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    invoke-virtual {v13}, Lcom/android/keyguard/status/SecKeyguardStatusView;->getScaleX()F

    move-result v13

    cmpl-float v13, v6, v13

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    invoke-virtual {v13}, Lcom/android/keyguard/status/SecKeyguardStatusView;->getScaleY()F

    move-result v13

    cmpl-float v13, v7, v13

    if-eqz v13, :cond_c

    .line 5002
    sget-object v13, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Changing SCALE : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5003
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    invoke-virtual {v13, v6}, Lcom/android/keyguard/status/SecKeyguardStatusView;->setScaleX(F)V

    .line 5004
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    invoke-virtual {v13, v7}, Lcom/android/keyguard/status/SecKeyguardStatusView;->setScaleY(F)V

    .line 5006
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    const/4 v13, 0x5

    move/from16 v0, p1

    if-ne v0, v13, :cond_10

    const/4 v13, 0x1

    :goto_3
    invoke-virtual {v14, v13}, Lcom/android/keyguard/status/SecKeyguardStatusView;->setCoverState(Z)V

    .line 5007
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v13

    if-eqz v13, :cond_11

    const/4 v13, 0x1

    :goto_4
    const/4 v15, 0x1

    invoke-virtual {v14, v13, v15}, Lcom/android/keyguard/status/SecKeyguardStatusView;->updateOwnerInfo(ZZ)V

    .line 5011
    .end local v5    # "pivotY":F
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v13, :cond_0

    .line 5012
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 5013
    .local v10, "statusbarLp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 5014
    invoke-virtual {v10, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 5016
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v13, v10}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 4974
    .end local v10    # "statusbarLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_e
    const/4 v13, 0x5

    move/from16 v0, p1

    if-ne v0, v13, :cond_7

    .line 4975
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQspanelParams:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v14}, Lcom/android/systemui/qs/QSPanel;->getSingleTileLineHeight()I

    move-result v14

    iput v14, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1

    .line 4996
    .restart local v5    # "pivotY":F
    :cond_f
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewOldPivotY:F

    const/high16 v14, -0x40800000    # -1.0f

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState(I)Z

    move-result v13

    if-nez v13, :cond_b

    .line 4998
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/status/SecKeyguardStatusView;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewOldPivotY:F

    invoke-virtual {v13, v14}, Lcom/android/keyguard/status/SecKeyguardStatusView;->setPivotY(F)V

    .line 4999
    const/high16 v13, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewOldPivotY:F

    goto/16 :goto_2

    .line 5006
    :cond_10
    const/4 v13, 0x0

    goto :goto_3

    .line 5007
    :cond_11
    const/4 v13, 0x0

    goto :goto_4
.end method

.method public updateQsPanelPivot(I)V
    .locals 2
    .param p1, "scrollX"    # I

    .prologue
    .line 2881
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHsView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    .line 2883
    .local v0, "width":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/qs/QSPanel;->updatePivot(II)V

    .line 2884
    return-void
.end method

.method public updateResources()V
    .locals 6

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0101

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 762
    .local v2, "panelWidth":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0057

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 764
    .local v1, "panelGravity":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0178

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 765
    .local v3, "sidePadding":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 766
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v4, v2, :cond_0

    .line 767
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 768
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 769
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 775
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 776
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v4, v2, :cond_1

    .line 777
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 778
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 779
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 782
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 783
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v4, v2, :cond_2

    .line 784
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 785
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 786
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 789
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 790
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v4, v2, :cond_3

    .line 791
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 792
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 793
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabelAndClearButtonLayout:Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/policy/CarrierLabelAndClearButtonLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 796
    :cond_3
    return-void
.end method

.method public updateShowDataUsageVisibility()Z
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5188
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldShowDataUsageView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5189
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageView:Lcom/android/systemui/statusbar/phone/DataUsageView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DataUsageView;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 5190
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageView:Lcom/android/systemui/statusbar/phone/DataUsageView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/DataUsageView;->setVisibility(I)V

    .line 5191
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageView:Lcom/android/systemui/statusbar/phone/DataUsageView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DataUsageView;->updateUsageInfo()V

    .line 5193
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageViewShowing:Z

    .line 5200
    :goto_0
    return v0

    .line 5196
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageView:Lcom/android/systemui/statusbar/phone/DataUsageView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DataUsageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 5197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageView:Lcom/android/systemui/statusbar/phone/DataUsageView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/DataUsageView;->setVisibility(I)V

    .line 5199
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDataUsageViewShowing:Z

    move v0, v1

    .line 5200
    goto :goto_0
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 3981
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userActivity()V

    .line 3982
    return-void
.end method

.method public userSwitched()V
    .locals 3

    .prologue
    .line 5399
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    if-eqz v0, :cond_1

    .line 5400
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardSwipeDown:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionHeight(Z)V

    .line 5401
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQspanelParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5402
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQspanelParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5404
    :cond_1
    return-void
.end method
