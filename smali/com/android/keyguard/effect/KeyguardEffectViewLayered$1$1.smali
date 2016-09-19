.class Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;
.super Landroid/os/AsyncTask;
.source "KeyguardEffectViewLayered.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->onPostExecute(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;",
        "Ljava/lang/Void;",
        "Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;


# direct methods
.method constructor <init>(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;
    .locals 36
    .param p1, "param"    # [Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    .prologue
    .line 242
    const/16 v30, 0x0

    aget-object v6, p1, v30

    .line 245
    .local v6, "bitmapImage":Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;
    iget v0, v6, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->type:I

    move/from16 v30, v0

    if-nez v30, :cond_9

    .line 247
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    iget-object v0, v6, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->id_path_color:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "drawable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v33, v0

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mContext:Landroid/content/Context;
    invoke-static/range {v33 .. v33}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v30 .. v33}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 249
    .local v9, "drawableID":I
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 250
    .local v15, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v30, 0x0

    move/from16 v0, v30

    iput-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v0, v9, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v6, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v9    # "drawableID":I
    .end local v15    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    iget v0, v6, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->type:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_8

    .line 281
    iget-object v0, v6, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v31, v0

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F
    invoke-static/range {v31 .. v31}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)F

    move-result v31

    mul-float v21, v30, v31

    .line 282
    .local v21, "scaledWidth":F
    iget-object v0, v6, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v31, v0

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F
    invoke-static/range {v31 .. v31}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)F

    move-result v31

    mul-float v20, v30, v31

    .line 283
    .local v20, "scaledHeight":F
    iget v0, v6, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->originX:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v31, v0

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F
    invoke-static/range {v31 .. v31}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)F

    move-result v31

    mul-float v22, v30, v31

    .line 284
    .local v22, "scaledX":F
    iget v0, v6, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->originY:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v31, v0

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F
    invoke-static/range {v31 .. v31}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)F

    move-result v31

    mul-float v23, v30, v31

    .line 285
    .local v23, "scaledY":F
    const/4 v14, 0x0

    .local v14, "left":F
    const/16 v27, 0x0

    .local v27, "top":F
    move/from16 v19, v21

    .local v19, "right":F
    move/from16 v7, v20

    .line 287
    .local v7, "bottom":F
    const/high16 v29, 0x3f800000    # 1.0f

    .line 288
    .local v29, "trimScale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F
    invoke-static/range {v30 .. v30}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)F

    move-result v25

    .line 289
    .local v25, "targetScale":F
    new-instance v24, Landroid/graphics/Rect;

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v32, v0

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mMatricsWidth:I
    invoke-static/range {v32 .. v32}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$500(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v33, v0

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mMatricsHeight:I
    invoke-static/range {v33 .. v33}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$600(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)I

    move-result v33

    move-object/from16 v0, v24

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 292
    .local v24, "screenRect":Landroid/graphics/Rect;
    new-instance v18, Landroid/graphics/RectF;

    add-float v30, v22, v21

    add-float v31, v23, v20

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 294
    .local v18, "origImageRect":Landroid/graphics/RectF;
    new-instance v13, Landroid/graphics/RectF;

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 295
    .local v13, "imageRect":Landroid/graphics/RectF;
    new-instance v28, Landroid/graphics/RectF;

    const/high16 v30, -0x40800000    # -1.0f

    const/high16 v31, -0x40800000    # -1.0f

    const/high16 v32, -0x40800000    # -1.0f

    const/high16 v33, -0x40800000    # -1.0f

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 296
    .local v28, "trimRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    move-object/from16 v2, v24

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateTrimRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;
    invoke-static {v0, v13, v1, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$700(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v28

    .line 304
    invoke-virtual {v6}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getRate()F

    move-result v30

    const/high16 v31, 0x3f800000    # 1.0f

    cmpl-float v30, v30, v31

    if-nez v30, :cond_1

    invoke-virtual {v6}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getScale()F

    move-result v30

    const/high16 v31, 0x3f800000    # 1.0f

    cmpl-float v30, v30, v31

    if-eqz v30, :cond_2

    .line 305
    :cond_1
    new-instance v26, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;-><init>(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)V

    .line 306
    .local v26, "temp":Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;
    invoke-virtual {v6}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->init()V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F
    invoke-static/range {v30 .. v30}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)F

    move-result v30

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v32, v0

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mFirstBorder:I
    invoke-static/range {v32 .. v32}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$800(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v31, v31, v32

    invoke-virtual {v6}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getScale()F

    move-result v32

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v32, v32, v33

    mul-float v31, v31, v32

    add-float v25, v30, v31

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F
    invoke-static/range {v30 .. v30}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)F

    move-result v30

    div-float v29, v25, v30

    .line 312
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v30, v0

    mul-float v30, v30, v29

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v31, v0

    mul-float v31, v31, v29

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->round(F)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    mul-float v32, v32, v29

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->round(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v33, v0

    mul-float v33, v33, v29

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->round(F)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 317
    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->set(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    move/from16 v2, v31

    move/from16 v3, v32

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateTranslate(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;FF)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$900(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;FF)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    move/from16 v2, v31

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateScale(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;F)V
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1000(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;F)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v31

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentTranslateX(Landroid/graphics/Matrix;)F
    invoke-static/range {v30 .. v31}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1100(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v14, v0

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v31

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentTranslateY(Landroid/graphics/Matrix;)F
    invoke-static/range {v30 .. v31}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1200(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v27, v0

    .line 322
    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getWidth()F

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v31, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v32

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentScaleX(Landroid/graphics/Matrix;)F
    invoke-static/range {v31 .. v32}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1300(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v31

    mul-float v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v19, v14, v30

    .line 323
    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getHeight()F

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v31, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v32

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentScaleY(Landroid/graphics/Matrix;)F
    invoke-static/range {v31 .. v32}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v31

    mul-float v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v7, v27, v30

    .line 324
    move/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v13, v14, v0, v1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    move-object/from16 v2, v24

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateTrimRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;
    invoke-static {v0, v13, v1, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$700(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v28

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    new-instance v31, Landroid/graphics/RectF;

    move-object/from16 v0, v31

    move/from16 v1, v27

    move/from16 v2, v19

    invoke-direct {v0, v14, v1, v2, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    # setter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->imageRectLeft:Landroid/graphics/RectF;
    invoke-static/range {v30 .. v31}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1502(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 331
    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->set(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    move/from16 v2, v31

    move/from16 v3, v32

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateTranslate(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;FF)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$900(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;FF)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    move/from16 v2, v31

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateScale(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;F)V
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1000(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;F)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v31

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentTranslateX(Landroid/graphics/Matrix;)F
    invoke-static/range {v30 .. v31}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1100(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v14, v0

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v31

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentTranslateY(Landroid/graphics/Matrix;)F
    invoke-static/range {v30 .. v31}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1200(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v27, v0

    .line 336
    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getWidth()F

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v31, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v32

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentScaleX(Landroid/graphics/Matrix;)F
    invoke-static/range {v31 .. v32}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1300(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v31

    mul-float v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v19, v14, v30

    .line 337
    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getHeight()F

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v31, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v32

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentScaleY(Landroid/graphics/Matrix;)F
    invoke-static/range {v31 .. v32}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v31

    mul-float v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v7, v27, v30

    .line 338
    move/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v13, v14, v0, v1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    move-object/from16 v2, v24

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateTrimRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;
    invoke-static {v0, v13, v1, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$700(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v28

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    new-instance v31, Landroid/graphics/RectF;

    move-object/from16 v0, v31

    move/from16 v1, v27

    move/from16 v2, v19

    invoke-direct {v0, v14, v1, v2, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    # setter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->imageRectRight:Landroid/graphics/RectF;
    invoke-static/range {v30 .. v31}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1602(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F
    invoke-static/range {v30 .. v30}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)F

    move-result v30

    div-float v29, v30, v25

    .line 346
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v30, v0

    mul-float v30, v30, v29

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v31, v0

    mul-float v31, v31, v29

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->round(F)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    mul-float v32, v32, v29

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->round(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v33, v0

    mul-float v33, v33, v29

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->round(F)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F
    invoke-static/range {v30 .. v30}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)F

    move-result v30

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v32, v0

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mFirstBorder:I
    invoke-static/range {v32 .. v32}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$800(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v31, v31, v32

    invoke-virtual {v6}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getScale()F

    move-result v32

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v32, v32, v33

    mul-float v31, v31, v32

    add-float v25, v30, v31

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F
    invoke-static/range {v30 .. v30}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)F

    move-result v30

    div-float v29, v25, v30

    .line 354
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v30, v0

    mul-float v30, v30, v29

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v31, v0

    mul-float v31, v31, v29

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->round(F)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    mul-float v32, v32, v29

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->round(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v33, v0

    mul-float v33, v33, v29

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->round(F)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 363
    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->set(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    move/from16 v2, v31

    move/from16 v3, v32

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateTranslate(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;FF)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$900(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;FF)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    move/from16 v2, v31

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateScale(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;F)V
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1000(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;F)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v31

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentTranslateX(Landroid/graphics/Matrix;)F
    invoke-static/range {v30 .. v31}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1100(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v14, v0

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v31

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentTranslateY(Landroid/graphics/Matrix;)F
    invoke-static/range {v30 .. v31}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1200(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v27, v0

    .line 368
    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getWidth()F

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v31, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v32

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentScaleX(Landroid/graphics/Matrix;)F
    invoke-static/range {v31 .. v32}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1300(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v31

    mul-float v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v19, v14, v30

    .line 369
    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getHeight()F

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v31, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v32

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentScaleY(Landroid/graphics/Matrix;)F
    invoke-static/range {v31 .. v32}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v31

    mul-float v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v7, v27, v30

    .line 370
    move/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v13, v14, v0, v1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    move-object/from16 v2, v24

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateTrimRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;
    invoke-static {v0, v13, v1, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$700(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v28

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    new-instance v31, Landroid/graphics/RectF;

    move-object/from16 v0, v31

    move/from16 v1, v27

    move/from16 v2, v19

    invoke-direct {v0, v14, v1, v2, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    # setter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->imageRectTop:Landroid/graphics/RectF;
    invoke-static/range {v30 .. v31}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1702(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 377
    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->set(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    move/from16 v2, v31

    move/from16 v3, v32

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateTranslate(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;FF)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$900(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;FF)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    move/from16 v2, v31

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateScale(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;F)V
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1000(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;F)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v31

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentTranslateX(Landroid/graphics/Matrix;)F
    invoke-static/range {v30 .. v31}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1100(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v14, v0

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v31

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentTranslateY(Landroid/graphics/Matrix;)F
    invoke-static/range {v30 .. v31}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1200(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v27, v0

    .line 382
    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getWidth()F

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v31, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v32

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentScaleX(Landroid/graphics/Matrix;)F
    invoke-static/range {v31 .. v32}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1300(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v31

    mul-float v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v19, v14, v30

    .line 383
    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getHeight()F

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v31, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v32

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentScaleY(Landroid/graphics/Matrix;)F
    invoke-static/range {v31 .. v32}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v31

    mul-float v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v7, v27, v30

    .line 384
    move/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v13, v14, v0, v1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    move-object/from16 v2, v24

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateTrimRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;
    invoke-static {v0, v13, v1, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$700(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v28

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    new-instance v31, Landroid/graphics/RectF;

    move-object/from16 v0, v31

    move/from16 v1, v27

    move/from16 v2, v19

    invoke-direct {v0, v14, v1, v2, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    # setter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->imageRectBottom:Landroid/graphics/RectF;
    invoke-static/range {v30 .. v31}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1802(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F
    invoke-static/range {v30 .. v30}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)F

    move-result v30

    div-float v29, v30, v25

    .line 392
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v30, v0

    mul-float v30, v30, v29

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v31, v0

    mul-float v31, v31, v29

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->round(F)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    mul-float v32, v32, v29

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->round(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v33, v0

    mul-float v33, v33, v29

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->round(F)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 397
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v30

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    add-double v30, v30, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    .line 399
    .local v16, "maxDistance":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F
    invoke-static/range {v30 .. v30}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)F

    move-result v30

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v32, v0

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mFirstBorder:I
    invoke-static/range {v32 .. v32}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$800(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)I

    move-result v32

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    div-double v32, v16, v32

    invoke-virtual {v6}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getScale()F

    move-result v34

    const/high16 v35, 0x3f800000    # 1.0f

    sub-float v34, v34, v35

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    mul-double v32, v32, v34

    add-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v25, v0

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F
    invoke-static/range {v30 .. v30}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)F

    move-result v30

    div-float v29, v25, v30

    .line 402
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v30, v0

    mul-float v30, v30, v29

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v31, v0

    mul-float v31, v31, v29

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->round(F)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    mul-float v32, v32, v29

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->round(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v33, v0

    mul-float v33, v33, v29

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->round(F)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 407
    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->set(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    move/from16 v2, v31

    move/from16 v3, v32

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateTranslate(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;FF)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$900(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;FF)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    move/from16 v2, v31

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateScale(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;F)V
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1000(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;F)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v31

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentTranslateX(Landroid/graphics/Matrix;)F
    invoke-static/range {v30 .. v31}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1100(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v14, v0

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v31

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentTranslateY(Landroid/graphics/Matrix;)F
    invoke-static/range {v30 .. v31}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1200(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v27, v0

    .line 412
    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getWidth()F

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v31, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v32

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentScaleX(Landroid/graphics/Matrix;)F
    invoke-static/range {v31 .. v32}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1300(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v31

    mul-float v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v19, v14, v30

    .line 413
    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getHeight()F

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v31, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v32

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentScaleY(Landroid/graphics/Matrix;)F
    invoke-static/range {v31 .. v32}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v31

    mul-float v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v7, v27, v30

    .line 414
    move/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v13, v14, v0, v1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    move-object/from16 v2, v24

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateTrimRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;
    invoke-static {v0, v13, v1, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$700(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v28

    .line 424
    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->set(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    move/from16 v2, v31

    move/from16 v3, v32

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateTranslate(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;FF)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$900(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;FF)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    move/from16 v2, v31

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateScale(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;F)V
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1000(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;F)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v31

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentTranslateX(Landroid/graphics/Matrix;)F
    invoke-static/range {v30 .. v31}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1100(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v14, v0

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v31

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentTranslateY(Landroid/graphics/Matrix;)F
    invoke-static/range {v30 .. v31}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1200(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v27, v0

    .line 429
    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getWidth()F

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v31, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v32

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentScaleX(Landroid/graphics/Matrix;)F
    invoke-static/range {v31 .. v32}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1300(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v31

    mul-float v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v19, v14, v30

    .line 430
    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getHeight()F

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v31, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v32

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentScaleY(Landroid/graphics/Matrix;)F
    invoke-static/range {v31 .. v32}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v31

    mul-float v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v7, v27, v30

    .line 431
    move/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v13, v14, v0, v1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    move-object/from16 v2, v24

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateTrimRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;
    invoke-static {v0, v13, v1, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$700(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v28

    .line 436
    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->set(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    move/from16 v2, v31

    move/from16 v3, v32

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateTranslate(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;FF)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$900(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;FF)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    move/from16 v2, v31

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateScale(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;F)V
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1000(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;F)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v31

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentTranslateX(Landroid/graphics/Matrix;)F
    invoke-static/range {v30 .. v31}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1100(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v14, v0

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v31

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentTranslateY(Landroid/graphics/Matrix;)F
    invoke-static/range {v30 .. v31}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1200(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v27, v0

    .line 441
    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getWidth()F

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v31, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v32

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentScaleX(Landroid/graphics/Matrix;)F
    invoke-static/range {v31 .. v32}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1300(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v31

    mul-float v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v19, v14, v30

    .line 442
    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getHeight()F

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v31, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v32

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentScaleY(Landroid/graphics/Matrix;)F
    invoke-static/range {v31 .. v32}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v31

    mul-float v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v7, v27, v30

    .line 443
    move/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v13, v14, v0, v1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    move-object/from16 v2, v24

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateTrimRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;
    invoke-static {v0, v13, v1, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$700(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v28

    .line 448
    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->set(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    move/from16 v2, v31

    move/from16 v3, v32

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateTranslate(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;FF)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$900(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;FF)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    move/from16 v2, v31

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateScale(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;F)V
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1000(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;F)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v31

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentTranslateX(Landroid/graphics/Matrix;)F
    invoke-static/range {v30 .. v31}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1100(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v14, v0

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v31

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentTranslateY(Landroid/graphics/Matrix;)F
    invoke-static/range {v30 .. v31}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1200(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v27, v0

    .line 453
    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getWidth()F

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v31, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v32

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentScaleX(Landroid/graphics/Matrix;)F
    invoke-static/range {v31 .. v32}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1300(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v31

    mul-float v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v19, v14, v30

    .line 454
    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getHeight()F

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v31, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v32

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentScaleY(Landroid/graphics/Matrix;)F
    invoke-static/range {v31 .. v32}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v31

    mul-float v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v7, v27, v30

    .line 455
    move/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v13, v14, v0, v1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    move-object/from16 v2, v24

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateTrimRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;
    invoke-static {v0, v13, v1, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$700(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v28

    .line 462
    .end local v16    # "maxDistance":D
    .end local v26    # "temp":Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v30, v0

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F
    invoke-static/range {v30 .. v30}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)F

    move-result v30

    div-float v29, v30, v25

    .line 463
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v30, v0

    mul-float v30, v30, v29

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v31, v0

    mul-float v31, v31, v29

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->round(F)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    mul-float v32, v32, v29

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->round(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v33, v0

    mul-float v33, v33, v29

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->round(F)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 468
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v30, v0

    const/16 v31, 0x0

    cmpg-float v30, v30, v31

    if-gez v30, :cond_3

    .line 469
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 471
    :cond_3
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v30, v0

    const/16 v31, 0x0

    cmpg-float v30, v30, v31

    if-gez v30, :cond_4

    .line 472
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 474
    :cond_4
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v30, v0

    cmpl-float v30, v30, v21

    if-lez v30, :cond_5

    .line 475
    move/from16 v0, v21

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 477
    :cond_5
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v30, v0

    cmpl-float v30, v30, v20

    if-lez v30, :cond_6

    .line 478
    move/from16 v0, v20

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 483
    :cond_6
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v31, v0

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F
    invoke-static/range {v31 .. v31}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)F

    move-result v31

    div-float v30, v30, v31

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v32, v0

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F
    invoke-static/range {v32 .. v32}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)F

    move-result v32

    div-float v31, v31, v32

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v33, v0

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F
    invoke-static/range {v33 .. v33}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)F

    move-result v33

    div-float v32, v32, v33

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v34, v0

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F
    invoke-static/range {v34 .. v34}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)F

    move-result v34

    div-float v33, v33, v34

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 485
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v32, v0

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F
    invoke-static/range {v32 .. v32}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)F

    move-result v32

    div-float v32, v21, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v33, v0

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F
    invoke-static/range {v33 .. v33}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)F

    move-result v33

    div-float v33, v20, v33

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 492
    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_8

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v30, v0

    const/16 v31, 0x0

    cmpl-float v30, v30, v31

    if-ltz v30, :cond_8

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v30, v0

    const/16 v31, 0x0

    cmpl-float v30, v30, v31

    if-ltz v30, :cond_8

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v30, v0

    const/16 v31, 0x0

    cmpl-float v30, v30, v31

    if-lez v30, :cond_8

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v30, v0

    const/16 v31, 0x0

    cmpl-float v30, v30, v31

    if-lez v30, :cond_8

    .line 494
    iget-object v0, v6, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->round(F)I

    move-result v31

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->round(F)I

    move-result v32

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v33, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v34, v0

    sub-float v33, v33, v34

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->round(F)I

    move-result v33

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v34, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v35, v0

    sub-float v34, v34, v35

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->round(F)I

    move-result v34

    invoke-static/range {v30 .. v34}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 499
    .local v8, "croppedBitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_7

    iget-object v0, v6, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    if-eq v8, v0, :cond_7

    .line 500
    iget-object v0, v6, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->recycle()V

    .line 501
    iput-object v8, v6, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->bitmap:Landroid/graphics/Bitmap;

    .line 504
    :cond_7
    iget v0, v6, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->originX:F

    move/from16 v30, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v31, v0

    add-float v30, v30, v31

    move/from16 v0, v30

    iput v0, v6, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->originX:F

    .line 505
    iget v0, v6, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->originY:F

    move/from16 v30, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v31, v0

    add-float v30, v30, v31

    move/from16 v0, v30

    iput v0, v6, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->originY:F

    .line 510
    .end local v7    # "bottom":F
    .end local v8    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "imageRect":Landroid/graphics/RectF;
    .end local v14    # "left":F
    .end local v18    # "origImageRect":Landroid/graphics/RectF;
    .end local v19    # "right":F
    .end local v20    # "scaledHeight":F
    .end local v21    # "scaledWidth":F
    .end local v22    # "scaledX":F
    .end local v23    # "scaledY":F
    .end local v24    # "screenRect":Landroid/graphics/Rect;
    .end local v25    # "targetScale":F
    .end local v27    # "top":F
    .end local v28    # "trimRect":Landroid/graphics/RectF;
    .end local v29    # "trimScale":F
    :cond_8
    const-string v30, "KeyguardEffectViewLayered"

    const-string v31, "layer process finishied"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/16 v30, 0x1

    move/from16 v0, v30

    iput-boolean v0, v6, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->bitmapLoaded:Z

    .line 515
    .end local v6    # "bitmapImage":Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;
    :goto_1
    return-object v6

    .line 253
    .restart local v6    # "bitmapImage":Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;
    :catch_0
    move-exception v10

    .line 254
    .local v10, "e":Ljava/lang/Exception;
    const-string v30, "KeyguardEffectViewLayered"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "loadDrawable exception"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 256
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_9
    iget v0, v6, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->type:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_b

    .line 259
    new-instance v12, Ljava/io/File;

    iget-object v0, v6, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->id_path_color:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    .local v12, "file":Ljava/io/File;
    if-eqz v12, :cond_a

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_a

    invoke-virtual {v12}, Ljava/io/File;->canRead()Z

    move-result v30

    if-eqz v30, :cond_a

    .line 264
    :try_start_1
    new-instance v30, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    move-object/from16 v31, v0

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mContext:Landroid/content/Context;
    invoke-static/range {v31 .. v31}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    iget-object v0, v6, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->id_path_color:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-direct/range {v30 .. v32}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v6, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->bitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 266
    :catch_1
    move-exception v11

    .line 267
    .local v11, "ex":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 268
    const/4 v6, 0x0

    goto :goto_1

    .line 271
    .end local v11    # "ex":Ljava/lang/Exception;
    :cond_a
    const/4 v6, 0x0

    goto :goto_1

    .line 273
    .end local v12    # "file":Ljava/io/File;
    :cond_b
    iget v0, v6, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->type:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_0

    .line 275
    const/16 v30, 0x0

    move-object/from16 v0, v30

    iput-object v0, v6, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->bitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 238
    check-cast p1, [Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->doInBackground([Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V
    .locals 5
    .param p1, "bitmapImage"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    .prologue
    .line 520
    if-nez p1, :cond_1

    .line 521
    const-string v3, "KeyguardEffectViewLayered"

    const-string v4, "null bitmap returned"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    iget-object v3, v3, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$300(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 525
    .local v2, "size":I
    const/4 v0, 0x1

    .line 526
    .local v0, "finished":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 527
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    iget-object v3, v3, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$300(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    iget-boolean v3, v3, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->bitmapLoaded:Z

    if-nez v3, :cond_3

    .line 528
    const/4 v0, 0x0

    .line 532
    :cond_2
    if-eqz v0, :cond_0

    .line 534
    const-string v3, "KeyguardEffectViewLayered"

    const-string v4, "BITMAP LOAD FINISH"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    iget-object v3, v3, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->setPreloadWallpaper()V
    invoke-static {v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1900(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)V

    .line 538
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->this$1:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    iget-object v3, v3, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->init()V
    invoke-static {v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$2000(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)V

    goto :goto_0

    .line 526
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 238
    check-cast p1, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;->onPostExecute(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V

    return-void
.end method
