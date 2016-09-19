.class public Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardBackupPasswordView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/keyguard/KeyguardSecurityView;


# instance fields
.field private mContainer:Landroid/view/ViewGroup;

.field private final mDisappearYTranslation:I

.field private mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mMigrationDialog:Landroid/app/AlertDialog;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field private final mShowImeAtScreenOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mMigrationDialog:Landroid/app/AlertDialog;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->kg_show_ime_at_screen_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mShowImeAtScreenOn:Z

    .line 96
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->disappear_y_translation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mDisappearYTranslation:I

    .line 98
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 100
    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mShowImeAtScreenOn:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "shouldIncludeAuxiliarySubtypes"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 310
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 313
    .local v1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 315
    .local v2, "filteredImisCount":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 317
    .local v5, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .line 343
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .line 318
    .restart local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 321
    .local v8, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 322
    add-int/lit8 v2, v2, 0x1

    .line 323
    goto :goto_0

    .line 326
    :cond_2
    const/4 v0, 0x0

    .line 327
    .local v0, "auxCount":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 328
    .local v7, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 332
    .end local v7    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 337
    .local v6, "nonAuxCount":I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    .line 338
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 339
    goto :goto_0

    .line 343
    .end local v0    # "auxCount":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "nonAuxCount":I
    .end local v8    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v10, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    move v10, v9

    goto :goto_1
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 418
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mMigrationDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104042f

    new-instance v2, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$4;

    invoke-direct {v2, p0}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$4;-><init>(Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mMigrationDialog:Landroid/app/AlertDialog;

    .line 443
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mMigrationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 444
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mMigrationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 445
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mMigrationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mMigrationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mMigrationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 450
    :cond_1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 395
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->onUserInput()V

    .line 398
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 385
    :cond_0
    return-void
.end method

.method protected getPasswordText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 137
    sget v0, Lcom/android/keyguard/R$id;->passwordEntry:I

    return v0
.end method

.method protected getPromtReasonStringRes(I)I
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 165
    packed-switch p1, :pswitch_data_0

    .line 172
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 167
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    sget v0, Lcom/android/keyguard/R$string;->kg_backup_password_instructions:I

    goto :goto_0

    .line 170
    :cond_0
    sget v0, Lcom/android/keyguard/R$string;->kg_prompt_reason_restart_password:I

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 355
    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_password:I

    return v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 403
    if-nez p3, :cond_3

    if-eqz p2, :cond_0

    const/4 v4, 0x6

    if-eq p2, v4, :cond_0

    const/4 v4, 0x5

    if-ne p2, v4, :cond_3

    :cond_0
    move v1, v3

    .line 407
    .local v1, "isSoftImeEvent":Z
    :goto_0
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    move v0, v3

    .line 410
    .local v0, "isKeyboardEnterKey":Z
    :goto_1
    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    .line 411
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->verifyPasswordAndUnlock()V

    move v2, v3

    .line 414
    :cond_2
    return v2

    .end local v0    # "isKeyboardEnterKey":Z
    .end local v1    # "isSoftImeEvent":Z
    :cond_3
    move v1, v2

    .line 403
    goto :goto_0

    .restart local v1    # "isSoftImeEvent":Z
    :cond_4
    move v0, v2

    .line 407
    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 195
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 197
    const/4 v0, 0x0

    .line 199
    .local v0, "imeOrDeleteButtonVisible":Z
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 202
    sget v4, Lcom/android/keyguard/R$id;->container:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mContainer:Landroid/view/ViewGroup;

    .line 205
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->getPasswordTextViewId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    .line 206
    new-instance v4, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v5, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 207
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 208
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v5, 0x81

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 210
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 211
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 214
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v5, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$2;

    invoke-direct {v5, p0}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$2;-><init>(Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 223
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    .line 226
    sget v4, Lcom/android/keyguard/R$id;->switch_ime_button:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 227
    .local v3, "switchImeButton":Landroid/view/View;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0, v4, v6}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 229
    const/4 v0, 0x1

    .line 230
    new-instance v4, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$3;

    invoke-direct {v4, p0}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$3;-><init>(Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    :cond_0
    if-nez v0, :cond_1

    .line 242
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 243
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_1

    move-object v1, v2

    .line 244
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 245
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 246
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method protected onPasswordChecked(ZIZ)V
    .locals 11
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I
    .param p3, "isValidPassword"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 486
    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportUnpackMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 487
    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 488
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUnlockingWithFingerprintForced()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 489
    const-string v4, "KeyguardBackupPasswordView"

    const-string v5, "onFingerprintAuthenticated :: by Backup password"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->kg_fingerprints_upgrade_popup_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$string;->kg_fingerprints_upgrade_instructions:I

    new-array v7, v9, [Ljava/lang/Object;

    const/16 v8, 0x18

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :goto_0
    invoke-virtual {p0, v9}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->resetPasswordText(Z)V

    .line 509
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    .line 510
    return-void

    .line 493
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v9, v10}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 494
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v9}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_0

    .line 497
    :cond_2
    invoke-virtual {p0, v9}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->setPasswordEntryInputEnabled(Z)V

    .line 498
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v10, v10}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 499
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    .line 500
    .local v0, "attempts":I
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->getRemainingAttemptsBeforeWipe()I

    move-result v1

    .line 501
    .local v1, "remainingAttemptsBeforeWipe":I
    const/4 v4, 0x5

    if-eq v0, v4, :cond_3

    const/16 v4, 0x9

    if-le v0, v4, :cond_4

    :cond_3
    if-eqz v1, :cond_4

    .line 502
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(I)J

    move-result-wide v2

    .line 503
    .local v2, "deadline":J
    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->handleAttemptLockout(J)V

    goto :goto_0

    .line 505
    .end local v2    # "deadline":J
    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->getWrongPasswordStringId()I

    move-result v5

    invoke-virtual {v4, v5, v9}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 178
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPause()V

    .line 179
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 180
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mMigrationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mMigrationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mMigrationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 183
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mMigrationDialog:Landroid/app/AlertDialog;

    .line 185
    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onResume(I)V

    .line 150
    new-instance v0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$1;-><init>(Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;I)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->post(Ljava/lang/Runnable;)Z

    .line 161
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 389
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    .line 190
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 191
    return-void
.end method

.method protected resetPasswordText(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :cond_0
    return-void
.end method

.method protected resetState()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 105
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    .line 106
    .local v0, "attempts":I
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->getRemainingAttemptsBeforeWipe()I

    move-result v2

    .line 107
    .local v2, "remainingAttemptsBeforeWipe":I
    const/4 v1, 0x0

    .line 108
    .local v1, "msgId":I
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    const v1, 0x1040b53

    .line 115
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0xa

    if-le v0, v4, :cond_4

    if-lez v2, :cond_4

    .line 117
    if-ne v2, v8, :cond_3

    .line 118
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/keyguard/R$string;->kg_1_attempt_remaining:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v8}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 127
    :goto_1
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isEnabled()Z

    move-result v3

    .line 128
    .local v3, "wasDisabled":Z
    invoke-virtual {p0, v8}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->setPasswordEntryEnabled(Z)V

    .line 129
    invoke-virtual {p0, v8}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->setPasswordEntryInputEnabled(Z)V

    .line 130
    if-eqz v3, :cond_0

    .line 131
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v8}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 133
    :cond_0
    return-void

    .line 110
    .end local v3    # "wasDisabled":Z
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->isDismissActionExist()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 111
    sget v1, Lcom/android/keyguard/R$string;->kg_password_bouncer_instructions:I

    goto :goto_0

    .line 113
    :cond_2
    sget v1, Lcom/android/keyguard/R$string;->kg_backup_password_instructions:I

    goto :goto_0

    .line 121
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v5, Lcom/android/keyguard/R$string;->kg_n_attempts_remaining:I

    invoke-virtual {v4, v1, v5, v2, v8}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IIIZ)V

    goto :goto_1

    .line 125
    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v4, v1, v8}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ)V

    goto :goto_1
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 269
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 270
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected setPasswordEntryInputEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 280
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 281
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    goto :goto_0
.end method

.method public startAppearAnimation()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 360
    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->setAlpha(F)V

    .line 361
    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->setTranslationY(F)V

    .line 362
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 367
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 4
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mDisappearYTranslation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 377
    const/4 v0, 0x1

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 454
    const-string v1, "KeyguardBackupPasswordView"

    const-string v2, "verifyPasswordAndUnlock"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "entry":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->setPasswordEntryInputEnabled(Z)V

    .line 458
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v1, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 462
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 465
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->setPasswordEntryInputEnabled(Z)V

    .line 466
    invoke-virtual {p0, v4, v4, v4}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->onPasswordChecked(ZIZ)V

    .line 483
    :goto_0
    return-void

    .line 470
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    new-instance v3, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$5;

    invoke-direct {v3, p0}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$5;-><init>(Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;)V

    invoke-static {v1, v0, v2, v4, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkBackupPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;IZLcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    goto :goto_0
.end method
