.class Lcom/sec/android/cover/widget/PagedView$2;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/widget/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/widget/PagedView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/widget/PagedView;)V
    .locals 0

    .prologue
    .line 2081
    iput-object p1, p0, Lcom/sec/android/cover/widget/PagedView$2;->this$0:Lcom/sec/android/cover/widget/PagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2084
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView$2;->this$0:Lcom/sec/android/cover/widget/PagedView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->hideScrollingIndicator(Z)V

    .line 2085
    return-void
.end method
