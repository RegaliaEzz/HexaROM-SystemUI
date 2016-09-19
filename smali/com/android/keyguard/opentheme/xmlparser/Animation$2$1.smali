.class Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;
.super Landroid/os/AsyncTask;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field final synthetic this$1:Lcom/android/keyguard/opentheme/xmlparser/Animation$2;

.field final synthetic val$sequence:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/opentheme/xmlparser/Animation$2;I)V
    .locals 1

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;->this$1:Lcom/android/keyguard/opentheme/xmlparser/Animation$2;

    iput p2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;->val$sequence:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 148
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;->this$1:Lcom/android/keyguard/opentheme/xmlparser/Animation$2;

    iget-object v0, v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->this$0:Lcom/android/keyguard/opentheme/xmlparser/Animation;

    # getter for: Lcom/android/keyguard/opentheme/xmlparser/Animation;->isAnimationStarted:Z
    invoke-static {v0}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->access$000(Lcom/android/keyguard/opentheme/xmlparser/Animation;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;->this$1:Lcom/android/keyguard/opentheme/xmlparser/Animation$2;

    iget-object v0, v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->val$view:Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;->this$1:Lcom/android/keyguard/opentheme/xmlparser/Animation$2;

    iget-object v0, v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->val$view:Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;

    iget-object v0, v0, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;->mApkContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;->this$1:Lcom/android/keyguard/opentheme/xmlparser/Animation$2;

    iget-object v1, v1, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->val$view:Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;

    iget-object v1, v1, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;->mImageSetIds:[I

    iget v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;->val$sequence:I

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;->bitmap:Landroid/graphics/Bitmap;

    .line 157
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 148
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "params"    # Ljava/lang/Void;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;->this$1:Lcom/android/keyguard/opentheme/xmlparser/Animation$2;

    iget-object v0, v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->this$0:Lcom/android/keyguard/opentheme/xmlparser/Animation;

    # getter for: Lcom/android/keyguard/opentheme/xmlparser/Animation;->isAnimationStarted:Z
    invoke-static {v0}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->access$000(Lcom/android/keyguard/opentheme/xmlparser/Animation;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;->this$1:Lcom/android/keyguard/opentheme/xmlparser/Animation$2;

    iget-object v0, v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->val$view:Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;->this$1:Lcom/android/keyguard/opentheme/xmlparser/Animation$2;

    iget-object v0, v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->val$view:Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;->this$1:Lcom/android/keyguard/opentheme/xmlparser/Animation$2;

    iget-object v0, v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->val$view:Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;

    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;->this$1:Lcom/android/keyguard/opentheme/xmlparser/Animation$2;

    iget-object v0, v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->val$view:Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;

    iget-object v0, v0, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;->mUsed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;->this$1:Lcom/android/keyguard/opentheme/xmlparser/Animation$2;

    iget-object v0, v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->val$view:Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;

    iget-object v0, v0, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;->mUsed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;->this$1:Lcom/android/keyguard/opentheme/xmlparser/Animation$2;

    iget-object v0, v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->val$view:Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;

    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;->bitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;->mUsed:Landroid/graphics/Bitmap;

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;->bitmap:Landroid/graphics/Bitmap;

    .line 169
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;->this$1:Lcom/android/keyguard/opentheme/xmlparser/Animation$2;

    iget-object v0, v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->this$0:Lcom/android/keyguard/opentheme/xmlparser/Animation;

    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;->val$sequence:I

    # setter for: Lcom/android/keyguard/opentheme/xmlparser/Animation;->preSequence:I
    invoke-static {v0, v1}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->access$302(Lcom/android/keyguard/opentheme/xmlparser/Animation;I)I

    .line 170
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;->this$1:Lcom/android/keyguard/opentheme/xmlparser/Animation$2;

    iget-object v0, v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;->val$view:Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;

    iget-object v0, v0, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;->mQueue:Ljava/util/LinkedList;

    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$2$1;->val$sequence:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 172
    :cond_1
    return-void
.end method
