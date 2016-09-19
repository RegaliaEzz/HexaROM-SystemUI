.class Lcom/android/systemui/qs/tiles/MobileDataTile$7;
.super Ljava/lang/Object;
.source "MobileDataTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0

    .prologue
    .line 668
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$7;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v2, 0x1

    .line 670
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 671
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$7;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mPopupMsgId:I
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1700(Lcom/android/systemui/qs/tiles/MobileDataTile;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 685
    :goto_0
    return-void

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$7;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mPopupMsgId:I
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1700(Lcom/android/systemui/qs/tiles/MobileDataTile;)I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$7;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mPopupMsgId:I
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1700(Lcom/android/systemui/qs/tiles/MobileDataTile;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 677
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$7;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileDataEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1800(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)V

    goto :goto_0

    .line 678
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$7;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mPopupMsgId:I
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1700(Lcom/android/systemui/qs/tiles/MobileDataTile;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 679
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$7;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileDataEnabled(Z)V
    invoke-static {v0, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1800(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)V

    goto :goto_0

    .line 680
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$7;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mPopupMsgId:I
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1700(Lcom/android/systemui/qs/tiles/MobileDataTile;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 681
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$7;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->setRoamingDataEnabled(Z)V
    invoke-static {v0, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1900(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)V

    goto :goto_0

    .line 683
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$7;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->updateState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$500(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    goto :goto_0
.end method
