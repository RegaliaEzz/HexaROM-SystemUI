.class public Lcom/android/keyguard/securityview/KeyguardAccountView$SACallback;
.super Lcom/msc/sa/aidl/ISACallback$Stub;
.source "KeyguardAccountView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/securityview/KeyguardAccountView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SACallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/securityview/KeyguardAccountView;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$SACallback;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    invoke-direct {p0}, Lcom/msc/sa/aidl/ISACallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveAccessToken(IZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "requestID"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 433
    return-void
.end method

.method public onReceiveAuthCode(IZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "requestID"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 448
    return-void
.end method

.method public onReceiveChecklistValidation(IZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "requestID"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 438
    return-void
.end method

.method public onReceiveDisclaimerAgreement(IZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "requestID"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 443
    return-void
.end method

.method public onReceivePasswordConfirmation(IZLandroid/os/Bundle;)V
    .locals 2
    .param p1, "requestID"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 458
    if-ne p2, v1, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$SACallback;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardAccountView;->postOnCheckPasswordResult(Z)V
    invoke-static {v0, v1}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$1800(Lcom/android/keyguard/securityview/KeyguardAccountView;Z)V

    .line 463
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$SACallback;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardAccountView;->destroySAConnect()V
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$1900(Lcom/android/keyguard/securityview/KeyguardAccountView;)V

    .line 464
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$SACallback;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/securityview/KeyguardAccountView;->postOnCheckPasswordResult(Z)V
    invoke-static {v0, v1}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$1800(Lcom/android/keyguard/securityview/KeyguardAccountView;Z)V

    goto :goto_0
.end method

.method public onReceiveSCloudAccessToken(IZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "requestID"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 453
    return-void
.end method
