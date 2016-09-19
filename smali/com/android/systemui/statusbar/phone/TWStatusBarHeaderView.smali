.class public Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;
.super Landroid/widget/RelativeLayout;
.source "TWStatusBarHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$CallBack;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

.field private mAmPmFrontView:Landroid/widget/TextClock;

.field private mAmPmView:Landroid/widget/TextClock;

.field private mButtonBackgroundEnabled:Z

.field private mButtonsContainer:Landroid/view/View;

.field private mCallback:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$CallBack;

.field private mClock:Lcom/android/systemui/statusbar/policy/SplitClockView;

.field private mDate:Lcom/android/systemui/statusbar/policy/DateView;

.field private mDateTimeView:Landroid/widget/LinearLayout;

.field private mDetailDone:Landroid/view/View;

.field private mDetailHeader:Landroid/view/View;

.field private mDetailSetting:Landroid/view/View;

.field private mEditButton:Landroid/widget/TextView;

.field private mEmergencyModeActivated:Z

.field private mExpandButton:Landroid/widget/ImageView;

.field private mHideEditButton:Z

.field private mIconDivider:Landroid/widget/ImageView;

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field private mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private mSettingButton:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 324
    const-class v0, Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mEmergencyModeActivated:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mHideEditButton:Z

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;)Lcom/android/systemui/qs/QSPanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;)Lcom/android/systemui/statusbar/phone/ActivityStarter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    return-object v0
.end method

.method private startSettingsActivity()V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 210
    return-void
.end method

.method private updateDateViewMargin(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v8, 0x0

    .line 181
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 183
    .local v3, "res":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 184
    .local v0, "bottomPadding":I
    iget v4, p1, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    double-to-float v1, v4

    .line 185
    .local v1, "fontScale":F
    const v4, 0x3f8ccccd    # 1.1f

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    const v4, 0x7f0c02f0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 190
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mDate:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {v4, v8, v8, v8, v0}, Lcom/android/systemui/statusbar/policy/DateView;->setPadding(IIII)V

    .line 191
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v4, v8, v8, v8, v0}, Landroid/widget/TextClock;->setPadding(IIII)V

    .line 192
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mAmPmFrontView:Landroid/widget/TextClock;

    invoke-virtual {v4, v8, v8, v8, v0}, Landroid/widget/TextClock;->setPadding(IIII)V

    .line 194
    const v4, 0x7f0c02f5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 195
    .local v2, "leftPadding":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mDateTimeView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v8, v8, v8}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 196
    return-void

    .line 186
    .end local v2    # "leftPadding":I
    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-nez v4, :cond_2

    const v4, 0x7f0c02f1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 187
    :cond_2
    const v4, 0x3f666666    # 0.9f

    cmpl-float v4, v1, v4

    if-nez v4, :cond_3

    const v4, 0x7f0c02f2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 188
    :cond_3
    const v4, 0x3f4ccccd    # 0.8f

    cmpl-float v4, v1, v4

    if-nez v4, :cond_0

    const v4, 0x7f0c02f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public hideEditButton(Z)V
    .locals 0
    .param p1, "hide"    # Z

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mHideEditButton:Z

    .line 346
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mSettingButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->startSettingsActivity()V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->APP_ID_QS:Ljava/lang/String;

    sget-object v2, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->QS_FEATURE_SETTING:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mCallback:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$CallBack;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$CallBack;->onQsTileLineChanged()V

    goto :goto_0

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mDetailDone:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mCallback:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$CallBack;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$CallBack;->onDetailDoneButtonPressed()V

    goto :goto_0

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mEditButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mCallback:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$CallBack;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$CallBack;->onEditButtonPressed()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v7, 0x7f0c0123

    const v6, 0x3f99999a    # 1.2f

    const v5, 0x3f4ccccd    # 0.8f

    .line 156
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 158
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 159
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 161
    .local v0, "headerParams":Landroid/view/ViewGroup$LayoutParams;
    const v2, 0x7f0c00fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 162
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mDateTimeView:Landroid/widget/LinearLayout;

    const v3, 0x7f0e02e1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0c01ab

    const v4, 0x3f8ccccd    # 1.1f

    invoke-static {v2, v3, v5, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 169
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mDetailSetting:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2, v7, v5, v6}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 170
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mDetailDone:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2, v7, v5, v6}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 174
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mSettingButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mSettingButton:Landroid/widget/ImageView;

    const v3, 0x7f0d0231

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mEditButton:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mEditButton:Landroid/widget/TextView;

    const v3, 0x7f0d045f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 176
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mEditButton:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mEditButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 178
    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v2, 0x7f0e033f

    const v3, 0x7f0a00ea

    const v1, 0x7f0e0340

    .line 101
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 102
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mSettingButton:Landroid/widget/ImageView;

    .line 103
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mExpandButton:Landroid/widget/ImageView;

    .line 104
    const v0, 0x7f0e033d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mEditButton:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f0e033e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mIconDivider:Landroid/widget/ImageView;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mSettingButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setNextFocusRightId(I)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mSettingButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setNextFocusLeftId(I)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setNextFocusLeftId(I)V

    .line 109
    const v0, 0x7f0e0132

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 110
    const v0, 0x7f0e033a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mDateTimeView:Landroid/widget/LinearLayout;

    .line 111
    const v0, 0x7f0e033b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DateView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mDate:Lcom/android/systemui/statusbar/policy/DateView;

    .line 112
    const v0, 0x7f0e0122

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SplitClockView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mClock:Lcom/android/systemui/statusbar/policy/SplitClockView;

    .line 113
    const v0, 0x7f0e02e3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mAmPmView:Landroid/widget/TextClock;

    .line 114
    const v0, 0x7f0e02e1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mAmPmFrontView:Landroid/widget/TextClock;

    .line 115
    const v0, 0x7f0e0131

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 116
    const v0, 0x7f0e0341

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mDetailHeader:Landroid/view/View;

    .line 117
    const v0, 0x7f0e033c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mButtonsContainer:Landroid/view/View;

    .line 118
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mDetailDone:Landroid/view/View;

    .line 119
    const v0, 0x102001a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mDetailSetting:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mSettingButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mEditButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mDetailDone:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mSettingButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mExpandButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->updateDateViewMargin(Landroid/content/res/Configuration;)V

    .line 133
    return-void
.end method

.method public onLayoutMessedUp()V
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mExpandButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 327
    sget-object v0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mExpandButton.getMeasuredWidth() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sget-object v0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mExpandButton.getVisibility() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mSettingButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 331
    sget-object v0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSettingButton.getMeasuredWidth() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mSettingButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    sget-object v0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSettingButton.getVisibility() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mSettingButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_1
    return-void
.end method

.method public setActivityStarter(Lcom/android/systemui/statusbar/phone/ActivityStarter;)V
    .locals 0
    .param p1, "activityStarter"    # Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .line 137
    return-void
.end method

.method public setButtonsBackground(Z)V
    .locals 2
    .param p1, "mEnabled"    # Z

    .prologue
    .line 287
    if-eqz p1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mEditButton:Landroid/widget/TextView;

    const v1, 0x7f02062b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mButtonBackgroundEnabled:Z

    .line 294
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mEditButton:Landroid/widget/TextView;

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mButtonBackgroundEnabled:Z

    goto :goto_0
.end method

.method public setCallBack(Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$CallBack;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$CallBack;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mCallback:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$CallBack;

    .line 214
    return-void
.end method

.method public setClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mSettingButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 340
    return-void
.end method

.method public setEmergencyMode(Z)V
    .locals 3
    .param p1, "isEm"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 272
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mEmergencyModeActivated:Z

    .line 273
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mEmergencyModeActivated:Z

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mEditButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mIconDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mEmergencyModeActivated:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setEmergencyMode(Z)V

    .line 283
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mIconDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 1
    .param p1, "qsp"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 219
    return-void
.end method

.method public setQsDetailShowing(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 5
    .param p1, "detail"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 297
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 299
    .local v0, "showingDetail":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mDetailHeader:Landroid/view/View;

    if-eqz v0, :cond_2

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mDateTimeView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 301
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mButtonsContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 303
    if-eqz v0, :cond_0

    .line 304
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mDetailSetting:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$2;-><init>(Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    :cond_0
    return-void

    .end local v0    # "showingDetail":Z
    :cond_1
    move v0, v1

    .line 297
    goto :goto_0

    .restart local v0    # "showingDetail":Z
    :cond_2
    move v2, v3

    .line 299
    goto :goto_1

    :cond_3
    move v2, v1

    .line 300
    goto :goto_2

    :cond_4
    move v3, v1

    .line 301
    goto :goto_3
.end method

.method public setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V
    .locals 1
    .param p1, "userInfoController"    # Lcom/android/systemui/statusbar/policy/UserInfoController;

    .prologue
    .line 199
    new-instance v0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$1;-><init>(Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addListener(Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;)V

    .line 205
    return-void
.end method

.method public updateIconState(F)V
    .locals 6
    .param p1, "alpha"    # F

    .prologue
    const v3, 0x7f0e0340

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/16 v4, 0x8

    .line 222
    cmpl-float v1, p1, v5

    if-nez v1, :cond_5

    .line 223
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mSettingButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mEditButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mHideEditButton:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mEditButton:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mIconDivider:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mHideEditButton:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mIconDivider:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mEditButton:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setNextFocusRightId(I)V

    .line 229
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mExpandButton:Landroid/widget/ImageView;

    const v2, 0x7f0e033d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setNextFocusLeftId(I)V

    .line 230
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 246
    :cond_2
    :goto_0
    const/high16 v1, 0x41100000    # 9.0f

    mul-float/2addr v1, p1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 247
    .local v0, "settingAlpha":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mIconDivider:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 248
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mEditButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 249
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mSettingButton:Landroid/widget/ImageView;

    sub-float v2, v5, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 252
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mEmergencyModeActivated:Z

    if-eqz v1, :cond_a

    .line 253
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mEditButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mEditButton:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mIconDivider:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mIconDivider:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    :cond_4
    :goto_1
    return-void

    .line 231
    .end local v0    # "settingAlpha":F
    :cond_5
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_7

    .line 232
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mSettingButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mSettingButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mEditButton:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mIconDivider:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mSettingButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setNextFocusRightId(I)V

    .line 236
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mExpandButton:Landroid/widget/ImageView;

    const v2, 0x7f0e033f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setNextFocusLeftId(I)V

    .line 237
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 239
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mSettingButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mSettingButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mEditButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_9

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mHideEditButton:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mEditButton:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mIconDivider:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mHideEditButton:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mIconDivider:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 258
    .restart local v0    # "settingAlpha":F
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mExpandButton:Landroid/widget/ImageView;

    const/high16 v2, 0x43340000    # 180.0f

    mul-float/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 260
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mButtonBackgroundEnabled:Z

    if-eqz v1, :cond_4

    .line 261
    float-to-double v2, p1

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpl-double v1, v2, v4

    if-lez v1, :cond_b

    .line 262
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mEditButton:Landroid/widget/TextView;

    const v2, 0x7f02062b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 264
    :cond_b
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mButtonBackgroundEnabled:Z

    if-eqz v1, :cond_4

    .line 265
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mEditButton:Landroid/widget/TextView;

    const v2, 0x7f020028

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method
