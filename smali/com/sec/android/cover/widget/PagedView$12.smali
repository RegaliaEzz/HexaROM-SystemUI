.class Lcom/sec/android/cover/widget/PagedView$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/widget/PagedView;->onDropToDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/widget/PagedView;

.field final synthetic val$onAnimationEndRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/widget/PagedView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 2687
    iput-object p1, p0, Lcom/sec/android/cover/widget/PagedView$12;->this$0:Lcom/sec/android/cover/widget/PagedView;

    iput-object p2, p0, Lcom/sec/android/cover/widget/PagedView$12;->val$onAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2689
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView$12;->val$onAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2690
    return-void
.end method
