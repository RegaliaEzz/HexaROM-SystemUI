.class public Lcom/android/systemui/recents/RecentsActivity;
.super Lcom/android/systemui/recents/RecentsSynchronizerActivity;
.source "RecentsActivity.java"

# interfaces
.implements Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;
.implements Lcom/android/systemui/recents/views/DebugOverlayView$DebugOverlayViewCallbacks;
.implements Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;
    }
.end annotation


# static fields
.field private static mScreenPinningRequestDialog:Lcom/android/systemui/recents/ScreenPinningRequestDialog;


# instance fields
.field private DELAY_SHOW_HELP_DIALOG:I

.field public TAG:Ljava/lang/String;

.field mAfterPauseRunnable:Ljava/lang/Runnable;

.field private mAnimationStartedRunnable:Ljava/lang/Runnable;

.field mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

.field mDebugOverlayStub:Landroid/view/ViewStub;

.field final mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

.field public mDisplayId:I

.field private mEmptyTextShadowDistance:F

.field private mEmptyTextShadowOpacity:F

.field private mEmptyTextShadowSize:F

.field private mEmptyTextStrokeOpacity:F

.field mEmptyView:Landroid/view/View;

.field mEmptyViewStub:Landroid/view/ViewStub;

.field mFinishByCloseAllRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

.field mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

.field private mForceAnimation:Z

.field private mHandler:Landroid/os/Handler;

.field private mHelpDialog:Landroid/app/AlertDialog;

.field private mHelpShowRunnable:Ljava/lang/Runnable;

.field private mIsLaunchingExpandHome:Z

.field private mIsLaunchingTask:Z

.field mLastTabKeyEventTime:J

.field private mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mMultiWindowSettingObserver:Landroid/database/ContentObserver;

.field final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field mPrevSystemRendererDisabled:Z

.field private mPrivateModeObserver:Landroid/database/ContentObserver;

.field mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

.field mResizeTaskDebugDialog:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

.field mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

.field mSearchWidgetHostView:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

.field mSearchWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field final mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field final mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mTrimMemoryRunnable:Ljava/lang/Runnable;

.field private muPowerSavingModeObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;-><init>()V

    .line 124
    const-string v0, "Recents_RecentsActivity"

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    .line 168
    iput v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplayId:I

    .line 169
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsLaunchingExpandHome:Z

    .line 170
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsLaunchingTask:Z

    .line 182
    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    .line 187
    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->muPowerSavingModeObserver:Landroid/database/ContentObserver;

    .line 188
    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    .line 189
    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    .line 194
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/systemui/recents/RecentsActivity;->DELAY_SHOW_HELP_DIALOG:I

    .line 198
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrevSystemRendererDisabled:Z

    .line 329
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$1;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 391
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$2;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 419
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$3;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 434
    new-instance v0, Lcom/android/systemui/recents/misc/DebugTrigger;

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsActivity$4;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/DebugTrigger;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

    .line 1794
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$12;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mTrimMemoryRunnable:Ljava/lang/Runnable;

    .line 1800
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$13;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mAnimationStartedRunnable:Ljava/lang/Runnable;

    .line 1810
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$14;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$14;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpShowRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/RecentsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsActivity;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mForceAnimation:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/recents/RecentsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/systemui/recents/RecentsActivity;->mForceAnimation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/RecentsActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsActivity;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mAnimationStartedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recents/RecentsActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsActivity;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recents/RecentsActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsActivity;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private getResizeTaskDebugDialog()Lcom/android/systemui/recents/RecentsResizeTaskDialog;
    .locals 2

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mResizeTaskDebugDialog:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    if-nez v0, :cond_0

    .line 1418
    new-instance v0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;-><init>(Landroid/app/FragmentManager;Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mResizeTaskDebugDialog:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    .line 1420
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mResizeTaskDebugDialog:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    return-object v0
.end method

.method private isKnoxLauncherMode()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1894
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1895
    .local v1, "intentToResolve":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1896
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1898
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1899
    .local v0, "HomeReceiver":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, "com.android.internal.app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1900
    const/4 v3, 0x1

    .line 1902
    :cond_0
    return v3
.end method

.method private makeHelpDialog()V
    .locals 7

    .prologue
    .line 1858
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v5, "makeHelpDialog"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1861
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040069

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1863
    .local v2, "mRecentPanelLayout":Landroid/view/View;
    const v4, 0x7f0e01e6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1864
    .local v3, "okButton":Landroid/widget/Button;
    new-instance v4, Lcom/android/systemui/recents/RecentsActivity$15;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/RecentsActivity$15;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1875
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f100018

    invoke-direct {v4, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpDialog:Landroid/app/AlertDialog;

    .line 1879
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpDialog:Landroid/app/AlertDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1881
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 1882
    .local v1, "kgm":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1883
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1887
    :goto_0
    return-void

    .line 1885
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d8

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method private registerContentObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1607
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    .line 1608
    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$9;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recents/RecentsActivity$9;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    .line 1621
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1622
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "multi_window_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1625
    const-string v1, "mobile_keyboard"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1631
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->muPowerSavingModeObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_1

    .line 1632
    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$10;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recents/RecentsActivity$10;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->muPowerSavingModeObserver:Landroid/database/ContentObserver;

    .line 1638
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1639
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    const-string v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->muPowerSavingModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1644
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_2

    .line 1645
    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$11;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recents/RecentsActivity$11;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    .line 1657
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1658
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    const-string v1, "personal_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1662
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_2
    return-void
.end method

.method private setStacks(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1733
    .local p1, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity;->mStacks:Ljava/util/ArrayList;

    .line 1734
    return-void
.end method

.method private unregisterContentObserver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1665
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1669
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 1670
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1671
    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    .line 1676
    :cond_0
    if-eqz v0, :cond_2

    .line 1677
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->muPowerSavingModeObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    .line 1678
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->muPowerSavingModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1679
    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->muPowerSavingModeObserver:Landroid/database/ContentObserver;

    .line 1682
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_2

    .line 1683
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1684
    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    .line 1687
    :cond_2
    return-void
.end method


# virtual methods
.method public clearDeferSurfaceDestroyFlag()V
    .locals 3

    .prologue
    .line 845
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v2, "clearWindowFlag is getting called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    sget-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableExitAnimToApp:Z

    if-eqz v1, :cond_0

    .line 847
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 848
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    xor-int/lit16 v1, v1, 0x1000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 849
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 851
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public dismissHelpDialog()V
    .locals 2

    .prologue
    .line 1842
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 1855
    :cond_0
    :goto_0
    return-void

    .line 1846
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportRecentUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1850
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "dismissHelpDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1852
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1853
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method dismissRecentsToHome(Z)Z
    .locals 4
    .param p1, "animated"    # Z

    .prologue
    .line 815
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissRecentsToHome, animated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 818
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/util/MutableBoolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 820
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    .line 821
    const/4 v1, 0x1

    .line 823
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method dismissRecentsToHomeRaw(Z)V
    .locals 5
    .param p1, "animated"    # Z

    .prologue
    const/4 v4, 0x0

    .line 785
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissRecentsToHomeRaw, animated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->dismissHelpDialog()V

    .line 789
    if-eqz p1, :cond_1

    .line 791
    sget-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableGatheredAnimToHome:Z

    if-eqz v1, :cond_0

    .line 792
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->run()V

    .line 793
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {v0, p0, v4, v4, v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 794
    .local v0, "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v2, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    invoke-direct {v2, v0}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    .line 805
    .end local v0    # "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    :goto_0
    return-void

    .line 798
    :cond_0
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-direct {v0, p0, v4, v1, v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 800
    .restart local v0    # "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v2, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    invoke-direct {v2, v0}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    goto :goto_0

    .line 803
    .end local v0    # "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->run()V

    goto :goto_0
.end method

.method dismissRecentsToHomeWithoutTransitionAnimation()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 809
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->finish()V

    .line 810
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/recents/RecentsActivity;->overridePendingTransition(II)V

    .line 811
    return-void
.end method

.method dismissRecentsToPreviousAppRaw(Lcom/android/systemui/recents/model/Task;)V
    .locals 4
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v3, 0x0

    .line 829
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v2, "dismissRecentsToPreviousAppRaw is getting called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v1, :cond_0

    .line 831
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {v0, p0, v3, v3, v3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 832
    .local v0, "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v2, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    invoke-direct {v2, v0}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/recents/views/RecentsView;->startExitToPreviousAppAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;Lcom/android/systemui/recents/model/Task;)V

    .line 835
    .end local v0    # "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    :cond_0
    return-void
.end method

.method public dismissToApp(Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "dismissToApp is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToPreviousAppRaw(Lcom/android/systemui/recents/model/Task;)V

    .line 841
    return-void
.end method

.method inflateDebugOverlay()V
    .locals 0

    .prologue
    .line 1031
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1019
    invoke-super {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onAttachedToWindow()V

    .line 1020
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->twSetDrawDuringWindowsAnimating(Z)V

    .line 1023
    sget-boolean v0, Lcom/android/systemui/recents/Constants$Features;->UseRecentsSeparatedProcess:Z

    if-nez v0, :cond_0

    .line 1024
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrevSystemRendererDisabled:Z

    sput-boolean v0, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    .line 1026
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v0, :cond_0

    .line 1386
    :goto_0
    return-void

    .line 1385
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToFocusedTaskOrHome(Z)Z

    goto :goto_0
.end method

.method public onCloseAllButtonClicked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1512
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v2, "onCloseAllButtonClicked is getting called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    sget-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllAnimation:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1520
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishByCloseAllRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-direct {v0, p0, v3, v1, v3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1522
    .local v0, "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v2, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;Z)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->startCloseAllRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;)V

    .line 1527
    .end local v0    # "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    :goto_0
    return-void

    .line 1525
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishByCloseAllRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->run()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    .line 857
    invoke-super {p0, p1}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 858
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v10, "onCreate"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    .line 864
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    .line 874
    invoke-static {p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->initialize(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .line 875
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v8

    .line 876
    .local v8, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {p0, v8}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 879
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 880
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v9, v9, 0x400

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 881
    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 884
    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v9, v9, 0x42

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 893
    sget-boolean v9, Lcom/android/systemui/recents/Constants$Features;->UseRecentsSeparatedProcess:Z

    if-nez v9, :cond_0

    .line 894
    sget-boolean v9, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    iput-boolean v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrevSystemRendererDisabled:Z

    .line 895
    sput-boolean v11, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    .line 896
    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v10, 0x1000000

    or-int/2addr v9, v10

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 897
    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 900
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 902
    const-string v9, "multiwindow_facade"

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 907
    new-instance v9, Lcom/android/systemui/recents/RecentsAppWidgetHost;

    sget v10, Lcom/android/systemui/recents/Constants$Values$App;->AppWidgetHostId:I

    invoke-direct {v9, p0, v10}, Lcom/android/systemui/recents/RecentsAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    .line 921
    new-instance v9, Lcom/android/systemui/recents/ScreenPinningRequestDialog;

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;-><init>(Landroid/content/Context;)V

    sput-object v9, Lcom/android/systemui/recents/RecentsActivity;->mScreenPinningRequestDialog:Lcom/android/systemui/recents/ScreenPinningRequestDialog;

    .line 926
    const v9, 0x7f040065

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->setContentView(I)V

    .line 927
    const v9, 0x7f0e01d2

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/views/RecentsView;

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    .line 928
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v9, p0}, Lcom/android/systemui/recents/views/RecentsView;->setCallbacks(Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;)V

    .line 929
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/16 v10, 0x700

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/views/RecentsView;->setSystemUiVisibility(I)V

    .line 932
    const v9, 0x7f0e01d3

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewStub;

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyViewStub:Landroid/view/ViewStub;

    .line 951
    const v9, 0x7f0e01d4

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewStub;

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlayStub:Landroid/view/ViewStub;

    .line 952
    new-instance v9, Lcom/android/systemui/recents/views/SystemBarScrimViews;

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v9, p0, v10}, Lcom/android/systemui/recents/views/SystemBarScrimViews;-><init>(Landroid/app/Activity;Lcom/android/systemui/recents/RecentsConfiguration;)V

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    .line 953
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->inflateDebugOverlay()V

    .line 956
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    invoke-virtual {v8, p0, v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getOrBindSearchAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 959
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 960
    .local v0, "appListShadowDistance":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c02ce

    invoke-virtual {v9, v10, v0, v11}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 961
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyTextShadowDistance:F

    .line 963
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 964
    .local v1, "appListShadowOpacity":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c02cf

    invoke-virtual {v9, v10, v1, v11}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 965
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyTextShadowOpacity:F

    .line 967
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 968
    .local v2, "appListShadowSize":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c02d0

    invoke-virtual {v9, v10, v2, v11}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 969
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyTextShadowSize:F

    .line 971
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 972
    .local v3, "appListStrokeOpacity":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c02cd

    invoke-virtual {v9, v10, v3, v11}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 973
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyTextStrokeOpacity:F

    .line 976
    new-instance v9, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v9, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 977
    new-instance v9, Lcom/android/systemui/recents/RecentsActivity$7;

    invoke-direct {v9, p0}, Lcom/android/systemui/recents/RecentsActivity$7;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 989
    sget-boolean v9, Lcom/android/systemui/recents/Constants$Features;->EnableRecentsButtonsLayout:Z

    if-eqz v9, :cond_1

    .line 990
    const v9, 0x7f0e01d6

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 991
    .local v4, "buttonContainer":Landroid/view/ViewGroup;
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v9, v4}, Lcom/android/systemui/recents/views/RecentsView;->setRecentsBottomContainerView(Landroid/view/ViewGroup;)V

    .line 994
    .end local v4    # "buttonContainer":Landroid/view/ViewGroup;
    :cond_1
    sget-boolean v9, Lcom/android/systemui/recents/Constants$Features;->EnableShortcutLayout:Z

    if-eqz v9, :cond_2

    .line 995
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 996
    .local v7, "pkgFilter":Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 997
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 998
    const-string v9, "package"

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 999
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v7}, Lcom/android/systemui/recents/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1004
    .end local v7    # "pkgFilter":Landroid/content/IntentFilter;
    :cond_2
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1005
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1007
    const/16 v9, 0x3ea

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1009
    const-string v9, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1010
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v5}, Lcom/android/systemui/recents/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1012
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->registerContentObserver()V

    .line 1014
    return-void
.end method

.method public onDebugModeTriggered()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1390
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->developerOptionsEnabled:Z

    if-eqz v0, :cond_1

    .line 1391
    const-string v0, "debugModeEnabled"

    invoke-static {p0, v0, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1393
    const-string v0, "debugModeEnabled"

    invoke-static {p0, v0}, Lcom/android/systemui/Prefs;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 1394
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    .line 1395
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->inflateDebugOverlay()V

    .line 1396
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v0, :cond_0

    .line 1397
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/DebugOverlayView;->disable()V

    .line 1408
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Debug mode ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/recents/Constants$Values$App;->DebugModeVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v0, :cond_3

    const-string v0, "Enabled"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", please restart Recents now"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1412
    :cond_1
    return-void

    .line 1401
    :cond_2
    const-string v0, "debugModeEnabled"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1402
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    .line 1403
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->inflateDebugOverlay()V

    .line 1404
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/DebugOverlayView;->enable()V

    goto :goto_0

    .line 1408
    :cond_3
    const-string v0, "Disabled"

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1268
    invoke-super {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onDestroy()V

    .line 1269
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1274
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->unregisterContentObserver()V

    .line 1278
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsAppWidgetHost;->stopListening()V

    .line 1286
    sget-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableShortcutLayout:Z

    if-eqz v0, :cond_0

    .line 1287
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1290
    :cond_0
    return-void
.end method

.method public onEnterAnimationTriggered()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1294
    new-instance v2, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {v2, p0, v3, v3, v3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1295
    .local v2, "t":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    new-instance v1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 1296
    .local v1, "ctx":Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/views/RecentsView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    .line 1298
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v3, :cond_0

    .line 1299
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1302
    .local v0, "cbRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;>;"
    iget-object v3, v1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    new-instance v4, Lcom/android/systemui/recents/RecentsActivity$8;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/recents/RecentsActivity$8;-><init>(Lcom/android/systemui/recents/RecentsActivity;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 1315
    .end local v0    # "cbRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;>;"
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->startEnterRecentsAnimation()V

    .line 1316
    return-void
.end method

.method public onExitToHomeAnimationTriggered()V
    .locals 1

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->startExitRecentsAnimation()V

    .line 1434
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1328
    sparse-switch p1, :sswitch_data_0

    .line 1369
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/misc/DebugTrigger;->onKeyEvent(I)V

    .line 1370
    invoke-super {p0, p1, p2}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :cond_1
    :goto_0
    return v2

    .line 1330
    :sswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastTabKeyEventTime:J

    sub-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->altTabKeyDelay:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    move v1, v2

    .line 1332
    .local v1, "hasRepKeyTimeElapsed":Z
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_2

    if-eqz v1, :cond_1

    .line 1334
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    .line 1335
    .local v0, "backward":Z
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-nez v0, :cond_3

    move v3, v2

    :cond_3
    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    .line 1336
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastTabKeyEventTime:J

    goto :goto_0

    .end local v0    # "backward":Z
    .end local v1    # "hasRepKeyTimeElapsed":Z
    :cond_4
    move v1, v3

    .line 1330
    goto :goto_1

    .line 1351
    :sswitch_1
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/views/RecentsView;->onKeyDown(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1359
    :sswitch_2
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsView;->dismissFocusedTask()V

    .line 1361
    const-string v4, "overview_task_dismissed_source"

    invoke-static {p0, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1328
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x3d -> :sswitch_0
        0x43 -> :sswitch_2
        0x70 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1043
    invoke-super {p0, p1}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1044
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsActivity;->setIntent(Landroid/content/Intent;)V

    .line 1053
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/DebugOverlayView;->clear()V

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->recentsHiddenCompleted:Z

    .line 1060
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1191
    invoke-super {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onPause()V

    .line 1192
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mAfterPauseRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mAfterPauseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->post(Ljava/lang/Runnable;)Z

    .line 1196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mAfterPauseRunnable:Ljava/lang/Runnable;

    .line 1200
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 1204
    sget-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableExitAnimToApp:Z

    if-eqz v0, :cond_1

    .line 1205
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->removeExitAnimationHandler()V

    .line 1209
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->doNotDrawTaskViewHeader:Z

    .line 1210
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->recentsHiddenCompleted:Z

    .line 1214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mForceAnimation:Z

    .line 1215
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mAnimationStartedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1217
    return-void
.end method

.method public onPrimarySeekBarChanged(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 1597
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/high16 v3, 0x100000

    .line 1131
    sget-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableExitAnimToApp:Z

    if-eqz v1, :cond_0

    .line 1132
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1133
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 1134
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1137
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onResume()V

    .line 1138
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/recents/RecentsConfiguration;->setCurrentActivity(Landroid/content/Context;I)V

    .line 1154
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 1157
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->uPowerSavingModeEnabled:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->isKnoxLauncherMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1158
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 1163
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/recents/RecentsConfiguration;->doNotDrawTaskViewHeader:Z

    .line 1165
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->recentsHiddenCompleted:Z

    if-eqz v1, :cond_2

    .line 1166
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->onRecentsHidden()V

    .line 1167
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->updateRecentsTasks()V

    .line 1170
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->showHelpDialog()V

    .line 1173
    sget-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableExitAnimToApp:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mAfterPauseRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 1174
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mAfterPauseRunnable:Ljava/lang/Runnable;

    .line 1178
    :cond_3
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1179
    const-string v1, "GATE"

    const-string v2, "<GATE-M> TASK_MGR_LOADED </GATE-M>"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mAnimationStartedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1184
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mAnimationStartedRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1186
    return-void

    .line 1160
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public onScreenPinningRequest(Lcom/android/systemui/recents/model/Task;)V
    .locals 7
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/high16 v6, 0x800000

    const/4 v4, 0x1

    .line 1473
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 1474
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 1478
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    .line 1479
    .local v3, "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v3, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/util/MutableBoolean;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1480
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v5, "onScreenPinningRequest - topActivity is Recents"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    :goto_0
    return-void

    .line 1485
    :cond_0
    iget-object v5, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_1

    move v0, v4

    .line 1497
    .local v0, "isExcluded":Z
    :goto_1
    sget-object v5, Lcom/android/systemui/recents/RecentsActivity;->mScreenPinningRequestDialog:Lcom/android/systemui/recents/ScreenPinningRequestDialog;

    iget-object v6, p1, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->showPrompt(Ljava/lang/String;Z)V

    .line 1501
    const-string v5, "overview_screen_pinned"

    invoke-static {p0, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1485
    .end local v0    # "isExcluded":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onSecondarySeekBarChanged(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 1602
    return-void
.end method

.method protected onStart()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1064
    invoke-super {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onStart()V

    .line 1065
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v6, "onStart"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    const/16 v5, 0xe0

    invoke-static {p0, v5}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 1068
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 1069
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 1070
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {p0, v2, v3}, Lcom/android/systemui/recents/Recents;->notifyVisibilityChanged(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)V

    .line 1073
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mTrimMemoryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1078
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v5, Lcom/android/systemui/recents/RecentsConfiguration;->isScreenOff:Z

    .line 1095
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1096
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v5, "action_hide_recents_activity"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1097
    const-string v5, "action_toggle_recents_activity"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1101
    const-string v5, "action_start_enter_animation"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1106
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v0}, Lcom/android/systemui/recents/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1109
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, p0, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->registerReceivers(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;)V

    .line 1112
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->updateRecentsTasks()V

    .line 1117
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    if-nez v5, :cond_3

    .line 1118
    .local v3, "wasLaunchedByAm":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    if-nez v4, :cond_0

    if-eqz v3, :cond_1

    .line 1119
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->onEnterAnimationTriggered()V

    .line 1122
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    if-nez v4, :cond_2

    .line 1123
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsView;->disableLayersForOneFrame()V

    .line 1125
    :cond_2
    return-void

    .end local v3    # "wasLaunchedByAm":Z
    :cond_3
    move v3, v4

    .line 1117
    goto :goto_0
.end method

.method protected onStop()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1221
    invoke-super {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onStop()V

    .line 1222
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v3, "onStop"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    const/16 v2, 0xe0

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 1225
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 1226
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 1227
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {p0, v1, v4}, Lcom/android/systemui/recents/Recents;->notifyVisibilityChanged(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)V

    .line 1230
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->onRecentsHidden()V

    .line 1233
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v2, Lcom/android/systemui/recents/RecentsConfiguration;->doNotDrawTaskViewHeader:Z

    .line 1234
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v2, Lcom/android/systemui/recents/RecentsConfiguration;->recentsHiddenCompleted:Z

    .line 1235
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mTrimMemoryRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1239
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1242
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->unregisterReceivers()V

    .line 1254
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    .line 1257
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->dismissHelpDialog()V

    .line 1264
    return-void
.end method

.method public onTaskLaunchFailed()V
    .locals 1

    .prologue
    .line 1457
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    .line 1458
    return-void
.end method

.method public onTaskResize(Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1425
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResizeTaskDebugDialog()Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->showResizeTaskDialog(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/RecentsView;)V

    .line 1426
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 1320
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 1321
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    if-eqz v0, :cond_0

    .line 1322
    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->onTrimMemory(I)V

    .line 1324
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->onUserInteraction()V

    .line 1376
    return-void
.end method

.method public performAllTaskViewsDismissed()V
    .locals 2

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onAllTaskViewsDismissed is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->run()V

    .line 1469
    return-void
.end method

.method public performDismiss()V
    .locals 2

    .prologue
    .line 1536
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->moveTaskToBack(Z)Z

    .line 1545
    return-void
.end method

.method public performDismissRecentsToFocusedTaskOrHome(ZZZ)Z
    .locals 10
    .param p1, "checkFilteredStackState"    # Z
    .param p2, "forceLaunch"    # Z
    .param p3, "blockToEnterFocusedTask"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 717
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v8, "dismissRecentsToFocusedTaskOrHome"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 720
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget v7, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplayId:I

    invoke-virtual {v3, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/util/MutableBoolean;)Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz p2, :cond_1

    .line 723
    :cond_0
    if-eqz p1, :cond_2

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/RecentsView;->unfilterFilteredStacks()Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 780
    :cond_1
    :goto_0
    return v5

    .line 736
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/RecentsView;->launchFocusedTask()Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    goto :goto_0

    .line 739
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMultiWindowSettingEnabled:Z

    if-eqz v7, :cond_5

    .line 741
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/16 v8, 0xa

    const/16 v9, 0xb

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRunningTasks(II)Ljava/util/List;

    move-result-object v4

    .line 744
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 745
    .local v2, "rInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v7, v2, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v7, :cond_4

    iget-object v7, v2, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 746
    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/RecentsActivity;->moveTaskToBack(Z)Z

    move v5, v6

    .line 747
    goto :goto_0

    .line 754
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "rInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    if-eqz v7, :cond_6

    .line 755
    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    move v5, v6

    .line 756
    goto :goto_0

    .line 761
    :cond_6
    new-instance v1, Landroid/util/MutableBoolean;

    invoke-direct {v1, v5}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 762
    .local v1, "launchedFromMW":Landroid/util/MutableBoolean;
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v7, v1}, Lcom/android/systemui/recents/views/RecentsView;->launchPreviousTask(Landroid/util/MutableBoolean;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 768
    iget-boolean v7, v1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v7, :cond_7

    .line 769
    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/RecentsActivity;->moveTaskToBack(Z)Z

    :cond_7
    move v5, v6

    .line 773
    goto :goto_0

    .line 777
    :cond_8
    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    move v5, v6

    .line 778
    goto :goto_0
.end method

.method public performTaskViewClicked()V
    .locals 2

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onTaskViewClicked is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->dismissHelpDialog()V

    .line 1445
    return-void
.end method

.method public refreshSearchWidgetView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1575
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v3, :cond_0

    .line 1576
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 1577
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v2, p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSearchAppWidgetId(Landroid/content/Context;)I

    move-result v1

    .line 1578
    .local v1, "searchWidgetId":I
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v3, p0, v1, v4}, Lcom/android/systemui/recents/RecentsAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchWidgetHostView:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    .line 1580
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1581
    .local v0, "opts":Landroid/os/Bundle;
    const-string v3, "appWidgetCategory"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1583
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchWidgetHostView:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    .line 1585
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchWidgetHostView:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {v3, v5, v5, v5, v5}, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->setPadding(IIII)V

    .line 1586
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchWidgetHostView:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBar(Lcom/android/systemui/recents/RecentsAppWidgetHostView;)V

    .line 1590
    .end local v0    # "opts":Landroid/os/Bundle;
    .end local v1    # "searchWidgetId":I
    .end local v2    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :goto_0
    return-void

    .line 1588
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBar(Lcom/android/systemui/recents/RecentsAppWidgetHostView;)V

    goto :goto_0
.end method

.method public requestUpdateRecentsLayout()V
    .locals 2

    .prologue
    .line 1787
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 1789
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getMultipleScreenState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->requestUpdateRecentsLayout(I)V

    .line 1790
    return-void
.end method

.method public runAfterPause(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1506
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity;->mAfterPauseRunnable:Ljava/lang/Runnable;

    .line 1507
    return-void
.end method

.method public showHelpDialog()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1822
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportRecentUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_window_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1839
    :cond_0
    :goto_0
    return-void

    .line 1827
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1831
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    const-string v2, "preference_recents"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1832
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "recents_help_dialog_do_not_show"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 1836
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->makeHelpDialog()V

    .line 1837
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1838
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpShowRunnable:Ljava/lang/Runnable;

    iget v3, p0, Lcom/android/systemui/recents/RecentsActivity;->DELAY_SHOW_HELP_DIALOG:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method updateRecentsLayout(ZZ)V
    .locals 2
    .param p1, "showEmptyText"    # Z
    .param p2, "showCloseAll"    # Z

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 693
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 697
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v0, :cond_2

    .line 701
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/views/RecentsView;->updateCloseAllButtonVisibility(Z)V

    .line 703
    :cond_2
    return-void

    .line 697
    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method updateRecentsTasks()V
    .locals 22

    .prologue
    .line 443
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v4, "updateRecentsTasks"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/recents/RecentsConfiguration;->recentsHiddenCompleted:Z

    .line 451
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v14

    .line 459
    .local v14, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v15

    .line 462
    .local v15, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    if-nez v15, :cond_0

    .line 463
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v15

    .line 467
    :cond_0
    invoke-virtual {v15}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v3

    if-nez v3, :cond_1

    .line 474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v4}, Lcom/android/systemui/recents/RecentsConfiguration;->getDisplayId()I

    move-result v4

    invoke-virtual {v14, v15, v3, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;ZI)V

    .line 477
    :cond_1
    new-instance v13, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v13}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 478
    .local v13, "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    iput v3, v13, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleTasks:I

    iput v3, v13, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 480
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleThumbnails:I

    iput v3, v13, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 481
    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v15, v13}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 483
    invoke-virtual {v15}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getAllTaskStacks()Ljava/util/ArrayList;

    move-result-object v17

    .line 485
    .local v17, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->setStacks(Ljava/util/ArrayList;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v15}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    .line 488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-nez v3, :cond_2

    .line 489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/views/RecentsView;->setTaskStacks(Ljava/util/ArrayList;)V

    .line 493
    :cond_2
    new-instance v9, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v9, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 513
    .local v9, "homeIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v9, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    const/high16 v3, 0x10200000

    invoke-virtual {v9, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 519
    const/4 v8, 0x0

    .line 520
    .local v8, "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    sget-boolean v3, Lcom/android/systemui/recents/Constants$Features;->EnableGatheredAnimToHome:Z

    if-eqz v3, :cond_3

    .line 521
    new-instance v8, Lcom/android/systemui/recents/RecentsActivity$5;

    .end local v8    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/systemui/recents/RecentsActivity$5;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    .line 538
    .restart local v8    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    :cond_3
    new-instance v5, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromSearchHome:Z

    if-eqz v3, :cond_6

    const v3, 0x7f0500b3

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromSearchHome:Z

    if-eqz v4, :cond_7

    const v4, 0x7f0500b4

    :goto_2
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v6, v8}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v9, v3}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    .line 547
    new-instance v3, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    const v4, 0x7f0500ae

    const v5, 0x7f0500b1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v9, v4}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mFinishByCloseAllRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    .line 554
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 555
    .local v20, "taskStackCount":I
    const/4 v12, 0x0

    .line 556
    .local v12, "launchTaskIndexInStack":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_9

    .line 557
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    move/from16 v0, v20

    if-ge v10, v0, :cond_9

    .line 558
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/recents/model/TaskStack;

    .line 559
    .local v16, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v21

    .line 560
    .local v21, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 561
    .local v19, "taskCount":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_4
    move/from16 v0, v19

    if-ge v11, v0, :cond_4

    .line 562
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/recents/model/Task;

    .line 563
    .local v18, "t":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    if-ne v3, v4, :cond_8

    .line 564
    const/4 v3, 0x1

    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    .line 565
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v11

    add-int/lit8 v12, v3, -0x1

    .line 557
    .end local v18    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 487
    .end local v8    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .end local v9    # "homeIntent":Landroid/content/Intent;
    .end local v10    # "i":I
    .end local v11    # "j":I
    .end local v12    # "launchTaskIndexInStack":I
    .end local v16    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v19    # "taskCount":I
    .end local v20    # "taskStackCount":I
    .end local v21    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 538
    .restart local v8    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .restart local v9    # "homeIntent":Landroid/content/Intent;
    :cond_6
    const v3, 0x7f0500ad

    goto/16 :goto_1

    :cond_7
    const v4, 0x7f0500b0

    goto :goto_2

    .line 561
    .restart local v10    # "i":I
    .restart local v11    # "j":I
    .restart local v12    # "launchTaskIndexInStack":I
    .restart local v16    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v18    # "t":Lcom/android/systemui/recents/model/Task;
    .restart local v19    # "taskCount":I
    .restart local v20    # "taskStackCount":I
    .restart local v21    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 607
    .end local v10    # "i":I
    .end local v11    # "j":I
    .end local v16    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v18    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v19    # "taskCount":I
    .end local v21    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-eqz v3, :cond_d

    .line 608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v4, "launched with no recent tasks"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    if-nez v3, :cond_a

    .line 610
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    .line 618
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 620
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBarVisibility(I)V

    .line 630
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    const v4, 0x7f0e01e5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 631
    .local v2, "emptyTextView":Landroid/widget/TextView;
    if-eqz v2, :cond_b

    .line 632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->needDarkFont:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->uPowerSavingModeEnabled:Z

    if-nez v3, :cond_c

    .line 633
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 634
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyTextStrokeOpacity:F

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    .line 635
    const/high16 v3, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyTextShadowDistance:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyTextShadowSize:F

    const/4 v6, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyTextShadowOpacity:F

    invoke-virtual/range {v2 .. v7}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    .line 661
    .end local v2    # "emptyTextView":Landroid/widget/TextView;
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->onToggleRecentsBottomContainer(Z)V

    .line 665
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->prepareEnterRecentsAnimation()V

    .line 668
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    if-eqz v3, :cond_10

    .line 669
    const-string v3, "overview_trigger_alttab"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 674
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    if-eqz v3, :cond_11

    .line 675
    const-string v3, "overview_source_app"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 677
    const-string v3, "overview_source_app_index"

    move-object/from16 v0, p0

    invoke-static {v0, v3, v12}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 682
    :goto_7
    const/16 v19, 0x0

    .line 683
    .restart local v19    # "taskCount":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_8
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v10, v3, :cond_12

    .line 684
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/recents/model/TaskStack;

    .line 685
    .restart local v16    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    add-int v19, v19, v3

    .line 683
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 638
    .end local v10    # "i":I
    .end local v16    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v19    # "taskCount":I
    .restart local v2    # "emptyTextView":Landroid/widget/TextView;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0071

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 639
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x1000000

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyTextStrokeOpacity:F

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    .line 640
    const/high16 v3, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyTextShadowDistance:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyTextShadowSize:F

    const/high16 v6, -0x1000000

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyTextShadowOpacity:F

    invoke-virtual/range {v2 .. v7}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    goto :goto_5

    .line 646
    .end local v2    # "emptyTextView":Landroid/widget/TextView;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_e

    .line 647
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 649
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->hasValidSearchBar()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 650
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBarVisibility(I)V

    goto/16 :goto_5

    .line 652
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->refreshSearchWidgetView()V

    goto/16 :goto_5

    .line 671
    :cond_10
    const-string v3, "overview_trigger_nav_btn"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 679
    :cond_11
    const-string v3, "overview_source_home"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 687
    .restart local v10    # "i":I
    .restart local v19    # "taskCount":I
    :cond_12
    const-string v3, "overview_task_count"

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 688
    return-void
.end method
