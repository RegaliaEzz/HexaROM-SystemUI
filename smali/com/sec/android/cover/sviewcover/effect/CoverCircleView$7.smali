.class Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CoverCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V
    .locals 0

    .prologue
    .line 755
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$7;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 758
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$7;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$802(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 759
    return-void
.end method
