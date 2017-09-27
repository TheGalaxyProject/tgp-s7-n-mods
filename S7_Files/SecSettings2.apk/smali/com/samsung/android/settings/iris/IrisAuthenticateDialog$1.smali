.class Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;
.super Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
.source "IrisAuthenticateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 6
    .param p1, "errorCode"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 157
    const-string/jumbo v0, "IrisAuthenticateDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAuthenticationCallback - onAuthenticationError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 159
    if-eq p1, v4, :cond_0

    .line 160
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 165
    :cond_0
    :goto_0
    if-ne p1, v4, :cond_3

    .line 166
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    const/4 v1, 0x4

    iput v1, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    .line 173
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->-wrap0(Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;)V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->dismiss()V

    .line 156
    :cond_1
    return-void

    .line 161
    :cond_2
    if-eq p1, v5, :cond_0

    .line 162
    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 163
    if-eqz p1, :cond_0

    .line 164
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 167
    :cond_3
    if-ne p1, v5, :cond_4

    .line 168
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    const/4 v1, 0x5

    iput v1, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    goto :goto_1

    .line 170
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    iput v3, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    .line 171
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    iget-object v0, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    iget-object v1, v1, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0b078f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .prologue
    .line 180
    const-string/jumbo v0, "IrisAuthenticateDialog"

    const-string/jumbo v1, "mAuthenticationCallback - onAuthenticationFailed "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-super {p0}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationFailed()V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    const/4 v1, 0x6

    iput v1, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    .line 184
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    iget-object v0, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->reportFailedBiometricsAttempts(Landroid/content/Context;)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->dismiss()V

    .line 179
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "helpCode"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 191
    const-string/jumbo v0, "IrisAuthenticateDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAuthenticationCallback - onAuthenticationHelp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 190
    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;)V
    .locals 2
    .param p1, "result"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;

    .prologue
    .line 198
    const-string/jumbo v0, "IrisAuthenticateDialog"

    const-string/jumbo v1, "mAuthenticationCallback - onAuthenticationSucceeded "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    const/4 v1, 0x1

    iput v1, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    .line 200
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    iget-object v0, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->resetFailedBiometricsBackupAttempts(Landroid/content/Context;)V

    .line 201
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->dismiss()V

    .line 197
    return-void
.end method

.method public onIRImage([BII)V
    .locals 0
    .param p1, "irisImage"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 205
    return-void
.end method
