.class public Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;
.super Ljava/lang/Object;
.source "MobileDataControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final PERIOD_BUILDER:Ljava/lang/StringBuilder;

.field private static final PERIOD_FORMATTER:Ljava/util/Formatter;


# instance fields
.field private mCallback:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$Callback;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

.field private final mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mSession:Landroid/net/INetworkStatsSession;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const-string v0, "MobileDataController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->DEBUG:Z

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    .line 56
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->PERIOD_FORMATTER:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 72
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 73
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mStatsService:Landroid/net/INetworkStatsService;

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 76
    return-void
.end method

.method private static addMonth(Landroid/text/format/Time;I)Landroid/text/format/Time;
    .locals 4
    .param p0, "t"    # Landroid/text/format/Time;
    .param p1, "months"    # I

    .prologue
    .line 115
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 116
    .local v0, "rt":Landroid/text/format/Time;
    iget v1, p0, Landroid/text/format/Time;->monthDay:I

    iget v2, p0, Landroid/text/format/Time;->month:I

    add-int/2addr v2, p1

    iget v3, p0, Landroid/text/format/Time;->year:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/format/Time;->set(III)V

    .line 117
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 118
    return-object v0
.end method

.method private findNetworkPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v4, 0x0

    .line 197
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz v5, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v3, v4

    .line 207
    :cond_1
    :goto_0
    return-object v3

    .line 198
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v5}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 199
    .local v2, "policies":[Landroid/net/NetworkPolicy;
    if-nez v2, :cond_3

    move-object v3, v4

    goto :goto_0

    .line 200
    :cond_3
    array-length v0, v2

    .line 201
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 202
    aget-object v3, v2, v1

    .line 203
    .local v3, "policy":Landroid/net/NetworkPolicy;
    if-eqz v3, :cond_4

    iget-object v5, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, v5}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 201
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "policy":Landroid/net/NetworkPolicy;
    :cond_5
    move-object v3, v4

    .line 207
    goto :goto_0
.end method

.method private formatDateRange(JJ)Ljava/lang/String;
    .locals 11
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 249
    const v8, 0x10010

    .line 250
    .local v8, "flags":I
    sget-object v9, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    monitor-enter v9

    .line 251
    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->PERIOD_FORMATTER:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v9

    return-object v0

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 242
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 243
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "actualSubscriberId":Ljava/lang/String;
    return-object v0
.end method

.method private getSession()Landroid/net/INetworkStatsSession;
    .locals 3

    .prologue
    .line 85
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowDataUsageInQuickPanel:Z

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mSession:Landroid/net/INetworkStatsSession;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mSession:Landroid/net/INetworkStatsSession;

    invoke-static {v1}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mSession:Landroid/net/INetworkStatsSession;

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mSession:Landroid/net/INetworkStatsSession;

    if-nez v1, :cond_1

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mSession:Landroid/net/INetworkStatsSession;

    return-object v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MobileDataController"

    const-string v2, "Failed to open stats session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 98
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MobileDataController"

    const-string v2, "Failed to open stats session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static historyEntryToString(Landroid/net/NetworkStatsHistory$Entry;)Ljava/lang/String;
    .locals 4
    .param p0, "entry"    # Landroid/net/NetworkStatsHistory$Entry;

    .prologue
    .line 211
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Entry["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "bucketDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",bucketStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",activeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",rxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",rxPackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",txBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",txPackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",operations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private warn(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 110
    const-string v0, "MobileDataController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get data usage, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getDataUsageInfo()Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;
    .locals 36

    .prologue
    .line 122
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    .line 123
    .local v28, "subscriberId":Ljava/lang/String;
    if-nez v28, :cond_1

    .line 124
    const-string v5, "no subscriber id"

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->warn(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;

    move-result-object v31

    .line 192
    :cond_0
    :goto_0
    return-object v31

    .line 126
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->getSession()Landroid/net/INetworkStatsSession;

    move-result-object v27

    .line 127
    .local v27, "session":Landroid/net/INetworkStatsSession;
    if-nez v27, :cond_2

    .line 128
    const-string v5, "no stats session"

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->warn(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;

    move-result-object v31

    goto :goto_0

    .line 130
    :cond_2
    invoke-static/range {v28 .. v28}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v29

    .line 131
    .local v29, "template":Landroid/net/NetworkTemplate;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-static {v0, v5}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v29

    .line 133
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->findNetworkPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v25

    .line 135
    .local v25, "policy":Landroid/net/NetworkPolicy;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mSession:Landroid/net/INetworkStatsSession;

    const/16 v10, 0xa

    move-object/from16 v0, v29

    invoke-interface {v5, v0, v10}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v21

    .line 136
    .local v21, "history":Landroid/net/NetworkStatsHistory;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 138
    .local v22, "now":J
    if-eqz v25, :cond_6

    move-object/from16 v0, v25

    iget v5, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    if-lez v5, :cond_6

    .line 140
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "MobileDataController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cycle day="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v25

    iget v11, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " tz="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v25

    iget-object v11, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_3
    new-instance v24, Landroid/text/format/Time;

    move-object/from16 v0, v25

    iget-object v5, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v0, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 143
    .local v24, "nowTime":Landroid/text/format/Time;
    invoke-virtual/range {v24 .. v24}, Landroid/text/format/Time;->setToNow()V

    .line 144
    new-instance v26, Landroid/text/format/Time;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 145
    .local v26, "policyTime":Landroid/text/format/Time;
    move-object/from16 v0, v25

    iget v5, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v26

    iget v10, v0, Landroid/text/format/Time;->month:I

    move-object/from16 v0, v26

    iget v11, v0, Landroid/text/format/Time;->year:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v10, v11}, Landroid/text/format/Time;->set(III)V

    .line 146
    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->normalize(Z)J

    .line 147
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 148
    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 149
    .local v6, "start":J
    const/4 v5, 0x1

    move-object/from16 v0, v26

    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->addMonth(Landroid/text/format/Time;I)Landroid/text/format/Time;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 168
    .end local v24    # "nowTime":Landroid/text/format/Time;
    .end local v26    # "policyTime":Landroid/text/format/Time;
    .local v8, "end":J
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 169
    .local v16, "callStart":J
    const/4 v12, 0x0

    move-object/from16 v5, v21

    move-wide/from16 v10, v22

    invoke-virtual/range {v5 .. v12}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v20

    .line 170
    .local v20, "entry":Landroid/net/NetworkStatsHistory$Entry;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 171
    .local v14, "callEnd":J
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "MobileDataController"

    const-string v10, "history call from %s to %s now=%s took %sms: %s"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v34, Ljava/util/Date;

    move-object/from16 v0, v34

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    aput-object v34, v11, v12

    const/4 v12, 0x1

    new-instance v34, Ljava/util/Date;

    move-object/from16 v0, v34

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    aput-object v34, v11, v12

    const/4 v12, 0x2

    new-instance v34, Ljava/util/Date;

    move-object/from16 v0, v34

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    aput-object v34, v11, v12

    const/4 v12, 0x3

    sub-long v34, v14, v16

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    aput-object v34, v11, v12

    const/4 v12, 0x4

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->historyEntryToString(Landroid/net/NetworkStatsHistory$Entry;)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_4
    if-nez v20, :cond_8

    .line 175
    const-string v5, "no entry data"

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->warn(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;

    move-result-object v31

    goto/16 :goto_0

    .line 151
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v14    # "callEnd":J
    .end local v16    # "callStart":J
    .end local v20    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .restart local v24    # "nowTime":Landroid/text/format/Time;
    .restart local v26    # "policyTime":Landroid/text/format/Time;
    :cond_5
    const/4 v5, -0x1

    move-object/from16 v0, v26

    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->addMonth(Landroid/text/format/Time;I)Landroid/text/format/Time;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 152
    .restart local v6    # "start":J
    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .restart local v8    # "end":J
    goto :goto_1

    .line 155
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v24    # "nowTime":Landroid/text/format/Time;
    .end local v26    # "policyTime":Landroid/text/format/Time;
    :cond_6
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mShowDataUsageInQuickPanel:Z

    if-eqz v5, :cond_7

    .line 157
    move-wide/from16 v18, v22

    .line 158
    .local v18, "end":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v30

    .line 159
    .local v30, "today":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 160
    .local v4, "startDay":Ljava/util/Calendar;
    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v10, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Ljava/util/Calendar;->set(IIIIII)V

    .line 161
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .restart local v6    # "start":J
    move-wide/from16 v8, v18

    .line 162
    .end local v18    # "end":J
    .restart local v8    # "end":J
    goto/16 :goto_1

    .line 164
    .end local v4    # "startDay":Ljava/util/Calendar;
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v30    # "today":Ljava/util/Calendar;
    :cond_7
    move-wide/from16 v8, v22

    .line 165
    .restart local v8    # "end":J
    const-wide v10, 0x90321000L

    sub-long v6, v22, v10

    .restart local v6    # "start":J
    goto/16 :goto_1

    .line 177
    .restart local v14    # "callEnd":J
    .restart local v16    # "callStart":J
    .restart local v20    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_8
    move-object/from16 v0, v20

    iget-wide v10, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v34, v0

    add-long v32, v10, v34

    .line 178
    .local v32, "totalBytes":J
    new-instance v31, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;

    invoke-direct/range {v31 .. v31}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;-><init>()V

    .line 179
    .local v31, "usage":Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;
    move-wide/from16 v0, v32

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;->usageLevel:J

    .line 180
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->formatDateRange(JJ)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v31

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;->period:Ljava/lang/String;

    .line 181
    if-eqz v25, :cond_b

    .line 182
    move-object/from16 v0, v25

    iget-wide v10, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v34, 0x0

    cmp-long v5, v10, v34

    if-lez v5, :cond_9

    move-object/from16 v0, v25

    iget-wide v10, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    :goto_2
    move-object/from16 v0, v31

    iput-wide v10, v0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;->limitLevel:J

    .line 183
    move-object/from16 v0, v25

    iget-wide v10, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v34, 0x0

    cmp-long v5, v10, v34

    if-lez v5, :cond_a

    move-object/from16 v0, v25

    iget-wide v10, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    :goto_3
    move-object/from16 v0, v31

    iput-wide v10, v0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;->warningLevel:J

    .line 187
    :goto_4
    if-eqz v31, :cond_0

    .line 188
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getMobileDataNetworkName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v31

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;->carrier:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 191
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v14    # "callEnd":J
    .end local v16    # "callStart":J
    .end local v20    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v21    # "history":Landroid/net/NetworkStatsHistory;
    .end local v22    # "now":J
    .end local v31    # "usage":Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;
    .end local v32    # "totalBytes":J
    :catch_0
    move-exception v13

    .line 192
    .local v13, "e":Landroid/os/RemoteException;
    const-string v5, "remote call failed"

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->warn(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;

    move-result-object v31

    goto/16 :goto_0

    .line 182
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v6    # "start":J
    .restart local v8    # "end":J
    .restart local v14    # "callEnd":J
    .restart local v16    # "callStart":J
    .restart local v20    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .restart local v21    # "history":Landroid/net/NetworkStatsHistory;
    .restart local v22    # "now":J
    .restart local v31    # "usage":Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;
    .restart local v32    # "totalBytes":J
    :cond_9
    const-wide/16 v10, 0x0

    goto :goto_2

    .line 183
    :cond_a
    const-wide/16 v10, 0x0

    goto :goto_3

    .line 185
    :cond_b
    const-wide v10, 0x80000000L

    :try_start_1
    move-object/from16 v0, v31

    iput-wide v10, v0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;->warningLevel:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public isMobileDataEnabled()Z
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    return v0
.end method

.method public isMobileDataSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 233
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setCallback(Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$Callback;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mCallback:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$Callback;

    .line 107
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 224
    const-string v0, "MobileDataController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMobileDataEnabled: enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mCallback:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$Callback;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mCallback:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$Callback;->onMobileDataEnabled(Z)V

    .line 229
    :cond_0
    return-void
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p1, "networkController"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 80
    return-void
.end method
