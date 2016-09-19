.class public Lcom/android/systemui/qs/QuickConnectSoundPathView;
.super Ljava/lang/Object;
.source "QuickConnectSoundPathView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapterBridge;,
        Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;,
        Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;,
        Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;,
        Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapter;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z

.field protected static final TAG:Ljava/lang/String; = "QConnectSoundPathView"


# instance fields
.field private mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mIsCallMode:Z

.field private mIsOwnerProfile:Z

.field private mIsQConnectSupported:Z

.field private final mQCDevicesView:Landroid/widget/LinearLayout;

.field private mQConnectAdapter:Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;

.field private final mQuickConnectContainerView:Landroid/view/View;

.field private final mQuickConnectView:Landroid/widget/TextView;

.field private final mRootView:Landroid/view/View;

.field private mSoundAdapter:Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;

.field private final mSoundPathContainerView:Landroid/view/View;

.field private mSoundPathController:Lcom/android/systemui/statusbar/policy/SoundPathController;

.field private final mSoundPathView:Landroid/widget/TextView;

.field private final mTapView:Landroid/widget/TextView;

.field private mWifiP2pController:Lcom/android/systemui/statusbar/policy/WifiP2pController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "QConnectSoundPathView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mRootView:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mRootView:Landroid/view/View;

    const v1, 0x7f0e01c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mSoundPathView:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mRootView:Landroid/view/View;

    const v1, 0x7f0e01c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mQuickConnectView:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mRootView:Landroid/view/View;

    const v1, 0x7f0e01c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mSoundPathContainerView:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mRootView:Landroid/view/View;

    const v1, 0x7f0e01c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mQuickConnectContainerView:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mRootView:Landroid/view/View;

    const v1, 0x7f0e01c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mTapView:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mRootView:Landroid/view/View;

    const v1, 0x7f0e01c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mQCDevicesView:Landroid/widget/LinearLayout;

    .line 111
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mSoundPathView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    new-instance v0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;-><init>(Lcom/android/systemui/qs/QuickConnectSoundPathView;Lcom/android/systemui/qs/QuickConnectSoundPathView;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mSoundAdapter:Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;

    .line 114
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isQuickConnectSupported(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mIsQConnectSupported:Z

    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mIsQConnectSupported:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mQuickConnectContainerView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    new-instance v0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;-><init>(Lcom/android/systemui/qs/QuickConnectSoundPathView;Lcom/android/systemui/qs/QuickConnectSoundPathView;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mQConnectAdapter:Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;

    .line 119
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mQCDevicesView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mQConnectAdapter:Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapterBridge;->link(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;)V

    .line 127
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->updateVisibility()V

    .line 128
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mQuickConnectContainerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mQuickConnectContainerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mQuickConnectContainerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QuickConnectSoundPathView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Lcom/android/systemui/statusbar/policy/BluetoothController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QuickConnectSoundPathView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Lcom/android/systemui/statusbar/policy/WifiP2pController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QuickConnectSoundPathView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mWifiP2pController:Lcom/android/systemui/statusbar/policy/WifiP2pController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QuickConnectSoundPathView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Lcom/android/systemui/statusbar/policy/SoundPathController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QuickConnectSoundPathView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mSoundPathController:Lcom/android/systemui/statusbar/policy/SoundPathController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QuickConnectSoundPathView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/qs/QuickConnectSoundPathView;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QuickConnectSoundPathView;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/systemui/qs/QuickConnectSoundPathView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QuickConnectSoundPathView;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mIsCallMode:Z

    return p1
.end method

.method private showSoundPathDeviceListPopup()V
    .locals 12

    .prologue
    const v11, 0x800033

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 207
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v3, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mDialog:Landroid/app/AlertDialog;

    .line 210
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 211
    .local v8, "window":Landroid/view/Window;
    invoke-virtual {v8, v9}, Landroid/view/Window;->requestFeature(I)Z

    .line 212
    invoke-virtual {v8, v10}, Landroid/view/Window;->clearFlags(I)V

    .line 213
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mContext:Landroid/content/Context;

    const v3, 0x7f04005a

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 216
    .local v1, "devices":Landroid/view/View;
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mDialog:Landroid/app/AlertDialog;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 220
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "devices":Landroid/view/View;
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mSoundAdapter:Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapterBridge;->link(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;)V

    .line 223
    .end local v8    # "window":Landroid/view/Window;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 224
    .restart local v8    # "window":Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 225
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v11, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 227
    new-array v7, v10, [I

    .line 228
    .local v7, "rect":[I
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-ne v0, v9, :cond_1

    .line 231
    iput v11, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 235
    :goto_0
    aget v0, v7, v2

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 236
    aget v0, v7, v9

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 237
    invoke-virtual {v8, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 240
    return-void

    .line 233
    :cond_1
    const v0, 0x800035

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 177
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 181
    iget-object v2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mQuickConnectContainerView:Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.qconnect.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v1, "i":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 185
    const-string v2, "com.samsung.android.qconnect"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v3, "extra_connected_devices"

    iget-object v2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mQConnectAdapter:Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 187
    iget-object v2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->startActivityDismissingKeyguard(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    iget-object v2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->APP_ID_QS:Ljava/lang/String;

    sget-object v4, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->QS_FEATURE_QCONNECT:Ljava/lang/String;

    invoke-static {v2, v3, v4, v6, v6}, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 186
    .restart local v1    # "i":Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v2, "QConnectSoundPathView"

    const-string v3, "quick connect is not installed or it\'s disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    iget-object v2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->APP_ID_QS:Ljava/lang/String;

    sget-object v4, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->QS_FEATURE_QCONNECT:Ljava/lang/String;

    invoke-static {v2, v3, v4, v6, v6}, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->APP_ID_QS:Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->QS_FEATURE_QCONNECT:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v6}, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 195
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mSoundPathView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->showSoundPathDeviceListPopup()V

    goto :goto_1
.end method

.method public onConfigurationChanged()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mSoundPathView:Landroid/widget/TextView;

    const v1, 0x7f0d0467

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mQuickConnectView:Landroid/widget/TextView;

    const v1, 0x7f0d0465

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mTapView:Landroid/widget/TextView;

    const v1, 0x7f0d0466

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 253
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mDialog:Landroid/app/AlertDialog;

    .line 255
    :cond_1
    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->dismissDialog()V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mQConnectAdapter:Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->updateResources()V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mQConnectAdapter:Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->refresh()V

    .line 204
    return-void
.end method

.method public setButtonsBackground(Z)V
    .locals 2
    .param p1, "mEnabled"    # Z

    .prologue
    .line 712
    if-eqz p1, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mSoundPathView:Landroid/widget/TextView;

    const v1, 0x7f02062b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 714
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mTapView:Landroid/widget/TextView;

    const v1, 0x7f02062c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 719
    :goto_0
    return-void

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mSoundPathView:Landroid/widget/TextView;

    const v1, 0x7f02032c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 717
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mTapView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 132
    const-string v0, "QConnectSoundPathView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHost = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getBluetoothController()Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mIsQConnectSupported:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getWifiP2pController()Lcom/android/systemui/statusbar/policy/WifiP2pController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mWifiP2pController:Lcom/android/systemui/statusbar/policy/WifiP2pController;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mQConnectAdapter:Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mWifiP2pController:Lcom/android/systemui/statusbar/policy/WifiP2pController;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mQConnectAdapter:Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/WifiP2pController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/WifiP2pController$Callback;)V

    .line 143
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getSoundPathController()Lcom/android/systemui/statusbar/policy/SoundPathController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mSoundPathController:Lcom/android/systemui/statusbar/policy/SoundPathController;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mSoundPathController:Lcom/android/systemui/statusbar/policy/SoundPathController;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mSoundAdapter:Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/SoundPathController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/SoundPathController$Callback;)V

    .line 145
    return-void
.end method

.method public setOwnerProfile(Z)V
    .locals 0
    .param p1, "ownerProfile"    # Z

    .prologue
    .line 722
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mIsOwnerProfile:Z

    .line 723
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->updateVisibility()V

    .line 724
    return-void
.end method

.method public updateVisibility()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 148
    const/4 v1, 0x0

    .line 149
    .local v1, "soundVisible":Z
    const/4 v0, 0x0

    .line 151
    .local v0, "qcVisible":Z
    iget-boolean v2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mIsCallMode:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mSoundAdapter:Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->getCount()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_3

    .line 152
    iget-object v2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mSoundPathContainerView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 153
    const/4 v1, 0x1

    .line 162
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mQCDevicesView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 163
    iget-object v2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mQCDevicesView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    const/4 v0, 0x1

    .line 170
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mQuickConnectView:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mIsQConnectSupported:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v5, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mTapView:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mIsQConnectSupported:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    if-eqz v0, :cond_6

    :cond_1
    move v2, v4

    :goto_3
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mRootView:Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mIsQConnectSupported:Z

    if-nez v5, :cond_2

    if-eqz v1, :cond_7

    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mIsOwnerProfile:Z

    if-eqz v5, :cond_7

    :goto_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 173
    return-void

    .line 156
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mSoundPathContainerView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 167
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView;->mQCDevicesView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_5
    move v2, v4

    .line 170
    goto :goto_2

    :cond_6
    move v2, v3

    .line 171
    goto :goto_3

    :cond_7
    move v3, v4

    .line 172
    goto :goto_4
.end method
