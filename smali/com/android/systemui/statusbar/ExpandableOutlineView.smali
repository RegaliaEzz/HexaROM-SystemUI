.class public abstract Lcom/android/systemui/statusbar/ExpandableOutlineView;
.super Lcom/android/systemui/statusbar/ExpandableView;
.source "ExpandableOutlineView.java"


# instance fields
.field private mCustomOutline:Z

.field private mOutlineAlpha:F

.field private final mOutlineRect:Landroid/graphics/Rect;

.field protected final mRoundedRectCornerRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineAlpha:F

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0193

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mRoundedRectCornerRadius:I

    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;-><init>(Lcom/android/systemui/statusbar/ExpandableOutlineView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableOutlineView;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableOutlineView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/ExpandableOutlineView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableOutlineView;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineAlpha:F

    return v0
.end method


# virtual methods
.method public setActualHeight(IZ)V
    .locals 0
    .param p1, "actualHeight"    # I
    .param p2, "notifyListeners"    # Z

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    .line 63
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    .line 69
    return-void
.end method

.method protected setOutlineAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 72
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineAlpha:F

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    .line 74
    return-void
.end method

.method protected setOutlineRect(FFFF)V
    .locals 5
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setClipToOutline(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    float-to-int v3, p3

    float-to-int v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    .line 97
    return-void
.end method

.method protected setOutlineRect(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v0, 0x0

    .line 77
    if-eqz p1, :cond_0

    .line 78
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setOutlineRect(FFFF)V

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setClipToOutline(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    goto :goto_0
.end method
