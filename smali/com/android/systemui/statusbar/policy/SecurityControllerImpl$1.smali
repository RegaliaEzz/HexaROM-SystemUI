.class Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SecurityControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 247
    # getter for: Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SecurityController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAvailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->updateState()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->fireCallbacks()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    .line 250
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 256
    # getter for: Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SecurityController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->updateState()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->fireCallbacks()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    .line 259
    return-void
.end method
