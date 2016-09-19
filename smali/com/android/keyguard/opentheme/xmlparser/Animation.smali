.class public Lcom/android/keyguard/opentheme/xmlparser/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/opentheme/xmlparser/Animation$SinYEvaluatorReverse;,
        Lcom/android/keyguard/opentheme/xmlparser/Animation$SinYEvaluator;,
        Lcom/android/keyguard/opentheme/xmlparser/Animation$SinXEvaluatorReverse;,
        Lcom/android/keyguard/opentheme/xmlparser/Animation$SinXEvaluator;,
        Lcom/android/keyguard/opentheme/xmlparser/Animation$ParabolaEvaluatorReverse;,
        Lcom/android/keyguard/opentheme/xmlparser/Animation$ParabolaEvaluator;
    }
.end annotation


# instance fields
.field public a:F

.field public adjust:F

.field public b:F

.field public backgroundId:I

.field public delay:J

.field public duration:J

.field private elementDuration:J

.field public frameSize:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public from:F

.field public imageView:Landroid/widget/ImageView;

.field public imageViewId:I

.field public imageViewSetId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public interpolator:Landroid/animation/TimeInterpolator;

.field private isAnimationStarted:Z

.field public key:F

.field public length:I

.field public minInterval:I

.field private preSequence:I

.field public r:F

.field public ra:F

.field public rb:F

.field public repeatCount:I

.field public repeatMode:I

.field public scale:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public startIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private startTime:J

.field public to:F

.field public top:I

.field public x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public xOffSet:F

.field public y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public yOffSet:F


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->r:F

    .line 26
    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->a:F

    .line 27
    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->b:F

    .line 29
    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->ra:F

    .line 30
    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->rb:F

    .line 32
    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->key:F

    .line 33
    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->xOffSet:F

    .line 34
    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->yOffSet:F

    .line 36
    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->adjust:F

    .line 38
    iput v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->imageViewId:I

    .line 39
    iput v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->length:I

    .line 41
    iput v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->backgroundId:I

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->imageViewSetId:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->x:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->y:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->scale:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->startIndex:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->frameSize:Ljava/util/ArrayList;

    .line 48
    iput v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->top:I

    .line 49
    iput v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->minInterval:I

    .line 51
    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    .line 52
    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    .line 53
    iput-wide v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    .line 54
    iput-wide v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    .line 55
    iput v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    .line 56
    iput v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    .line 57
    iput-wide v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->startTime:J

    .line 58
    iput-wide v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->elementDuration:J

    .line 59
    iput v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->preSequence:I

    .line 60
    iput-boolean v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->isAnimationStarted:Z

    .line 63
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    .line 517
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/opentheme/xmlparser/Animation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->isAnimationStarted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/opentheme/xmlparser/Animation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/opentheme/xmlparser/Animation;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->isAnimationStarted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/opentheme/xmlparser/Animation;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->startTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/opentheme/xmlparser/Animation;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/opentheme/xmlparser/Animation;
    .param p1, "x1"    # J

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->startTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/opentheme/xmlparser/Animation;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->elementDuration:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/opentheme/xmlparser/Animation;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .prologue
    .line 23
    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->preSequence:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/opentheme/xmlparser/Animation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/opentheme/xmlparser/Animation;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->preSequence:I

    return p1
.end method


# virtual methods
.method public buildAnimation(Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;
    .locals 8
    .param p1, "view"    # Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;
    .param p2, "animation"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v4, "round"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildRoundAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 181
    .local v0, "animator":Landroid/animation/ValueAnimator;
    :goto_0
    iget-wide v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 182
    iget-wide v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 183
    iget v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 184
    iget v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 185
    iget-object v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 187
    return-object v0

    .line 71
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    const-string v4, "ellipse"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildEllipseAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_0

    .line 73
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    const-string v4, "parabola"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildParabolaAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_0

    .line 75
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_2
    const-string v4, "sinX"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildSinXAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_0

    .line 77
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_3
    const-string v4, "sinY"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildSinYAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_0

    .line 79
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_4
    const-string v4, "ImageResource"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 80
    iget v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->length:I

    new-array v2, v4, [I

    .line 81
    .local v2, "imageSetId":[I
    iget v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->length:I

    new-array v3, v4, [I

    .line 82
    .local v3, "valueToAnimate":[I
    iget v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->length:I

    new-array v4, v4, [I

    iput-object v4, p1, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;->mImageSetIds:[I

    .line 83
    iget-wide v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    iget v6, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->length:I

    add-int/lit8 v6, v6, -0x1

    int-to-long v6, v6

    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->elementDuration:J

    .line 85
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->length:I

    if-ge v1, v4, :cond_5

    .line 86
    aput v1, v3, v1

    .line 87
    iget v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->imageViewId:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->imageViewId:I

    aput v4, v2, v1

    .line 88
    iget-object v4, p1, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;->mImageSetIds:[I

    aget v5, v2, v1

    aput v5, v4, v1

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 92
    :cond_5
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 93
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    new-instance v4, Lcom/android/keyguard/opentheme/xmlparser/Animation$1;

    invoke-direct {v4, p0, p1}, Lcom/android/keyguard/opentheme/xmlparser/Animation$1;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 118
    new-instance v4, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;

    invoke-direct {v4, p0, p1}, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/16 :goto_0

    .line 178
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "i":I
    .end local v2    # "imageSetId":[I
    .end local v3    # "valueToAnimate":[I
    :cond_6
    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    aput v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    aput v6, v4, v5

    invoke-static {p1, p2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    goto/16 :goto_0
.end method

.method public buildEllipseAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 8
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    const/high16 v7, 0x43b40000    # 360.0f

    const/high16 v6, 0x40000000    # 2.0f

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 222
    iput-object p1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->imageView:Landroid/widget/ImageView;

    .line 224
    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    div-float/2addr v1, v7

    mul-float/2addr v1, v6

    float-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    .line 225
    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    div-float/2addr v1, v7

    mul-float/2addr v1, v6

    float-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    .line 227
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 229
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/keyguard/opentheme/xmlparser/Animation$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/opentheme/xmlparser/Animation$4;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 246
    return-object v0
.end method

.method public buildParabolaAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 9
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 252
    iput-object p1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->imageView:Landroid/widget/ImageView;

    .line 254
    iget v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    iget v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 256
    new-instance v2, Lcom/android/keyguard/opentheme/xmlparser/Animation$ParabolaEvaluator;

    iget v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->key:F

    iget v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->xOffSet:F

    iget v5, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->yOffSet:F

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/keyguard/opentheme/xmlparser/Animation$ParabolaEvaluator;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;FFF)V

    new-array v3, v8, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 259
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/keyguard/opentheme/xmlparser/Animation$5;

    invoke-direct {v2, p0}, Lcom/android/keyguard/opentheme/xmlparser/Animation$5;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v1, v0

    .line 292
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .local v1, "animator":Landroid/animation/ValueAnimator;
    :goto_0
    return-object v1

    .line 276
    .end local v1    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    new-instance v2, Lcom/android/keyguard/opentheme/xmlparser/Animation$ParabolaEvaluatorReverse;

    iget v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->key:F

    iget v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->xOffSet:F

    iget v5, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->yOffSet:F

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/keyguard/opentheme/xmlparser/Animation$ParabolaEvaluatorReverse;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;FFF)V

    new-array v3, v8, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 280
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/keyguard/opentheme/xmlparser/Animation$6;

    invoke-direct {v2, p0}, Lcom/android/keyguard/opentheme/xmlparser/Animation$6;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v1, v0

    .line 292
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .restart local v1    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_0
.end method

.method public buildRoundAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 8
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    const/high16 v7, 0x43b40000    # 360.0f

    const/high16 v6, 0x40000000    # 2.0f

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 192
    iput-object p1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->imageView:Landroid/widget/ImageView;

    .line 194
    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    div-float/2addr v1, v7

    mul-float/2addr v1, v6

    float-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    .line 195
    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    div-float/2addr v1, v7

    mul-float/2addr v1, v6

    float-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    .line 197
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 199
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/keyguard/opentheme/xmlparser/Animation$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/opentheme/xmlparser/Animation$3;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 216
    return-object v0
.end method

.method public buildSinXAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 11
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 348
    iput-object p1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->imageView:Landroid/widget/ImageView;

    .line 350
    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 352
    new-instance v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$SinXEvaluator;

    iget v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->key:F

    iget v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->adjust:F

    iget v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->xOffSet:F

    iget v5, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->yOffSet:F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/opentheme/xmlparser/Animation$SinXEvaluator;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;FFFF)V

    new-array v1, v10, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v8

    iget v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 355
    .local v6, "animator":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/opentheme/xmlparser/Animation$7;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v7, v6

    .line 388
    .end local v6    # "animator":Landroid/animation/ValueAnimator;
    .local v7, "animator":Landroid/animation/ValueAnimator;
    :goto_0
    return-object v7

    .line 372
    .end local v7    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    new-instance v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$SinXEvaluatorReverse;

    iget v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->key:F

    iget v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->adjust:F

    iget v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->xOffSet:F

    iget v5, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->yOffSet:F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/opentheme/xmlparser/Animation$SinXEvaluatorReverse;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;FFFF)V

    new-array v1, v10, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v8

    iget v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 376
    .restart local v6    # "animator":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$8;

    invoke-direct {v0, p0}, Lcom/android/keyguard/opentheme/xmlparser/Animation$8;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v7, v6

    .line 388
    .end local v6    # "animator":Landroid/animation/ValueAnimator;
    .restart local v7    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_0
.end method

.method public buildSinYAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 11
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 448
    iput-object p1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->imageView:Landroid/widget/ImageView;

    .line 450
    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 451
    new-instance v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$SinYEvaluator;

    iget v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->key:F

    iget v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->adjust:F

    iget v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->yOffSet:F

    iget v5, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->xOffSet:F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/opentheme/xmlparser/Animation$SinYEvaluator;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;FFFF)V

    new-array v1, v10, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v8

    iget v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 454
    .local v6, "animator":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$9;

    invoke-direct {v0, p0}, Lcom/android/keyguard/opentheme/xmlparser/Animation$9;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v7, v6

    .line 485
    .end local v6    # "animator":Landroid/animation/ValueAnimator;
    .local v7, "animator":Landroid/animation/ValueAnimator;
    :goto_0
    return-object v7

    .line 470
    .end local v7    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    new-instance v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$SinYEvaluatorReverse;

    iget v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->key:F

    iget v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->adjust:F

    iget v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->yOffSet:F

    iget v5, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->xOffSet:F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/opentheme/xmlparser/Animation$SinYEvaluatorReverse;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;FFFF)V

    new-array v1, v10, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v8

    iget v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 473
    .restart local v6    # "animator":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$10;

    invoke-direct {v0, p0}, Lcom/android/keyguard/opentheme/xmlparser/Animation$10;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v7, v6

    .line 485
    .end local v6    # "animator":Landroid/animation/ValueAnimator;
    .restart local v7    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_0
.end method
