.class Lcom/android/systemui/power/PowerNotificationWarnings$2;
.super Landroid/database/ContentObserver;
.source "PowerNotificationWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$2;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 549
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$2;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$2;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$200(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "low_power_back_data_off"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    # setter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverDataRestricted:Z
    invoke-static {v1, v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$602(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z

    .line 550
    const-string v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDataRestrictObserver - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$2;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverDataRestricted:Z
    invoke-static {v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$600(Lcom/android/systemui/power/PowerNotificationWarnings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$2;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z
    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$700(Lcom/android/systemui/power/PowerNotificationWarnings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$2;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # invokes: Lcom/android/systemui/power/PowerNotificationWarnings;->showSaverNotification()V
    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$800(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 553
    :cond_1
    return-void
.end method
