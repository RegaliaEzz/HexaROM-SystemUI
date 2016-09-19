.class Lcom/android/systemui/statusbar/phone/DataUsageView$2;
.super Ljava/lang/Object;
.source "DataUsageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/DataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DataUsageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DataUsageView;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DataUsageView$2;->this$0:Lcom/android/systemui/statusbar/phone/DataUsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 113
    const-string v0, "DataUsageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data Usage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DataUsageView$2;->this$0:Lcom/android/systemui/statusbar/phone/DataUsageView;

    # getter for: Lcom/android/systemui/statusbar/phone/DataUsageView;->mDataUsage:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/DataUsageView;->access$600(Lcom/android/systemui/statusbar/phone/DataUsageView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DataUsageView$2;->this$0:Lcom/android/systemui/statusbar/phone/DataUsageView;

    # getter for: Lcom/android/systemui/statusbar/phone/DataUsageView;->mDataUsage:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DataUsageView;->access$600(Lcom/android/systemui/statusbar/phone/DataUsageView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DataUsageView$2;->this$0:Lcom/android/systemui/statusbar/phone/DataUsageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DataUsageView$2;->this$0:Lcom/android/systemui/statusbar/phone/DataUsageView;

    # getter for: Lcom/android/systemui/statusbar/phone/DataUsageView;->mDataUsage:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/DataUsageView;->access$600(Lcom/android/systemui/statusbar/phone/DataUsageView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/DataUsageView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DataUsageView$2;->this$0:Lcom/android/systemui/statusbar/phone/DataUsageView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/DataUsageView;->mThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/DataUsageView;->access$902(Lcom/android/systemui/statusbar/phone/DataUsageView;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 118
    return-void
.end method
