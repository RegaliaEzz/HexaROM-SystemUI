.class Lcom/android/systemui/statusbar/BaseStatusBar$16$1;
.super Ljava/lang/Thread;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$16;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$16;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$16;)V
    .locals 0

    .prologue
    .line 2793
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$16$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$16;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2797
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$16$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$16;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$16;->val$keyguardShowing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$16$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$16;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$16;->val$afterKeyguardGone:Z

    if-nez v1, :cond_0

    .line 2798
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V

    .line 2806
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2811
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$16$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$16;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$16;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2819
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$16$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$16;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$16;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2820
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$16$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$16;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$16;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v1}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    .line 2821
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$16$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$16;

    iget-object v2, v1, Lcom/android/systemui/statusbar/BaseStatusBar$16;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$16$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$16;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$16;->val$keyguardShowing:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$16$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$16;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$16;->val$afterKeyguardGone:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->overrideActivityPendingAppTransition(Z)V

    .line 2824
    :cond_1
    return-void

    .line 2812
    :catch_0
    move-exception v0

    .line 2815
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending intent failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2821
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 2807
    :catch_1
    move-exception v1

    goto :goto_0
.end method
