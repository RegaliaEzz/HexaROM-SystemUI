.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardCircleAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$10;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$10;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1502(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 294
    return-void
.end method
