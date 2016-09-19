.class Lcom/android/systemui/power/PowerNotificationWarnings$8;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$8;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$8;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$8;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mFlashOverHeated:Z
    invoke-static {v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1300(Lcom/android/systemui/power/PowerNotificationWarnings;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->showFlashHighTemperatureWarning(ZZ)V

    .line 1041
    return-void
.end method
