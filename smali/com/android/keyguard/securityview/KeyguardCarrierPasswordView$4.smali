.class Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$4;
.super Ljava/lang/Object;
.source "KeyguardCarrierPasswordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$4;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$4;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;

    invoke-virtual {v0}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$4;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->access$200(Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 255
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$4;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;

    iget-object v0, v0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$4;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->access$200(Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 257
    :cond_0
    return-void
.end method
