.class Lcom/sec/android/cover/widget/PagedView$10;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/widget/PagedView;->onFlingToDelete(Landroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCount:I

.field private mOffset:F

.field private mStartTime:J

.field final synthetic this$0:Lcom/sec/android/cover/widget/PagedView;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/sec/android/cover/widget/PagedView;J)V
    .locals 2

    .prologue
    .line 2593
    iput-object p1, p0, Lcom/sec/android/cover/widget/PagedView$10;->this$0:Lcom/sec/android/cover/widget/PagedView;

    iput-wide p2, p0, Lcom/sec/android/cover/widget/PagedView$10;->val$startTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2594
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView$10;->mCount:I

    .line 2598
    iget-wide v0, p0, Lcom/sec/android/cover/widget/PagedView$10;->val$startTime:J

    iput-wide v0, p0, Lcom/sec/android/cover/widget/PagedView$10;->mStartTime:J

    .line 2599
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .param p1, "t"    # F

    .prologue
    .line 2603
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView$10;->mCount:I

    if-gez v0, :cond_1

    .line 2604
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView$10;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView$10;->mCount:I

    .line 2611
    :cond_0
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView$10;->mOffset:F

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    .line 2605
    :cond_1
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView$10;->mCount:I

    if-nez v0, :cond_0

    .line 2606
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/cover/widget/PagedView$10;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView$10;->this$0:Lcom/sec/android/cover/widget/PagedView;

    # getter for: Lcom/sec/android/cover/widget/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I
    invoke-static {v2}, Lcom/sec/android/cover/widget/PagedView;->access$900(Lcom/sec/android/cover/widget/PagedView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView$10;->mOffset:F

    .line 2609
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView$10;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView$10;->mCount:I

    goto :goto_0
.end method
