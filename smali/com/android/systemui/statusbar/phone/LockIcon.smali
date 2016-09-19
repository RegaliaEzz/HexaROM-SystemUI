.class public Lcom/android/systemui/statusbar/phone/LockIcon;
.super Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.source "LockIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;,
        Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;
    }
.end annotation


# instance fields
.field private mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private mDeviceInteractive:Z

.field private mHasFingerPrintIcon:Z

.field private mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

.field private mLastDeviceInteractive:Z

.field private mLastScreenOn:Z

.field private mLastState:I

.field private mScreenOn:Z

.field private mTouchTargetSize:I

.field private mTransientFpError:Z

.field private final mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 61
    new-instance v0, Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 63
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c018c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTouchTargetSize:I

    .line 68
    return-void
.end method

.method private getIconForState(IZZ)I
    .locals 1
    .param p1, "state"    # I
    .param p2, "screenOn"    # Z
    .param p3, "deviceInteractive"    # Z

    .prologue
    const v0, 0x7f02018c

    .line 218
    packed-switch p1, :pswitch_data_0

    .line 234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 224
    :pswitch_0
    const v0, 0x10803a7

    .line 232
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 228
    :pswitch_2
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getState()I
    .locals 4

    .prologue
    .line 263
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    .line 264
    .local v2, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    .line 265
    .local v0, "fingerprintRunning":Z
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v1

    .line 266
    .local v1, "unlockingAllowed":Z
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientFpError:Z

    if-eqz v3, :cond_0

    .line 267
    const/4 v3, 0x4

    .line 275
    :goto_0
    return v3

    .line 268
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    const/4 v3, 0x1

    goto :goto_0

    .line 270
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isFaceUnlockRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 271
    const/4 v3, 0x2

    goto :goto_0

    .line 272
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 273
    const/4 v3, 0x3

    goto :goto_0

    .line 275
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isLockIconSelected(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->lockIconPossible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/LockIcon;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 343
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOnIcon(Landroid/view/View;FF)Z
    .locals 12
    .param p1, "icon"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 347
    const/4 v7, 0x2

    new-array v4, v7, [I

    .line 348
    .local v4, "pos":[I
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 350
    aget v7, v4, v6

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    add-float v2, v7, v8

    .line 351
    .local v2, "iconX":F
    aget v7, v4, v5

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    add-float v3, v7, v8

    .line 353
    .local v3, "iconY":F
    sub-float v7, p2, v2

    float-to-double v8, v7

    sub-float v7, p3, v3

    float-to-double v10, v7

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 354
    .local v0, "distance":D
    iget v7, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTouchTargetSize:I

    div-int/lit8 v7, v7, 0x2

    int-to-double v8, v7

    cmpg-double v7, v0, v8

    if-gtz v7, :cond_0

    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method private lockIconPossible()Z
    .locals 2

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getImageAlpha()I

    move-result v0

    const/16 v1, 0xbf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateClickability()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 186
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    if-nez v5, :cond_0

    .line 197
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isTouchExplorationEnabled()Z

    move-result v1

    .line 190
    .local v1, "clickToUnlock":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    move v0, v3

    .line 192
    .local v0, "clickToForceLock":Z
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v0, :cond_4

    move v2, v3

    .line 194
    .local v2, "longClickToForceLock":Z
    :goto_2
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    move v4, v3

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/LockIcon;->setClickable(Z)V

    .line 195
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setLongClickable(Z)V

    .line 196
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->setFocusable(Z)V

    goto :goto_0

    .end local v0    # "clickToForceLock":Z
    .end local v2    # "longClickToForceLock":Z
    :cond_3
    move v0, v4

    .line 190
    goto :goto_1

    .restart local v0    # "clickToForceLock":Z
    :cond_4
    move v2, v4

    .line 192
    goto :goto_2
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onDetachedFromWindow()V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

    .line 89
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 202
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFingerPrintIcon:Z

    if-eqz v1, :cond_0

    .line 204
    const-class v1, Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 205
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d01db

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 209
    .local v0, "unlock":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 211
    .end local v0    # "unlock":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v3, 0x7f0202cb

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 308
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 309
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 325
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageResource(I)V

    .line 329
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 311
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingStarted(Z)V

    .line 313
    :pswitch_1
    const v2, 0x7f0202cc

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageResource(I)V

    goto :goto_0

    .line 317
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageResource(I)V

    goto :goto_0

    .line 320
    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageResource(I)V

    .line 321
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->isLockIconSelected(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;->trustCircleSelected()V

    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 80
    return-void
.end method

.method public setAccessibilityController(Lcom/android/systemui/statusbar/policy/AccessibilityController;)V
    .locals 0
    .param p1, "accessibilityController"    # Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 215
    return-void
.end method

.method public setBottomIconsCallback(Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

    .line 339
    return-void
.end method

.method public setDeviceInteractive(Z)V
    .locals 0
    .param p1, "deviceInteractive"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 99
    return-void
.end method

.method public setScreenOn(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 104
    return-void
.end method

.method public setTransientFpError(Z)V
    .locals 0
    .param p1, "transientFpError"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientFpError:Z

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 94
    return-void
.end method

.method public update()V
    .locals 24

    .prologue
    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->isShown()Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x1

    .line 116
    .local v18, "visible":Z
    :goto_0
    if-nez v18, :cond_1

    .line 183
    :goto_1
    return-void

    .line 107
    .end local v18    # "visible":Z
    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    .line 120
    .restart local v18    # "visible":Z
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getState()I

    move-result v14

    .line 121
    .local v14, "state":I
    const/16 v19, 0x3

    move/from16 v0, v19

    if-eq v14, v0, :cond_2

    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v14, v0, :cond_a

    :cond_2
    const/4 v6, 0x1

    .line 122
    .local v6, "anyFingerprintIcon":Z
    :goto_2
    move/from16 v17, v6

    .line 123
    .local v17, "useAdditionalPadding":Z
    move v15, v6

    .line 124
    .local v15, "trustHidden":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v14, v0, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    .line 126
    :cond_3
    const/4 v13, 0x1

    .line 129
    .local v13, "isAnim":Z
    const/4 v11, -0x1

    .line 130
    .local v11, "iconRes":I
    const v19, 0x7f0202e3

    move/from16 v0, v19

    if-ne v11, v0, :cond_b

    .line 131
    const/4 v6, 0x1

    .line 132
    const/16 v17, 0x1

    .line 133
    const/4 v15, 0x1

    .line 143
    :cond_4
    :goto_3
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_5

    .line 144
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v14, v1, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->getIconForState(IZZ)I

    move-result v11

    .line 145
    const/4 v13, 0x0

    .line 147
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 148
    .local v8, "icon":Landroid/graphics/drawable/Drawable;
    instance-of v0, v8, Landroid/graphics/drawable/AnimatedVectorDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v19, v8

    check-cast v19, Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-object/from16 v5, v19

    .line 151
    .local v5, "animation":Landroid/graphics/drawable/AnimatedVectorDrawable;
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c01bf

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 153
    .local v10, "iconHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c01c0

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 155
    .local v12, "iconWidth":I
    if-nez v6, :cond_7

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v10, :cond_6

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    move/from16 v0, v19

    if-eq v0, v12, :cond_7

    .line 157
    :cond_6
    new-instance v9, Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;

    invoke-direct {v9, v8, v12, v10}, Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    .local v9, "icon":Landroid/graphics/drawable/Drawable;
    move-object v8, v9

    .line 159
    .end local v9    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_7
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    if-eqz v17, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v23, 0x7f0c01e2

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/LockIcon;->setPaddingRelative(IIII)V

    .line 163
    if-eqz v6, :cond_f

    const/high16 v19, 0x3f800000    # 1.0f

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setRestingAlpha(F)V

    .line 165
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    if-eqz v6, :cond_10

    const v19, 0x7f0d01da

    :goto_7
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, "contentDescription":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/LockIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFingerPrintIcon:Z

    .line 171
    if-eqz v5, :cond_8

    if-eqz v13, :cond_8

    .line 172
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 174
    :cond_8
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 175
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    .line 176
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    .line 180
    .end local v5    # "animation":Landroid/graphics/drawable/AnimatedVectorDrawable;
    .end local v7    # "contentDescription":Ljava/lang/String;
    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v10    # "iconHeight":I
    .end local v11    # "iconRes":I
    .end local v12    # "iconWidth":I
    .end local v13    # "isAnim":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v19

    if-eqz v19, :cond_11

    if-nez v15, :cond_11

    const/16 v16, 0x1

    .line 181
    .local v16, "trustManaged":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->setTrustManaged(Z)V

    .line 182
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateClickability()V

    goto/16 :goto_1

    .line 121
    .end local v6    # "anyFingerprintIcon":Z
    .end local v15    # "trustHidden":Z
    .end local v16    # "trustManaged":Z
    .end local v17    # "useAdditionalPadding":Z
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 134
    .restart local v6    # "anyFingerprintIcon":Z
    .restart local v11    # "iconRes":I
    .restart local v13    # "isAnim":Z
    .restart local v15    # "trustHidden":Z
    .restart local v17    # "useAdditionalPadding":Z
    :cond_b
    const v19, 0x7f020614

    move/from16 v0, v19

    if-ne v11, v0, :cond_c

    .line 135
    const/4 v6, 0x1

    .line 136
    const/16 v17, 0x0

    .line 137
    const/4 v15, 0x1

    goto/16 :goto_3

    .line 138
    :cond_c
    const v19, 0x7f02016a

    move/from16 v0, v19

    if-ne v11, v0, :cond_4

    .line 139
    const/4 v6, 0x1

    .line 140
    const/16 v17, 0x0

    .line 141
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 148
    .restart local v8    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 159
    .restart local v5    # "animation":Landroid/graphics/drawable/AnimatedVectorDrawable;
    .restart local v10    # "iconHeight":I
    .restart local v12    # "iconWidth":I
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 163
    :cond_f
    const/high16 v19, 0x3f000000    # 0.5f

    goto/16 :goto_6

    .line 166
    :cond_10
    const v19, 0x7f0d01d9

    goto/16 :goto_7

    .line 180
    .end local v5    # "animation":Landroid/graphics/drawable/AnimatedVectorDrawable;
    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v10    # "iconHeight":I
    .end local v11    # "iconRes":I
    .end local v12    # "iconWidth":I
    .end local v13    # "isAnim":Z
    :cond_11
    const/16 v16, 0x0

    goto :goto_8
.end method
