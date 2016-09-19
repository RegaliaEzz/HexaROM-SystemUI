.class public Lcom/android/systemui/recents/model/RecentsTaskLoader;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"


# static fields
.field static INVALID_TASK_ID:I

.field static sInstance:Lcom/android/systemui/recents/model/RecentsTaskLoader;


# instance fields
.field mActivityLabelCache:Lcom/android/systemui/recents/model/StringLruCache;

.field mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

.field mContentDescriptionCache:Lcom/android/systemui/recents/model/StringLruCache;

.field private mContentObserver:Landroid/database/ContentObserver;

.field mContext:Landroid/content/Context;

.field mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mDefaultThumbnail:Landroid/graphics/Bitmap;

.field mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

.field mLoader:Lcom/android/systemui/recents/model/TaskResourceLoader;

.field mMaxIconCacheSize:I

.field mMaxThumbnailCacheSize:I

.field mNumVisibleTasksLoaded:I

.field mNumVisibleThumbnailsLoaded:I

.field mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

.field private mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 290
    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->INVALID_TASK_ID:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x64

    const/4 v11, 0x0

    const/4 v2, 0x1

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoader$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader$1;-><init>(Lcom/android/systemui/recents/model/RecentsTaskLoader;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 786
    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoader$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader$2;-><init>(Lcom/android/systemui/recents/model/RecentsTaskLoader;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContentObserver:Landroid/database/ContentObserver;

    .line 317
    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContext:Landroid/content/Context;

    .line 319
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    .line 321
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    .line 323
    iget v8, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    .line 325
    .local v8, "iconCacheSize":I
    iget v10, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    .line 329
    .local v10, "thumbnailCacheSize":I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 330
    .local v7, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {v7, v11}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 331
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 332
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v11}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 333
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 334
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 337
    new-instance v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 338
    new-instance v0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    .line 339
    new-instance v0, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    .line 340
    new-instance v0, Lcom/android/systemui/recents/model/DrawableLruCache;

    invoke-direct {v0, v8}, Lcom/android/systemui/recents/model/DrawableLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    .line 341
    new-instance v0, Lcom/android/systemui/recents/model/BitmapLruCache;

    invoke-direct {v0, v10}, Lcom/android/systemui/recents/model/BitmapLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    .line 342
    new-instance v0, Lcom/android/systemui/recents/model/StringLruCache;

    invoke-direct {v0, v3}, Lcom/android/systemui/recents/model/StringLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/StringLruCache;

    .line 343
    new-instance v0, Lcom/android/systemui/recents/model/StringLruCache;

    invoke-direct {v0, v3}, Lcom/android/systemui/recents/model/StringLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/recents/model/StringLruCache;

    .line 344
    new-instance v0, Lcom/android/systemui/recents/model/TaskResourceLoader;

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/model/TaskResourceLoader;-><init>(Lcom/android/systemui/recents/model/TaskResourceLoadQueue;Lcom/android/systemui/recents/model/DrawableLruCache;Lcom/android/systemui/recents/model/BitmapLruCache;Landroid/graphics/Bitmap;Landroid/graphics/drawable/BitmapDrawable;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/TaskResourceLoader;

    .line 347
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 348
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 350
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 351
    .local v9, "resolver":Landroid/content/ContentResolver;
    const-string v0, "tap_to_icon"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v2, -0x2

    invoke-virtual {v9, v0, v11, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 353
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/model/RecentsTaskLoader;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->clearApplicationIconCache()V

    return-void
.end method

.method private clearApplicationIconCache()V
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/DrawableLruCache;->evictAll()V

    .line 773
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .locals 1

    .prologue
    .line 365
    sget-object v0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->sInstance:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 357
    sget-object v0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->sInstance:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    if-nez v0, :cond_0

    .line 358
    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoader;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->sInstance:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .line 360
    :cond_0
    sget-object v0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->sInstance:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    return-object v0
.end method


# virtual methods
.method public createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 584
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 585
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    new-instance v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {v1, p1, v0, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/RecentsConfiguration;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    .line 586
    .local v1, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    return-object v1
.end method

.method public deleteTaskData(Lcom/android/systemui/recents/model/Task;Z)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "notifyTaskDataUnloaded"    # Z

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    .line 690
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/BitmapLruCache;->remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    .line 691
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/DrawableLruCache;->remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    .line 692
    if-eqz p2, :cond_0

    .line 693
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataUnloaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    .line 695
    :cond_0
    return-void
.end method

.method public getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/RecentsConfiguration;)I
    .locals 1
    .param p1, "td"    # Landroid/app/ActivityManager$TaskDescription;
    .param p2, "config"    # Lcom/android/systemui/recents/RecentsConfiguration;

    .prologue
    .line 554
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    .line 562
    :goto_0
    return v0

    .line 558
    :cond_0
    if-eqz p2, :cond_1

    .line 559
    iget v0, p2, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewDefaultBackgroundColor:I

    goto :goto_0

    .line 562
    :cond_1
    const/high16 v0, 0x7f000000

    goto :goto_0
.end method

.method public getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;Lcom/android/systemui/recents/model/ActivityInfoHandle;Z)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;
    .param p3, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "infoHandle"    # Lcom/android/systemui/recents/model/ActivityInfoHandle;
    .param p6, "loadIfNotCached"    # Z

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/DrawableLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    .line 441
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    move-object v7, v6

    .line 473
    :goto_0
    return-object v7

    .line 445
    :cond_0
    if-eqz p6, :cond_3

    .line 447
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/TaskResourceLoader;

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/model/TaskResourceLoader;->getTaskDescriptionIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 449
    .local v7, "tdDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_1

    .line 450
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    invoke-virtual {v0, p1, v7}, Lcom/android/systemui/recents/model/DrawableLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    goto :goto_0

    .line 455
    :cond_1
    iget-object v0, p5, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_2

    .line 456
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p3, v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p5, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    .line 459
    iget-object v0, p5, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_2

    .line 460
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getOrigActivity()Landroid/content/ComponentName;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p3, v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p5, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    .line 464
    :cond_2
    iget-object v0, p5, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_3

    .line 465
    iget-object v0, p5, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p3, v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 466
    if-eqz v6, :cond_3

    .line 467
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    invoke-virtual {v0, p1, v6}, Lcom/android/systemui/recents/model/DrawableLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    move-object v7, v6

    .line 468
    goto :goto_0

    .line 473
    .end local v7    # "tdDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/android/systemui/recents/model/ActivityInfoHandle;)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .param p3, "infoHandle"    # Lcom/android/systemui/recents/model/ActivityInfoHandle;

    .prologue
    .line 522
    iget-object v0, p3, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p3, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    .line 527
    :goto_0
    return-object v0

    .line 525
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p3, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    .line 527
    iget-object v0, p3, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_0
.end method

.method public getAndUpdateActivityLabel(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/android/systemui/recents/model/ActivityInfoHandle;)Ljava/lang/String;
    .locals 4
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;
    .param p3, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .param p4, "infoHandle"    # Lcom/android/systemui/recents/model/ActivityInfoHandle;

    .prologue
    .line 378
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 379
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 406
    :cond_0
    :goto_0
    return-object v0

    .line 382
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/StringLruCache;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/model/StringLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 383
    .local v0, "label":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 387
    iget-object v1, p4, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_2

    .line 388
    iget-object v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget v2, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p3, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p4, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    .line 391
    iget-object v1, p4, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_2

    .line 392
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getOrigActivity()Landroid/content/ComponentName;

    move-result-object v1

    iget v2, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p3, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p4, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    .line 396
    :cond_2
    iget-object v1, p4, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_3

    .line 397
    iget-object v1, p4, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityLabel(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/StringLruCache;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/recents/model/StringLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    goto :goto_0

    .line 401
    :cond_3
    const-string v1, "RecentsTaskLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing ActivityInfo for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const-string v0, ""

    goto :goto_0
.end method

.method public getAndUpdateContentDescription(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 4
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "activityLabel"    # Ljava/lang/String;
    .param p3, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .param p4, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 413
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/recents/model/StringLruCache;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/model/StringLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 414
    .local v0, "label":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 432
    :goto_0
    return-object v1

    .line 418
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 419
    const-string v1, ""

    goto :goto_0

    .line 422
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    iget v2, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p3, v1, v2, p2, p4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getContentDescription(Landroid/content/Intent;ILjava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 423
    if-eqz v0, :cond_2

    .line 424
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/recents/model/StringLruCache;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/recents/model/StringLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    move-object v1, v0

    .line 425
    goto :goto_0

    .line 427
    :cond_2
    const-string v1, "RecentsTaskLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing content description for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string v1, ""

    goto :goto_0
.end method

.method public getAndUpdateThumbnail(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .param p3, "loadIfNotCached"    # Z

    .prologue
    .line 480
    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    .line 485
    .local v1, "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    const/4 v0, 0x0

    .line 490
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 494
    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->privateModeEnabled:Z

    if-nez v3, :cond_1

    iget-boolean v3, p1, Lcom/android/systemui/recents/model/Task;->isPrivateMode:Z

    if-eqz v3, :cond_1

    .line 495
    const-string v3, "RecentsTaskLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Task("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") was active in private mode, will not supply thumbnail for it"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRestrictedThumbnail()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 516
    :cond_0
    :goto_0
    return-object v2

    .line 502
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/model/BitmapLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 503
    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 507
    iget v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    if-eqz p3, :cond_2

    .line 509
    invoke-virtual {p2, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnail(Lcom/android/systemui/recents/model/Task;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 510
    if-eqz v2, :cond_2

    .line 511
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/recents/model/BitmapLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    goto :goto_0

    .line 516
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getApplicationIconCacheSize()I
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    return v0
.end method

.method public getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    return-object v0
.end method

.method public getThumbnailCacheSize()I
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    return v0
.end method

.method public isSupportMultiWindow(Landroid/content/pm/ActivityInfo;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .locals 3
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v1, 0x0

    .line 532
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v0

    .line 533
    .local v0, "applicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 547
    :cond_0
    :goto_0
    return v1

    .line 536
    :cond_1
    if-eqz p2, :cond_2

    .line 537
    const/16 v2, 0x1000

    invoke-virtual {p2, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 540
    const/high16 v2, 0x200000

    invoke-virtual {p2, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 543
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public loadTaskData(Lcom/android/systemui/recents/model/Task;)V
    .locals 10
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 635
    iget-object v7, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget-object v8, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/model/DrawableLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 639
    .local v0, "applicationIcon":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 644
    .local v1, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    .line 648
    iget-boolean v7, v1, Lcom/android/systemui/recents/RecentsConfiguration;->privateModeEnabled:Z

    if-nez v7, :cond_5

    iget-boolean v7, p1, Lcom/android/systemui/recents/model/Task;->isPrivateMode:Z

    if-eqz v7, :cond_5

    .line 649
    const-string v7, "RecentsTaskLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Task("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v9, v9, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") was active in private mode, will not supply thumbnail for it"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v7, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRestrictedThumbnail()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 658
    .local v4, "thumbnail":Landroid/graphics/Bitmap;
    :goto_0
    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportAppLock()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 659
    iget-object v7, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    if-eqz v7, :cond_0

    iget-object v7, p1, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v8, p1, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 661
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v5

    .line 662
    .local v5, "versionInfo":Landroid/os/Bundle;
    const-string v7, "2.0"

    const-string v8, "version"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    const/16 v8, 0x64

    if-lt v7, v8, :cond_6

    iget-object v7, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    const/16 v8, 0xc8

    if-gt v7, v8, :cond_6

    move v2, v6

    .line 665
    .local v2, "isKnoxID":Z
    :goto_1
    if-nez v2, :cond_0

    .line 666
    iget-object v7, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getAppLockedTaskThumbnail()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 673
    .end local v2    # "isKnoxID":Z
    .end local v5    # "versionInfo":Landroid/os/Bundle;
    :cond_0
    if-eqz v0, :cond_1

    if-nez v4, :cond_2

    :cond_1
    move v3, v6

    .line 674
    .local v3, "requiresLoad":Z
    :cond_2
    if-eqz v0, :cond_7

    .line 675
    :goto_2
    if-eqz v3, :cond_3

    .line 676
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v6, p1}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->addTask(Lcom/android/systemui/recents/model/Task;)V

    .line 678
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    if-ne v4, v6, :cond_4

    const/4 v4, 0x0

    .end local v4    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {p1, v4, v0}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataLoaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    .line 679
    return-void

    .line 653
    .end local v3    # "requiresLoad":Z
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget-object v8, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/model/BitmapLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .restart local v4    # "thumbnail":Landroid/graphics/Bitmap;
    goto :goto_0

    .restart local v5    # "versionInfo":Landroid/os/Bundle;
    :cond_6
    move v2, v3

    .line 662
    goto :goto_1

    .line 674
    .end local v5    # "versionInfo":Landroid/os/Bundle;
    .restart local v3    # "requiresLoad":Z
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_2
.end method

.method public loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "plan"    # Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .param p3, "opts"    # Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    .prologue
    .line 620
    if-nez p3, :cond_0

    .line 621
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Requires load options"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {p2, p3, p0, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->executePlan(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;Lcom/android/systemui/recents/model/RecentsTaskLoader;Lcom/android/systemui/recents/model/TaskResourceLoadQueue;)V

    .line 624
    iget-boolean v0, p3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    if-nez v0, :cond_1

    .line 625
    iget v0, p3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I

    .line 626
    iget v0, p3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mNumVisibleThumbnailsLoaded:I

    .line 629
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/TaskResourceLoader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskResourceLoader;->start(Landroid/content/Context;)V

    .line 631
    :cond_1
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v3, 0x1

    .line 721
    const/4 v0, 0x0

    .line 727
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 729
    sparse-switch p1, :sswitch_data_0

    .line 768
    :goto_0
    return-void

    .line 732
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->stopLoader()V

    .line 733
    iget v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    if-nez v1, :cond_1

    .line 734
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I

    iget v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/BitmapLruCache;->trimToSize(I)V

    .line 741
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I

    iget v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/DrawableLruCache;->trimToSize(I)V

    goto :goto_0

    .line 736
    :cond_1
    iget v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    if-ne v1, v3, :cond_2

    .line 737
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mNumVisibleThumbnailsLoaded:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/BitmapLruCache;->trimToSize(I)V

    goto :goto_1

    .line 738
    :cond_2
    iget v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 739
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/BitmapLruCache;->evictAll()V

    goto :goto_1

    .line 747
    :sswitch_1
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/BitmapLruCache;->trimToSize(I)V

    .line 748
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/DrawableLruCache;->trimToSize(I)V

    goto :goto_0

    .line 753
    :sswitch_2
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/lit8 v2, v2, 0x4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/BitmapLruCache;->trimToSize(I)V

    .line 754
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v2, v2, 0x4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/DrawableLruCache;->trimToSize(I)V

    goto :goto_0

    .line 759
    :sswitch_3
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/BitmapLruCache;->evictAll()V

    .line 760
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/DrawableLruCache;->evictAll()V

    .line 762
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/StringLruCache;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/StringLruCache;->evictAll()V

    .line 763
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/recents/model/StringLruCache;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/StringLruCache;->evictAll()V

    goto/16 :goto_0

    .line 729
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
        0xf -> :sswitch_3
        0x14 -> :sswitch_0
        0x28 -> :sswitch_1
        0x3c -> :sswitch_2
        0x50 -> :sswitch_3
    .end sparse-switch
.end method

.method public preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V
    .locals 1
    .param p1, "plan"    # Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .param p2, "isTopTaskHome"    # Z

    .prologue
    .line 601
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;ZI)V

    .line 602
    return-void
.end method

.method public preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;ZI)V
    .locals 1
    .param p1, "plan"    # Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .param p2, "isTopTaskHome"    # Z
    .param p3, "displayId"    # I

    .prologue
    .line 607
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;ZIZ)V

    .line 608
    return-void
.end method

.method public preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;ZIZ)V
    .locals 0
    .param p1, "plan"    # Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .param p2, "isTopTaskHome"    # Z
    .param p3, "displayId"    # I
    .param p4, "blockToGetPopupThumbnail"    # Z

    .prologue
    .line 611
    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadPlan(Lcom/android/systemui/recents/model/RecentsTaskLoader;ZIZ)V

    .line 614
    return-void
.end method

.method public registerReceivers(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->register(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;)V

    .line 707
    return-void
.end method

.method stopLoader()V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/TaskResourceLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskResourceLoader;->stop()V

    .line 700
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->clearTasks()V

    .line 701
    return-void
.end method

.method public unloadTaskData(Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    .line 684
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataUnloaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    .line 685
    return-void
.end method

.method public unregisterReceivers()V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->unregister()V

    .line 712
    return-void
.end method
