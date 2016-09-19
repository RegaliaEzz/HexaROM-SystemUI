.class public Lcom/android/systemui/recents/RecentsConfiguration;
.super Ljava/lang/Object;
.source "RecentsConfiguration.java"


# static fields
.field public static folderType:I

.field static sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

.field protected static final sInstances:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/recents/RecentsConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field static sPrevConfigurationHashCode:I

.field static sPrevConfigurationHashCodes:Landroid/util/SparseIntArray;


# instance fields
.field public altTabKeyDelay:I

.field public debugModeEnabled:Z

.field public developerOptionsEnabled:Z

.field public dismissAllButtonSizePx:I

.field public displayRect:Landroid/graphics/Rect;

.field public doNotDrawTaskViewHeader:Z

.field public fakeShadows:Z

.field public fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field public fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public filteringCurrentViewsAnimDuration:I

.field public filteringNewViewsAnimDuration:I

.field hasTransposedNavBar:Z

.field hasTransposedSearchBar:Z

.field public isCloseProcessingBtnClicked:Z

.field public isLandscape:Z

.field public isScreenOff:Z

.field public launchedFromAppWithThumbnail:Z

.field public launchedFromHome:Z

.field public launchedFromMultiWindowRecent:Z

.field public launchedFromSearchHome:Z

.field public launchedHasConfigurationChanged:Z

.field public launchedNumVisibleTasks:I

.field public launchedNumVisibleThumbnails:I

.field public launchedReuseTaskStackViews:Z

.field public launchedToTaskId:I

.field public launchedWithAltTab:Z

.field public launchedWithNoRecentTasks:Z

.field public linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public lockToAppEnabled:Z

.field private mContext:Landroid/content/Context;

.field mCurrentActivity:I

.field mDisplayId:I

.field public mEnabledExpandHomeMode:Z

.field public mIsMobileKeyboardAttached:Z

.field public mIsMultiWindowSettingEnabled:Z

.field public maxNumTasksToLoad:I

.field public multiStackEnabled:Z

.field public navBarScrimEnterDuration:I

.field public needDarkFont:Z

.field public pathInterpolator:Landroid/view/animation/Interpolator;

.field public privateModeEnabled:Z

.field public quintOutInterpolator:Landroid/view/animation/Interpolator;

.field public recentsButtonHeightPx:I

.field recentsHiddenCompleted:Z

.field public scrollInterpolator:Landroid/view/animation/Interpolator;

.field public searchBarSpaceHeightPx:I

.field public sineInOut90Interpolator:Landroid/view/animation/Interpolator;

.field public sineOut80Interpolator:Landroid/view/animation/Interpolator;

.field public svelteLevel:I

.field public systemInsets:Landroid/graphics/Rect;

.field public taskBarDismissDozeDelaySeconds:I

.field public taskBarHeight:I

.field public taskBarViewAffiliationColorMinAlpha:F

.field public taskBarViewDarkTextColor:I

.field public taskBarViewDefaultBackgroundColor:I

.field public taskBarViewHighlightColor:I

.field public taskBarViewLightTextColor:I

.field public taskStackAddiionalAlphaArea:F

.field public taskStackAdditionalMargin:I

.field public taskStackInitialCardPosition:F

.field public taskStackLandscapeCurveAlgorithmCount:I

.field public taskStackMaxDim:I

.field public taskStackOverscrollPct:F

.field public taskStackPortraitCurveAlgorithmCount:I

.field public taskStackScrollDuration:I

.field public taskStackScrollDurationFlipOneCard:I

.field public taskStackScrollDurationScrolling:I

.field public taskStackScrollTouchSensitivity:F

.field public taskStackTopPaddingPx:I

.field public taskStackWidthPaddingPct:F

.field public taskViewAffiliateGroupEnterOffsetPx:I

.field public taskViewCloseAllDuration:I

.field public taskViewEnterFromAppDuration:I

.field public taskViewEnterFromHomeDuration:I

.field public taskViewEnterFromHomeStaggerDelay:I

.field public taskViewExitToAppDuration:I

.field public taskViewExitToHomeDuration:I

.field public taskViewHighlightPx:I

.field public taskViewRemoveAnimDuration:I

.field public taskViewRemoveAnimTranslationXPx:I

.field public taskViewRoundedCornerRadiusPx:I

.field public taskViewThumbnailAlpha:F

.field public taskViewTranslationZMaxPx:I

.field public taskViewTranslationZMinPx:I

.field public taskVisibleArea:F

.field public transitionEnterFromAppDelay:I

.field public transitionEnterFromHomeDelay:I

.field public uPowerSavingModeEnabled:Z

.field public useHardwareLayers:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/RecentsConfiguration;->sInstances:Landroid/util/SparseArray;

    .line 68
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/RecentsConfiguration;->sPrevConfigurationHashCodes:Landroid/util/SparseIntArray;

    .line 229
    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/recents/RecentsConfiguration;->folderType:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v5, 0x3e2e147b    # 0.17f

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    .line 143
    iput v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackAdditionalMargin:I

    .line 144
    iput v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->recentsButtonHeightPx:I

    .line 201
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mCurrentActivity:I

    .line 203
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMultiWindowSettingEnabled:Z

    .line 204
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMobileKeyboardAttached:Z

    .line 205
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isScreenOff:Z

    .line 211
    iput v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mDisplayId:I

    .line 212
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mEnabledExpandHomeMode:Z

    .line 219
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isCloseProcessingBtnClicked:Z

    .line 238
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 240
    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 242
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 244
    const v0, 0x10c0005

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackScrollDurationFlipOneCard:I

    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackScrollDurationScrolling:I

    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c016c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackScrollTouchSensitivity:F

    .line 251
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    const v2, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->pathInterpolator:Landroid/view/animation/Interpolator;

    .line 252
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->sineInOut90Interpolator:Landroid/view/animation/Interpolator;

    .line 253
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v5, v5, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->sineOut80Interpolator:Landroid/view/animation/Interpolator;

    .line 254
    new-instance v0, Lcom/android/systemui/recents/misc/QuintOut80;

    invoke-direct {v0}, Lcom/android/systemui/recents/misc/QuintOut80;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->scrollInterpolator:Landroid/view/animation/Interpolator;

    .line 256
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mContext:Landroid/content/Context;

    .line 258
    invoke-static {p1}, Lcom/android/systemui/recents/RecentsConfiguration;->initializeFolderType(Landroid/content/Context;)V

    .line 260
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/recents/RecentsConfiguration;
    .locals 1

    .prologue
    .line 302
    sget-object v0, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    return-object v0
.end method

.method public static initializeFolderType(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 610
    sget v0, Lcom/android/systemui/recents/RecentsConfiguration;->folderType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 611
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 612
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/recents/RecentsConfiguration;->folderType:I

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/recents/RecentsConfiguration;->folderType:I

    goto :goto_0

    .line 618
    :cond_2
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/recents/RecentsConfiguration;->folderType:I

    goto :goto_0
.end method

.method public static reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;I)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;I)Lcom/android/systemui/recents/RecentsConfiguration;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .param p2, "displayId"    # I

    .prologue
    .line 287
    sget-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    if-nez v1, :cond_0

    .line 288
    new-instance v1, Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsConfiguration;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 290
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->hashCode()I

    move-result v0

    .line 291
    .local v0, "configHashCode":I
    sget v1, Lcom/android/systemui/recents/RecentsConfiguration;->sPrevConfigurationHashCode:I

    if-eq v1, v0, :cond_1

    .line 292
    sget-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v1, p0}, Lcom/android/systemui/recents/RecentsConfiguration;->update(Landroid/content/Context;)V

    .line 293
    sput v0, Lcom/android/systemui/recents/RecentsConfiguration;->sPrevConfigurationHashCode:I

    .line 295
    :cond_1
    sget-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v1, p0, p1}, Lcom/android/systemui/recents/RecentsConfiguration;->updateOnReinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    .line 296
    sget-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    return-object v1
.end method


# virtual methods
.method public getAvailableTaskStackBounds(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "topInset"    # I
    .param p4, "rightInset"    # I
    .param p5, "searchBarBounds"    # Landroid/graphics/Rect;
    .param p6, "taskStackBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 568
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 569
    .local v0, "closeAllButtonBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getRecentsButtonBounds(IILandroid/graphics/Rect;)V

    .line 571
    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v1, :cond_0

    .line 573
    iget v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackAdditionalMargin:I

    add-int/2addr v1, p3

    sub-int v2, p1, p4

    iget v3, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p6, v4, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 581
    :goto_0
    return-void

    .line 578
    :cond_0
    iget v1, p5, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackAdditionalMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p6, v4, v1, p1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getCurrentActivity()I
    .locals 1

    .prologue
    .line 648
    iget v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mCurrentActivity:I

    return v0
.end method

.method public getDisplayId()I
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mDisplayId:I

    return v0
.end method

.method public getRecentsButtonBounds(IILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "RecentsButtonrSpaceBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 604
    iget v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->recentsButtonHeightPx:I

    .line 605
    .local v0, "recentsButtonSize":I
    const/4 v1, 0x0

    sub-int v2, p2, v0

    invoke-virtual {p3, v1, v2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 607
    return-void
.end method

.method public getSearchBarBounds(IIILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "topInset"    # I
    .param p4, "searchBarSpaceBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 590
    iget v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarSpaceHeightPx:I

    .line 591
    .local v0, "searchBarSize":I
    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedSearchBar:Z

    if-eqz v1, :cond_0

    .line 593
    invoke-virtual {p4, v2, p3, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 598
    :goto_0
    return-void

    .line 596
    :cond_0
    add-int v1, p3, v0

    invoke-virtual {p4, v2, p3, p1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public hasNavBarScrim()Z
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x0

    return v0
.end method

.method public hasStatusBarScrim()Z
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x0

    return v0
.end method

.method public isKnoxLauncherMode()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 681
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 682
    .local v1, "intentToResolve":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 685
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 686
    .local v0, "HomeReceiver":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, "com.android.internal.app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 687
    const/4 v3, 0x1

    .line 689
    :cond_0
    return v3
.end method

.method public setCurrentActivity(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I

    .prologue
    .line 626
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 628
    .local v0, "res":Landroid/content/res/Resources;
    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 629
    const v1, 0x7f0c02ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackWidthPaddingPct:F

    .line 630
    const v1, 0x7f0c01ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackTopPaddingPx:I

    .line 644
    :goto_0
    iput p2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mCurrentActivity:I

    .line 645
    return-void

    .line 633
    :cond_0
    const v1, 0x7f0c016e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackTopPaddingPx:I

    .line 640
    const v1, 0x7f0c0166

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackWidthPaddingPct:F

    goto :goto_0
.end method

.method public shouldAnimateNavBarScrim()Z
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    return v0
.end method

.method public shouldAnimateStatusBarScrim()Z
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x0

    return v0
.end method

.method public showOnlySplitTask()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 652
    iget v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mCurrentActivity:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showRecentOnMultiwindow()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 664
    iget v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mCurrentActivity:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showTaskViewHeaderIcon()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 656
    iget v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mCurrentActivity:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method update(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 317
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/RecentsConfiguration;->update(Landroid/content/Context;I)V

    .line 318
    return-void
.end method

.method update(Landroid/content/Context;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 322
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 323
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 326
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string v2, "debugModeEnabled"

    invoke-static {p1, v2, v4}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    .line 328
    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v2, :cond_0

    .line 329
    sput-boolean v3, Lcom/android/systemui/recents/misc/Console;->Enabled:Z

    .line 339
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    .line 341
    const v2, 0x7f0b0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedSearchBar:Z

    .line 342
    const v2, 0x7f0b0022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    .line 352
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v4, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 356
    const v2, 0x7f0f0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->filteringCurrentViewsAnimDuration:I

    .line 358
    const v2, 0x7f0f0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->filteringNewViewsAnimDuration:I

    .line 362
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->maxNumTasksToLoad:I

    .line 365
    const v2, 0x7f0c0165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarSpaceHeightPx:I

    .line 368
    const v2, 0x7f0f002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackScrollDuration:I

    .line 371
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsConfiguration;->getCurrentActivity()I

    move-result v2

    if-eq v2, v3, :cond_3

    .line 372
    const v2, 0x7f0c02ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackWidthPaddingPct:F

    .line 382
    :goto_1
    const v2, 0x7f0c016d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackOverscrollPct:F

    .line 383
    const v2, 0x7f0f0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackMaxDim:I

    .line 385
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsConfiguration;->getCurrentActivity()I

    move-result v2

    if-eq v2, v3, :cond_4

    .line 386
    const v2, 0x7f0c01ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackTopPaddingPx:I

    .line 391
    :goto_2
    const v2, 0x7f0c016f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->dismissAllButtonSizePx:I

    .line 394
    const v2, 0x7f0f0022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->transitionEnterFromAppDelay:I

    .line 396
    const v2, 0x7f0f0027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->transitionEnterFromHomeDelay:I

    .line 400
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v2, :cond_5

    const v2, 0x7f0f0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    :goto_3
    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromAppDuration:I

    .line 403
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v2, :cond_6

    const v2, 0x7f0f0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    :goto_4
    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDuration:I

    .line 406
    const v2, 0x7f0f002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeStaggerDelay:I

    .line 408
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v2, :cond_7

    const v2, 0x7f0f0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    :goto_5
    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToAppDuration:I

    .line 411
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v2, :cond_8

    const v2, 0x7f0f002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    :goto_6
    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToHomeDuration:I

    .line 414
    const v2, 0x7f0f002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimDuration:I

    .line 417
    const v2, 0x7f0f0047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewCloseAllDuration:I

    .line 419
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v2, :cond_9

    .line 420
    const v2, 0x7f0c0167

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackAdditionalMargin:I

    .line 422
    const v2, 0x7f0c0169

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackInitialCardPosition:F

    .line 424
    const v2, 0x7f0c016a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskVisibleArea:F

    .line 426
    const v2, 0x7f0f0048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackPortraitCurveAlgorithmCount:I

    .line 428
    const v2, 0x7f0f0049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackLandscapeCurveAlgorithmCount:I

    .line 430
    const v2, 0x7f0c016b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackAddiionalAlphaArea:F

    .line 440
    :goto_7
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->UpperBouncePosition:Z

    if-eqz v2, :cond_1

    .line 441
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v2, :cond_a

    .line 442
    const v2, 0x7f0c0168

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->recentsButtonHeightPx:I

    .line 454
    :cond_1
    :goto_8
    const v2, 0x7f0c0160

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimTranslationXPx:I

    .line 456
    const v2, 0x7f0c015d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    .line 458
    const v2, 0x7f0c0161

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewHighlightPx:I

    .line 459
    const v2, 0x7f0c015e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewTranslationZMinPx:I

    .line 460
    const v2, 0x7f0c015f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewTranslationZMaxPx:I

    .line 461
    const v2, 0x7f0c0162

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewAffiliateGroupEnterOffsetPx:I

    .line 463
    const v2, 0x7f0c0163

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewThumbnailAlpha:F

    .line 466
    const v2, 0x7f0a006f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewDefaultBackgroundColor:I

    .line 468
    const v2, 0x7f0a0072

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewLightTextColor:I

    .line 469
    const v2, 0x7f0a0073

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewDarkTextColor:I

    .line 470
    const v2, 0x7f0a0076

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewHighlightColor:I

    .line 471
    const v2, 0x7f0c0170

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewAffiliationColorMinAlpha:F

    .line 475
    const v2, 0x7f0c0164

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarHeight:I

    .line 476
    const v2, 0x7f0f001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarDismissDozeDelaySeconds:I

    .line 480
    const v2, 0x7f0f002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->navBarScrimEnterDuration:I

    .line 484
    const v2, 0x7f0b0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->useHardwareLayers:Z

    .line 485
    const v2, 0x7f0f0031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->altTabKeyDelay:I

    .line 486
    const v2, 0x7f0b0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    .line 487
    const v2, 0x7f0f0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    .line 488
    return-void

    :cond_2
    move v2, v4

    .line 339
    goto/16 :goto_0

    .line 380
    :cond_3
    const v2, 0x7f0c0166

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackWidthPaddingPct:F

    goto/16 :goto_1

    .line 389
    :cond_4
    const v2, 0x7f0c016e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackTopPaddingPx:I

    goto/16 :goto_2

    .line 400
    :cond_5
    const v2, 0x7f0f0023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    goto/16 :goto_3

    .line 403
    :cond_6
    const v2, 0x7f0f0028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    goto/16 :goto_4

    .line 408
    :cond_7
    const v2, 0x7f0f0025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    goto/16 :goto_5

    .line 411
    :cond_8
    const v2, 0x7f0f002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    goto/16 :goto_6

    .line 433
    :cond_9
    const v2, 0x3f533333    # 0.825f

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackInitialCardPosition:F

    .line 434
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskVisibleArea:F

    .line 435
    const/16 v2, 0x26

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackPortraitCurveAlgorithmCount:I

    .line 436
    const/16 v2, 0x11

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackLandscapeCurveAlgorithmCount:I

    .line 437
    const v2, 0x3d3851ec    # 0.045f

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackAddiionalAlphaArea:F

    goto/16 :goto_7

    .line 444
    :cond_a
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllLayout:Z

    if-eqz v2, :cond_b

    .line 445
    const v2, 0x7f0c0278

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->recentsButtonHeightPx:I

    goto/16 :goto_8

    .line 448
    :cond_b
    const v2, 0x7f0c0270

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->recentsButtonHeightPx:I

    goto/16 :goto_8
.end method

.method public updateOnConfigurationChange()V
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedReuseTaskStackViews:Z

    .line 537
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    .line 538
    return-void
.end method

.method updateOnReinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 498
    const-string v0, "development_settings_enabled"

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getGlobalSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->developerOptionsEnabled:Z

    .line 500
    const-string v0, "lock_to_app_enabled"

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->lockToAppEnabled:Z

    .line 502
    const-string v0, "true"

    const-string v3, "persist.sys.debug.multi_window"

    invoke-virtual {p2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->multiStackEnabled:Z

    .line 505
    const-string v0, "ultra_powersaving_mode"

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->uPowerSavingModeEnabled:Z

    .line 507
    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isCloseProcessingBtnClicked:Z

    .line 508
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "personal_mode_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->privateModeEnabled:Z

    .line 510
    const-string v0, "need_dark_font"

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsConfiguration;->isKnoxLauncherMode()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->needDarkFont:Z

    .line 515
    const-string v0, "multi_window_enabled"

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMultiWindowSettingEnabled:Z

    .line 518
    const-string v0, "mobile_keyboard"

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_6

    :goto_6
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMobileKeyboardAttached:Z

    .line 529
    return-void

    :cond_0
    move v0, v2

    .line 498
    goto :goto_0

    :cond_1
    move v0, v2

    .line 500
    goto :goto_1

    :cond_2
    move v0, v2

    .line 505
    goto :goto_2

    :cond_3
    move v0, v2

    .line 508
    goto :goto_3

    :cond_4
    move v0, v2

    .line 510
    goto :goto_4

    :cond_5
    move v0, v2

    .line 515
    goto :goto_5

    :cond_6
    move v1, v2

    .line 518
    goto :goto_6
.end method

.method public updateSystemInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 493
    return-void
.end method

.method public useRemoveTaskActionBySwipe()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 660
    iget v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mCurrentActivity:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
