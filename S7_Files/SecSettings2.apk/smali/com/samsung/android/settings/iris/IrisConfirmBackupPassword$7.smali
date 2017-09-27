.class Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$7;
.super Ljava/lang/Object;
.source "IrisConfirmBackupPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->setEditBoxListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$7;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$7;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    iget-object v0, v0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getRemaingTimeToUnlock(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$7;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->-set0(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;I)I

    .line 273
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$7;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->dismiss()V

    .line 270
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$7;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    iget-object v0, v0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPassword:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$7;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    iget-object v0, v0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPasswordError:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 260
    return-void
.end method
