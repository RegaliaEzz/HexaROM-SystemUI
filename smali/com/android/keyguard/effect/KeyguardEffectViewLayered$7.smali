.class Lcom/android/keyguard/effect/KeyguardEffectViewLayered$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardEffectViewLayered.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->startCancelScaleAnimator(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;


# direct methods
.method constructor <init>(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)V
    .locals 0

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$7;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$7;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mCancelScaleAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$2402(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 1031
    return-void
.end method