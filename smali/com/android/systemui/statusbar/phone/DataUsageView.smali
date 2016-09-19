.class public Lcom/android/systemui/statusbar/phone/DataUsageView;
.super Landroid/widget/TextView;
.source "DataUsageView.java"


# static fields
.field private static final mIsSupportDataCalibration:Z


# instance fields
.field private mCurrentDataSubId:I

.field private mDataController:Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

.field private mDataUsage:Ljava/lang/String;

.field private mEnd:J

.field private mHandler:Landroid/os/Handler;

.field private mStart:J

.field private mThread:Ljava/lang/Thread;

.field mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "trafficmanager"

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DataUsageView;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mIsSupportDataCalibration:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 37
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mStart:J

    .line 38
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mEnd:J

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mCurrentDataSubId:I

    .line 40
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mHandler:Landroid/os/Handler;

    .line 41
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mDataUsage:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mThread:Ljava/lang/Thread;

    .line 111
    new-instance v0, Lcom/android/systemui/statusbar/phone/DataUsageView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DataUsageView$2;-><init>(Lcom/android/systemui/statusbar/phone/DataUsageView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DataUsageView;->initView()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mStart:J

    .line 38
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mEnd:J

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mCurrentDataSubId:I

    .line 40
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mHandler:Landroid/os/Handler;

    .line 41
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mDataUsage:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mThread:Ljava/lang/Thread;

    .line 111
    new-instance v0, Lcom/android/systemui/statusbar/phone/DataUsageView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DataUsageView$2;-><init>(Lcom/android/systemui/statusbar/phone/DataUsageView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DataUsageView;->initView()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mStart:J

    .line 38
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mEnd:J

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mCurrentDataSubId:I

    .line 40
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mHandler:Landroid/os/Handler;

    .line 41
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mDataUsage:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mThread:Ljava/lang/Thread;

    .line 111
    new-instance v0, Lcom/android/systemui/statusbar/phone/DataUsageView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DataUsageView$2;-><init>(Lcom/android/systemui/statusbar/phone/DataUsageView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DataUsageView;->initView()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mStart:J

    .line 38
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mEnd:J

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mCurrentDataSubId:I

    .line 40
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mHandler:Landroid/os/Handler;

    .line 41
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mDataUsage:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mThread:Ljava/lang/Thread;

    .line 111
    new-instance v0, Lcom/android/systemui/statusbar/phone/DataUsageView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DataUsageView$2;-><init>(Lcom/android/systemui/statusbar/phone/DataUsageView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DataUsageView;->initView()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/DataUsageView;)Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DataUsageView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mDataController:Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mIsSupportDataCalibration:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/DataUsageView;Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DataUsageView;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DataUsageView;->getTotalUsedData(Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/DataUsageView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DataUsageView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/DataUsageView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DataUsageView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/DataUsageView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DataUsageView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/DataUsageView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DataUsageView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mDataUsage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/DataUsageView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DataUsageView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mDataUsage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/DataUsageView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DataUsageView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/DataUsageView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DataUsageView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/phone/DataUsageView;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DataUsageView;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private getBounds(I)V
    .locals 11
    .param p1, "dayStart"    # I

    .prologue
    .line 182
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 183
    .local v10, "now":Ljava/util/Calendar;
    const/4 v2, 0x5

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 184
    .local v9, "currentDay":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 185
    .local v0, "start":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 186
    if-lt v9, p1, :cond_0

    .line 187
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mStart:J

    .line 188
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 189
    .local v1, "end":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 190
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mEnd:J

    .line 198
    :goto_0
    return-void

    .line 192
    .end local v1    # "end":Ljava/util/Calendar;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v2, 0x2

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    move v5, p1

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 193
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mEnd:J

    .line 194
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 195
    .restart local v1    # "end":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 196
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mStart:J

    goto :goto_0
.end method

.method private getConfirmTime()J
    .locals 7

    .prologue
    .line 206
    const-string v0, "check_time"

    .line 207
    .local v0, "confirmTimeString":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 210
    .local v2, "lConfirmTime":J
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 215
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 216
    const-wide/16 v2, 0x0

    .line 218
    :cond_0
    return-wide v2

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "DataUsageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private getConfirmTraffic()J
    .locals 10

    .prologue
    const-wide/16 v0, 0x0

    .line 222
    const-string v2, "data_used_by_check_time"

    .line 223
    .local v2, "confirmTrafficString":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 225
    .local v6, "sConfirmTraffic":Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 226
    :cond_0
    const-string v7, "DataUsageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getConfirmTraffic :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_0
    return-wide v0

    .line 231
    :cond_1
    :try_start_0
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 236
    .local v4, "dConfirm":D
    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    mul-double/2addr v4, v8

    .line 237
    double-to-long v0, v4

    .line 238
    .local v0, "confirmTraffic":J
    const-string v7, "DataUsageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getConfirmTraffic "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from setting, confirm bytes = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    .end local v0    # "confirmTraffic":J
    .end local v4    # "dConfirm":D
    :catch_0
    move-exception v3

    .line 233
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "DataUsageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getStartDay()I
    .locals 6

    .prologue
    .line 166
    const-string v2, "set_package_start_date_value"

    .line 168
    .local v2, "startDayString":Ljava/lang/String;
    const/4 v1, 0x1

    .line 170
    .local v1, "iStart":I
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 175
    :goto_0
    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    const/16 v3, 0x1f

    if-le v1, v3, :cond_1

    .line 176
    :cond_0
    const/4 v1, 0x1

    .line 178
    :cond_1
    return v1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "DataUsageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getTotalUsedData(Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;)J
    .locals 19
    .param p1, "info"    # Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;

    .prologue
    .line 244
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 245
    .local v4, "currentTime":J
    const-wide/16 v2, 0x0

    .line 246
    .local v2, "confirmTime":J
    const-wide/16 v10, 0x0

    .line 247
    .local v10, "startTraffic":J
    const-wide/16 v8, 0x0

    .line 248
    .local v8, "realTraffic":J
    const-string v7, "middle_real_value"

    .line 249
    .local v7, "realTrafficString":Ljava/lang/String;
    const-wide/16 v12, 0x0

    .line 250
    .local v12, "totalTraffic":J
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;->usageLevel:J

    .line 252
    .local v14, "totalUsedBytes":J
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/DataUsageView;->updateCurrentDataSubId()V

    .line 253
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/DataUsageView;->getStartDay()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/DataUsageView;->getBounds(I)V

    .line 254
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/DataUsageView;->getConfirmTime()J

    move-result-wide v2

    .line 256
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mStart:J

    move-wide/from16 v16, v0

    cmp-long v16, v2, v16

    if-ltz v16, :cond_0

    cmp-long v16, v2, v4

    if-gtz v16, :cond_0

    const-wide/16 v16, 0x0

    cmp-long v16, v2, v16

    if-eqz v16, :cond_0

    .line 257
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/DataUsageView;->getConfirmTraffic()J

    move-result-wide v10

    .line 259
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mCurrentDataSubId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 265
    :cond_0
    :goto_0
    sub-long v16, v14, v8

    add-long v12, v16, v10

    .line 266
    const-string v16, "DataUsageView"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "totalTraffic:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " totalUsedBytes:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " realTraffic:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " startTraffic:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-wide v12

    .line 260
    :catch_0
    move-exception v6

    .line 261
    .local v6, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v16, "DataUsageView"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-wide/16 v8, 0x0

    goto :goto_0
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mContext:Landroid/content/Context;

    const v2, 0x7f0d04ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": 0 B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DataUsageView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mHandler:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method public static isSupportCHNEnhancedFeature(Ljava/lang/String;)Z
    .locals 3
    .param p0, "featureName"    # Ljava/lang/String;

    .prologue
    .line 271
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "features":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateCurrentDataSubId()V
    .locals 3

    .prologue
    .line 201
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mCurrentDataSubId:I

    .line 202
    const-string v0, "DataUsageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Data SubId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method


# virtual methods
.method public getLimitBytes()J
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    .line 144
    const-string v3, "set_data_limit"

    .line 146
    .local v3, "limitBytesString":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, "sLimit":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DataUsageView;->isLimitSet()Z

    move-result v7

    if-nez v7, :cond_0

    .line 148
    const-string v7, "DataUsageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getLimitBytes : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_0
    return-wide v4

    .line 153
    :cond_0
    :try_start_0
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 158
    .local v0, "dLimit":D
    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    mul-double/2addr v0, v8

    .line 159
    double-to-long v4, v0

    .line 160
    .local v4, "limitTraffic":J
    const-string v7, "DataUsageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getLimitBytes "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from setting, limit bytes = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    .end local v0    # "dLimit":D
    .end local v4    # "limitTraffic":J
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "DataUsageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isLimitSet()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 122
    const-string v4, "switch_traffic_settings"

    .line 123
    .local v4, "switchSettings":Ljava/lang/String;
    const-string v1, "set_data_limit"

    .line 125
    .local v1, "limitBytesString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 127
    .local v3, "switchOn":I
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 131
    :goto_0
    if-nez v3, :cond_1

    .line 140
    :cond_0
    :goto_1
    return v5

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v3, 0x0

    goto :goto_0

    .line 135
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "sLimit":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "max"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 139
    const-string v5, "DataUsageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Limit enabled :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public setMobileDataController(Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;)V
    .locals 0
    .param p1, "controller"    # Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mDataController:Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

    .line 74
    return-void
.end method

.method public updateUsageInfo()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/android/systemui/statusbar/phone/DataUsageView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DataUsageView$1;-><init>(Lcom/android/systemui/statusbar/phone/DataUsageView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mThread:Ljava/lang/Thread;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DataUsageView;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    const-string v0, "DataUsageView"

    const-string v1, "Last Thread still running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
