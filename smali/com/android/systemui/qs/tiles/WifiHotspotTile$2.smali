.class Lcom/android/systemui/qs/tiles/WifiHotspotTile$2;
.super Lcom/android/systemui/qs/SecureSetting;
.source "WifiHotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/WifiHotspotTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiHotspotTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SecureSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "observedChange"    # Z

    .prologue
    .line 126
    const-string v0, "HotspotTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleValueChanged(shopdemo) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # invokes: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$000(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V

    .line 128
    return-void
.end method