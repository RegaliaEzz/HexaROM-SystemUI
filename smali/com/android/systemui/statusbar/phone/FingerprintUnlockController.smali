.class public Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FingerprintUnlockController.java"


# instance fields
.field private mBoostHelper:Landroid/os/DVFSHelper;

.field private mContext:Landroid/content/Context;

.field private mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mMigrationDialog:Landroid/app/AlertDialog;

.field private mMode:I

.field private mPendingAuthenticatedUserId:I

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mVibraterService:Landroid/os/SystemVibrator;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBarWindowManager"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .param p3, "dozeScrimController"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;
    .param p4, "keyguardViewMediator"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p5, "scrimController"    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p6, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMigrationDialog:Landroid/app/AlertDialog;

    .line 147
    new-instance v0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$1;-><init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

    .line 130
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    .line 131
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    .line 132
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 134
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 135
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 136
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 137
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 138
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mVibraterService:Landroid/os/SystemVibrator;

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->releaseFingerprintWakeLock()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method private boostCpuClock()V
    .locals 7

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mBoostHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 364
    const-string v0, "FingerprintController"

    const-string v1, "fingerprint boostCpuClock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    const-string v2, "KEYGUARD_FINGERPRINT_BOOST"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mBoostHelper:Landroid/os/DVFSHelper;

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mBoostHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v6

    .line 368
    .local v6, "freqTable":[I
    if-eqz v6, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mBoostHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mBoostHelper:Landroid/os/DVFSHelper;

    const v3, 0x124f80

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 372
    .end local v6    # "freqTable":[I
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mBoostHelper:Landroid/os/DVFSHelper;

    const/16 v1, 0x5dc

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 373
    return-void
.end method

.method private calculateMode()I
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 295
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    .line 296
    .local v0, "unlockingAllowed":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    if-nez v2, :cond_3

    .line 297
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 298
    const/4 v1, 0x4

    .line 316
    :cond_0
    :goto_0
    return v1

    .line 299
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 300
    const/4 v1, 0x2

    goto :goto_0

    .line 301
    :cond_2
    if-eqz v0, :cond_0

    .line 302
    const/4 v1, 0x1

    goto :goto_0

    .line 307
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 308
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 309
    const/4 v1, 0x6

    goto :goto_0

    .line 310
    :cond_4
    if-eqz v0, :cond_5

    .line 311
    const/4 v1, 0x5

    goto :goto_0

    .line 312
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 336
    iput v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    .line 337
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->releaseFingerprintWakeLock()V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceDozeBrightness(Z)V

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyFpAuthModeChanged()V

    .line 340
    return-void
.end method

.method private releaseFingerprintWakeLock()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    const-string v0, "FingerprintController"

    const-string v1, "releasing fp wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 166
    :cond_0
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 376
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMigrationDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104042f

    new-instance v2, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$4;-><init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMigrationDialog:Landroid/app/AlertDialog;

    .line 402
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMigrationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 403
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMigrationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMigrationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMigrationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMigrationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 409
    :cond_1
    return-void
.end method


# virtual methods
.method public finishKeyguardFadingAway()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 354
    iput v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyFpAuthModeChanged()V

    .line 359
    return-void
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    return v0
.end method

.method public onFingerprintAcquired(I)V
    .locals 5
    .param p1, "acquireInfo"    # I

    .prologue
    const/4 v4, 0x1

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUnlockingWithFingerprintForced()Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    const-string v0, "FingerprintController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFingerprintAcquired( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , show bouncer!! )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismiss()V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->releaseFingerprintWakeLock()V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "wake-and-unlock wakelock"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 183
    const-string v0, "FingerprintController"

    const-string v1, "fingerprint acquired, grabbing fp wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceDozeBrightness(Z)V

    goto :goto_0
.end method

.method public onFingerprintAuthFailed()V
    .locals 2

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->cleanup()V

    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismiss()V

    .line 328
    :cond_0
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 9
    .param p1, "userId"    # I

    .prologue
    const v8, 0x7f0d014f

    const v7, 0x7f0d014e

    const/16 v6, 0x18

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 200
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const-string v1, "FingerprintController"

    const-string v2, "onFingerprintAuthenticated / isGoingToSleep"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iput p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    .line 268
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->boostCpuClock()V

    .line 208
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 209
    .local v0, "wasDeviceInteractive":Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->calculateMode()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    .line 210
    const-string v1, "FingerprintController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFingerprintAuthenticated userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " wasDeviceInteractive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    if-nez v0, :cond_1

    .line 213
    const-string v1, "FingerprintController"

    const-string v2, "fp wakelock: Authenticated, waking up..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 217
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->releaseFingerprintWakeLock()V

    .line 218
    iget v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    packed-switch v1, :pswitch_data_0

    .line 264
    :cond_2
    :goto_1
    :pswitch_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 265
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceDozeBrightness(Z)V

    .line 267
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyFpAuthModeChanged()V

    goto :goto_0

    .line 220
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setFingerprintUnlocked(Z)V

    .line 221
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUnlockingWithFingerprintForced()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 222
    const-string v1, "FingerprintController"

    const-string v2, "onFingerprintAuthenticated :: by Fingerprint"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 226
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

    goto :goto_1

    .line 231
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setFingerprintUnlocked(Z)V

    .line 232
    if-nez v0, :cond_5

    .line 233
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyDeviceWakeUpRequested()V

    .line 235
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUnlockingWithFingerprintForced()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 236
    const-string v1, "FingerprintController"

    const-string v2, "onFingerprintAuthenticated :: by Fingerprint"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 241
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

    goto/16 :goto_1

    .line 248
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateMediaMetaData(Z)V

    .line 251
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setFingerprintUnlocked(Z)V

    .line 252
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarFocusable(Z)V

    .line 253
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->abortPulsing()V

    .line 254
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking()V

    .line 255
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setWakeAndUnlocking()V

    .line 256
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 257
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    goto/16 :goto_1

    .line 218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onFingerprintError(ILjava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # I
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->cleanup()V

    .line 333
    return-void
.end method

.method public onFingerprintHelp(ILjava/lang/String;Z)V
    .locals 5
    .param p1, "msgId"    # I
    .param p2, "helpString"    # Ljava/lang/String;
    .param p3, "isCountdownTimerRunning"    # Z

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mVibraterService:Landroid/os/SystemVibrator;

    const v1, 0xc36d

    const/4 v2, -0x1

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/SystemVibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 423
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 3
    .param p1, "why"    # I

    .prologue
    const/4 v2, -0x1

    .line 277
    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    if-eq v0, v2, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$2;-><init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 287
    :cond_0
    iput v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    .line 288
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMigrationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMigrationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMigrationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 416
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMigrationDialog:Landroid/app/AlertDialog;

    .line 418
    :cond_1
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 1
    .param p1, "why"    # I

    .prologue
    .line 272
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    .line 273
    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0
    .param p1, "statusBarKeyguardViewManager"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 145
    return-void
.end method

.method public startKeyguardFadingAway()V
    .locals 4

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$3;-><init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    const-wide/16 v2, 0x60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 351
    return-void
.end method
