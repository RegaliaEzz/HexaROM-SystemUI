.class Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;
.super Ljava/lang/Object;
.source "KeyguardAffordanceHelper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setCallbackForDummy(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V
    .locals 0

    .prologue
    .line 755
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDAAffordance()V
    .locals 0

    .prologue
    .line 783
    return-void
.end method

.method public onAnimationToSideEnded()V
    .locals 0

    .prologue
    .line 762
    return-void
.end method

.method public onAnimationToSideStarted(ZFFZ)V
    .locals 0
    .param p1, "rightPage"    # Z
    .param p2, "translation"    # F
    .param p3, "vel"    # F
    .param p4, "inSecure"    # Z

    .prologue
    .line 758
    return-void
.end method

.method public onIconClicked(Z)Z
    .locals 1
    .param p1, "rightIcon"    # Z

    .prologue
    .line 787
    const/4 v0, 0x1

    return v0
.end method

.method public onSwipingAborted()V
    .locals 0

    .prologue
    .line 775
    return-void
.end method

.method public onSwipingStarted(Z)V
    .locals 0
    .param p1, "rightIcon"    # Z

    .prologue
    .line 771
    return-void
.end method

.method public startUnlockAnimation()V
    .locals 0

    .prologue
    .line 779
    return-void
.end method

.method public userActivity()V
    .locals 0

    .prologue
    .line 832
    return-void
.end method
