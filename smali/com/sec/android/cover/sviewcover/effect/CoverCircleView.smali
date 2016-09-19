.class public Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
.super Landroid/widget/FrameLayout;
.source "CoverCircleView.java"

# interfaces
.implements Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$SViewCoverShortcutCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$19;,
        Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;,
        Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;,
        Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;,
        Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private mActionDown:Z

.field private mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mAnimatingViews:[Landroid/view/View;

.field private mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field protected mArrow:Landroid/widget/ImageView;

.field protected mArrowResId:I

.field private mBlinkAnimator:Landroid/animation/ValueAnimator;

.field private mBlinkListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCArrowAlpha:I

.field private mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mCArrowAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCArrowBitmap:Landroid/graphics/Bitmap;

.field private mCArrowDiagSize:F

.field private final mCArrowPaint:Landroid/graphics/Paint;

.field private mCArrowRect:Landroid/graphics/RectF;

.field private mCArrowScale:F

.field private mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

.field private mCArrowScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCenterX:I

.field private mCenterY:I

.field private mClearMoveCircle:Z

.field protected mContentIcon:Landroid/widget/ImageView;

.field protected mContentResId:I

.field protected mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

.field private mCubicEaseIn:Landroid/view/animation/interpolator/CubicEaseIn;

.field private mCubicEaseOut:Landroid/view/animation/interpolator/CubicEaseOut;

.field private mCustomCircletouchHandler:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;

.field private mDCircleAlpha:I

.field private mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mDCircleAnimator:Landroid/animation/ValueAnimator;

.field private mDCircleEndAlpha:I

.field private mDCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mDCircleMaxRadius:F

.field private final mDCirclePaint:Landroid/graphics/Paint;

.field private mDCircleRadius:F

.field private mDCircleStartAlpha:I

.field private mDistance:D

.field private mFirstBorder:I

.field private mFling:Z

.field private mImageScale:F

.field private mIsIgnoreTouch:Z

.field private mIsMultiTouch:Z

.field private mIsUnlockStarted:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMaxRadius:F

.field private mMoveCircleAnimator:Landroid/animation/ValueAnimator;

.field private mMoveCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mMoveCirclePaint:Landroid/graphics/Paint;

.field private mMoveCircleRadius:F

.field protected mNeedTochangeParent:Z

.field private mOldDistance:F

.field private mOpenApplication:Z

.field protected mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

.field protected mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

.field protected mPreviewGroup:Landroid/view/ViewGroup;

.field private mRadiusEnd:F

.field private mRadiusStart:F

.field private mSecondBorder:I

.field private mShortcutManager:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

.field private mSineIn33:Landroid/view/animation/Interpolator;

.field private mSineIn80:Landroid/view/animation/Interpolator;

.field private mSineOut33:Landroid/view/animation/Interpolator;

.field private mSineOut80:Landroid/view/animation/Interpolator;

.field private mStartX:F

.field private mStartY:F

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field protected final mWidgetSide:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

.field protected mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const v8, 0x3f547ae1    # 0.83f

    const v7, 0x3e2e147b    # 0.17f

    const/4 v6, 0x0

    .line 205
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    .line 73
    iput v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mArrowResId:I

    .line 74
    iput v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentResId:I

    .line 80
    iput-boolean v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mNeedTochangeParent:Z

    .line 89
    sget-object v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->NONE:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    .line 93
    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;

    invoke-direct {v3, p0, v10}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCustomCircletouchHandler:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;

    .line 99
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mImageScale:F

    .line 103
    iput-boolean v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsUnlockStarted:Z

    .line 104
    iput-boolean v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsIgnoreTouch:Z

    .line 105
    iput-boolean v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsMultiTouch:Z

    .line 106
    iput-boolean v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mActionDown:Z

    .line 112
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDistance:D

    .line 116
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mOldDistance:F

    .line 153
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMaxRadius:F

    .line 154
    iput-boolean v9, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mClearMoveCircle:Z

    .line 155
    iput-boolean v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mOpenApplication:Z

    .line 175
    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 719
    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$6;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$6;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 755
    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$7;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$7;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 761
    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$8;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$8;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 767
    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$9;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$9;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 773
    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$10;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$10;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 779
    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$11;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$11;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mBlinkListener:Landroid/animation/AnimatorListenerAdapter;

    .line 787
    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$12;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$12;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 207
    instance-of v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleLeftView;

    if-eqz v3, :cond_0

    .line 208
    sget-object v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->LEFT:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetSide:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    .line 215
    :goto_0
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 216
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 217
    new-instance v3, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;-><init>(Landroid/content/Context;Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$SViewCoverShortcutCallback;)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mShortcutManager:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    .line 220
    invoke-virtual {p0, v6}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setWillNotDraw(Z)V

    .line 222
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mSineOut80:Landroid/view/animation/Interpolator;

    .line 223
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3f4ccccd    # 0.8f

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v8, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mSineIn80:Landroid/view/animation/Interpolator;

    .line 224
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mSineOut33:Landroid/view/animation/Interpolator;

    .line 225
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v8, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mSineIn33:Landroid/view/animation/Interpolator;

    .line 226
    new-instance v3, Landroid/view/animation/interpolator/CubicEaseIn;

    invoke-direct {v3}, Landroid/view/animation/interpolator/CubicEaseIn;-><init>()V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCubicEaseIn:Landroid/view/animation/interpolator/CubicEaseIn;

    .line 227
    new-instance v3, Landroid/view/animation/interpolator/CubicEaseOut;

    invoke-direct {v3}, Landroid/view/animation/interpolator/CubicEaseOut;-><init>()V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCubicEaseOut:Landroid/view/animation/interpolator/CubicEaseOut;

    .line 229
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_arrow:I

    invoke-virtual {v3, v4, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 230
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    .line 232
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v4, v3

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v3, v4

    const v4, 0x3edeb852    # 0.435f

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowDiagSize:F

    .line 234
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowPaint:Landroid/graphics/Paint;

    .line 235
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 237
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCirclePaint:Landroid/graphics/Paint;

    .line 238
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 240
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sec/android/sviewcover/R$color;->shortcut_affordance_bg:I

    invoke-virtual {v3, v4, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 241
    .local v0, "color":I
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 243
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCirclePaint:Landroid/graphics/Paint;

    .line 244
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 245
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 248
    .local v2, "res":Landroid/content/res/Resources;
    sget v3, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_first_border:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mFirstBorder:I

    .line 249
    sget v3, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_second_border:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mSecondBorder:I

    .line 250
    sget v3, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_first_border:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleMaxRadius:F

    .line 251
    return-void

    .line 209
    .end local v0    # "color":I
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_0
    instance-of v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleRightView;

    if-eqz v3, :cond_1

    .line 210
    sget-object v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->RIGHT:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetSide:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    goto/16 :goto_0

    .line 212
    :cond_1
    iput-object v10, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetSide:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mClearMoveCircle:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mClearMoveCircle:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mBlinkAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mBlinkAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mOpenApplication:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mOpenApplication:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->isSecureLockScreen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # F

    .prologue
    .line 62
    iput p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleRadius:F

    return p1
.end method

.method static synthetic access$1702(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAlpha:I

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScale:F

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # F

    .prologue
    .line 62
    iput p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScale:F

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowAlpha:I

    return v0
.end method

.method static synthetic access$1902(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowAlpha:I

    return p1
.end method

.method static synthetic access$2000(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # F

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setPreviewColor(F)V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsUnlockStarted:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsUnlockStarted:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsIgnoreTouch:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsIgnoreTouch:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsMultiTouch:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsMultiTouch:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mStartX:F

    return v0
.end method

.method static synthetic access$2402(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # F

    .prologue
    .line 62
    iput p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mStartX:F

    return p1
.end method

.method static synthetic access$2500(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mStartY:F

    return v0
.end method

.method static synthetic access$2502(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # F

    .prologue
    .line 62
    iput p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mStartY:F

    return p1
.end method

.method static synthetic access$2600(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)D
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDistance:D

    return-wide v0
.end method

.method static synthetic access$2602(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;D)D
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # D

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDistance:D

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->changeParent()V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->initVelocityTracker()V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->trackMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleRadius:F

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mActionDown:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mActionDown:Z

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # F

    .prologue
    .line 62
    iput p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleRadius:F

    return p1
.end method

.method static synthetic access$3100(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setCArrowAnimator(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setDCircleAnimator(ZZ)V

    return-void
.end method

.method static synthetic access$3300(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setDCircleAlphaAnimator(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setCArrowBlinker()V

    return-void
.end method

.method static synthetic access$3500(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleMaxRadius:F

    return v0
.end method

.method static synthetic access$3600(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # F

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setMoveCircluRadius(F)V

    return-void
.end method

.method static synthetic access$3700(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # F

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->showHideCArrow(F)V

    return-void
.end method

.method static synthetic access$3902(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # F

    .prologue
    .line 62
    iput p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mOldDistance:F

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->updateVisibility()V

    return-void
.end method

.method static synthetic access$4000(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mSecondBorder:I

    return v0
.end method

.method static synthetic access$4100(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->startHideAnimations(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mFirstBorder:I

    return v0
.end method

.method static synthetic access$4300(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;FF)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->isCancelFling(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->shrinkMoveCircle()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCustomCircletouchHandler:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mShortcutManager:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private cancelAllAnimators()V
    .locals 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mCircleAnimator"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 906
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mAlphaAnimator"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 907
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mCArrowScaleAnimator"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 908
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mCArrowAlphaAnimator"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mBlinkAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mBlinkAnimator"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 911
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 912
    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;
    .param p2, "debugName"    # Ljava/lang/String;

    .prologue
    .line 890
    if-eqz p1, :cond_0

    .line 891
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 893
    const-string v0, "mCircleAnimator"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 894
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAlphaAnimator:mAlpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAlpha:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_0
    :goto_0
    return-void

    .line 895
    :cond_1
    const-string v0, "mTranslateAnimator"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 896
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCArrowAnimator:mCArrowScale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 897
    :cond_2
    const-string v0, "mBlinkAnimator"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBlinkAnimator:alpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private changeParent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 501
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getLocationOnScreen()[I

    move-result-object v0

    .line 502
    .local v0, "location":[I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getHeight()I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 503
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getTop()I

    move-result v4

    invoke-virtual {v1, v3, v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 505
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 506
    .local v2, "viewParent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 507
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 510
    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 511
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 512
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 514
    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    iput-boolean v5, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mNeedTochangeParent:Z

    .line 516
    return-void
.end method

.method private checkIsReallyCustom(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;)Z
    .locals 3
    .param p1, "type"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    .prologue
    .line 264
    const/4 v0, 0x1

    .line 265
    .local v0, "isCustom":Z
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$19;->$SwitchMap$com$sec$android$cover$sviewcover$effect$CoverCircleView$WidgetSide:[I

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetSide:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 285
    :cond_0
    :goto_0
    return v0

    .line 267
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mShortcutManager:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->isLeftShortcutForPhone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CALL:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setWidgetType(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;)V

    .line 269
    const/4 v0, 0x0

    goto :goto_0

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mShortcutManager:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->isLeftShortcutForCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CAMERA:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setWidgetType(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;)V

    .line 272
    const/4 v0, 0x0

    goto :goto_0

    .line 276
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mShortcutManager:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->isRightShortcutForPhone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 277
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CALL:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setWidgetType(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;)V

    .line 278
    const/4 v0, 0x0

    goto :goto_0

    .line 279
    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mShortcutManager:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->isRightShortcutForCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CAMERA:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setWidgetType(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;)V

    .line 281
    const/4 v0, 0x0

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private draw4CornerArrows(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 879
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScale:F

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 887
    :goto_0
    return-void

    .line 883
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 884
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScale:F

    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScale:F

    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterX:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 885
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 886
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private drawCircle(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 835
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 837
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleRadius:F

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 839
    :cond_0
    return-void
.end method

.method private drawMovingCircle(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 842
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 843
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 844
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleRadius:F

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 845
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 847
    :cond_0
    return-void
.end method

.method private getCurrentVelocity(FF)F
    .locals 10
    .param p1, "lastX"    # F
    .param p2, "lastY"    # F

    .prologue
    .line 1156
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_0

    .line 1157
    const/4 v5, 0x0

    .line 1171
    :goto_0
    return v5

    .line 1161
    :cond_0
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1162
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 1163
    .local v0, "aX":F
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 1165
    .local v1, "aY":F
    iget v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mStartX:F

    sub-float v3, p1, v6

    .line 1166
    .local v3, "bX":F
    iget v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mStartY:F

    sub-float v4, p2, v6

    .line 1167
    .local v4, "bY":F
    float-to-double v6, v3

    float-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v2, v6

    .line 1169
    .local v2, "bLen":F
    mul-float v6, v0, v3

    mul-float v7, v1, v4

    add-float/2addr v6, v7

    div-float v5, v6, v2

    .line 1171
    .local v5, "projectedVelocity":F
    goto :goto_0
.end method

.method private getMaxCircleSize()F
    .locals 8

    .prologue
    .line 869
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 870
    .local v1, "mTempPoint":[I
    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getLocationInWindow([I)V

    .line 871
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v2, v4

    .line 872
    .local v2, "rootWidth":F
    const/4 v4, 0x0

    aget v4, v1, v4

    iget v5, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterX:I

    add-int/2addr v4, v5

    int-to-float v3, v4

    .line 873
    .local v3, "width":F
    sub-float v4, v2, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 874
    const/4 v4, 0x1

    aget v4, v1, v4

    iget v5, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterY:I

    add-int/2addr v4, v5

    int-to-float v0, v4

    .line 875
    .local v0, "height":F
    float-to-double v4, v3

    float-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    return v4
.end method

.method private initVelocityTracker()V
    .locals 1

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1131
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mFling:Z

    .line 1133
    return-void
.end method

.method private isCancelFling(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x1

    .line 1142
    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getCurrentVelocity(FF)F

    move-result v0

    .line 1143
    .local v0, "velocity":F
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCancelFling: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    const/high16 v2, -0x3a860000    # -4000.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 1146
    const/4 v1, 0x0

    .line 1151
    :goto_0
    return v1

    .line 1149
    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mFling:Z

    .line 1150
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->shrinkMoveCircle()V

    goto :goto_0
.end method

.method private isSecureLockScreen()Z
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCameraUnlock()V
    .locals 4

    .prologue
    .line 688
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    if-eqz v1, :cond_0

    .line 689
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-interface {v1, v2}, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;->startPreviewAnimation(Landroid/animation/AnimatorListenerAdapter;)V

    .line 700
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "CS02"

    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverUtils;->reportContextualSurvey(Landroid/content/Context;Ljava/lang/String;)V

    .line 702
    return-void

    .line 692
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    invoke-static {v2}, Lcom/sec/android/cover/CoverUtils;->getCameraIntent(Z)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    const-string v2, "ActivityNotFoundException !!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onContactUnlock()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 616
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isTPhoneEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 617
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    if-eqz v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_view_detail:I

    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$4;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$4;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    invoke-virtual {v1, v2, v4, v3}, Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(IILcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z

    .line 630
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/cover/CoverUtils;->getTPhoneDialIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sendAppShouldOpen(Landroid/content/Intent;)V

    .line 667
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "CS01"

    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverUtils;->reportContextualSurvey(Landroid/content/Context;Ljava/lang/String;)V

    .line 669
    return-void

    .line 633
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 634
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    if-eqz v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_popup_favorite:I

    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$5;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$5;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    invoke-virtual {v1, v2, v4, v3}, Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(IILcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z

    .line 647
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/cover/CoverUtils;->getFavoriteContactIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sendAppShouldOpen(Landroid/content/Intent;)V

    .line 649
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    if-eqz v1, :cond_0

    .line 650
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    invoke-interface {v1}, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;->resetPreviewView()V

    goto :goto_0

    .line 654
    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    const-string v2, "onClick : Launching favorite"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    if-eqz v1, :cond_3

    .line 656
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-interface {v1, v2}, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;->startPreviewAnimation(Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_0

    .line 659
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/cover/CoverUtils;->getFavoriteContactIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 661
    :catch_0
    move-exception v0

    .line 662
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    const-string v2, "showCoverUi : ActivityNotFoundException !!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setCArrowAlphaAnimator(ZZ)V
    .locals 6
    .param p1, "appear"    # Z
    .param p2, "inHurry"    # Z

    .prologue
    .line 1011
    if-eqz p1, :cond_0

    .line 1012
    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowAlpha:I

    .line 1013
    .local v2, "mCArrowAlphaStart":I
    const/16 v1, 0xff

    .line 1019
    .local v1, "mCArrowAlphaEnd":I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCArrowAlphaAnimator:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1022
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 1023
    if-eqz p2, :cond_1

    const-wide/16 v4, 0x96

    :goto_1
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1024
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1025
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mSineOut33:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1026
    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$16;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$16;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1034
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1035
    return-void

    .line 1015
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "mCArrowAlphaEnd":I
    .end local v2    # "mCArrowAlphaStart":I
    :cond_0
    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowAlpha:I

    .line 1016
    .restart local v2    # "mCArrowAlphaStart":I
    const/4 v1, 0x0

    .restart local v1    # "mCArrowAlphaEnd":I
    goto :goto_0

    .line 1023
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    const-wide/16 v4, 0x15e

    goto :goto_1

    .line 1025
    :cond_2
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mSineIn33:Landroid/view/animation/Interpolator;

    goto :goto_2
.end method

.method private setCArrowAnimator(Z)V
    .locals 1
    .param p1, "appear"    # Z

    .prologue
    const/4 v0, 0x0

    .line 972
    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setCArrowScaleAnimator(ZZ)V

    .line 973
    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setCArrowAlphaAnimator(ZZ)V

    .line 974
    return-void
.end method

.method private setCArrowBlinker()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 1038
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    const-string v2, "setArrowBlinker:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1041
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mBlinkAnimator:Landroid/animation/ValueAnimator;

    .line 1042
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1043
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1044
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 1045
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 1046
    new-instance v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$17;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$17;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1054
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mBlinkListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1055
    return-void

    .line 1040
    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private setCArrowScaleAnimator(ZZ)V
    .locals 6
    .param p1, "appear"    # Z
    .param p2, "inHurry"    # Z

    .prologue
    .line 980
    if-eqz p1, :cond_0

    .line 981
    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScale:F

    .line 982
    .local v2, "mCArrowScaleStart":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 989
    .local v1, "mCArrowScaleEnd":F
    :goto_0
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCArrowScaleAnimator:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 992
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    .line 993
    if-eqz p2, :cond_1

    const-wide/16 v4, 0x96

    :goto_1
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 994
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 995
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCubicEaseOut:Landroid/view/animation/interpolator/CubicEaseOut;

    :goto_2
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 996
    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$15;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$15;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1004
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1005
    return-void

    .line 984
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "mCArrowScaleEnd":F
    .end local v2    # "mCArrowScaleStart":F
    :cond_0
    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScale:F

    .line 985
    .restart local v2    # "mCArrowScaleStart":F
    const/4 v1, 0x0

    .restart local v1    # "mCArrowScaleEnd":F
    goto :goto_0

    .line 993
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    const-wide/16 v4, 0x15e

    goto :goto_1

    .line 995
    :cond_2
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCubicEaseIn:Landroid/view/animation/interpolator/CubicEaseIn;

    goto :goto_2
.end method

.method private setCameraImageResources(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;)V
    .locals 2
    .param p1, "state"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    .prologue
    .line 705
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 706
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$19;->$SwitchMap$com$sec$android$cover$sviewcover$effect$CoverCircleView$ContentStates:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 708
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_camera_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 711
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_camera_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 714
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_camera_swipe:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 706
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setContactImageResources(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;)V
    .locals 2
    .param p1, "state"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    .prologue
    .line 672
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 673
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$19;->$SwitchMap$com$sec$android$cover$sviewcover$effect$CoverCircleView$ContentStates:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 675
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_call_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 678
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_call_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 681
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_call_swipe:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 673
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setDCircleAlphaAnimator(Z)V
    .locals 5
    .param p1, "appear"    # Z

    .prologue
    const/4 v4, 0x0

    .line 947
    if-eqz p1, :cond_0

    .line 948
    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAlpha:I

    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleStartAlpha:I

    .line 949
    const/16 v1, 0x59

    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleEndAlpha:I

    .line 955
    :goto_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDCircleAlphaAnimator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleStartAlpha:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleEndAlpha:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleStartAlpha:I

    aput v2, v1, v4

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleEndAlpha:I

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 958
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 959
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 960
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mSineOut33:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 961
    new-instance v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$14;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$14;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 968
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 969
    return-void

    .line 951
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAlpha:I

    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleStartAlpha:I

    .line 952
    iput v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleEndAlpha:I

    goto :goto_0

    .line 960
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mSineIn33:Landroid/view/animation/Interpolator;

    goto :goto_1
.end method

.method private setDCircleAnimator(ZZ)V
    .locals 4
    .param p1, "appear"    # Z
    .param p2, "inHurry"    # Z

    .prologue
    .line 923
    if-eqz p1, :cond_0

    .line 924
    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleRadius:F

    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusStart:F

    .line 925
    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleMaxRadius:F

    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusEnd:F

    .line 931
    :goto_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDCircleAnimator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusStart:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusEnd:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusStart:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusEnd:F

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 933
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    .line 934
    if-eqz p2, :cond_1

    const-wide/16 v2, 0xc8

    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 935
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCubicEaseOut:Landroid/view/animation/interpolator/CubicEaseOut;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 936
    new-instance v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$13;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$13;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 943
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 944
    return-void

    .line 927
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleRadius:F

    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusStart:F

    .line 928
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusEnd:F

    goto :goto_0

    .line 934
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    const-wide/16 v2, 0x15e

    goto :goto_1

    .line 935
    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCubicEaseIn:Landroid/view/animation/interpolator/CubicEaseIn;

    goto :goto_2
.end method

.method private varargs setEnabled(Z[Landroid/view/View;)V
    .locals 4
    .param p1, "value"    # Z
    .param p2, "views"    # [Landroid/view/View;

    .prologue
    .line 463
    if-nez p2, :cond_1

    .line 472
    :cond_0
    return-void

    .line 467
    :cond_1
    move-object v0, p2

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 468
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 469
    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 467
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setMoveCircleAnimator(ZZ)V
    .locals 7
    .param p1, "appear"    # Z
    .param p2, "inHurry"    # Z

    .prologue
    const-wide/16 v2, 0xc8

    const/4 v6, 0x0

    .line 1060
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->isCustom()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1061
    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleRadius:F

    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusStart:F

    .line 1062
    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMaxRadius:F

    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusEnd:F

    .line 1068
    :goto_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMoveCircleAnimator:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusStart:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusEnd:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mFling:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusStart:F

    aput v4, v1, v6

    const/4 v4, 0x1

    iget v5, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusEnd:F

    aput v5, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1070
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleAnimator:Landroid/animation/ValueAnimator;

    .line 1071
    iget-boolean v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mFling:Z

    if-eqz v1, :cond_1

    .line 1072
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1074
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mSineOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1075
    iput-boolean v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mFling:Z

    .line 1080
    :goto_1
    new-instance v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$18;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$18;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1088
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1089
    return-void

    .line 1064
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleRadius:F

    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusStart:F

    .line 1065
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mRadiusEnd:F

    goto :goto_0

    .line 1077
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    if-eqz p2, :cond_2

    :goto_2
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1078
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCubicEaseOut:Landroid/view/animation/interpolator/CubicEaseOut;

    :goto_3
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    .line 1077
    :cond_2
    const-wide/16 v2, 0x15e

    goto :goto_2

    .line 1078
    :cond_3
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCubicEaseIn:Landroid/view/animation/interpolator/CubicEaseIn;

    goto :goto_3
.end method

.method private setMoveCircluRadius(F)V
    .locals 0
    .param p1, "distance"    # F

    .prologue
    .line 850
    iput p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleRadius:F

    .line 851
    return-void
.end method

.method private setPreviewColor(F)V
    .locals 6
    .param p1, "distance"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 856
    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleMaxRadius:F

    div-float/2addr v1, v5

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 857
    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleMaxRadius:F

    div-float v0, p1, v1

    .line 864
    .local v0, "alpha":F
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 865
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCirclePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 866
    return-void

    .line 858
    .end local v0    # "alpha":F
    :cond_0
    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleMaxRadius:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 859
    const/high16 v0, 0x3f000000    # 0.5f

    .restart local v0    # "alpha":F
    goto :goto_0

    .line 861
    .end local v0    # "alpha":F
    :cond_1
    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleMaxRadius:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMaxRadius:F

    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleMaxRadius:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    div-float v0, v1, v5

    .restart local v0    # "alpha":F
    goto :goto_0
.end method

.method private showHideCArrow(F)V
    .locals 2
    .param p1, "d"    # F

    .prologue
    .line 1092
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowDiagSize:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mOldDistance:F

    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowDiagSize:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 1093
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mCArrowAlphaAnimator"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 1094
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mCArrowScaleAnimator"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mBlinkAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mBlinkAnimator"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 1097
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1098
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->invalidate()V

    .line 1104
    :cond_0
    :goto_0
    return-void

    .line 1099
    :cond_1
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowDiagSize:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mOldDistance:F

    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowDiagSize:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1100
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScale:F

    .line 1101
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1102
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->invalidate()V

    goto :goto_0
.end method

.method private shrinkMoveCircle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 916
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mClearMoveCircle:Z

    .line 917
    iput-boolean v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mOpenApplication:Z

    .line 918
    invoke-direct {p0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->startHideAnimations(Z)V

    .line 919
    return-void
.end method

.method private startHideAnimations(Z)V
    .locals 2
    .param p1, "unlocked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1107
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cancelAllAnimators()V

    .line 1108
    invoke-direct {p0, v1, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setDCircleAnimator(ZZ)V

    .line 1109
    invoke-direct {p0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setDCircleAlphaAnimator(Z)V

    .line 1111
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setMoveCircleAnimator(ZZ)V

    .line 1113
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1114
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1116
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1119
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScale:F

    .line 1120
    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowAlpha:I

    .line 1121
    return-void

    :cond_0
    move v0, v1

    .line 1111
    goto :goto_0
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1139
    :cond_0
    return-void
.end method

.method private varargs transitOtherViews(Z[Landroid/view/View;)V
    .locals 6
    .param p1, "show"    # Z
    .param p2, "views"    # [Landroid/view/View;

    .prologue
    .line 434
    if-nez p2, :cond_0

    .line 460
    :goto_0
    return-void

    .line 439
    :cond_0
    if-eqz p1, :cond_1

    .line 440
    const/4 v1, 0x0

    .line 441
    .local v1, "from":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 442
    .local v2, "to":F
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 447
    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 448
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 449
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mSineOut33:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 450
    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$3;

    invoke-direct {v3, p0, p2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$3;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;[Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 459
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 444
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "from":F
    .end local v2    # "to":F
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 445
    .restart local v1    # "from":F
    const/4 v2, 0x0

    .restart local v2    # "to":F
    goto :goto_1

    .line 449
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mSineIn33:Landroid/view/animation/Interpolator;

    goto :goto_2
.end method

.method private updateVisibility()V
    .locals 3

    .prologue
    .line 598
    const/4 v0, 0x0

    .line 599
    .local v0, "hasShortcut":Z
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$19;->$SwitchMap$com$sec$android$cover$sviewcover$effect$CoverCircleView$WidgetSide:[I

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetSide:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 608
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 609
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setVisibility(I)V

    .line 613
    :goto_1
    return-void

    .line 601
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mShortcutManager:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->hasShortcutForLeft()Z

    move-result v0

    .line 602
    goto :goto_0

    .line 604
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mShortcutManager:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->hasShortcutForRight()Z

    move-result v0

    goto :goto_0

    .line 611
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setVisibility(I)V

    goto :goto_1

    .line 599
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    .line 537
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 322
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 324
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 325
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 326
    iget-boolean v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mNeedTochangeParent:Z

    if-eqz v1, :cond_0

    .line 327
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->changeParent()V

    .line 329
    :cond_0
    return-void
.end method

.method public isCameraShortcut()Z
    .locals 2

    .prologue
    .line 585
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CAMERA:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactsShortcut()Z
    .locals 2

    .prologue
    .line 590
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CALL:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCustom()Z
    .locals 2

    .prologue
    .line 595
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CUSTOM:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CALL:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isTPhoneEnabled(Landroid/content/Context;)Z

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

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 333
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 334
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 336
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 340
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 341
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mNeedTochangeParent:Z

    if-nez v0, :cond_0

    .line 342
    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mAnimatingViews:[Landroid/view/View;

    .line 343
    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    .line 344
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 346
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 808
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->drawCircle(Landroid/graphics/Canvas;)V

    .line 809
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->draw4CornerArrows(Landroid/graphics/Canvas;)V

    .line 810
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->drawMovingCircle(Landroid/graphics/Canvas;)V

    .line 812
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 813
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mImageScale:F

    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mImageScale:F

    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterY:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 814
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 815
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 816
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 294
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 296
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mArrowResId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mArrow:Landroid/widget/ImageView;

    .line 297
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentResId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    .line 299
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 318
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 821
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 822
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterX:I

    .line 823
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterY:I

    .line 825
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterX:I

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterY:I

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterX:I

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCenterY:I

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowRect:Landroid/graphics/RectF;

    .line 831
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getMaxCircleSize()F

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMaxRadius:F

    .line 832
    return-void
.end method

.method public onUnlockExecuted()V
    .locals 4

    .prologue
    .line 353
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$19;->$SwitchMap$com$sec$android$cover$sviewcover$effect$CoverCircleView$WidgetType:[I

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 365
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUnlockExecuted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_0
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->DEFAULT:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setShortCutImageResource(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;)V

    .line 368
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsUnlockStarted:Z

    .line 369
    return-void

    .line 355
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onContactUnlock()V

    goto :goto_0

    .line 358
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onCameraUnlock()V

    goto :goto_0

    .line 361
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mShortcutManager:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetSide:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 362
    .local v0, "startIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sendAppShouldOpen(Landroid/content/Intent;)V

    goto :goto_0

    .line 353
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onUnlockViewPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 372
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->PRESSED:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setShortCutImageResource(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;)V

    .line 373
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mAnimatingViews:[Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->transitOtherViews(Z[Landroid/view/View;)V

    .line 374
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mAnimatingViews:[Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setEnabled(Z[Landroid/view/View;)V

    .line 375
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sendShortcutDrag(Z)V

    .line 377
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    if-eqz v0, :cond_0

    .line 378
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$19;->$SwitchMap$com$sec$android$cover$sviewcover$effect$CoverCircleView$WidgetType:[I

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 380
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;->Contact:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;

    invoke-interface {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;->setPreviewView(Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;)V

    goto :goto_0

    .line 383
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;->Camera:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;

    invoke-interface {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;->setPreviewView(Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;)V

    goto :goto_0

    .line 378
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUnlockViewReleased()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 392
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sendShortcutDrag(Z)V

    .line 393
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->DEFAULT:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setShortCutImageResource(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;)V

    .line 394
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mAnimatingViews:[Landroid/view/View;

    invoke-direct {p0, v2, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->transitOtherViews(Z[Landroid/view/View;)V

    .line 395
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mAnimatingViews:[Landroid/view/View;

    invoke-direct {p0, v2, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setEnabled(Z[Landroid/view/View;)V

    .line 396
    return-void
.end method

.method public refreshChildView()V
    .locals 5

    .prologue
    .line 540
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    .line 568
    :goto_0
    return-void

    .line 543
    :cond_0
    const/4 v1, 0x0

    .line 544
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 545
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isZeroProject()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 546
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mShortcutManager:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetSide:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 547
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mShortcutManager:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetSide:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->getShortcutContentDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 566
    :goto_1
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 567
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 549
    :cond_1
    sget-object v2, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$19;->$SwitchMap$com$sec$android$cover$sviewcover$effect$CoverCircleView$WidgetType:[I

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 563
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshChildView: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 551
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_call_normal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 552
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/sviewcover/R$string;->s_view_cover_favourite_button_accessibiliy:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 553
    goto :goto_1

    .line 555
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_camera_normal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 556
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/sviewcover/R$string;->s_view_cover_camera_button_accessibiliy:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 557
    goto :goto_1

    .line 559
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mShortcutManager:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetSide:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 560
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mShortcutManager:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetSide:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->getShortcutContentDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 561
    goto :goto_1

    .line 549
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 523
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cancelAllAnimators()V

    .line 524
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleAnimator:Landroid/animation/ValueAnimator;

    .line 525
    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleRadius:F

    .line 526
    iput v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAlpha:I

    .line 527
    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleRadius:F

    .line 528
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onUnlockViewReleased()V

    .line 529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mClearMoveCircle:Z

    .line 531
    iput-boolean v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mActionDown:Z

    .line 532
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->invalidate()V

    .line 533
    return-void
.end method

.method public varargs setAnimatingViews([Landroid/view/View;)V
    .locals 0
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mAnimatingViews:[Landroid/view/View;

    .line 431
    return-void
.end method

.method public setPreviewViewGroup(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 483
    if-nez p1, :cond_0

    .line 484
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    const-string v1, "setPreviewViewGroup, null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :goto_0
    return-void

    .line 487
    :cond_0
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewGroup:Landroid/view/ViewGroup;

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mNeedTochangeParent:Z

    goto :goto_0
.end method

.method public setSViewCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0
    .param p1, "coverView"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .line 476
    return-void
.end method

.method public setShortCutImageResource(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;)V
    .locals 3
    .param p1, "state"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    .prologue
    .line 408
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isZeroProject()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->refreshChildView()V

    .line 427
    :goto_0
    return-void

    .line 414
    :cond_0
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$19;->$SwitchMap$com$sec$android$cover$sviewcover$effect$CoverCircleView$WidgetType:[I

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 425
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShortCutImageResource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 416
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setContactImageResources(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;)V

    goto :goto_0

    .line 419
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setCameraImageResources(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;)V

    goto :goto_0

    .line 422
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->refreshChildView()V

    goto :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setWidgetType(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;)V
    .locals 1
    .param p1, "type"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    .prologue
    .line 254
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CUSTOM:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->checkIsReallyCustom(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 257
    :cond_0
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    .line 258
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->refreshChildView()V

    .line 259
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->updateVisibility()V

    goto :goto_0
.end method

.method public updateShortcutIconOnly(I)V
    .locals 1
    .param p1, "th"    # I

    .prologue
    .line 578
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetSide:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->ordinal()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 579
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->refreshChildView()V

    .line 581
    :cond_0
    return-void
.end method

.method public updateShortcutView(I)V
    .locals 1
    .param p1, "th"    # I

    .prologue
    .line 571
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetSide:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->ordinal()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 575
    :goto_0
    return-void

    .line 574
    :cond_0
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CUSTOM:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setWidgetType(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;)V

    goto :goto_0
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimerWithInterval()V

    .line 350
    return-void
.end method
