.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$25;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardCircleAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->startHintAnimationPhase1(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

.field final synthetic val$onFinishedListener:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$25;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$25;->val$onFinishedListener:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1015
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$25;->mCancelled:Z

    .line 1016
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1020
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$25;->mCancelled:Z

    if-eqz v0, :cond_1

    .line 1021
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$25;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHintAnimation:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1023
    const-string v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startHintAnimationPhase1 End: ,mRight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$25;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$25;->val$onFinishedListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$25;->val$onFinishedListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1031
    :cond_0
    :goto_0
    return-void

    .line 1029
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$25;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$25;->val$onFinishedListener:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->startHintAnimationPhase2(Ljava/lang/Runnable;)V

    goto :goto_0
.end method