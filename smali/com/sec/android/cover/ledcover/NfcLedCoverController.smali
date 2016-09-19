.class public Lcom/sec/android/cover/ledcover/NfcLedCoverController;
.super Lcom/sec/android/cover/BaseCoverController;
.source "NfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/ledcover/NfcLedCoverController$LedCoverOffByNfcListener;,
        Lcom/sec/android/cover/ledcover/NfcLedCoverController$NfcLedCoverControllerHandler;,
        Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;,
        Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;,
        Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isBatteryCharged:Z

.field private isBatteryCharging:Z

.field private isBatteryChargingWireless:Z

.field private isCallInProgress:Z

.field private isIncomingCallStatus:Z

.field private isScreenOn:Z

.field private mAlarmStartTime:J

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallStartMillisData:[B

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mHandler:Lcom/sec/android/cover/ledcover/NfcLedCoverController$NfcLedCoverControllerHandler;

.field private mHeadsetPlugged:Z

.field private mHeadsetPluggedTime:J

.field private mIsAlarmActive:Z

.field private mIsTimerActive:Z

.field private mLastInCallIntent:Landroid/content/Intent;

.field private mMusicStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mPrevCoverStateWasOpen:Z

.field private mPrevInCallEvent:I

.field private mTimerStartTime:J

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mVoiceRecorderStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

.field private prevCallSatus:I

.field private strIntentAction:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverUI."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 299
    invoke-direct {p0, p1}, Lcom/sec/android/cover/BaseCoverController;-><init>(Landroid/content/Context;)V

    .line 76
    iput-object v4, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 86
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.intent.action.PHONE_STATE"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_STARTED_IN_ALERT"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_STOPPED_IN_ALERT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.sec.android.phone.action.ACTION_CALL_TIME"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.intent.action.HEADSET_PLUG"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.sec.android.app.clockpackage.timer.TIMER_STOPPED_IN_ALERT"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sec.android.app.clockpackage.timer.TIMER_STARTED_IN_ALERT"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->strIntentAction:[Ljava/lang/String;

    .line 113
    iput-boolean v3, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isScreenOn:Z

    .line 114
    iput-boolean v3, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isIncomingCallStatus:Z

    .line 115
    iput-boolean v3, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isCallInProgress:Z

    .line 116
    iput-boolean v3, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isBatteryCharging:Z

    .line 117
    iput-boolean v3, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isBatteryChargingWireless:Z

    .line 118
    iput-boolean v3, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isBatteryCharged:Z

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->prevCallSatus:I

    .line 129
    iput-wide v6, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mAlarmStartTime:J

    .line 130
    iput-wide v6, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mTimerStartTime:J

    .line 131
    sget-object v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;->STOPPED:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    .line 132
    iput-object v4, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mLastInCallIntent:Landroid/content/Intent;

    .line 135
    iput-boolean v3, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mHeadsetPlugged:Z

    .line 137
    sget-object v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;->STOPPED:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mVoiceRecorderStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    .line 160
    new-instance v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;-><init>(Lcom/sec/android/cover/ledcover/NfcLedCoverController;)V

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 250
    new-instance v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController$2;-><init>(Lcom/sec/android/cover/ledcover/NfcLedCoverController;)V

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 301
    new-instance v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-direct {v0, p0, v4}, Lcom/sec/android/cover/ledcover/NfcLedCoverController$NfcLedCoverControllerHandler;-><init>(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;)V

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mHandler:Lcom/sec/android/cover/ledcover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 302
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 303
    invoke-direct {p0, v3}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->updateMissedEvent(Z)V

    .line 308
    iput-boolean v3, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mPrevCoverStateWasOpen:Z

    .line 309
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/cover/ledcover/NfcLedCoverController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendCommandByPriority(I)V

    return-void
.end method

.method static synthetic access$1002(Lcom/sec/android/cover/ledcover/NfcLedCoverController;J)J
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController;
    .param p1, "x1"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mAlarmStartTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/sec/android/cover/ledcover/NfcLedCoverController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mIsTimerActive:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mIsTimerActive:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/sec/android/cover/ledcover/NfcLedCoverController;J)J
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController;
    .param p1, "x1"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mTimerStartTime:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->processCallEvent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->processCallTimeInformation(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->processHeadsetPlugInformation(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/cover/ledcover/NfcLedCoverController;I[B)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendLedData(I[B)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController;
    .param p1, "x1"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->updateRemoteView(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/cover/ledcover/NfcLedCoverController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isScreenOn:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isScreenOn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController;
    .param p1, "x1"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendClockInformation(Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/cover/ledcover/NfcLedCoverController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->handleAlarmsTimeout()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/cover/ledcover/NfcLedCoverController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isBatteryCharging:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isBatteryCharging:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/cover/ledcover/NfcLedCoverController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isBatteryChargingWireless:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isBatteryChargingWireless:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/cover/ledcover/NfcLedCoverController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isBatteryCharged:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isBatteryCharged:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/cover/ledcover/NfcLedCoverController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mIsAlarmActive:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mIsAlarmActive:Z

    return p1
.end method

.method private getIncomingCallId(Landroid/content/Intent;)[B
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1200
    const/4 v4, 0x1

    new-array v6, v4, [B

    .line 1201
    .local v6, "callerId":[B
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput-byte v5, v6, v4

    .line 1202
    if-eqz p1, :cond_2

    .line 1203
    const-string v4, "incoming_number"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1204
    .local v11, "number":Ljava/lang/String;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1205
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1207
    .local v1, "uri":Landroid/net/Uri;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "sec_led"

    aput-object v5, v2, v4

    .line 1208
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "sec_led >0"

    .line 1209
    .local v3, "selection":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1210
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1213
    .local v8, "contactLookup":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 1214
    .local v7, "contactId":Ljava/lang/String;
    const/4 v12, -0x1

    .line 1215
    .local v12, "secLed":I
    const/4 v9, 0x0

    .line 1216
    .local v9, "i":I
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 1217
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1218
    const/4 v4, 0x0

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1219
    const/4 v4, 0x1

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1220
    sget-object v4, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getSecLedByNumber i: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .local v10, "i":I
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " contactId: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " secLed: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .end local v10    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    .line 1223
    :cond_0
    if-lez v12, :cond_1

    .line 1224
    const/4 v4, 0x0

    int-to-byte v5, v12

    aput-byte v5, v6, v4

    .line 1227
    :cond_1
    if-eqz v8, :cond_2

    .line 1228
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1232
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v7    # "contactId":Ljava/lang/String;
    .end local v8    # "contactLookup":Landroid/database/Cursor;
    .end local v9    # "i":I
    .end local v11    # "number":Ljava/lang/String;
    .end local v12    # "secLed":I
    :cond_2
    return-object v6
.end method

.method private getLastBatteryInformation()I
    .locals 4

    .prologue
    .line 969
    iget-object v3, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverBroadcastManager;

    move-result-object v2

    .line 973
    .local v2, "bcm":Lcom/sec/android/cover/manager/CoverBroadcastManager;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getLastBroadcastInfo(Ljava/lang/String;)Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;

    move-result-object v1

    .line 975
    .local v1, "bcInfo":Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mItem:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mItem:Ljava/lang/Object;

    instance-of v3, v3, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    if-nez v3, :cond_1

    .line 976
    :cond_0
    const/4 v3, 0x0

    .line 980
    :goto_0
    return v3

    .line 979
    :cond_1
    iget-object v0, v1, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mItem:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    .line 980
    .local v0, "batteryStatus":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;
    iget v3, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    goto :goto_0
.end method

.method private getLedCommandStr(I)Ljava/lang/String;
    .locals 3
    .param p1, "command"    # I

    .prologue
    .line 917
    const-string v0, ""

    .line 918
    .local v0, "cmdStr":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 962
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 965
    :goto_0
    return-object v0

    .line 920
    :sswitch_0
    const-string v0, "CLOCK"

    .line 921
    goto :goto_0

    .line 923
    :sswitch_1
    const-string v0, "MISSED_CALL_MSG"

    .line 924
    goto :goto_0

    .line 926
    :sswitch_2
    const-string v0, "VOLUME"

    .line 927
    goto :goto_0

    .line 929
    :sswitch_3
    const-string v0, "INCOMING_CALL"

    .line 930
    goto :goto_0

    .line 932
    :sswitch_4
    const-string v0, "CALL_INPROGRESS"

    .line 933
    goto :goto_0

    .line 935
    :sswitch_5
    const-string v0, "MUSIC"

    .line 936
    goto :goto_0

    .line 938
    :sswitch_6
    const-string v0, "LOW_BATTERY_ALERT"

    .line 939
    goto :goto_0

    .line 941
    :sswitch_7
    const-string v0, "BATTERY_CHARGING"

    .line 942
    goto :goto_0

    .line 944
    :sswitch_8
    const-string v0, "CALL_END"

    .line 945
    goto :goto_0

    .line 947
    :sswitch_9
    const-string v0, "ALARM"

    .line 948
    goto :goto_0

    .line 950
    :sswitch_a
    const-string v0, "INDICATOR"

    .line 951
    goto :goto_0

    .line 953
    :sswitch_b
    const-string v0, "LED_OFF"

    .line 954
    goto :goto_0

    .line 956
    :sswitch_c
    const-string v0, "NEW_MESSAGE"

    .line 957
    goto :goto_0

    .line 959
    :sswitch_d
    const-string v0, "VOICE_RECORDER"

    .line 960
    goto :goto_0

    .line 918
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x4 -> :sswitch_8
        0x5 -> :sswitch_c
        0x6 -> :sswitch_9
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_6
        0xc -> :sswitch_7
        0xd -> :sswitch_5
        0xe -> :sswitch_d
        0xf -> :sswitch_0
        0x10 -> :sswitch_a
        0x12 -> :sswitch_b
        0xfffe -> :sswitch_4
    .end sparse-switch
.end method

.method private getLowBatteryLevel()[B
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1182
    new-array v0, v2, [B

    .line 1183
    .local v0, "batLevel":[B
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->getLastBatteryInformation()I

    move-result v1

    .line 1186
    .local v1, "level":I
    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    :goto_0
    aput-byte v2, v0, v5

    .line 1187
    sget-object v2, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LowBattery level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    return-object v0

    .line 1186
    :cond_0
    const/4 v2, 0x2

    goto :goto_0
.end method

.method private getVolumeInformation()I
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    .line 576
    iget-object v3, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 579
    .local v0, "am":Landroid/media/AudioManager;
    iget v3, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->prevCallSatus:I

    if-ne v3, v6, :cond_3

    .line 581
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 583
    .local v1, "volume":I
    mul-int/lit8 v1, v1, 0x3

    .line 585
    if-gtz v1, :cond_2

    .line 586
    const/4 v1, 0x1

    .line 593
    :cond_0
    :goto_0
    sget-object v3, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVolumeInformation AudioManager: volume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is call voulme? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->prevCallSatus:I

    if-ne v5, v6, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    return v1

    .line 587
    :cond_2
    const/16 v3, 0xf

    if-le v1, v3, :cond_0

    .line 588
    const/16 v1, 0xf

    goto :goto_0

    .line 591
    .end local v1    # "volume":I
    :cond_3
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .restart local v1    # "volume":I
    goto :goto_0
.end method

.method private handleAlarmsTimeout()V
    .locals 10

    .prologue
    const-wide/32 v8, 0xea60

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 1239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1240
    .local v0, "curTime":J
    iget-boolean v2, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mIsAlarmActive:Z

    if-eqz v2, :cond_1

    .line 1241
    iget-wide v2, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mAlarmStartTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mAlarmStartTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_1

    .line 1242
    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mIsAlarmActive:Z

    .line 1243
    sget-object v2, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v3, "Reset alarm"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mIsTimerActive:Z

    if-eqz v2, :cond_3

    .line 1247
    iget-wide v2, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mTimerStartTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-ltz v2, :cond_2

    iget-wide v2, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mTimerStartTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_3

    .line 1248
    :cond_2
    iput-boolean v4, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mIsTimerActive:Z

    .line 1249
    sget-object v2, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v3, "Reset timer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_3
    return-void
.end method

.method private isAlarmOrTimerActive()Z
    .locals 1

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mIsAlarmActive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mIsTimerActive:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processCallEvent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 988
    const-string v1, "state"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 990
    .local v0, "state":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1040
    :goto_0
    return-void

    .line 994
    :cond_0
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 995
    iput-boolean v4, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isIncomingCallStatus:Z

    .line 996
    iput-object p1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mLastInCallIntent:Landroid/content/Intent;

    .line 997
    iput-boolean v2, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isCallInProgress:Z

    .line 999
    iput-object v3, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mCallStartMillisData:[B

    .line 1000
    iget v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->prevCallSatus:I

    if-eq v1, v4, :cond_1

    .line 1001
    invoke-direct {p0, v5}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendCommandByPriority(I)V

    .line 1004
    :cond_1
    iput v4, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->prevCallSatus:I

    goto :goto_0

    .line 1006
    :cond_2
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1007
    iput-boolean v2, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isIncomingCallStatus:Z

    .line 1008
    iput-object v3, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mLastInCallIntent:Landroid/content/Intent;

    .line 1009
    iput-boolean v2, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isCallInProgress:Z

    .line 1010
    iput-object v3, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mCallStartMillisData:[B

    .line 1012
    iget v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->prevCallSatus:I

    if-ne v1, v6, :cond_4

    .line 1014
    const/16 v1, 0x10cc

    invoke-direct {p0, v1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendScheduledCommand(I)V

    .line 1022
    :cond_3
    :goto_1
    iput v2, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->prevCallSatus:I

    goto :goto_0

    .line 1016
    :cond_4
    iget v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->prevCallSatus:I

    if-eqz v1, :cond_3

    .line 1017
    const v1, 0xfffe

    invoke-direct {p0, v1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendClearOngoing(I)V

    .line 1018
    const/16 v1, 0x12

    invoke-direct {p0, v1, v3}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendLedData(I[B)V

    .line 1019
    const/16 v1, 0x10cc

    invoke-direct {p0, v1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendScheduledCommand(I)V

    goto :goto_1

    .line 1024
    :cond_5
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1025
    iput-boolean v2, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isIncomingCallStatus:Z

    .line 1026
    iput-object v3, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mLastInCallIntent:Landroid/content/Intent;

    .line 1027
    iput-boolean v4, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isCallInProgress:Z

    .line 1028
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mCallStartMillisData:[B

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->prevCallSatus:I

    if-eq v1, v6, :cond_6

    .line 1030
    invoke-direct {p0, v5}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendCommandByPriority(I)V

    .line 1032
    :cond_6
    iput v6, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->prevCallSatus:I

    goto :goto_0

    .line 1034
    :cond_7
    iput-boolean v2, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isIncomingCallStatus:Z

    .line 1035
    iput-object v3, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mLastInCallIntent:Landroid/content/Intent;

    .line 1036
    iput-boolean v2, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isCallInProgress:Z

    .line 1037
    iput-object v3, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mCallStartMillisData:[B

    .line 1038
    iput v5, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->prevCallSatus:I

    goto :goto_0
.end method

.method private processCallTimeInformation(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x4

    const-wide/16 v10, -0x1

    .line 1083
    if-nez p1, :cond_1

    .line 1084
    sget-object v7, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v8, "No call info, intent is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_0
    :goto_0
    return-void

    .line 1087
    :cond_1
    const-string v7, "connectedTime"

    invoke-virtual {p1, v7, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1088
    .local v3, "connectedTime":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    .line 1090
    const-string v7, "calldurationmillis"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1091
    .local v4, "strCallTime":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 1092
    sget-object v7, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "strCallTime : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 1099
    .local v5, "timeData":[B
    array-length v7, v5

    const/4 v8, 0x5

    if-ge v7, v8, :cond_2

    .line 1100
    sget-object v7, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v8, "Time data too short, ignore"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1106
    :cond_2
    new-array v6, v12, [B

    .line 1107
    .local v6, "timeDataFiltered":[B
    const/4 v7, 0x3

    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, v5, v8

    aput-byte v8, v6, v7

    .line 1108
    const/4 v7, 0x2

    array-length v8, v5

    add-int/lit8 v8, v8, -0x2

    aget-byte v8, v5, v8

    aput-byte v8, v6, v7

    .line 1109
    const/4 v7, 0x1

    array-length v8, v5

    add-int/lit8 v8, v8, -0x4

    aget-byte v8, v5, v8

    aput-byte v8, v6, v7

    .line 1110
    const/4 v7, 0x0

    array-length v8, v5

    add-int/lit8 v8, v8, -0x5

    aget-byte v8, v5, v8

    aput-byte v8, v6, v7

    .line 1111
    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isCoverOpen()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1112
    const v7, 0xfffe

    invoke-direct {p0, v7}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendClearOngoing(I)V

    .line 1113
    invoke-direct {p0, v12, v6}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendLedData(I[B)V

    goto :goto_0

    .line 1116
    .end local v5    # "timeData":[B
    .end local v6    # "timeDataFiltered":[B
    :cond_3
    sget-object v7, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v8, "call duration info is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1120
    .end local v4    # "strCallTime":Ljava/lang/String;
    :cond_4
    const-string v7, "calldurationmillis"

    invoke-virtual {p1, v7, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1121
    .local v0, "baseTime":J
    cmp-long v7, v0, v10

    if-eqz v7, :cond_5

    .line 1122
    const/16 v7, 0x40

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1123
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1124
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mCallStartMillisData:[B

    .line 1125
    iget-boolean v7, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isCallInProgress:Z

    if-eqz v7, :cond_0

    .line 1126
    const/4 v7, -0x1

    invoke-direct {p0, v7}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendCommandByPriority(I)V

    goto/16 :goto_0

    .line 1129
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    :cond_5
    sget-object v7, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v8, "processCallTimeInformation: BaseTime not added"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private processHeadsetPlugInformation(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1142
    if-nez p1, :cond_1

    .line 1143
    sget-object v1, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v2, "No call info, intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :cond_0
    :goto_0
    return-void

    .line 1146
    :cond_1
    const-string v1, "state"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1147
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 1166
    sget-object v1, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v2, "Headset state unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1149
    :pswitch_0
    sget-object v1, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v2, "Headset unplugged"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mHeadsetPlugged:Z

    goto :goto_0

    .line 1156
    :pswitch_1
    sget-object v1, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v2, "Headset plugged"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mHeadsetPlugged:Z

    .line 1158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mHeadsetPluggedTime:J

    .line 1159
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    sget-object v2, Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;->PLAYING:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    if-ne v1, v2, :cond_2

    .line 1160
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendCommandByPriority(I)V

    goto :goto_0

    .line 1161
    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mVoiceRecorderStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    sget-object v2, Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;->PLAYING:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    if-ne v1, v2, :cond_0

    .line 1162
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendCommandByPriority(I)V

    goto :goto_0

    .line 1147
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private requestRemoteViews()V
    .locals 3

    .prologue
    .line 1171
    sget-object v1, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v2, "requestRemoteViews : Requesting latest remote views to apps.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.cover.REQUEST_REMOTEVIEWS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1173
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1174
    return-void
.end method

.method private resetAlarmType()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 628
    iput-boolean v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mIsAlarmActive:Z

    .line 629
    iput-boolean v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mIsTimerActive:Z

    .line 630
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mAlarmStartTime:J

    .line 631
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mTimerStartTime:J

    .line 632
    return-void
.end method

.method private sendAlarmInformation()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 635
    new-array v0, v7, [B

    aput-byte v6, v0, v6

    .line 638
    .local v0, "content":[B
    iget-boolean v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mIsAlarmActive:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mIsTimerActive:Z

    if-eqz v1, :cond_1

    .line 641
    iget-wide v2, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mAlarmStartTime:J

    iget-wide v4, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mTimerStartTime:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 642
    aput-byte v7, v0, v6

    .line 654
    :goto_0
    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendLedData(I[B)V

    .line 655
    :goto_1
    return-void

    .line 644
    :cond_0
    aput-byte v8, v0, v6

    goto :goto_0

    .line 646
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mIsAlarmActive:Z

    if-eqz v1, :cond_2

    .line 647
    aput-byte v7, v0, v6

    goto :goto_0

    .line 648
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mIsTimerActive:Z

    if-eqz v1, :cond_3

    .line 649
    aput-byte v8, v0, v6

    goto :goto_0

    .line 651
    :cond_3
    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendLedData(I[B)V

    goto :goto_1
.end method

.method private sendBatteryChargingInformation()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 615
    const/4 v2, 0x1

    new-array v1, v2, [B

    aput-byte v3, v1, v3

    .line 616
    .local v1, "batteryPercent":[B
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->getLastBatteryInformation()I

    move-result v0

    .line 618
    .local v0, "battLevel":I
    int-to-byte v2, v0

    aput-byte v2, v1, v3

    .line 619
    sget-object v2, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Battery level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/16 v2, 0xc

    invoke-direct {p0, v2, v1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendLedData(I[B)V

    .line 622
    return-void
.end method

.method private sendCallInProgress()V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mCallStartMillisData:[B

    if-eqz v0, :cond_0

    .line 606
    const v0, 0xfffe

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mCallStartMillisData:[B

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendLedData(I[B)V

    .line 608
    :cond_0
    return-void
.end method

.method private sendCallIncomingInformation(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->resetAlarmType()V

    .line 600
    invoke-direct {p0, p1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->getIncomingCallId(Landroid/content/Intent;)[B

    move-result-object v0

    .line 601
    .local v0, "callerId":[B
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendLedData(I[B)V

    .line 602
    return-void
.end method

.method private sendClearOngoing(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 569
    sget-object v1, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v2, "sendClearOngoing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 572
    .local v0, "data":[B
    const v1, 0xfff0

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendLedData(I[B)V

    .line 573
    return-void
.end method

.method private sendClockInformation(Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;)V
    .locals 14
    .param p1, "update"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;

    .prologue
    .line 521
    const/4 v7, 0x0

    .line 523
    .local v7, "locale":Ljava/util/Locale;
    iget-object v10, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 524
    .local v0, "bIs24HTime":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 525
    .local v4, "curTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 527
    .local v1, "c":Ljava/util/Calendar;
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 529
    const/16 v10, 0xb

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 530
    .local v6, "hours":I
    const/16 v10, 0xc

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 532
    .local v8, "minutes":I
    if-eqz v0, :cond_0

    .line 534
    const-string v10, "%02d%02d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v7, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 543
    .local v3, "curTimeStr":Ljava/lang/String;
    :goto_0
    sget-object v10, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sendClockInformation : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 546
    .local v9, "timeData":[B
    sget-object v10, Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;->FULL:Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;

    if-ne p1, v10, :cond_2

    const/16 v2, 0xf

    .line 547
    .local v2, "command":I
    :goto_1
    invoke-direct {p0, v2, v9}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendLedData(I[B)V

    .line 548
    return-void

    .line 536
    .end local v2    # "command":I
    .end local v3    # "curTimeStr":Ljava/lang/String;
    .end local v9    # "timeData":[B
    :cond_0
    rem-int/lit8 v6, v6, 0xc

    .line 537
    if-nez v6, :cond_1

    .line 538
    const/16 v6, 0xc

    .line 541
    :cond_1
    const-string v10, "%2d%02d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v7, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "curTimeStr":Ljava/lang/String;
    goto :goto_0

    .line 546
    .restart local v9    # "timeData":[B
    :cond_2
    const v2, 0xffff

    goto :goto_1
.end method

.method private sendCommandByPriority(I)V
    .locals 8
    .param p1, "cmd"    # I

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0x9

    const/4 v5, 0x6

    const/16 v4, 0xa

    const/4 v3, -0x1

    .line 325
    sget-object v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCommandByPriority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isIncomingCallStatus:Z

    if-eqz v0, :cond_3

    .line 332
    if-ne p1, v3, :cond_2

    .line 333
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mLastInCallIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendCallIncomingInformation(Landroid/content/Intent;)V

    goto :goto_0

    .line 336
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->shouldDisplayCmdAfterCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iput p1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mPrevInCallEvent:I

    goto :goto_0

    .line 341
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isCallInProgress:Z

    if-eqz v0, :cond_6

    .line 342
    if-ne p1, v4, :cond_4

    .line 343
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendVolumeInformation()V

    goto :goto_0

    .line 344
    :cond_4
    if-ne p1, v3, :cond_5

    .line 345
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendCallInProgress()V

    goto :goto_0

    .line 348
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->shouldDisplayCmdAfterCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iput p1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mPrevInCallEvent:I

    goto :goto_0

    .line 353
    :cond_6
    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    .line 354
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendNewMessageInformation()Z

    goto :goto_0

    .line 355
    :cond_7
    const v0, 0xfffd

    if-ne p1, v0, :cond_8

    .line 356
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendNewMissedCallInformation()V

    goto :goto_0

    .line 357
    :cond_8
    if-eq p1, v5, :cond_9

    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isAlarmOrTimerActive()Z

    move-result v0

    if-eqz v0, :cond_b

    if-ne p1, v3, :cond_b

    .line 358
    :cond_9
    if-eq p1, v3, :cond_a

    if-ne p1, v5, :cond_0

    .line 359
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendAlarmInformation()V

    goto :goto_0

    .line 363
    :cond_b
    if-eq p1, v6, :cond_c

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventCount()I

    move-result v0

    if-lez v0, :cond_e

    if-ne p1, v3, :cond_e

    .line 365
    :cond_c
    if-eq p1, v3, :cond_d

    if-ne p1, v6, :cond_0

    .line 366
    :cond_d
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendMissedEventInformation()Z

    goto :goto_0

    .line 370
    :cond_e
    if-eq p1, v7, :cond_f

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    sget-object v1, Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;->PLAYING:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    if-ne v0, v1, :cond_12

    if-eq p1, v3, :cond_f

    if-ne p1, v4, :cond_12

    .line 372
    :cond_f
    if-ne p1, v4, :cond_10

    .line 373
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendVolumeInformation()V

    goto :goto_0

    .line 374
    :cond_10
    if-eq p1, v3, :cond_11

    if-ne p1, v7, :cond_0

    .line 375
    :cond_11
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendMusicPlayerInformation()V

    goto/16 :goto_0

    .line 379
    :cond_12
    const/16 v0, 0xe

    if-eq p1, v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mVoiceRecorderStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    sget-object v1, Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;->STOPPED:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    if-eq v0, v1, :cond_16

    if-eq p1, v3, :cond_13

    if-ne p1, v4, :cond_16

    .line 381
    :cond_13
    if-ne p1, v4, :cond_14

    iget-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mVoiceRecorderStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    sget-object v1, Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;->PLAYING:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    if-ne v0, v1, :cond_14

    .line 382
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendVolumeInformation()V

    goto/16 :goto_0

    .line 383
    :cond_14
    if-eq p1, v3, :cond_15

    const/16 v0, 0xe

    if-ne p1, v0, :cond_0

    .line 384
    :cond_15
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendVoiceRecorderInformation()V

    goto/16 :goto_0

    .line 388
    :cond_16
    const/16 v0, 0xc

    if-eq p1, v0, :cond_17

    iget-boolean v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isBatteryCharging:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isBatteryChargingWireless:Z

    if-nez v0, :cond_18

    if-ne p1, v3, :cond_18

    .line 390
    :cond_17
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendBatteryChargingInformation()V

    .line 392
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mPrevInCallEvent:I

    .line 393
    const/16 v0, 0x13ec

    invoke-direct {p0, v0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendScheduledCommand(I)V

    goto/16 :goto_0

    .line 394
    :cond_18
    const/16 v0, 0xb

    if-ne p1, v0, :cond_19

    .line 395
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendLowBatteryInformation()V

    goto/16 :goto_0

    .line 396
    :cond_19
    if-eq p1, v3, :cond_1a

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 397
    :cond_1a
    sget-object v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;->FULL:Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendClockInformation(Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;)V

    goto/16 :goto_0
.end method

.method private sendLedData(I[B)V
    .locals 5
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 903
    sget-object v1, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendLedData : command = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->getLedCommandStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    if-nez p2, :cond_0

    .line 905
    const/4 v1, 0x1

    new-array p2, v1, [B

    .line 906
    aput-byte v4, p2, v4

    .line 910
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/sdk/cover/ScoverManager;->sendDataToNfcLedCover(I[B)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    :goto_0
    return-void

    .line 911
    :catch_0
    move-exception v0

    .line 912
    .local v0, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendLowBatteryInformation()V
    .locals 2

    .prologue
    .line 611
    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->getLowBatteryLevel()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendLedData(I[B)V

    .line 612
    return-void
.end method

.method private sendMissedEventInformation()Z
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/16 v11, 0x2b

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 430
    const/4 v5, 0x0

    .line 431
    .local v5, "sendCmd":Z
    const/4 v6, 0x5

    new-array v2, v6, [B

    fill-array-data v2, :array_0

    .line 434
    .local v2, "content":[B
    iget-object v6, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventMessageCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 435
    const/4 v4, 0x0

    .line 436
    .local v4, "locale":Ljava/util/Locale;
    aput-byte v12, v2, v10

    .line 437
    iget-object v6, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventMessageCount()I

    move-result v3

    .line 438
    .local v3, "count":I
    const/16 v6, 0x64

    if-ge v3, v6, :cond_3

    .line 439
    const-string v6, "%02d"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 440
    .local v1, "cntMissedMsg":[B
    aget-byte v6, v1, v10

    aput-byte v6, v2, v13

    .line 441
    const/4 v6, 0x4

    aget-byte v7, v1, v9

    aput-byte v7, v2, v6

    .line 446
    .end local v1    # "cntMissedMsg":[B
    :goto_0
    const/4 v5, 0x1

    .line 448
    .end local v3    # "count":I
    .end local v4    # "locale":Ljava/util/Locale;
    :cond_0
    iget-object v6, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventCallCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 449
    const/4 v4, 0x0

    .line 451
    .restart local v4    # "locale":Ljava/util/Locale;
    aput-byte v9, v2, v10

    .line 452
    iget-object v6, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventCallCount()I

    move-result v3

    .line 453
    .restart local v3    # "count":I
    const/16 v6, 0x64

    if-ge v3, v6, :cond_4

    .line 454
    const-string v6, "%02d"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 455
    .local v0, "cntMissedCall":[B
    aget-byte v6, v0, v10

    aput-byte v6, v2, v9

    .line 456
    aget-byte v6, v0, v9

    aput-byte v6, v2, v12

    .line 461
    .end local v0    # "cntMissedCall":[B
    :goto_1
    const/4 v5, 0x1

    .line 464
    .end local v3    # "count":I
    .end local v4    # "locale":Ljava/util/Locale;
    :cond_1
    if-eqz v5, :cond_2

    .line 465
    const/16 v6, 0x9

    invoke-direct {p0, v6, v2}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendLedData(I[B)V

    .line 467
    :cond_2
    return v5

    .line 443
    .restart local v3    # "count":I
    .restart local v4    # "locale":Ljava/util/Locale;
    :cond_3
    aput-byte v11, v2, v13

    .line 444
    const/4 v6, 0x4

    aput-byte v11, v2, v6

    goto :goto_0

    .line 458
    :cond_4
    aput-byte v11, v2, v9

    .line 459
    aput-byte v11, v2, v12

    goto :goto_1

    .line 431
    nop

    :array_0
    .array-data 1
        0x0t
        0x30t
        0x30t
        0x30t
        0x30t
    .end array-data
.end method

.method private sendMusicPlayerInformation()V
    .locals 6

    .prologue
    const/16 v5, 0xd

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 658
    new-array v0, v4, [B

    aput-byte v3, v0, v3

    .line 659
    .local v0, "content":[B
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    sget-object v2, Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;->PLAYING:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    if-ne v1, v2, :cond_3

    .line 660
    iget-boolean v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mHeadsetPlugged:Z

    if-eqz v1, :cond_2

    .line 661
    const/4 v1, 0x3

    aput-byte v1, v0, v3

    .line 673
    :cond_0
    :goto_0
    invoke-direct {p0, v5, v0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendLedData(I[B)V

    .line 675
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    sget-object v2, Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;->PAUSED:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    if-ne v1, v2, :cond_1

    .line 676
    invoke-direct {p0, v5}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendClearOngoing(I)V

    .line 678
    :cond_1
    return-void

    .line 663
    :cond_2
    aput-byte v4, v0, v3

    goto :goto_0

    .line 665
    :cond_3
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    sget-object v2, Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;->PAUSED:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    if-ne v1, v2, :cond_0

    .line 666
    iget-boolean v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mHeadsetPlugged:Z

    if-eqz v1, :cond_4

    .line 667
    const/4 v1, 0x4

    aput-byte v1, v0, v3

    goto :goto_0

    .line 669
    :cond_4
    const/4 v1, 0x2

    aput-byte v1, v0, v3

    goto :goto_0
.end method

.method private sendNewMessageInformation()Z
    .locals 10

    .prologue
    const/16 v6, 0x2b

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 471
    const/4 v4, 0x0

    .line 472
    .local v4, "sendCmd":Z
    const/4 v5, 0x2

    new-array v1, v5, [B

    fill-array-data v1, :array_0

    .line 475
    .local v1, "content":[B
    iget-object v5, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventMessageCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 476
    const/4 v3, 0x0

    .line 477
    .local v3, "locale":Ljava/util/Locale;
    iget-object v5, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventMessageCount()I

    move-result v2

    .line 478
    .local v2, "count":I
    const/16 v5, 0x64

    if-ge v2, v5, :cond_2

    .line 479
    const-string v5, "%02d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 480
    .local v0, "cntMissedMessage":[B
    aget-byte v5, v0, v8

    aput-byte v5, v1, v8

    .line 481
    aget-byte v5, v0, v9

    aput-byte v5, v1, v9

    .line 486
    .end local v0    # "cntMissedMessage":[B
    :goto_0
    const/4 v4, 0x1

    .line 489
    .end local v2    # "count":I
    .end local v3    # "locale":Ljava/util/Locale;
    :cond_0
    if-eqz v4, :cond_1

    .line 490
    const/4 v5, 0x5

    invoke-direct {p0, v5, v1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendLedData(I[B)V

    .line 492
    :cond_1
    return v4

    .line 483
    .restart local v2    # "count":I
    .restart local v3    # "locale":Ljava/util/Locale;
    :cond_2
    aput-byte v6, v1, v8

    .line 484
    aput-byte v6, v1, v9

    goto :goto_0

    .line 472
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private sendNewMissedCallInformation()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 500
    const/4 v3, 0x0

    .line 501
    .local v3, "sendCmd":Z
    const/4 v4, 0x5

    new-array v1, v4, [B

    fill-array-data v1, :array_0

    .line 503
    .local v1, "content":[B
    iget-object v4, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventCallCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 504
    const/4 v2, 0x0

    .line 505
    .local v2, "locale":Ljava/util/Locale;
    const-string v4, "%02d"

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventCallCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 508
    .local v0, "cntMissedCall":[B
    aput-byte v7, v1, v8

    .line 509
    aget-byte v4, v0, v8

    aput-byte v4, v1, v7

    .line 510
    const/4 v4, 0x2

    aget-byte v5, v0, v7

    aput-byte v5, v1, v4

    .line 511
    const/4 v3, 0x1

    .line 514
    .end local v0    # "cntMissedCall":[B
    .end local v2    # "locale":Ljava/util/Locale;
    :cond_0
    if-eqz v3, :cond_1

    .line 515
    const/16 v4, 0x9

    invoke-direct {p0, v4, v1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendLedData(I[B)V

    .line 517
    :cond_1
    return-void

    .line 501
    :array_0
    .array-data 1
        0x0t
        0x30t
        0x30t
        0x30t
        0x30t
    .end array-data
.end method

.method private sendScheduledCommand(I)V
    .locals 6
    .param p1, "timeout"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1046
    iget v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mPrevInCallEvent:I

    if-ne v1, v4, :cond_1

    .line 1048
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mHandler:Lcom/sec/android/cover/ledcover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v5}, Lcom/sec/android/cover/ledcover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 1049
    iput v4, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mPrevInCallEvent:I

    .line 1073
    :cond_0
    :goto_0
    return-void

    .line 1054
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isAlarmOrTimerActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1055
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->handleAlarmsTimeout()V

    .line 1058
    :cond_2
    iget v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mPrevInCallEvent:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isAlarmOrTimerActive()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1059
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mHandler:Lcom/sec/android/cover/ledcover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v5}, Lcom/sec/android/cover/ledcover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 1060
    iput v4, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mPrevInCallEvent:I

    goto :goto_0

    .line 1065
    :cond_3
    iget v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mPrevInCallEvent:I

    if-eq v1, v4, :cond_0

    .line 1066
    sget-object v1, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Schedule cached command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mPrevInCallEvent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mHandler:Lcom/sec/android/cover/ledcover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v5}, Lcom/sec/android/cover/ledcover/NfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1068
    .local v0, "msg":Landroid/os/Message;
    iget v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mPrevInCallEvent:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1069
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mHandler:Lcom/sec/android/cover/ledcover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v5}, Lcom/sec/android/cover/ledcover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 1070
    iput v4, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mPrevInCallEvent:I

    .line 1071
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mHandler:Lcom/sec/android/cover/ledcover/NfcLedCoverController$NfcLedCoverControllerHandler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/cover/ledcover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private sendVoiceRecorderInformation()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 681
    new-array v1, v5, [B

    aput-byte v4, v1, v4

    .line 682
    .local v1, "content":[B
    const/16 v0, 0xe

    .line 683
    .local v0, "cmd":I
    iget-object v2, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mVoiceRecorderStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    sget-object v3, Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;->RECORDING:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    if-ne v2, v3, :cond_2

    .line 684
    aput-byte v5, v1, v4

    .line 691
    :cond_0
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendLedData(I[B)V

    .line 693
    iget-object v2, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mVoiceRecorderStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    sget-object v3, Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;->STOPPED:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    if-ne v2, v3, :cond_1

    .line 694
    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendClearOngoing(I)V

    .line 696
    :cond_1
    return-void

    .line 685
    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mVoiceRecorderStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    sget-object v3, Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;->PLAYING:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    if-ne v2, v3, :cond_3

    .line 686
    const/4 v2, 0x2

    aput-byte v2, v1, v4

    goto :goto_0

    .line 687
    :cond_3
    iget-object v2, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mVoiceRecorderStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    sget-object v3, Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;->STOPPED:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    if-ne v2, v3, :cond_0

    .line 688
    const/16 v0, 0x12

    goto :goto_0
.end method

.method private sendVolumeInformation()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 551
    sget-object v1, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v2, "sendVolumeInformation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mHeadsetPluggedTime:J

    const-wide/16 v6, 0x12c

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 562
    :goto_0
    return-void

    .line 558
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [B

    aput-byte v8, v0, v8

    .line 560
    .local v0, "bytesVol":[B
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->getVolumeInformation()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    .line 561
    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendLedData(I[B)V

    goto :goto_0
.end method

.method private shouldDisplayCmdAfterCall(I)Z
    .locals 3
    .param p1, "cmd"    # I

    .prologue
    const/4 v0, 0x1

    .line 410
    packed-switch p1, :pswitch_data_0

    .line 421
    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    .line 417
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->getLastBatteryInformation()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateMissedEvent(Z)V
    .locals 20
    .param p1, "sendDataToCover"    # Z

    .prologue
    .line 768
    sget-object v4, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMissedEvent() sendData: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v12

    .line 773
    .local v12, "coverRemoteViewManager":Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    const-string v4, "new_message"

    invoke-virtual {v12, v4}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v13

    .line 775
    .local v13, "messageRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    const-string v4, "missed_call"

    invoke-virtual {v12, v4}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v2

    .line 778
    .local v2, "callRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventMessageCount()I

    move-result v19

    .line 780
    .local v19, "oldMissedEventMessageCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventCallCount()I

    move-result v18

    .line 782
    .local v18, "oldMissedEventCallCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->clearMissedEvent()V

    .line 785
    if-eqz v2, :cond_0

    iget v4, v2, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    if-lez v4, :cond_0

    .line 786
    new-instance v3, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, v2, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v9, v2, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mPendingIntent:Landroid/app/PendingIntent;

    iget v10, v2, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    iget-object v11, v2, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    invoke-direct/range {v3 .. v11}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;-><init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJLandroid/widget/RemoteViews;Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 791
    .local v3, "remoteViewsItem":Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->addMissedEvent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V

    .line 795
    .end local v3    # "remoteViewsItem":Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;
    :cond_0
    if-eqz v13, :cond_1

    iget v4, v13, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    if-lez v4, :cond_1

    .line 796
    new-instance v3, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, v13, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v9, v13, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mPendingIntent:Landroid/app/PendingIntent;

    iget v10, v13, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    iget-object v11, v13, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    invoke-direct/range {v3 .. v11}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;-><init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJLandroid/widget/RemoteViews;Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 801
    .restart local v3    # "remoteViewsItem":Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->addMissedEvent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V

    .line 804
    .end local v3    # "remoteViewsItem":Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventMessageCount()I

    move-result v17

    .line 806
    .local v17, "newMissedEventMessageCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventCallCount()I

    move-result v16

    .line 810
    .local v16, "newMissedEventCallCount":I
    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    const/4 v15, 0x1

    .line 812
    .local v15, "newMessage":Z
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    const/4 v14, 0x1

    .line 814
    .local v14, "newCall":Z
    :goto_1
    sget-object v4, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMissedEvent() oldMissedEventMessageCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " newMissedEventMessageCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " oldMissedEventCallCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " newMissedEventCallCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    if-eqz p1, :cond_2

    .line 822
    if-eqz v15, :cond_5

    if-eqz v14, :cond_5

    .line 823
    const/16 v4, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendCommandByPriority(I)V

    .line 830
    :cond_2
    :goto_2
    return-void

    .line 810
    .end local v14    # "newCall":Z
    .end local v15    # "newMessage":Z
    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    .line 812
    .restart local v15    # "newMessage":Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    .line 824
    .restart local v14    # "newCall":Z
    :cond_5
    if-eqz v15, :cond_6

    .line 825
    const/4 v4, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendCommandByPriority(I)V

    goto :goto_2

    .line 826
    :cond_6
    if-eqz v14, :cond_2

    .line 827
    const v4, 0xfffd

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendCommandByPriority(I)V

    goto :goto_2
.end method

.method private updateRemoteView(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 14
    .param p1, "info"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    const/16 v13, 0xd

    const/4 v12, -0x1

    const/16 v11, 0xe

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 700
    iget-object v4, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    .line 701
    .local v4, "type":Ljava/lang/String;
    sget-object v8, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onRemoteViewUpdated : Type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->handleAlarmsTimeout()V

    .line 706
    const-string v8, "new_message"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "missed_call"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 707
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isCoverOpen()Z

    move-result v8

    if-nez v8, :cond_2

    :goto_0
    invoke-direct {p0, v6}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->updateMissedEvent(Z)V

    .line 765
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v6, v7

    .line 707
    goto :goto_0

    .line 708
    :cond_3
    const-string v8, "music_controller"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 711
    iget-object v8, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mIntent:Landroid/content/Intent;

    const-string v9, "playstate"

    invoke-virtual {v8, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 712
    .local v2, "playstate":I
    iget-object v8, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mIntent:Landroid/content/Intent;

    const-string v9, "playstatechanged"

    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 715
    .local v0, "bPlayStateChanged":Z
    iget-object v8, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mIntent:Landroid/content/Intent;

    const-string v9, "visibility"

    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 718
    .local v5, "visibility":Z
    iget-object v8, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mIntent:Landroid/content/Intent;

    const-string v9, "isPlaying"

    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 719
    .local v1, "isPlaying":Z
    sget-object v8, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TYPE_MUSIC_PLAYER isPlaying: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " visibility: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". Old Extras: playstate: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bPlayStateChanged: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    if-eqz v2, :cond_4

    if-eqz v1, :cond_6

    .line 723
    :cond_4
    iget-object v8, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    sget-object v9, Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;->PLAYING:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    if-eq v8, v9, :cond_5

    move v0, v6

    .line 724
    :goto_2
    sget-object v6, Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;->PLAYING:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    iput-object v6, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    .line 725
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 726
    invoke-direct {p0, v13}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendCommandByPriority(I)V

    goto :goto_1

    :cond_5
    move v0, v7

    .line 723
    goto :goto_2

    .line 728
    :cond_6
    if-eq v2, v6, :cond_7

    if-nez v1, :cond_9

    .line 729
    :cond_7
    iget-object v8, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    sget-object v9, Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;->PAUSED:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    if-eq v8, v9, :cond_8

    move v0, v6

    .line 730
    :goto_3
    sget-object v6, Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;->PAUSED:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    iput-object v6, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    .line 731
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 732
    invoke-direct {p0, v13}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendCommandByPriority(I)V

    goto/16 :goto_1

    :cond_8
    move v0, v7

    .line 729
    goto :goto_3

    .line 735
    :cond_9
    sget-object v6, Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;->STOPPED:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    iput-object v6, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    goto/16 :goto_1

    .line 737
    .end local v0    # "bPlayStateChanged":Z
    .end local v1    # "isPlaying":Z
    .end local v2    # "playstate":I
    .end local v5    # "visibility":Z
    :cond_a
    const-string v7, "voice_recorder"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 742
    iget-object v7, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mIntent:Landroid/content/Intent;

    const-string v8, "voice_recorder_status"

    invoke-virtual {v7, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 744
    .local v3, "status":I
    sget-object v7, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TYPE_VOICE_RECORDER status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    if-ne v3, v6, :cond_b

    .line 746
    iget-object v6, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mVoiceRecorderStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    sget-object v7, Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;->RECORDING:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    if-eq v6, v7, :cond_1

    .line 747
    sget-object v6, Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;->RECORDING:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    iput-object v6, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mVoiceRecorderStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    .line 748
    invoke-direct {p0, v11}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendCommandByPriority(I)V

    goto/16 :goto_1

    .line 750
    :cond_b
    const/4 v6, 0x2

    if-ne v3, v6, :cond_c

    .line 751
    iget-object v6, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mVoiceRecorderStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    sget-object v7, Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;->PLAYING:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    if-eq v6, v7, :cond_1

    .line 752
    sget-object v6, Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;->PLAYING:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    iput-object v6, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mVoiceRecorderStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    .line 753
    invoke-direct {p0, v11}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendCommandByPriority(I)V

    goto/16 :goto_1

    .line 755
    :cond_c
    if-nez v3, :cond_d

    iget-object v6, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mVoiceRecorderStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    sget-object v7, Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;->PLAYING:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    if-ne v6, v7, :cond_d

    .line 759
    sget-object v6, Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;->STOPPED:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    iput-object v6, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mVoiceRecorderStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    .line 760
    invoke-direct {p0, v11}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendCommandByPriority(I)V

    goto/16 :goto_1

    .line 762
    :cond_d
    sget-object v6, Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;->STOPPED:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    iput-object v6, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mVoiceRecorderStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$VoiceRecorderStatus;

    goto/16 :goto_1
.end method


# virtual methods
.method public onCoverAttached(Lcom/samsung/android/cover/CoverState;)V
    .locals 7
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 834
    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverAttached(Lcom/samsung/android/cover/CoverState;)V

    .line 836
    iget-object v5, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v5, v6}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 837
    iget-object v5, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 839
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v5, :cond_0

    .line 840
    new-instance v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$LedCoverOffByNfcListener;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcom/sec/android/cover/ledcover/NfcLedCoverController$LedCoverOffByNfcListener;-><init>(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;)V

    .line 841
    .local v0, "callback":Lcom/sec/android/cover/ledcover/NfcLedCoverController$LedCoverOffByNfcListener;
    iget-object v5, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5, v0}, Landroid/nfc/NfcAdapter;->setLedCoverNotificationCallback(Landroid/nfc/NfcAdapter$LedCoverNotificationCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    .end local v0    # "callback":Lcom/sec/android/cover/ledcover/NfcLedCoverController$LedCoverOffByNfcListener;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->requestRemoteViews()V

    .line 848
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 849
    .local v2, "filter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->strIntentAction:[Ljava/lang/String;

    array-length v4, v5

    .line 851
    .local v4, "lenAction":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 852
    iget-object v5, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->strIntentAction:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 851
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 843
    .end local v2    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "i":I
    .end local v4    # "lenAction":I
    :catch_0
    move-exception v1

    .line 844
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 855
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    .restart local v3    # "i":I
    .restart local v4    # "lenAction":I
    :cond_1
    iget-object v5, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 857
    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isCoverOpen()Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mPrevCoverStateWasOpen:Z

    .line 858
    iget-object v5, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    .line 859
    return-void
.end method

.method public onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 863
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 865
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 867
    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V

    .line 868
    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v3, 0x0

    .line 872
    sget-object v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverEvent state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    .line 875
    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    invoke-direct {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->resetAlarmType()V

    .line 878
    invoke-direct {p0, v3}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendClearOngoing(I)V

    .line 879
    const/16 v0, 0x12

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendLedData(I[B)V

    .line 880
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUpWithReason()V

    .line 898
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isCoverOpen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mPrevCoverStateWasOpen:Z

    .line 899
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    .line 900
    return-void

    .line 884
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mPrevCoverStateWasOpen:Z

    if-eqz v0, :cond_1

    .line 886
    invoke-direct {p0, v3}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->updateMissedEvent(Z)V

    .line 888
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendCommandByPriority(I)V

    .line 894
    :goto_1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->coverEventFinished()V

    .line 895
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->goToSleep()V

    goto :goto_0

    .line 890
    :cond_1
    sget-object v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Not sending command, cover was already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
