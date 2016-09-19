.class public final Lcom/android/systemui/qs/QSTile$H;
.super Landroid/os/Handler;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "H"
.end annotation


# static fields
.field private static final CLEAR_STATE:I = 0xb

.field private static final CLICK:I = 0x2

.field private static final DESTROY:I = 0xa

.field private static final LONG_CLICK:I = 0x4

.field private static final REFRESH_STATE:I = 0x5

.field private static final SCAN_STATE_CHANGED:I = 0x9

.field private static final SECONDARY_CLICK:I = 0x3

.field private static final SET_CALLBACK:I = 0x1

.field private static final SHOW_DETAIL:I = 0x6

.field private static final TOGGLE_STATE_CHANGED:I = 0x8

.field private static final USER_SWITCH:I = 0x7


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSTile;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 322
    .local p0, "this":Lcom/android/systemui/qs/QSTile$H;, "Lcom/android/systemui/qs/QSTile<TTState;>.H;"
    iput-object p1, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    .line 323
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 324
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSTile;Landroid/os/Looper;Lcom/android/systemui/qs/QSTile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/systemui/qs/QSTile$1;

    .prologue
    .line 309
    .local p0, "this":Lcom/android/systemui/qs/QSTile$H;, "Lcom/android/systemui/qs/QSTile<TTState;>.H;"
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSTile$H;-><init>(Lcom/android/systemui/qs/QSTile;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/QSTile$H;, "Lcom/android/systemui/qs/QSTile<TTState;>.H;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 328
    const/4 v1, 0x0

    .line 330
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v5, v3, :cond_0

    .line 331
    const-string v1, "handleSetCallback"

    .line 332
    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/qs/QSTile$Callback;

    # invokes: Lcom/android/systemui/qs/QSTile;->handleSetCallback(Lcom/android/systemui/qs/QSTile$Callback;)V
    invoke-static {v4, v3}, Lcom/android/systemui/qs/QSTile;->access$100(Lcom/android/systemui/qs/QSTile;Lcom/android/systemui/qs/QSTile$Callback;)V

    .line 372
    :goto_0
    return-void

    .line 333
    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 334
    const-string v1, "handleClick"

    .line 335
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    const/4 v4, 0x1

    # setter for: Lcom/android/systemui/qs/QSTile;->mAnnounceNextStateChange:Z
    invoke-static {v3, v4}, Lcom/android/systemui/qs/QSTile;->access$202(Lcom/android/systemui/qs/QSTile;Z)Z

    .line 336
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile;->handleClick()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 367
    :catch_0
    move-exception v2

    .line 368
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "error":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v3, v3, Lcom/android/systemui/qs/QSTile;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v3, v3, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3, v0, v2}, Lcom/android/systemui/qs/QSTile$Host;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 337
    .end local v0    # "error":Ljava/lang/String;
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 338
    const-string v1, "handleSecondaryClick"

    .line 339
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile;->handleSecondaryClick()V

    goto :goto_0

    .line 340
    :cond_2
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 341
    const-string v1, "handleLongClick"

    .line 342
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile;->handleLongClick()V

    goto :goto_0

    .line 343
    :cond_3
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_4

    .line 344
    const-string v1, "handleRefreshState"

    .line 345
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSTile;->handleRefreshState(Ljava/lang/Object;)V

    goto :goto_0

    .line 346
    :cond_4
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_6

    .line 347
    const-string v1, "handleShowDetail"

    .line 348
    iget-object v5, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_5

    :goto_1
    # invokes: Lcom/android/systemui/qs/QSTile;->handleShowDetail(Z)V
    invoke-static {v5, v3}, Lcom/android/systemui/qs/QSTile;->access$300(Lcom/android/systemui/qs/QSTile;Z)V

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_1

    .line 349
    :cond_6
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_7

    .line 350
    const-string v1, "handleUserSwitch"

    .line 351
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSTile;->handleUserSwitch(I)V

    goto/16 :goto_0

    .line 352
    :cond_7
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_9

    .line 353
    const-string v1, "handleToggleStateChanged"

    .line 354
    iget-object v5, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_8

    :goto_2
    # invokes: Lcom/android/systemui/qs/QSTile;->handleToggleStateChanged(Z)V
    invoke-static {v5, v3}, Lcom/android/systemui/qs/QSTile;->access$400(Lcom/android/systemui/qs/QSTile;Z)V

    goto/16 :goto_0

    :cond_8
    move v3, v4

    goto :goto_2

    .line 355
    :cond_9
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_b

    .line 356
    const-string v1, "handleScanStateChanged"

    .line 357
    iget-object v5, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_a

    :goto_3
    # invokes: Lcom/android/systemui/qs/QSTile;->handleScanStateChanged(Z)V
    invoke-static {v5, v3}, Lcom/android/systemui/qs/QSTile;->access$500(Lcom/android/systemui/qs/QSTile;Z)V

    goto/16 :goto_0

    :cond_a
    move v3, v4

    goto :goto_3

    .line 358
    :cond_b
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_c

    .line 359
    const-string v1, "handleDestroy"

    .line 360
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    goto/16 :goto_0

    .line 361
    :cond_c
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xb

    if-ne v3, v4, :cond_d

    .line 362
    const-string v1, "handleClearState"

    .line 363
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile;->handleClearState()V

    goto/16 :goto_0

    .line 365
    :cond_d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
.end method
