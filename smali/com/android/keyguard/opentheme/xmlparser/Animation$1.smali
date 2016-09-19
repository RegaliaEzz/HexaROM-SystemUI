.class Lcom/android/keyguard/opentheme/xmlparser/Animation$1;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/opentheme/xmlparser/Animation;

.field final synthetic val$view:Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$1;->this$0:Lcom/android/keyguard/opentheme/xmlparser/Animation;

    iput-object p2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$1;->val$view:Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 116
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$1;->this$0:Lcom/android/keyguard/opentheme/xmlparser/Animation;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/opentheme/xmlparser/Animation;->isAnimationStarted:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->access$002(Lcom/android/keyguard/opentheme/xmlparser/Animation;Z)Z

    .line 109
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$1;->this$0:Lcom/android/keyguard/opentheme/xmlparser/Animation;

    const-wide/16 v2, 0x0

    # setter for: Lcom/android/keyguard/opentheme/xmlparser/Animation;->startTime:J
    invoke-static {v0, v2, v3}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->access$102(Lcom/android/keyguard/opentheme/xmlparser/Animation;J)J

    .line 110
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$1;->val$view:Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;

    iget-object v0, v0, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 111
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 104
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$1;->this$0:Lcom/android/keyguard/opentheme/xmlparser/Animation;

    const/4 v1, 0x1

    # setter for: Lcom/android/keyguard/opentheme/xmlparser/Animation;->isAnimationStarted:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->access$002(Lcom/android/keyguard/opentheme/xmlparser/Animation;Z)Z

    .line 98
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$1;->val$view:Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;

    iget-object v0, v0, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 99
    return-void
.end method
