.class public Lcom/android/systemui/statusbar/policy/SplitClockView;
.super Landroid/widget/LinearLayout;
.source "SplitClockView.java"


# instance fields
.field private mAmPmView:Landroid/widget/TextClock;

.field private mAmPmViewFront:Landroid/widget/TextClock;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeView:Landroid/widget/TextClock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/policy/SplitClockView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SplitClockView$1;-><init>(Lcom/android/systemui/statusbar/policy/SplitClockView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/SplitClockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SplitClockView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->updatePatterns()V

    return-void
.end method

.method private static getAmPmPartEndIndex(Ljava/lang/String;Z)I
    .locals 10
    .param p0, "formatString"    # Ljava/lang/String;
    .param p1, "isAmPmLeft"    # Z

    .prologue
    const/16 v9, 0x61

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 150
    const/4 v1, 0x0

    .line 151
    .local v1, "hasAmPm":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 152
    .local v5, "length":I
    if-eqz p1, :cond_7

    .line 153
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_c

    .line 154
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 155
    .local v0, "c":C
    if-ne v0, v9, :cond_2

    move v3, v6

    .line 156
    .local v3, "isAmPm":Z
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    .line 157
    .local v4, "isWhitespace":Z
    if-eqz v3, :cond_0

    .line 158
    const/4 v1, 0x1

    .line 160
    :cond_0
    if-nez v3, :cond_1

    if-eqz v4, :cond_3

    .line 153
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "isAmPm":Z
    .end local v4    # "isWhitespace":Z
    :cond_2
    move v3, v7

    .line 155
    goto :goto_1

    .line 163
    .restart local v3    # "isAmPm":Z
    .restart local v4    # "isWhitespace":Z
    :cond_3
    if-nez v2, :cond_5

    .line 199
    .end local v0    # "c":C
    .end local v3    # "isAmPm":Z
    .end local v4    # "isWhitespace":Z
    :cond_4
    :goto_2
    return v8

    .line 169
    .restart local v0    # "c":C
    .restart local v3    # "isAmPm":Z
    .restart local v4    # "isWhitespace":Z
    :cond_5
    if-eqz v1, :cond_6

    move v6, v2

    :goto_3
    move v8, v6

    goto :goto_2

    :cond_6
    move v6, v8

    goto :goto_3

    .line 173
    .end local v0    # "c":C
    .end local v2    # "i":I
    .end local v3    # "isAmPm":Z
    .end local v4    # "isWhitespace":Z
    :cond_7
    add-int/lit8 v2, v5, -0x1

    .restart local v2    # "i":I
    :goto_4
    if-ltz v2, :cond_c

    .line 174
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 175
    .restart local v0    # "c":C
    if-ne v0, v9, :cond_a

    move v3, v6

    .line 176
    .restart local v3    # "isAmPm":Z
    :goto_5
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    .line 177
    .restart local v4    # "isWhitespace":Z
    if-eqz v3, :cond_8

    .line 178
    const/4 v1, 0x1

    .line 180
    :cond_8
    if-nez v3, :cond_9

    if-eqz v4, :cond_b

    .line 173
    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .end local v3    # "isAmPm":Z
    .end local v4    # "isWhitespace":Z
    :cond_a
    move v3, v7

    .line 175
    goto :goto_5

    .line 183
    .restart local v3    # "isAmPm":Z
    .restart local v4    # "isWhitespace":Z
    :cond_b
    add-int/lit8 v6, v5, -0x1

    if-eq v2, v6, :cond_4

    .line 192
    if-eqz v1, :cond_4

    add-int/lit8 v8, v2, 0x1

    goto :goto_2

    .line 199
    .end local v0    # "c":C
    .end local v3    # "isAmPm":Z
    .end local v4    # "isWhitespace":Z
    :cond_c
    if-eqz v1, :cond_d

    :goto_6
    move v8, v7

    goto :goto_2

    :cond_d
    move v7, v8

    goto :goto_6
.end method

.method private updatePatterns()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "formatString":Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x61

    if-eq v9, v10, :cond_0

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x41

    if-ne v9, v10, :cond_1

    :cond_0
    move v3, v8

    .line 96
    .local v3, "isAmPmFront":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getLayoutDirection()I

    move-result v9

    if-ne v9, v8, :cond_2

    move v5, v8

    .line 98
    .local v5, "isRtl":Z
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v9}, Landroid/widget/TextClock;->getVisibility()I

    move-result v9

    if-nez v9, :cond_4

    .line 99
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v9}, Landroid/widget/TextClock;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v9

    if-nez v9, :cond_3

    move v4, v8

    .line 102
    .local v4, "isLTRAmpm":Z
    :goto_2
    if-eqz v3, :cond_6

    invoke-static {v1, v8}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getAmPmPartEndIndex(Ljava/lang/String;Z)I

    move-result v2

    .line 106
    .local v2, "index":I
    :goto_3
    const/4 v8, -0x1

    if-ne v2, v8, :cond_7

    .line 107
    move-object v6, v1

    .line 108
    .local v6, "timeString":Ljava/lang/String;
    const-string v0, ""

    .line 109
    .local v0, "amPmString":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewFront:Landroid/widget/TextClock;

    invoke-virtual {v7, v11}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 110
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v7, v11}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 136
    :goto_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v7, v6}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v7, v6}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v7, v1}, Landroid/widget/TextClock;->setContentDescriptionFormat12Hour(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v7, v1}, Landroid/widget/TextClock;->setContentDescriptionFormat24Hour(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v7, v0}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v7, v0}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 142
    return-void

    .end local v0    # "amPmString":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "isAmPmFront":Z
    .end local v4    # "isLTRAmpm":Z
    .end local v5    # "isRtl":Z
    .end local v6    # "timeString":Ljava/lang/String;
    :cond_1
    move v3, v7

    .line 95
    goto :goto_0

    .restart local v3    # "isAmPmFront":Z
    :cond_2
    move v5, v7

    .line 96
    goto :goto_1

    .restart local v5    # "isRtl":Z
    :cond_3
    move v4, v7

    .line 99
    goto :goto_2

    .line 101
    :cond_4
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewFront:Landroid/widget/TextClock;

    invoke-virtual {v9}, Landroid/widget/TextClock;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v9

    if-nez v9, :cond_5

    move v4, v8

    .restart local v4    # "isLTRAmpm":Z
    :goto_5
    goto :goto_2

    .end local v4    # "isLTRAmpm":Z
    :cond_5
    move v4, v7

    goto :goto_5

    .line 102
    .restart local v4    # "isLTRAmpm":Z
    :cond_6
    invoke-static {v1, v7}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getAmPmPartEndIndex(Ljava/lang/String;Z)I

    move-result v2

    goto :goto_3

    .line 114
    .restart local v2    # "index":I
    :cond_7
    if-eqz v3, :cond_8

    .line 115
    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 116
    .restart local v0    # "amPmString":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 117
    .restart local v6    # "timeString":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewFront:Landroid/widget/TextClock;

    invoke-virtual {v8, v7}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 118
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v7, v11}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 119
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewFront:Landroid/widget/TextClock;

    invoke-virtual {v7, v0}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewFront:Landroid/widget/TextClock;

    invoke-virtual {v7, v0}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 121
    .end local v0    # "amPmString":Ljava/lang/String;
    .end local v6    # "timeString":Ljava/lang/String;
    :cond_8
    if-eqz v5, :cond_9

    if-eqz v4, :cond_9

    .line 122
    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 123
    .restart local v6    # "timeString":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    .restart local v0    # "amPmString":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewFront:Landroid/widget/TextClock;

    invoke-virtual {v8, v7}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 125
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v7, v11}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 126
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewFront:Landroid/widget/TextClock;

    invoke-virtual {v7, v0}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewFront:Landroid/widget/TextClock;

    invoke-virtual {v7, v0}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 129
    .end local v0    # "amPmString":Ljava/lang/String;
    .end local v6    # "timeString":Ljava/lang/String;
    :cond_9
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v8, v7}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 130
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewFront:Landroid/widget/TextClock;

    invoke-virtual {v8, v11}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 131
    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 132
    .restart local v6    # "timeString":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "amPmString":Ljava/lang/String;
    goto/16 :goto_4
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 75
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 76
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->updatePatterns()V

    .line 84
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 63
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 64
    const v0, 0x7f0e02e2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    .line 65
    const v0, 0x7f0e02e3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    .line 66
    const v0, 0x7f0e02e1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewFront:Landroid/widget/TextClock;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 69
    return-void
.end method
