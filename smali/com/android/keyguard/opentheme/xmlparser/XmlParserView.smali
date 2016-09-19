.class public Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;
.super Landroid/widget/FrameLayout;
.source "XmlParserView.java"

# interfaces
.implements Lcom/android/keyguard/effect/KeyguardEffectViewBase;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

.field private mContext:Landroid/content/Context;

.field private mDeviceDensity:F

.field private mDeviceHeight:F

.field private mDeviceWidth:F

.field private mIsAnimationPlay:Z

.field private mIsParserSuccess:Z

.field private mPackageDensity:F

.field private mPackageHeight:F

.field private mPackageName:Ljava/lang/String;

.field private mPackageWidth:F

.field private mUnlockEffectType:I

.field private mXmlName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xml"    # Ljava/lang/String;
    .param p3, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x44200000    # 640.0f

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v1, 0x40800000    # 4.0f

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "XmlParserView"

    iput-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->TAG:Ljava/lang/String;

    .line 32
    iput-boolean v4, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mIsParserSuccess:Z

    .line 33
    iput-boolean v4, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    .line 45
    iput v2, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceWidth:F

    .line 46
    iput v3, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceHeight:F

    .line 47
    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    .line 49
    iput v2, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageWidth:F

    .line 50
    iput v3, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageHeight:F

    .line 51
    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageDensity:F

    .line 61
    iput-object p1, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mContext:Landroid/content/Context;

    .line 62
    invoke-direct {p0, p2, p3}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method private getContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 2
    .param p1, "pak"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getDevicePixelX(F)F
    .locals 2
    .param p1, "val"    # F

    .prologue
    .line 1022
    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceWidth:F

    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageWidth:F

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getDevicePixelY(F)F
    .locals 2
    .param p1, "val"    # F

    .prologue
    .line 1026
    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceHeight:F

    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageHeight:F

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "xml"    # Ljava/lang/String;
    .param p2, "packagename"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mXmlName:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    .line 68
    const-string v2, "XmlParserView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XmlName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mXmlName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Default package name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/high16 v2, -0x1000000

    invoke-virtual {p0, v2}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->setBackgroundColor(I)V

    .line 71
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 72
    .local v0, "apkContext":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->parserAnimation(Landroid/content/Context;Landroid/content/Context;)Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    .line 73
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mIsParserSuccess:Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 89
    .end local v0    # "apkContext":Landroid/content/Context;
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 77
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 79
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_3
    move-exception v1

    .line 81
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_4
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 84
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 86
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_6
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 973
    const-string v0, "XmlParserView"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    invoke-virtual {p0}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->stopAnimation()V

    .line 975
    invoke-virtual {p0}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->removeAllViews()V

    .line 976
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 1002
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1010
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1006
    return-void
.end method

.method public isParserSuccess()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mIsParserSuccess:Z

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 996
    const-string v0, "XmlParserView"

    const-string v1, "onPause() - screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    invoke-virtual {p0}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->stopAnimation()V

    .line 998
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 990
    const-string v0, "XmlParserView"

    const-string v1, "onResume() - screenTurningOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    invoke-virtual {p0}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->playAnimation()V

    .line 992
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 95
    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->playAnimation()V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->stopAnimation()V

    goto :goto_0
.end method

.method public parserAnimation(Landroid/content/Context;Landroid/content/Context;)Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;
    .locals 31
    .param p1, "apkContext"    # Landroid/content/Context;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    const/16 v28, 0x0

    .line 155
    .local v28, "view":Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;
    const/16 v24, 0x0

    .line 156
    .local v24, "scene":Lcom/android/keyguard/opentheme/common/LockscreenCallback;
    const/4 v13, 0x0

    .line 158
    .local v13, "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    const/16 v23, 0x0

    .line 159
    .local v23, "res":Landroid/content/res/Resources;
    const/16 v30, 0x0

    .line 161
    .local v30, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v29, -0x2

    .line 162
    .local v29, "width":I
    const/16 v18, -0x2

    .line 164
    .local v18, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    .line 165
    invoke-static/range {p2 .. p2}, Lcom/android/keyguard/opentheme/common/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceWidth:F

    .line 166
    invoke-static/range {p2 .. p2}, Lcom/android/keyguard/opentheme/common/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceHeight:F

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 169
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mXmlName:Ljava/lang/String;

    const-string v6, "xml"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v30

    .line 171
    new-instance v5, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    invoke-direct {v5}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    .line 173
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v16

    .line 174
    .local v16, "eventType":I
    :goto_0
    const/4 v5, 0x1

    move/from16 v0, v16

    if-eq v0, v5, :cond_dd

    .line 175
    if-nez v16, :cond_1

    .line 958
    :cond_0
    :goto_1
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    goto :goto_0

    .line 177
    :cond_1
    const/4 v5, 0x2

    move/from16 v0, v16

    if-ne v0, v5, :cond_ce

    .line 178
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v26

    .line 179
    .local v26, "startName":Ljava/lang/String;
    const-string v5, "screen"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 180
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 181
    .local v14, "count":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 182
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 183
    .local v21, "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    .line 184
    .local v27, "value":Ljava/lang/String;
    const-string v5, "width"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 185
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageWidth:F

    .line 186
    const-string v5, "XmlParserView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPackageWidth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageWidth:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_2
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 187
    :cond_3
    const-string v5, "height"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 188
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageHeight:F

    .line 189
    const-string v5, "XmlParserView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPackageHeight: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageHeight:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 190
    :cond_4
    const-string v5, "density"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 191
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageDensity:F

    .line 192
    const-string v5, "XmlParserView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPackageDensity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageDensity:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 195
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_5
    const-string v5, "view"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 197
    new-instance v28, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;

    .end local v28    # "view":Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;
    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;-><init>(Landroid/content/Context;)V

    .line 199
    .restart local v28    # "view":Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 200
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_4
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 201
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 202
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    .line 203
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "img"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 204
    const-string v5, "drawable"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    :cond_6
    :goto_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 208
    :cond_7
    const-string v5, "x"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 209
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;->setX(F)V

    goto :goto_5

    .line 210
    :cond_8
    const-string v5, "y"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 211
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;->setY(F)V

    goto :goto_5

    .line 212
    :cond_9
    const-string v5, "width"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 213
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    float-to-int v0, v5

    move/from16 v29, v0

    goto :goto_5

    .line 214
    :cond_a
    const-string v5, "height"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 215
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    float-to-int v0, v5

    move/from16 v18, v0

    goto :goto_5

    .line 216
    :cond_b
    const-string v5, "pivotX"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 217
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;->setPivotX(F)V

    goto :goto_5

    .line 218
    :cond_c
    const-string v5, "pivotY"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 219
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;->setPivotY(F)V

    goto/16 :goto_5

    .line 220
    :cond_d
    const-string v5, "alpha"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 221
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;->setAlpha(F)V

    goto/16 :goto_5

    .line 222
    :cond_e
    const-string v5, "scaleX"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 223
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;->setScaleX(F)V

    goto/16 :goto_5

    .line 224
    :cond_f
    const-string v5, "scaleY"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 225
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;->setScaleY(F)V

    goto/16 :goto_5

    .line 228
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_10
    const-string v5, "scene"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 230
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 231
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_6
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 232
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 233
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 234
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "type"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 235
    const-string v5, "snow"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 237
    new-instance v25, Lcom/android/keyguard/opentheme/xmlparser/SnowView;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/opentheme/xmlparser/SnowView;-><init>(Landroid/content/Context;)V

    .line 238
    .local v25, "snow":Lcom/android/keyguard/opentheme/xmlparser/SnowView;
    move-object/from16 v24, v25

    .line 239
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/opentheme/common/LockscreenCallback;)V

    .line 240
    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    .line 242
    const/16 v5, 0x54

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mUnlockEffectType:I

    .line 231
    .end local v25    # "snow":Lcom/android/keyguard/opentheme/xmlparser/SnowView;
    :cond_11
    :goto_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 243
    :cond_12
    const-string v5, "rain"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 245
    new-instance v22, Lcom/android/keyguard/opentheme/xmlparser/RainView;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/opentheme/xmlparser/RainView;-><init>(Landroid/content/Context;)V

    .line 246
    .local v22, "rain":Lcom/android/keyguard/opentheme/xmlparser/RainView;
    move-object/from16 v24, v22

    .line 247
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/opentheme/common/LockscreenCallback;)V

    .line 248
    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    .line 250
    const/16 v5, 0x52

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mUnlockEffectType:I

    goto :goto_7

    .line 251
    .end local v22    # "rain":Lcom/android/keyguard/opentheme/xmlparser/RainView;
    :cond_13
    const-string v5, "leaf"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 253
    new-instance v20, Lcom/android/keyguard/opentheme/xmlparser/LeafView;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/opentheme/xmlparser/LeafView;-><init>(Landroid/content/Context;)V

    .line 254
    .local v20, "leaf":Lcom/android/keyguard/opentheme/xmlparser/LeafView;
    move-object/from16 v24, v20

    .line 255
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/opentheme/common/LockscreenCallback;)V

    .line 256
    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    .line 258
    const/16 v5, 0x53

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mUnlockEffectType:I

    goto :goto_7

    .line 259
    .end local v20    # "leaf":Lcom/android/keyguard/opentheme/xmlparser/LeafView;
    :cond_14
    const-string v5, "flower"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 261
    new-instance v17, Lcom/android/keyguard/opentheme/xmlparser/FlowerView;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/opentheme/xmlparser/FlowerView;-><init>(Landroid/content/Context;)V

    .line 262
    .local v17, "flower":Lcom/android/keyguard/opentheme/xmlparser/FlowerView;
    move-object/from16 v24, v17

    .line 263
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/opentheme/common/LockscreenCallback;)V

    .line 264
    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    .line 266
    const/16 v5, 0x51

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mUnlockEffectType:I

    goto/16 :goto_7

    .line 270
    .end local v14    # "count":I
    .end local v17    # "flower":Lcom/android/keyguard/opentheme/xmlparser/FlowerView;
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_15
    const-string v5, "rotate"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 271
    const/4 v13, 0x0

    .line 272
    new-instance v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/opentheme/xmlparser/Animation;-><init>()V

    .line 273
    .restart local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 274
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_8
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 275
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 276
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 277
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "fromDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 278
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    .line 274
    :cond_16
    :goto_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    .line 279
    :cond_17
    const-string v5, "toDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 280
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    goto :goto_9

    .line 281
    :cond_18
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 282
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    goto :goto_9

    .line 283
    :cond_19
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 284
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_9

    .line 285
    :cond_1a
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 286
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_9

    .line 287
    :cond_1b
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 288
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    goto :goto_9

    .line 289
    :cond_1c
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 291
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 292
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_9

    .line 294
    :cond_1d
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_9

    .line 297
    :cond_1e
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 299
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 300
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_9

    .line 302
    :cond_1f
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_9

    .line 305
    :cond_20
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 307
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_9

    .line 308
    :cond_21
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 309
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_9

    .line 312
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_22
    const-string v5, "parabola"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 313
    const/4 v13, 0x0

    .line 314
    new-instance v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/opentheme/xmlparser/Animation;-><init>()V

    .line 315
    .restart local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 316
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_a
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 317
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 318
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 319
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "key"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 320
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->key:F

    .line 316
    :cond_23
    :goto_b
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    .line 321
    :cond_24
    const-string v5, "xFrom"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 322
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    goto :goto_b

    .line 323
    :cond_25
    const-string v5, "xTo"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 324
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    goto :goto_b

    .line 325
    :cond_26
    const-string v5, "xOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 326
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->xOffSet:F

    goto :goto_b

    .line 327
    :cond_27
    const-string v5, "yOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 328
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->yOffSet:F

    goto :goto_b

    .line 329
    :cond_28
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 330
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    goto :goto_b

    .line 331
    :cond_29
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 332
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_b

    .line 333
    :cond_2a
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 334
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_b

    .line 335
    :cond_2b
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 336
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    goto/16 :goto_b

    .line 337
    :cond_2c
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 339
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 340
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_b

    .line 342
    :cond_2d
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_b

    .line 345
    :cond_2e
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 347
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 348
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_b

    .line 350
    :cond_2f
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_b

    .line 353
    :cond_30
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 355
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_b

    .line 356
    :cond_31
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 357
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_b

    .line 361
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_32
    const-string v5, "sinX"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 362
    const/4 v13, 0x0

    .line 363
    new-instance v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/opentheme/xmlparser/Animation;-><init>()V

    .line 364
    .restart local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 365
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_c
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 366
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 367
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 368
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "key"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 369
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->key:F

    .line 365
    :cond_33
    :goto_d
    add-int/lit8 v19, v19, 0x1

    goto :goto_c

    .line 370
    :cond_34
    const-string v5, "adjust"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 371
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->adjust:F

    goto :goto_d

    .line 372
    :cond_35
    const-string v5, "xFrom"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 373
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    goto :goto_d

    .line 374
    :cond_36
    const-string v5, "xTo"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 375
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    goto :goto_d

    .line 376
    :cond_37
    const-string v5, "xOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 377
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->xOffSet:F

    goto :goto_d

    .line 378
    :cond_38
    const-string v5, "yOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 379
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->yOffSet:F

    goto :goto_d

    .line 380
    :cond_39
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 381
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    goto :goto_d

    .line 382
    :cond_3a
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 383
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    goto/16 :goto_d

    .line 384
    :cond_3b
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 385
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_d

    .line 386
    :cond_3c
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 387
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    goto/16 :goto_d

    .line 388
    :cond_3d
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 390
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 391
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_d

    .line 393
    :cond_3e
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_d

    .line 396
    :cond_3f
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 398
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 399
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_d

    .line 401
    :cond_40
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_d

    .line 404
    :cond_41
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 406
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_d

    .line 407
    :cond_42
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 408
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_d

    .line 411
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_43
    const-string v5, "sinY"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 412
    const/4 v13, 0x0

    .line 413
    new-instance v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/opentheme/xmlparser/Animation;-><init>()V

    .line 414
    .restart local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 415
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_e
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 416
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 417
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 418
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "key"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 419
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->key:F

    .line 415
    :cond_44
    :goto_f
    add-int/lit8 v19, v19, 0x1

    goto :goto_e

    .line 420
    :cond_45
    const-string v5, "adjust"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 421
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->adjust:F

    goto :goto_f

    .line 422
    :cond_46
    const-string v5, "yFrom"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 423
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    goto :goto_f

    .line 424
    :cond_47
    const-string v5, "yTo"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 425
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    goto :goto_f

    .line 426
    :cond_48
    const-string v5, "yOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 427
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->yOffSet:F

    goto :goto_f

    .line 428
    :cond_49
    const-string v5, "xOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 429
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->xOffSet:F

    goto :goto_f

    .line 430
    :cond_4a
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 431
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    goto :goto_f

    .line 432
    :cond_4b
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 433
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    goto/16 :goto_f

    .line 434
    :cond_4c
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 435
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_f

    .line 436
    :cond_4d
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 437
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    goto/16 :goto_f

    .line 438
    :cond_4e
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 440
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 441
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_f

    .line 443
    :cond_4f
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_f

    .line 446
    :cond_50
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 448
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 449
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_f

    .line 451
    :cond_51
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_f

    .line 454
    :cond_52
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 456
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_f

    .line 457
    :cond_53
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 458
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_f

    .line 461
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_54
    const-string v5, "round"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 462
    const/4 v13, 0x0

    .line 463
    new-instance v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/opentheme/xmlparser/Animation;-><init>()V

    .line 464
    .restart local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 465
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_10
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 466
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 467
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 468
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "r"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 469
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->r:F

    .line 465
    :cond_55
    :goto_11
    add-int/lit8 v19, v19, 0x1

    goto :goto_10

    .line 471
    :cond_56
    const-string v5, "a"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 472
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->a:F

    goto :goto_11

    .line 474
    :cond_57
    const-string v5, "b"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 475
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->b:F

    goto :goto_11

    .line 477
    :cond_58
    const-string v5, "fromDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 478
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    goto :goto_11

    .line 479
    :cond_59
    const-string v5, "toDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 480
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    goto :goto_11

    .line 481
    :cond_5a
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 482
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    goto :goto_11

    .line 483
    :cond_5b
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 484
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_11

    .line 485
    :cond_5c
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 486
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_11

    .line 487
    :cond_5d
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 488
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    goto/16 :goto_11

    .line 489
    :cond_5e
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 491
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 492
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_11

    .line 494
    :cond_5f
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_11

    .line 497
    :cond_60
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 499
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 500
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_11

    .line 502
    :cond_61
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_11

    .line 505
    :cond_62
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 507
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_11

    .line 508
    :cond_63
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 509
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_11

    .line 513
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_64
    const-string v5, "ellipse"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 514
    const/4 v13, 0x0

    .line 515
    new-instance v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/opentheme/xmlparser/Animation;-><init>()V

    .line 516
    .restart local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 517
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_12
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 518
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 519
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 520
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "ra"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 521
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->ra:F

    .line 517
    :cond_65
    :goto_13
    add-int/lit8 v19, v19, 0x1

    goto :goto_12

    .line 523
    :cond_66
    const-string v5, "rb"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 524
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->rb:F

    goto :goto_13

    .line 526
    :cond_67
    const-string v5, "a"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 527
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->a:F

    goto :goto_13

    .line 529
    :cond_68
    const-string v5, "b"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 530
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->b:F

    goto :goto_13

    .line 532
    :cond_69
    const-string v5, "fromDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 533
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    goto :goto_13

    .line 534
    :cond_6a
    const-string v5, "toDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 535
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    goto :goto_13

    .line 536
    :cond_6b
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 537
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    goto :goto_13

    .line 538
    :cond_6c
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 539
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    goto/16 :goto_13

    .line 540
    :cond_6d
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 541
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_13

    .line 542
    :cond_6e
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 543
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    goto/16 :goto_13

    .line 544
    :cond_6f
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 546
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 547
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_13

    .line 549
    :cond_70
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_13

    .line 552
    :cond_71
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 554
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 555
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_13

    .line 557
    :cond_72
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_13

    .line 560
    :cond_73
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 562
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_13

    .line 563
    :cond_74
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 564
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_13

    .line 568
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_75
    const-string v5, "alpha"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 569
    const/4 v13, 0x0

    .line 570
    new-instance v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/opentheme/xmlparser/Animation;-><init>()V

    .line 571
    .restart local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 572
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_14
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 573
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 574
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 575
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "fromAlpha"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 576
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    .line 572
    :cond_76
    :goto_15
    add-int/lit8 v19, v19, 0x1

    goto :goto_14

    .line 577
    :cond_77
    const-string v5, "toAlpha"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 578
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    goto :goto_15

    .line 579
    :cond_78
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 580
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    goto :goto_15

    .line 581
    :cond_79
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 582
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_15

    .line 583
    :cond_7a
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 584
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_15

    .line 585
    :cond_7b
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 586
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    goto :goto_15

    .line 587
    :cond_7c
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 589
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 590
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_15

    .line 592
    :cond_7d
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_15

    .line 595
    :cond_7e
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 597
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 598
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_15

    .line 600
    :cond_7f
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_15

    .line 603
    :cond_80
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 605
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_15

    .line 606
    :cond_81
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 607
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_15

    .line 611
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_82
    const-string v5, "translateX"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 612
    const/4 v13, 0x0

    .line 613
    new-instance v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/opentheme/xmlparser/Animation;-><init>()V

    .line 614
    .restart local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 615
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_16
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 616
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 617
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 618
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "fromXDelta"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 619
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    .line 615
    :cond_83
    :goto_17
    add-int/lit8 v19, v19, 0x1

    goto :goto_16

    .line 620
    :cond_84
    const-string v5, "toXDelta"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 621
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    goto :goto_17

    .line 622
    :cond_85
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 623
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    goto :goto_17

    .line 624
    :cond_86
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 625
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_17

    .line 626
    :cond_87
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 627
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_17

    .line 628
    :cond_88
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 629
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    goto :goto_17

    .line 630
    :cond_89
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 632
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 633
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_17

    .line 635
    :cond_8a
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_17

    .line 638
    :cond_8b
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 640
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 641
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_17

    .line 643
    :cond_8c
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_17

    .line 646
    :cond_8d
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 648
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_17

    .line 649
    :cond_8e
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 650
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_17

    .line 653
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_8f
    const-string v5, "translateY"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 654
    const/4 v13, 0x0

    .line 655
    new-instance v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/opentheme/xmlparser/Animation;-><init>()V

    .line 656
    .restart local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 657
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_18
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 658
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 659
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 660
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "fromYDelta"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_91

    .line 661
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    .line 657
    :cond_90
    :goto_19
    add-int/lit8 v19, v19, 0x1

    goto :goto_18

    .line 662
    :cond_91
    const-string v5, "toYDelta"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 663
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    goto :goto_19

    .line 664
    :cond_92
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 665
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    goto :goto_19

    .line 666
    :cond_93
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_94

    .line 667
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_19

    .line 668
    :cond_94
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_95

    .line 669
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_19

    .line 670
    :cond_95
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_96

    .line 671
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    goto :goto_19

    .line 672
    :cond_96
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 674
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 675
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_19

    .line 677
    :cond_97
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_19

    .line 680
    :cond_98
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 682
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 683
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_19

    .line 685
    :cond_99
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_19

    .line 688
    :cond_9a
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 690
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_19

    .line 691
    :cond_9b
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 692
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_19

    .line 695
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_9c
    const-string v5, "scaleX"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 696
    const/4 v13, 0x0

    .line 697
    new-instance v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/opentheme/xmlparser/Animation;-><init>()V

    .line 698
    .restart local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 699
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_1a
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 700
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 701
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 702
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "fromXScale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 703
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    .line 699
    :cond_9d
    :goto_1b
    add-int/lit8 v19, v19, 0x1

    goto :goto_1a

    .line 704
    :cond_9e
    const-string v5, "toXScale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 705
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    goto :goto_1b

    .line 706
    :cond_9f
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 707
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    goto :goto_1b

    .line 708
    :cond_a0
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 709
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_1b

    .line 710
    :cond_a1
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 711
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_1b

    .line 712
    :cond_a2
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 713
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    goto :goto_1b

    .line 714
    :cond_a3
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 716
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 717
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1b

    .line 719
    :cond_a4
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1b

    .line 722
    :cond_a5
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 724
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 725
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1b

    .line 727
    :cond_a6
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1b

    .line 730
    :cond_a7
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 732
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1b

    .line 733
    :cond_a8
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 734
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1b

    .line 737
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_a9
    const-string v5, "scaleY"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 738
    const/4 v13, 0x0

    .line 739
    new-instance v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/opentheme/xmlparser/Animation;-><init>()V

    .line 740
    .restart local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 741
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_1c
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 742
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 743
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 744
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "fromYScale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 745
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    .line 741
    :cond_aa
    :goto_1d
    add-int/lit8 v19, v19, 0x1

    goto :goto_1c

    .line 746
    :cond_ab
    const-string v5, "toYScale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 747
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    goto :goto_1d

    .line 748
    :cond_ac
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 749
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    goto :goto_1d

    .line 750
    :cond_ad
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 751
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_1d

    .line 752
    :cond_ae
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_af

    .line 753
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_1d

    .line 754
    :cond_af
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 755
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    goto :goto_1d

    .line 756
    :cond_b0
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 758
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 759
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1d

    .line 761
    :cond_b1
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1d

    .line 764
    :cond_b2
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b4

    .line 766
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 767
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1d

    .line 769
    :cond_b3
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1d

    .line 772
    :cond_b4
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 774
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1d

    .line 775
    :cond_b5
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 776
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1d

    .line 779
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_b6
    const-string v5, "ImageResource"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c3

    .line 780
    const/4 v13, 0x0

    .line 781
    new-instance v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/opentheme/xmlparser/Animation;-><init>()V

    .line 782
    .restart local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 783
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_1e
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 784
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 785
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 786
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "length"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 787
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->length:I

    .line 783
    :cond_b7
    :goto_1f
    add-int/lit8 v19, v19, 0x1

    goto :goto_1e

    .line 788
    :cond_b8
    const-string v5, "image"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 790
    const-string v5, "drawable"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->imageViewId:I

    goto :goto_1f

    .line 793
    :cond_b9
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 794
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    goto :goto_1f

    .line 795
    :cond_ba
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 796
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_1f

    .line 797
    :cond_bb
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 798
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_1f

    .line 799
    :cond_bc
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bd

    .line 800
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    goto :goto_1f

    .line 801
    :cond_bd
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 803
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 804
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1f

    .line 806
    :cond_be
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1f

    .line 809
    :cond_bf
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c1

    .line 811
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c0

    .line 812
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1f

    .line 814
    :cond_c0
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1f

    .line 817
    :cond_c1
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c2

    .line 819
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1f

    .line 820
    :cond_c2
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 821
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1f

    .line 825
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_c3
    const-string v5, "frame"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 826
    const/4 v13, 0x0

    .line 827
    new-instance v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/opentheme/xmlparser/Animation;-><init>()V

    .line 828
    .restart local v13    # "animation":Lcom/android/keyguard/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 829
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_20
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 830
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 831
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 832
    .local v27, "value":I
    const-string v5, "top"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c5

    .line 833
    move/from16 v0, v27

    iput v0, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->top:I

    .line 829
    :cond_c4
    :goto_21
    add-int/lit8 v19, v19, 0x1

    goto :goto_20

    .line 834
    :cond_c5
    const-string v5, "minInterval"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 835
    move/from16 v0, v27

    iput v0, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->minInterval:I

    goto :goto_21

    .line 839
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":I
    :cond_c6
    const-string v5, "item"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 841
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 842
    .restart local v14    # "count":I
    if-eqz v13, :cond_0

    .line 843
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_22
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 844
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 845
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 846
    .local v27, "value":Ljava/lang/String;
    const-string v5, "XmlParserView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "item name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const-string v5, "frameSize"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 848
    iget-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->frameSize:Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    :cond_c7
    :goto_23
    add-int/lit8 v19, v19, 0x1

    goto :goto_22

    .line 849
    :cond_c8
    const-string v5, "image"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c9

    .line 850
    iget-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->imageViewSetId:Ljava/util/ArrayList;

    const-string v6, "drawable"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 853
    :cond_c9
    const-string v5, "background"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ca

    .line 854
    const-string v5, "drawable"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->backgroundId:I

    goto :goto_23

    .line 857
    :cond_ca
    const-string v5, "x"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cb

    .line 858
    iget-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->x:Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 859
    :cond_cb
    const-string v5, "y"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cc

    .line 860
    iget-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->y:Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 861
    :cond_cc
    const-string v5, "scale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cd

    .line 862
    iget-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->scale:Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 863
    :cond_cd
    const-string v5, "startIndex"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c7

    .line 864
    iget-object v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->startIndex:Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 870
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v26    # "startName":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_ce
    const/4 v5, 0x3

    move/from16 v0, v16

    if-ne v0, v5, :cond_0

    .line 871
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 872
    .local v15, "endName":Ljava/lang/String;
    const-string v5, "view"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cf

    .line 873
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    .line 874
    const/16 v29, -0x2

    .line 875
    const/16 v18, -0x2

    goto/16 :goto_1

    .line 876
    :cond_cf
    const-string v5, "rotate"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 877
    if-eqz v13, :cond_0

    .line 878
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "rotation"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 881
    :cond_d0
    const-string v5, "parabola"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d1

    .line 882
    if-eqz v13, :cond_0

    .line 883
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "parabola"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 886
    :cond_d1
    const-string v5, "sinX"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d2

    .line 887
    if-eqz v13, :cond_0

    .line 888
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "sinX"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 891
    :cond_d2
    const-string v5, "sinY"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d3

    .line 892
    if-eqz v13, :cond_0

    .line 893
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "sinY"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 896
    :cond_d3
    const-string v5, "round"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d4

    .line 897
    if-eqz v13, :cond_0

    .line 898
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "round"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 901
    :cond_d4
    const-string v5, "ellipse"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d5

    .line 902
    if-eqz v13, :cond_0

    .line 903
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "ellipse"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 906
    :cond_d5
    const-string v5, "alpha"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d6

    .line 907
    if-eqz v13, :cond_0

    .line 908
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "alpha"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 911
    :cond_d6
    const-string v5, "translateX"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d7

    .line 912
    if-eqz v13, :cond_0

    .line 913
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "x"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 916
    :cond_d7
    const-string v5, "translateY"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d8

    .line 917
    if-eqz v13, :cond_0

    .line 918
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "y"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 921
    :cond_d8
    const-string v5, "scaleX"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d9

    .line 922
    if-eqz v13, :cond_0

    .line 923
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "scaleX"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 926
    :cond_d9
    const-string v5, "scaleY"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_da

    .line 927
    if-eqz v13, :cond_0

    .line 928
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "scaleY"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 931
    :cond_da
    const-string v5, "ImageResource"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_dc

    .line 932
    if-eqz v28, :cond_db

    .line 933
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;->setApkContext(Landroid/content/Context;)V

    .line 936
    :cond_db
    if-eqz v13, :cond_0

    .line 937
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "ImageResource"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/opentheme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 941
    :cond_dc
    const-string v5, "frame"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 942
    const/4 v4, 0x0

    .line 943
    .local v4, "mFrame":Lcom/android/keyguard/opentheme/xmlparser/Frame;
    if-eqz v13, :cond_0

    .line 945
    new-instance v4, Lcom/android/keyguard/opentheme/xmlparser/Frame;

    .end local v4    # "mFrame":Lcom/android/keyguard/opentheme/xmlparser/Frame;
    iget v6, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->backgroundId:I

    iget-object v7, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->imageViewSetId:Ljava/util/ArrayList;

    iget-object v8, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->frameSize:Ljava/util/ArrayList;

    iget-object v9, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->x:Ljava/util/ArrayList;

    iget-object v10, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->y:Ljava/util/ArrayList;

    iget-object v11, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->scale:Ljava/util/ArrayList;

    iget-object v12, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->startIndex:Ljava/util/ArrayList;

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v12}, Lcom/android/keyguard/opentheme/xmlparser/Frame;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 950
    .restart local v4    # "mFrame":Lcom/android/keyguard/opentheme/xmlparser/Frame;
    iget v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->top:I

    invoke-virtual {v4, v5}, Lcom/android/keyguard/opentheme/xmlparser/Frame;->setTop(I)V

    .line 951
    iget v5, v13, Lcom/android/keyguard/opentheme/xmlparser/Animation;->minInterval:I

    invoke-virtual {v4, v5}, Lcom/android/keyguard/opentheme/xmlparser/Frame;->setMinInterval(I)V

    .line 952
    const/4 v5, -0x2

    const/4 v6, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    .line 954
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    invoke-virtual {v5, v4}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->addSprite(Lcom/android/keyguard/opentheme/xmlparser/Frame;)V

    goto/16 :goto_1

    .line 961
    .end local v4    # "mFrame":Lcom/android/keyguard/opentheme/xmlparser/Frame;
    .end local v15    # "endName":Ljava/lang/String;
    :cond_dd
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    return-object v5
.end method

.method public playAnimation()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    if-nez v0, :cond_0

    .line 111
    const-string v0, "XmlParserView"

    const-string v1, "playAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    .line 113
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->playAnimation()V

    .line 115
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 969
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "XmlParserView"

    const-string v1, "stopAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    .line 141
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->stopAnimation()V

    .line 143
    :cond_0
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 980
    const-string v1, "XmlParserView"

    const-string v2, "update New Animation wallpaper!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getCurrentOpenThemeXmlPackageName()Ljava/lang/String;

    move-result-object v0

    .line 982
    .local v0, "packagename":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 983
    invoke-virtual {p0}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->cleanUp()V

    .line 984
    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->mXmlName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/opentheme/xmlparser/XmlParserView;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    :cond_0
    return-void
.end method
