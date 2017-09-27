.class Lcom/android/settings/fingerprint/FingerprintSetupWizard$3;
.super Ljava/lang/Object;
.source "FingerprintSetupWizard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSetupWizard;->startFingerprintVIEffect(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

.field final synthetic val$isAlpha:Z


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSetupWizard;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/FingerprintSetupWizard;
    .param p2, "val$isAlpha"    # Z

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    iput-boolean p2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$3;->val$isAlpha:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 311
    const-string/jumbo v2, "FpstFingerprintSetupWizard"

    const-string/jumbo v3, "startFingerprintVIEffect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->-get2(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 314
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$3;->val$isAlpha:Z

    if-eqz v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->-get1(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Landroid/view/ViewGroup;

    move-result-object v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xa6

    invoke-static {v2, v4, v5, v6, v7}, Lcom/android/settings/fingerprint/VI/AnimationHelper;->alphaStart(Landroid/view/View;JJ)V

    .line 317
    :cond_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->-get0(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->run()V

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "duration":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->-get0(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 321
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->-get0(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    invoke-static {v2, v3}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->-set1(Lcom/android/settings/fingerprint/FingerprintSetupWizard;Ljava/util/Timer;)Ljava/util/Timer;

    .line 325
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintSetupWizard$AnimationTimerTask;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    invoke-direct {v3, v4}, Lcom/android/settings/fingerprint/FingerprintSetupWizard$AnimationTimerTask;-><init>(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)V

    invoke-static {v2, v3}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->-set2(Lcom/android/settings/fingerprint/FingerprintSetupWizard;Ljava/util/TimerTask;)Ljava/util/TimerTask;

    .line 326
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->-get5(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Ljava/util/Timer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->-get6(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Ljava/util/TimerTask;

    move-result-object v3

    add-int/lit16 v4, v0, -0x258

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 310
    .end local v0    # "duration":I
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
