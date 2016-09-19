.class Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapterBridge;
.super Landroid/database/DataSetObserver;
.source "QuickConnectSoundPathView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QuickConnectSoundPathView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceListAdapterBridge"
.end annotation


# instance fields
.field private final mAdapter:Landroid/widget/BaseAdapter;

.field private mReleased:Z

.field private final mViewGroup:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;)V
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 651
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 652
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapterBridge;->mViewGroup:Ljava/lang/ref/WeakReference;

    .line 653
    iput-object p2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapterBridge;->mAdapter:Landroid/widget/BaseAdapter;

    .line 654
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapterBridge;->mReleased:Z

    .line 655
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapterBridge;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p0}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 656
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapterBridge;->refresh()V

    .line 657
    return-void
.end method

.method public static link(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;)V
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 648
    new-instance v0, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapterBridge;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapterBridge;-><init>(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;)V

    .line 649
    return-void
.end method

.method private refresh()V
    .locals 9

    .prologue
    .line 660
    iget-boolean v8, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapterBridge;->mReleased:Z

    if-eqz v8, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapterBridge;->mViewGroup:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 664
    .local v7, "viewGroup":Landroid/view/ViewGroup;
    if-nez v7, :cond_2

    .line 665
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapterBridge;->release()V

    goto :goto_0

    .line 668
    :cond_2
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 669
    .local v2, "childCount":I
    iget-object v8, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapterBridge;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v8}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    .line 670
    .local v1, "adapterCount":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 671
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 672
    if-ge v3, v1, :cond_6

    .line 673
    const/4 v6, 0x0

    .line 674
    .local v6, "oldView":Landroid/view/View;
    if-ge v3, v2, :cond_3

    .line 675
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 677
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapterBridge;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v8, v3, v6, v7}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 678
    .local v5, "newView":Landroid/view/View;
    if-nez v6, :cond_5

    .line 680
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 671
    .end local v5    # "newView":Landroid/view/View;
    .end local v6    # "oldView":Landroid/view/View;
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 681
    .restart local v5    # "newView":Landroid/view/View;
    .restart local v6    # "oldView":Landroid/view/View;
    :cond_5
    if-eq v6, v5, :cond_4

    .line 683
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 684
    invoke-virtual {v7, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 687
    .end local v5    # "newView":Landroid/view/View;
    .end local v6    # "oldView":Landroid/view/View;
    :cond_6
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .line 688
    .local v4, "lastIndex":I
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_2
.end method

.method private release()V
    .locals 1

    .prologue
    .line 704
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapterBridge;->mReleased:Z

    if-nez v0, :cond_0

    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapterBridge;->mReleased:Z

    .line 706
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapterBridge;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p0}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 708
    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 695
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapterBridge;->refresh()V

    .line 696
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 700
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapterBridge;->release()V

    .line 701
    return-void
.end method
