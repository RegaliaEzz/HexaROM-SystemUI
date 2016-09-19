.class Lcom/android/keyguard/opentheme/xmlparser/Animation$2;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 118
    iput-object p1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->this$0:Lcom/android/keyguard/opentheme/xmlparser/Animation;

    iput-object p2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->val$view:Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 123
    .local v0, "animatedValue":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 124
    .local v2, "currentTime":J
    iget-object v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->this$0:Lcom/android/keyguard/opentheme/xmlparser/Animation;

    # getter for: Lcom/android/keyguard/opentheme/xmlparser/Animation;->startTime:J
    invoke-static {v4}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->access$100(Lcom/android/keyguard/opentheme/xmlparser/Animation;)J

    move-result-wide v4

    sub-long v4, v2, v4

    iget-object v6, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->this$0:Lcom/android/keyguard/opentheme/xmlparser/Animation;

    # getter for: Lcom/android/keyguard/opentheme/xmlparser/Animation;->elementDuration:J
    invoke-static {v6}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->access$200(Lcom/android/keyguard/opentheme/xmlparser/Animation;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->this$0:Lcom/android/keyguard/opentheme/xmlparser/Animation;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    # setter for: Lcom/android/keyguard/opentheme/xmlparser/Animation;->startTime:J
    invoke-static {v4, v6, v7}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->access$102(Lcom/android/keyguard/opentheme/xmlparser/Animation;J)J

    .line 129
    iget-object v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->val$view:Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;

    iget-object v4, v4, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_0

    .line 131
    iget-object v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->val$view:Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;

    iget-object v4, v4, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->val$view:Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;

    iget-object v4, v4, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 132
    iget-object v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->val$view:Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;

    iget-object v4, v4, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 139
    :goto_1
    iget-object v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->this$0:Lcom/android/keyguard/opentheme/xmlparser/Animation;

    iget v4, v4, Lcom/android/keyguard/opentheme/xmlparser/Animation;->length:I

    add-int/lit8 v4, v4, -0x2

    if-ge v0, v4, :cond_4

    .line 140
    add-int/lit8 v0, v0, 0x1

    .line 144
    :goto_2
    iget-object v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->val$view:Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;

    iget-object v4, v4, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 146
    move v1, v0

    .line 148
    .local v1, "sequence":I
    new-instance v4, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;

    invoke-direct {v4, p0, v1}, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation$2;I)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 134
    .end local v1    # "sequence":I
    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->this$0:Lcom/android/keyguard/opentheme/xmlparser/Animation;

    # getter for: Lcom/android/keyguard/opentheme/xmlparser/Animation;->isAnimationStarted:Z
    invoke-static {v4}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->access$000(Lcom/android/keyguard/opentheme/xmlparser/Animation;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 135
    iget-object v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->this$0:Lcom/android/keyguard/opentheme/xmlparser/Animation;

    const/4 v5, -0x1

    # setter for: Lcom/android/keyguard/opentheme/xmlparser/Animation;->preSequence:I
    invoke-static {v4, v5}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->access$302(Lcom/android/keyguard/opentheme/xmlparser/Animation;I)I

    .line 137
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->this$0:Lcom/android/keyguard/opentheme/xmlparser/Animation;

    # getter for: Lcom/android/keyguard/opentheme/xmlparser/Animation;->preSequence:I
    invoke-static {v4}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->access$300(Lcom/android/keyguard/opentheme/xmlparser/Animation;)I

    move-result v0

    goto :goto_1

    .line 142
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method
