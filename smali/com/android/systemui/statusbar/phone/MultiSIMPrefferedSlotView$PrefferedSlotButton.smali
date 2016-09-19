.class Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;
.super Ljava/lang/Object;
.source "MultiSIMPrefferedSlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrefferedSlotButton"
.end annotation


# instance fields
.field private mButtonGroup:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mSlotButtonImage:Landroid/widget/ImageView;

.field private mSlotButtonLine2OnlyText:Landroid/widget/TextView;

.field private mSlotButtonLine2WithImage:Landroid/view/ViewGroup;

.field private mSlotButtonTextLine1:Landroid/widget/TextView;

.field private mSlotButtonTextLine2:Landroid/widget/TextView;

.field private mType:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 4
    .param p2, "type"    # Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040057

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 326
    .local v0, "root":Landroid/view/ViewGroup;
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

    .line 327
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    .line 328
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->setViews(Landroid/view/ViewGroup;)V

    .line 329
    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mButtonGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->refreshSlotInfo()V

    return-void
.end method

.method private getDefaultSlotId(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;)I
    .locals 2
    .param p1, "type"    # Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

    .prologue
    .line 367
    sget-object v0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$4;->$SwitchMap$com$android$systemui$statusbar$phone$MultiSIMPrefferedSlotView$ButtonType:[I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 375
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 369
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    # getter for: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultVoiceSimId:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$000(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;)I

    move-result v0

    goto :goto_0

    .line 371
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    # getter for: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultSmsSimId:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$300(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;)I

    move-result v0

    goto :goto_0

    .line 373
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    # getter for: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultDataSimId:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$400(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;)I

    move-result v0

    goto :goto_0

    .line 367
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTitleString(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

    .prologue
    .line 392
    sget-object v0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$4;->$SwitchMap$com$android$systemui$statusbar$phone$MultiSIMPrefferedSlotView$ButtonType:[I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 400
    const-string v0, ""

    :goto_0
    return-object v0

    .line 394
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v1, 0x7f0d04ac

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 396
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v1, 0x7f0d04ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 398
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v1, 0x7f0d04ae

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private refreshSlotInfo()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 346
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->getDefaultSlotId(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;)I

    move-result v0

    .line 347
    .local v0, "slotId":I
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 348
    :cond_0
    const/4 v0, 0x0

    .line 350
    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseCHNOpSimCardManager:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

    sget-object v2, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;->VOICE:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    # getter for: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mPreferedVoice:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$800(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;)I

    move-result v1

    if-nez v1, :cond_2

    .line 351
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mSlotButtonLine2WithImage:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 352
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v3, 0x7f0d04af

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    :goto_0
    return-void

    .line 354
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

    sget-object v2, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;->DATA:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    # getter for: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mMobileDataSettingEnabled:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$1000(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 355
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mSlotButtonLine2WithImage:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 356
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v3, 0x7f0d04b0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 359
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mSlotButtonImage:Landroid/widget/ImageView;

    # getter for: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->QsPrefferedBtnImage:[I
    invoke-static {}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$1300()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    # getter for: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->SimImageIdx:[I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$500(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;)[I

    move-result-object v3

    aget v3, v3, v0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 361
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mSlotButtonTextLine2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    # getter for: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->SimName:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$600(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mSlotButtonLine2WithImage:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public refreshLocale()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mSlotButtonTextLine1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->getTitleString(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    return-void
.end method

.method protected setViews(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mButtonGroup:Landroid/view/ViewGroup;

    .line 333
    const v0, 0x7f0e01b3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mSlotButtonLine2WithImage:Landroid/view/ViewGroup;

    .line 334
    const v0, 0x7f0e01b2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mSlotButtonTextLine1:Landroid/widget/TextView;

    .line 335
    const v0, 0x7f0e01b5

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mSlotButtonTextLine2:Landroid/widget/TextView;

    .line 336
    const v0, 0x7f0e01b4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mSlotButtonImage:Landroid/widget/ImageView;

    .line 337
    const v0, 0x7f0e01b6

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mSlotButtonTextLine1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->getTitleString(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->updateTextColor()V

    .line 342
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->refreshSlotInfo()V

    .line 343
    return-void
.end method

.method public updateTextColor()V
    .locals 4

    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->setEnabled(Z)V

    .line 381
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00fa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 382
    .local v0, "selectedcolor":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mSlotButtonTextLine1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 383
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mSlotButtonTextLine2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 384
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 385
    return-void
.end method
