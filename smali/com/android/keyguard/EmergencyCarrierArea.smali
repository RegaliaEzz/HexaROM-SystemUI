.class public Lcom/android/keyguard/EmergencyCarrierArea;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "EmergencyCarrierArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/EmergencyCarrierArea$1;,
        Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;
    }
.end annotation


# instance fields
.field private mBackupPINButton:Landroid/widget/Button;

.field private mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

.field private mEmergencyButtonArea:Landroid/widget/LinearLayout;

.field private mForgotPatternButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onFinishInflate()V

    .line 57
    sget v0, Lcom/android/keyguard/R$id;->forgot_password_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyCarrierArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mForgotPatternButton:Landroid/widget/Button;

    .line 58
    sget v0, Lcom/android/keyguard/R$id;->backup_pin_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyCarrierArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mBackupPINButton:Landroid/widget/Button;

    .line 59
    sget v0, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyCarrierArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 60
    sget v0, Lcom/android/keyguard/R$id;->keyguard_emergency_button_area:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyCarrierArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    .line 61
    return-void
.end method

.method public resizeFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V
    .locals 10
    .param p1, "mode"    # Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 64
    iget-object v5, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mForgotPatternButton:Landroid/widget/Button;

    if-nez v5, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mBackupPINButton:Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 70
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportBackupPin()Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->BackupPIN:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    if-ne p1, v5, :cond_3

    .line 71
    sget-object p1, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->Normal:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    .line 77
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyCarrierArea;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->keyguard_bottom_area_emergency_button_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    .line 79
    .local v2, "emergencyButtonAreaWidth":I
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyCarrierArea;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->keyguard_bottom_area_emergency_button_area_max_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 81
    .local v1, "emergencyButtonAreaHeight":I
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyCarrierArea;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->keyguard_emergency_button_inner_min_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    .line 83
    .local v0, "buttonMinPadding":I
    iget-object v5, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v5}, Lcom/android/keyguard/EmergencyButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 85
    .local v3, "emergencyButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 88
    .local v4, "emergencyCarrierAreaParams":Landroid/view/ViewGroup$LayoutParams;
    sget-object v5, Lcom/android/keyguard/EmergencyCarrierArea$1;->$SwitchMap$com$android$keyguard$EmergencyCarrierArea$FooterMode:[I

    invoke-virtual {p1}, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 90
    :pswitch_0
    const-string v5, "EmergencyCarrierArea"

    const-string v6, "mode normal"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v5, -0x2

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 92
    iget-object v5, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 72
    .end local v0    # "buttonMinPadding":I
    .end local v1    # "emergencyButtonAreaHeight":I
    .end local v2    # "emergencyButtonAreaWidth":I
    .end local v3    # "emergencyButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "emergencyCarrierAreaParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportBackupPin()Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    if-ne p1, v5, :cond_2

    .line 73
    sget-object p1, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->SamsungAccountOnly:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    goto :goto_1

    .line 95
    .restart local v0    # "buttonMinPadding":I
    .restart local v1    # "emergencyButtonAreaHeight":I
    .restart local v2    # "emergencyButtonAreaWidth":I
    .restart local v3    # "emergencyButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4    # "emergencyCarrierAreaParams":Landroid/view/ViewGroup$LayoutParams;
    :pswitch_1
    const-string v5, "EmergencyCarrierArea"

    const-string v6, "mode ForgotLockPattern"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 97
    iget-object v5, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v5, v3}, Lcom/android/keyguard/EmergencyButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v5, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v5, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v5, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setMaxLines(I)V

    .line 101
    iget-object v5, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setMaxLines(I)V

    .line 102
    iget-object v5, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v5, v9}, Lcom/android/keyguard/EmergencyButton;->setMaxLines(I)V

    .line 103
    iget-object v5, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v5, v0, v7, v0, v7}, Lcom/android/keyguard/EmergencyButton;->setPadding(IIII)V

    .line 104
    iget-object v5, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v5, v0, v7, v0, v7}, Landroid/widget/Button;->setPadding(IIII)V

    .line 105
    iget-object v5, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v5, v0, v7, v0, v7}, Landroid/widget/Button;->setPadding(IIII)V

    .line 106
    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 107
    iget-object v5, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 110
    :pswitch_2
    const-string v5, "EmergencyCarrierArea"

    const-string v6, "mode BackupPIN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 112
    iget-object v5, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 115
    :pswitch_3
    const-string v5, "EmergencyCarrierArea"

    const-string v6, "mode SamsungAccountOnly"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 117
    iget-object v5, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v5, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v5, v7, v7, v7, v7}, Lcom/android/keyguard/EmergencyButton;->setPadding(IIII)V

    .line 119
    iget-object v5, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_0

    .line 122
    :pswitch_4
    const-string v5, "EmergencyCarrierArea"

    const-string v6, "mode VerifyUnlocked"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
