.class Lcom/android/systemui/BlockSwipeHelper$1;
.super Ljava/lang/Object;
.source "BlockSwipeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/BlockSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BlockSwipeHelper;

.field final synthetic val$ev:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/android/systemui/BlockSwipeHelper;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/systemui/BlockSwipeHelper$1;->this$0:Lcom/android/systemui/BlockSwipeHelper;

    iput-object p2, p0, Lcom/android/systemui/BlockSwipeHelper$1;->val$ev:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 245
    iget-object v2, p0, Lcom/android/systemui/BlockSwipeHelper$1;->this$0:Lcom/android/systemui/BlockSwipeHelper;

    iget-object v2, v2, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/BlockSwipeHelper$1;->this$0:Lcom/android/systemui/BlockSwipeHelper;

    iget-boolean v2, v2, Lcom/android/systemui/BlockSwipeHelper;->mLongPressSent:Z

    if-nez v2, :cond_0

    .line 246
    iget-object v2, p0, Lcom/android/systemui/BlockSwipeHelper$1;->this$0:Lcom/android/systemui/BlockSwipeHelper;

    iput-boolean v5, v2, Lcom/android/systemui/BlockSwipeHelper;->mLongPressSent:Z

    .line 247
    iget-object v2, p0, Lcom/android/systemui/BlockSwipeHelper$1;->this$0:Lcom/android/systemui/BlockSwipeHelper;

    iget-object v2, v2, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 249
    iget-object v2, p0, Lcom/android/systemui/BlockSwipeHelper$1;->this$0:Lcom/android/systemui/BlockSwipeHelper;

    iget-object v2, v2, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/BlockSwipeHelper$1;->this$0:Lcom/android/systemui/BlockSwipeHelper;

    iget-object v3, v3, Lcom/android/systemui/BlockSwipeHelper;->mTmpPos:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 250
    iget-object v2, p0, Lcom/android/systemui/BlockSwipeHelper$1;->val$ev:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui/BlockSwipeHelper$1;->this$0:Lcom/android/systemui/BlockSwipeHelper;

    iget-object v3, v3, Lcom/android/systemui/BlockSwipeHelper;->mTmpPos:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int v0, v2, v3

    .line 251
    .local v0, "x":I
    iget-object v2, p0, Lcom/android/systemui/BlockSwipeHelper$1;->val$ev:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui/BlockSwipeHelper$1;->this$0:Lcom/android/systemui/BlockSwipeHelper;

    iget-object v3, v3, Lcom/android/systemui/BlockSwipeHelper;->mTmpPos:[I

    aget v3, v3, v5

    sub-int v1, v2, v3

    .line 252
    .local v1, "y":I
    iget-object v2, p0, Lcom/android/systemui/BlockSwipeHelper$1;->this$0:Lcom/android/systemui/BlockSwipeHelper;

    iget-object v2, v2, Lcom/android/systemui/BlockSwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    iget-object v3, p0, Lcom/android/systemui/BlockSwipeHelper$1;->this$0:Lcom/android/systemui/BlockSwipeHelper;

    iget-object v3, v3, Lcom/android/systemui/BlockSwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v2, v3, v0, v1}, Lcom/android/systemui/SwipeHelper$LongPressListener;->onLongPress(Landroid/view/View;II)Z

    .line 254
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_0
    return-void
.end method
