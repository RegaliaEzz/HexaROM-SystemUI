.class public Lcom/android/systemui/qs/QSContainer;
.super Landroid/widget/FrameLayout;
.source "QSContainer.java"


# instance fields
.field private mHScrollView:Landroid/widget/HorizontalScrollView;

.field private mHeightOverride:I

.field private mOldLayoutDirection:I

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQsMultiLine:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    .line 40
    return-void
.end method

.method private updateBottom()V
    .locals 3

    .prologue
    .line 94
    iget v1, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    .line 95
    .local v0, "height":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSContainer;->setBottom(I)V

    .line 96
    return-void

    .line 94
    .end local v0    # "height":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getDesiredHeight()I
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isClosingDetail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getGridHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 45
    const v0, 0x7f0e01b9

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 46
    const v0, 0x7f0e01b8

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHScrollView:Landroid/widget/HorizontalScrollView;

    .line 47
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 51
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 52
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateBottom()V

    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mQsMultiLine:Z

    .line 55
    .local v0, "oldQsMultiLine":Z
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->isMultiLine()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mQsMultiLine:Z

    .line 56
    iget v1, p0, Lcom/android/systemui/qs/QSContainer;->mOldLayoutDirection:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mQsMultiLine:Z

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mHScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getRight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 61
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 65
    iget v0, p0, Lcom/android/systemui/qs/QSContainer;->mOldLayoutDirection:I

    if-eq p1, v0, :cond_0

    .line 66
    iput p1, p0, Lcom/android/systemui/qs/QSContainer;->mOldLayoutDirection:I

    .line 68
    :cond_0
    return-void
.end method

.method public setHeightOverride(I)V
    .locals 0
    .param p1, "heightOverride"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateBottom()V

    .line 79
    return-void
.end method
