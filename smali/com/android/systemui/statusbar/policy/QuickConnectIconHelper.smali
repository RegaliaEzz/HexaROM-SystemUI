.class public Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;
.super Ljava/lang/Object;
.source "QuickConnectIconHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;
    }
.end annotation


# static fields
.field private static final COMPANY_ID_SAMSUNG:[B

.field private static final DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:[B

.field private static final IDX_COMPANY_ID:I

.field private static final IDX_PDU_VERSION:I

.field private static final IDX_SERVICE_ID:I

.field private static final IDX_SLD_BT_TYPE:I

.field private static final IDX_WEARABLE_DEVICE_ID:I

.field private static final PDU_VERSION_01:[B

.field public static final SAMSUNG_STANDARD_ICON:[[I

.field private static final SERVICE_ID_WEARABLE:[B

.field private static final SLD_BT_TYPE_AOBLE_L:[B

.field private static final SLD_BT_TYPE_AOBLE_R:[B

.field private static final WEARABLE_DEVICE_ID_SLD:[B

.field public static final p2pDeviceTypes:[Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field private static sIsAoBleSupported:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x3

    .line 150
    new-array v0, v5, [B

    const/4 v1, -0x1

    aput-byte v1, v0, v6

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:[B

    .line 154
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_COMPANY_ID:I

    .line 156
    new-array v0, v4, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->COMPANY_ID_SAMSUNG:[B

    .line 160
    sget v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_COMPANY_ID:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->COMPANY_ID_SAMSUNG:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_PDU_VERSION:I

    .line 161
    new-array v0, v5, [B

    aput-byte v5, v0, v6

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->PDU_VERSION_01:[B

    .line 165
    sget v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_PDU_VERSION:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->PDU_VERSION_01:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_SERVICE_ID:I

    .line 166
    new-array v0, v4, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->SERVICE_ID_WEARABLE:[B

    .line 170
    sget v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_SERVICE_ID:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->SERVICE_ID_WEARABLE:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_WEARABLE_DEVICE_ID:I

    .line 171
    new-array v0, v4, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->WEARABLE_DEVICE_ID_SLD:[B

    .line 175
    sget v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_WEARABLE_DEVICE_ID:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->WEARABLE_DEVICE_ID_SLD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_SLD_BT_TYPE:I

    .line 177
    new-array v0, v5, [B

    aput-byte v3, v0, v6

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->SLD_BT_TYPE_AOBLE_L:[B

    .line 180
    new-array v0, v5, [B

    aput-byte v7, v0, v6

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->SLD_BT_TYPE_AOBLE_R:[B

    .line 389
    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->sIsAoBleSupported:I

    .line 454
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->PC:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_INPUT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->PRINTER:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->CAMERA:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->UNKNOWN:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->UNKNOWN:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->UNKNOWN:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->UNKNOWN:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->UNKNOWN:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->MOBILE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_OUTPUT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->MIRRORING_PLAYER:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->UNKNOWN:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->p2pDeviceTypes:[Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 620
    const/16 v0, 0x1c

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v3

    new-array v1, v7, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v7, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v4, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v4, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->SAMSUNG_STANDARD_ICON:[[I

    return-void

    .line 156
    :array_0
    .array-data 1
        0x75t
        0x0t
    .end array-data

    .line 166
    nop

    :array_1
    .array-data 1
        0x0t
        0x2t
    .end array-data

    .line 171
    nop

    :array_2
    .array-data 1
        0x0t
        -0x1t
    .end array-data

    .line 620
    nop

    :array_3
    .array-data 4
        0x7f02039e
        -0x1
    .end array-data

    :array_4
    .array-data 4
        0x7f0203b0
        0x7f0203b0
        -0x1
    .end array-data

    :array_5
    .array-data 4
        0x7f0203bc
        0x7f0203bc
        -0x1
    .end array-data

    :array_6
    .array-data 4
        0x7f02039d
        0x7f02039d
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x7f0203ae
        0x7f0203af
        0x7f0203ae
        -0x1
    .end array-data

    :array_8
    .array-data 4
        0x7f02038e
        0x7f0203aa
        0x7f02039b
        0x7f0203a4
        -0x1
    .end array-data

    :array_9
    .array-data 4
        0x7f0203bd
        0x7f0203bd
        -0x1
    .end array-data

    :array_a
    .array-data 4
        0x7f0203a6
        0x7f0203ba
        0x7f02038d
        0x7f0203a6
        0x7f020391
        -0x1
    .end array-data

    :array_b
    .array-data 4
        0x7f0203b6
        0x7f0203b6
        -0x1
    .end array-data

    :array_c
    .array-data 4
        0x7f0203b3
        0x7f0203b3
        -0x1
    .end array-data

    :array_d
    .array-data 4
        0x7f0203bf
        0x7f0203bf
        -0x1
    .end array-data

    :array_e
    .array-data 4
        0x7f020399
        0x7f020399
        -0x1
    .end array-data

    :array_f
    .array-data 4
        0x7f02039a
        0x7f02039a
        -0x1
    .end array-data

    :array_10
    .array-data 4
        0x7f0203b5
        0x7f0203b5
        -0x1
    .end array-data

    :array_11
    .array-data 4
        0x7f0203bb
        0x7f0203bb
        -0x1
    .end array-data

    :array_12
    .array-data 4
        0x7f02038f
        0x7f02038f
        -0x1
    .end array-data

    :array_13
    .array-data 4
        0x7f0203ad
        0x7f0203ad
        -0x1
    .end array-data

    :array_14
    .array-data 4
        0x7f0203b2
        0x7f0203b2
        -0x1
    .end array-data

    :array_15
    .array-data 4
        0x7f0203b4
        0x7f0203b4
        -0x1
    .end array-data

    :array_16
    .array-data 4
        0x7f0203b8
        0x7f0203b8
        -0x1
    .end array-data

    :array_17
    .array-data 4
        0x7f0203b1
        0x7f0203b1
        -0x1
    .end array-data

    :array_18
    .array-data 4
        0x7f0203a7
        0x7f0203a7
        0x7f0203a9
        -0x1
    .end array-data

    :array_19
    .array-data 4
        0x7f0203b9
        0x7f0203a6
        -0x1
    .end array-data

    :array_1a
    .array-data 4
        0x7f0203bd
        0x7f0203bd
        -0x1
    .end array-data

    :array_1b
    .array-data 4
        0x7f0203b6
        0x7f0203b6
        -0x1
    .end array-data

    :array_1c
    .array-data 4
        0x7f020394
        0x7f020394
        -0x1
    .end array-data

    :array_1d
    .array-data 4
        0x7f020393
        -0x1
    .end array-data

    :array_1e
    .array-data 4
        0x7f020392
        -0x1
    .end array-data
.end method

.method public static convertP2pDeviceType(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;
    .locals 8
    .param p0, "p2pDeviceType"    # Ljava/lang/String;
    .param p1, "displayname"    # Ljava/lang/String;
    .param p2, "supportMirrorSink"    # Z

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x1

    .line 419
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->UNKNOWN:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 421
    .local v3, "type":Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;
    if-eqz p0, :cond_2

    .line 422
    const/4 v2, 0x0

    .line 423
    .local v2, "tokens":[Ljava/lang/String;
    const-string v4, "-"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 424
    array-length v4, v2

    if-lez v4, :cond_2

    .line 425
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 426
    .local v1, "p2pType":I
    if-lt v1, v6, :cond_2

    const/16 v4, 0xd

    if-ge v1, v4, :cond_2

    .line 427
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->p2pDeviceTypes:[Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    add-int/lit8 v5, v1, -0x1

    aget-object v3, v4, v5

    .line 428
    if-eqz p2, :cond_1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    const/4 v4, 0x5

    if-eq v1, v4, :cond_0

    const/4 v4, 0x6

    if-eq v1, v4, :cond_0

    if-eq v1, v7, :cond_0

    const/16 v4, 0x8

    if-eq v1, v4, :cond_0

    const/16 v4, 0x9

    if-eq v1, v4, :cond_0

    const/16 v4, 0xb

    if-ne v1, v4, :cond_1

    .line 431
    :cond_0
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->MIRRORING_PLAYER:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 434
    :cond_1
    if-eqz p1, :cond_2

    .line 435
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "name":Ljava/lang/String;
    const/16 v4, 0xa

    if-ne v1, v4, :cond_3

    const-string v4, "[CAMERA]"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 438
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->CAMERA:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 450
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "p2pType":I
    .end local v2    # "tokens":[Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v3

    .line 439
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "p2pType":I
    .restart local v2    # "tokens":[Ljava/lang/String;
    :cond_3
    if-ne v1, v7, :cond_5

    const-string v4, "[TV]"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "BRAVIA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 441
    :cond_4
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->TV:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto :goto_0

    .line 442
    :cond_5
    if-ne v1, v6, :cond_2

    .line 443
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->MIRRORING_PLAYER:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto :goto_0
.end method

.method public static getBtDeviceType(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Ljava/lang/String;[Landroid/os/ParcelUuid;)Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;
    .locals 8
    .param p0, "device"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "remoteUuids"    # [Landroid/os/ParcelUuid;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 239
    if-nez p0, :cond_0

    .line 240
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->UNKNOWN:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 386
    :goto_0
    return-object v4

    .line 243
    :cond_0
    if-eqz p1, :cond_5

    .line 244
    const-string v4, "Samsung Level Box"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 245
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->SAMSUNG_LEVELBOX:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto :goto_0

    .line 246
    :cond_1
    const-string v4, "Samsung Level"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 247
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->SAMSUNG_LEVEL:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto :goto_0

    .line 248
    :cond_2
    const-string v4, "HomeSync"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 249
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->HOMESYNC:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto :goto_0

    .line 251
    :cond_3
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "deviceName":Ljava/lang/String;
    const-string v4, "TVBLUETOOTH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "[TV]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "BRAVIA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "SAMSUNG 3D TV"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 256
    :cond_4
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->TV:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto :goto_0

    .line 261
    .end local v3    # "deviceName":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    .line 262
    .local v2, "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    const/4 v1, -0x1

    .line 263
    .local v1, "bdClass":I
    if-eqz v2, :cond_6

    .line 264
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v1

    .line 270
    const/16 v4, 0x680

    if-ne v1, v4, :cond_7

    .line 271
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->PRINTER:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto :goto_0

    .line 267
    :cond_6
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->UNKNOWN:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto :goto_0

    .line 276
    :cond_7
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 332
    :cond_8
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAppearance()S

    move-result v4

    sparse-switch v4, :sswitch_data_1

    .line 356
    invoke-virtual {v2, v7}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 357
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_OUTPUT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto :goto_0

    .line 278
    :sswitch_0
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v4

    const/16 v5, 0x11c

    if-ne v4, v5, :cond_9

    .line 279
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->TABLET:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 281
    :cond_9
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->LAPTOP:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 284
    :sswitch_1
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->MOBILE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 287
    :sswitch_2
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v4

    const/16 v5, 0x704

    if-ne v4, v5, :cond_8

    .line 288
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->WEARABLE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 292
    :sswitch_3
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getPeripheralMinorClass()I

    move-result v4

    const/16 v5, 0x540

    if-ne v4, v5, :cond_a

    .line 293
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_KEYBOARD:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 294
    :cond_a
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getPeripheralMinorClass()I

    move-result v4

    const/16 v5, 0x580

    if-ne v4, v5, :cond_b

    .line 295
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_MOUSE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 296
    :cond_b
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getPeripheralMinorSubClass()I

    move-result v4

    const/16 v5, 0x504

    if-ne v4, v5, :cond_c

    .line 297
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_GAMEPAD:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 298
    :cond_c
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getPeripheralMinorSubClass()I

    move-result v4

    const/16 v5, 0x508

    if-ne v4, v5, :cond_d

    .line 299
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_GAMEPAD:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 300
    :cond_d
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getPeripheralMinorSubClass()I

    move-result v4

    const/16 v5, 0x50c

    if-ne v4, v5, :cond_e

    .line 301
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_GAMEPAD:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 303
    :cond_e
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_INPUT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 307
    :sswitch_4
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v4

    const/16 v5, 0x620

    if-ne v4, v5, :cond_f

    .line 308
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->CAMERA:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 310
    :cond_f
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->PRINTER:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 313
    :sswitch_5
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v4

    const/16 v5, 0x43c

    if-ne v4, v5, :cond_10

    .line 314
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->TV:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 315
    :cond_10
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v4

    const/16 v5, 0x434

    if-ne v4, v5, :cond_11

    .line 316
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->CAMERA:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 319
    :cond_11
    const/4 v4, 0x2

    new-array v0, v4, [Landroid/os/ParcelUuid;

    sget-object v4, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v4, v0, v6

    sget-object v4, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v4, v0, v7

    .line 323
    .local v0, "SINK_UUIDS":[Landroid/os/ParcelUuid;
    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 324
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_OUTPUT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 334
    .end local v0    # "SINK_UUIDS":[Landroid/os/ParcelUuid;
    :sswitch_6
    if-eqz p1, :cond_12

    const-string v4, "GALAXY Gear ("

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 335
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->WEARABLE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 337
    :cond_12
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->MOBILE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 339
    :sswitch_7
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->LAPTOP:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 342
    :sswitch_8
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->WEARABLE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 345
    :sswitch_9
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_KEYBOARD:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 347
    :sswitch_a
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_MOUSE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 350
    :sswitch_b
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_INPUT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 360
    :cond_13
    invoke-virtual {v2, v6}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 361
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_MONO:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 365
    :cond_14
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-static {p2, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 366
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_OUTPUT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 368
    :cond_15
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {p2, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v4

    if-nez v4, :cond_16

    sget-object v4, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {p2, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 370
    :cond_16
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_OUTPUT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 372
    :cond_17
    invoke-static {}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->isAoBleSupported()Z

    move-result v4

    if-eqz v4, :cond_18

    sget-object v4, Landroid/bluetooth/BluetoothUuid;->LeAudio:Landroid/os/ParcelUuid;

    invoke-static {p2, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 374
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_OUTPUT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 376
    :cond_18
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {p2, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v4

    if-nez v4, :cond_19

    sget-object v4, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-static {p2, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 378
    :cond_19
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_INPUT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 382
    :cond_1a
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 383
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_INPUT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 386
    :cond_1b
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->UNKNOWN:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 276
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x400 -> :sswitch_5
        0x500 -> :sswitch_3
        0x600 -> :sswitch_4
        0x700 -> :sswitch_2
    .end sparse-switch

    .line 332
    :sswitch_data_1
    .sparse-switch
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0xc0 -> :sswitch_8
        0xc1 -> :sswitch_8
        0x3c0 -> :sswitch_9
        0x3c1 -> :sswitch_9
        0x3c2 -> :sswitch_a
        0x3c3 -> :sswitch_b
        0x3c4 -> :sswitch_b
    .end sparse-switch
.end method

.method private static getEirLength([B)I
    .locals 5
    .param p0, "manufacturerData"    # [B

    .prologue
    const/4 v2, -0x1

    .line 603
    if-nez p0, :cond_1

    move v1, v2

    .line 617
    :cond_0
    :goto_0
    return v1

    .line 607
    :cond_1
    const/4 v1, 0x0

    .line 609
    .local v1, "length":I
    const/4 v3, 0x0

    :try_start_0
    aget-byte v1, p0, v3

    .line 610
    const/4 v3, 0x1

    aget-byte v0, p0, v3

    .line 611
    .local v0, "flag":B
    if-ne v0, v2, :cond_2

    const/4 v3, 0x5

    aget-byte v3, p0, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    .end local v0    # "flag":B
    :cond_2
    :goto_1
    move v1, v2

    .line 617
    goto :goto_0

    .line 615
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private static getGearData(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)[B
    .locals 2
    .param p0, "dev"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "manufacturerData":[B
    if-nez p0, :cond_0

    .line 211
    const/4 v1, 0x0

    .line 215
    :goto_0
    return-object v1

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGearManagerName()[B

    move-result-object v0

    move-object v1, v0

    .line 215
    goto :goto_0
.end method

.method private static getGearDeviceID([BLjava/lang/String;)I
    .locals 3
    .param p0, "manufacturerData"    # [B
    .param p1, "devName"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    .line 136
    if-eqz p0, :cond_0

    array-length v1, p0

    if-lt v1, v2, :cond_0

    .line 137
    aget-byte v0, p0, v2

    .line 145
    :goto_0
    return v0

    .line 141
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->isGear1byName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    const/4 v0, 0x1

    goto :goto_0

    .line 145
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIconResource(Landroid/net/wifi/p2p/WifiP2pDevice;Z)I
    .locals 5
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p1, "supportMirrorSink"    # Z

    .prologue
    .line 94
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 103
    :goto_0
    return v1

    .line 96
    :cond_0
    iget v3, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    shr-int/lit8 v2, v3, 0x8

    .line 97
    .local v2, "type":I
    if-lez v2, :cond_1

    .line 98
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->SAMSUNG_STANDARD_ICON:[[I

    iget v4, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    shr-int/lit8 v4, v4, 0x8

    aget-object v3, v3, v4

    iget v4, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    and-int/lit16 v4, v4, 0xff

    aget v1, v3, v4

    .line 99
    .local v1, "standardIcon":I
    goto :goto_0

    .line 102
    .end local v1    # "standardIcon":I
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v3, v4, p1}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->convertP2pDeviceType(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    move-result-object v0

    .line 103
    .local v0, "deviceType":Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->getIconId()I

    move-result v1

    goto :goto_0
.end method

.method public static getIconResource(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I
    .locals 10
    .param p0, "info"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 47
    if-nez p0, :cond_0

    const/4 v7, 0x0

    .line 89
    :goto_0
    return v7

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 54
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "bdName":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->getGearData(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)[B

    move-result-object v2

    .line 57
    .local v2, "data":[B
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v8

    invoke-static {p0, v0, v8}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->getBtDeviceType(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Ljava/lang/String;[Landroid/os/ParcelUuid;)Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    move-result-object v4

    .line 59
    .local v4, "deviceType":Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->isGearData([B)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->isSldDevice([B)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->isGear1byName(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 60
    :cond_1
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->getGearDeviceID([BLjava/lang/String;)I

    move-result v6

    .line 61
    .local v6, "gearId":I
    const/4 v8, 0x2

    if-ne v6, v8, :cond_3

    .line 62
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->SAMSUNG_GEAR_FIT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 89
    .end local v6    # "gearId":I
    :cond_2
    :goto_1
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->getIconId()I

    move-result v7

    goto :goto_0

    .line 63
    .restart local v6    # "gearId":I
    :cond_3
    const/4 v8, -0x1

    if-ne v6, v8, :cond_4

    .line 64
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->SAMSUNG_APPCCESSORY_SLD:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto :goto_1

    .line 66
    :cond_4
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 67
    .local v1, "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v8

    const/16 v9, 0x404

    if-ne v8, v9, :cond_6

    .line 69
    if-eqz v0, :cond_5

    const-string v8, "Gear IconX"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 70
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->SAMSUNG_GEAR_ICONX:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto :goto_1

    .line 73
    :cond_5
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->SAMSUNG_GEAR_CIRCLE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto :goto_1

    .line 76
    :cond_6
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->SAMSUNG_GEAR:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto :goto_1

    .line 82
    .end local v1    # "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    .end local v6    # "gearId":I
    :cond_7
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->getEirLength([B)I

    move-result v5

    .line 83
    .local v5, "eirLength":I
    const/16 v8, 0x1e

    if-le v5, v8, :cond_2

    .line 84
    sget-object v8, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->SAMSUNG_STANDARD_ICON:[[I

    const/16 v9, 0xa

    aget-byte v9, v2, v9

    aget-object v8, v8, v9

    const/16 v9, 0xb

    aget-byte v9, v2, v9

    aget v7, v8, v9

    .line 85
    .local v7, "standardIcon":I
    goto :goto_0
.end method

.method public static isAoBleSupported()Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 391
    sget v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->sIsAoBleSupported:I

    if-ne v5, v6, :cond_0

    .line 393
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 394
    .local v0, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isAoBleSupported()I

    move-result v2

    .line 395
    .local v2, "isAoBleSupported":I
    if-ne v2, v4, :cond_2

    .line 396
    const/4 v5, 0x1

    sput v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->sIsAoBleSupported:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 408
    .end local v2    # "isAoBleSupported":I
    :cond_0
    :goto_0
    sget v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->sIsAoBleSupported:I

    if-ne v5, v4, :cond_1

    move v3, v4

    .line 411
    :cond_1
    :goto_1
    return v3

    .line 397
    .restart local v2    # "isAoBleSupported":I
    :cond_2
    if-eq v2, v6, :cond_1

    .line 400
    const/4 v5, 0x0

    :try_start_1
    sput v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->sIsAoBleSupported:I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 402
    .end local v2    # "isAoBleSupported":I
    :catch_0
    move-exception v1

    .line 403
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    sput v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->sIsAoBleSupported:I

    goto :goto_0

    .line 404
    .end local v1    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v1

    .line 405
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_1
.end method

.method public static isGear1byName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "devName"    # Ljava/lang/String;

    .prologue
    .line 117
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    :cond_1
    const-string v0, "GALAXY Gear ("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isGearData([B)Z
    .locals 3
    .param p0, "manufacturerData"    # [B

    .prologue
    const/4 v0, 0x0

    .line 125
    if-nez p0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    const/4 v1, 0x5

    aget-byte v1, p0, v1

    if-nez v1, :cond_0

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 130
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isSldDevice([B)Z
    .locals 4
    .param p0, "gearData"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 185
    if-nez p0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    aget-byte v2, p0, v1

    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    sget v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_COMPANY_ID:I

    aget-byte v2, p0, v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->COMPANY_ID_SAMSUNG:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    sget v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_COMPANY_ID:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p0, v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->COMPANY_ID_SAMSUNG:[B

    aget-byte v3, v3, v1

    if-ne v2, v3, :cond_0

    .line 192
    sget v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_PDU_VERSION:I

    aget-byte v2, p0, v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->PDU_VERSION_01:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    sget v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_SERVICE_ID:I

    aget-byte v2, p0, v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->SERVICE_ID_WEARABLE:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    sget v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_SERVICE_ID:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p0, v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->SERVICE_ID_WEARABLE:[B

    aget-byte v3, v3, v1

    if-ne v2, v3, :cond_0

    .line 195
    sget v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_WEARABLE_DEVICE_ID:I

    aget-byte v2, p0, v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->WEARABLE_DEVICE_ID_SLD:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    sget v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_WEARABLE_DEVICE_ID:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p0, v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->WEARABLE_DEVICE_ID_SLD:[B

    aget-byte v3, v3, v1

    if-ne v2, v3, :cond_0

    .line 197
    sget v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_SLD_BT_TYPE:I

    aget-byte v2, p0, v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->SLD_BT_TYPE_AOBLE_L:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_2

    sget v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_SLD_BT_TYPE:I

    aget-byte v2, p0, v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->SLD_BT_TYPE_AOBLE_R:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    .line 199
    goto :goto_0
.end method
