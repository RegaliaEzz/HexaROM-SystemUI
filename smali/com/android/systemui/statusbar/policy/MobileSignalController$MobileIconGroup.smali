.class Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
.super Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MobileIconGroup"
.end annotation


# instance fields
.field final mDataContentDescription:I

.field final mDataType:I

.field final mIsWide:Z

.field final mNwBoosterDataType:I

.field final mQsDataType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sbIcons"    # [[I
    .param p3, "qsIcons"    # [[I
    .param p4, "contentDesc"    # [I
    .param p5, "sbNullState"    # I
    .param p6, "qsNullState"    # I
    .param p7, "sbDiscState"    # I
    .param p8, "qsDiscState"    # I
    .param p9, "discContentDesc"    # I
    .param p10, "dataContentDesc"    # I
    .param p11, "dataType"    # I
    .param p12, "isWide"    # Z
    .param p13, "qsDataType"    # I

    .prologue
    .line 3137
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    .line 3139
    iput p10, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataContentDescription:I

    .line 3140
    iput p11, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    .line 3141
    iput-boolean p12, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mIsWide:Z

    .line 3142
    iput p13, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mQsDataType:I

    .line 3144
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mNwBoosterDataType:I

    .line 3146
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sbIcons"    # [[I
    .param p3, "qsIcons"    # [[I
    .param p4, "contentDesc"    # [I
    .param p5, "sbNullState"    # I
    .param p6, "qsNullState"    # I
    .param p7, "sbDiscState"    # I
    .param p8, "qsDiscState"    # I
    .param p9, "discContentDesc"    # I
    .param p10, "dataContentDesc"    # I
    .param p11, "dataType"    # I
    .param p12, "isWide"    # Z
    .param p13, "qsDataType"    # I
    .param p14, "nwBoosterDataType"    # I

    .prologue
    .line 3153
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    .line 3155
    iput p10, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataContentDescription:I

    .line 3156
    iput p11, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    .line 3157
    iput-boolean p12, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mIsWide:Z

    .line 3158
    iput p13, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mQsDataType:I

    .line 3159
    iput p14, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mNwBoosterDataType:I

    .line 3160
    return-void
.end method
